.class public final Lcom/android/server/vibrator/HalVibration;
.super Lcom/android/server/vibrator/Vibration;
.source "HalVibration.java"


# instance fields
.field public mAdaptiveScale:F

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mEffectToPlay:Landroid/os/CombinedVibration;

.field public final mFallbacks:Landroid/util/SparseArray;

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public mScaleFactor:F

.field public mScaleLevel:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V
    .registers 4

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 41
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 44
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 67
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 68
    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleFactor:F

    .line 71
    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    return-void
.end method


# virtual methods
.method public adaptToDevice(Landroid/os/CombinedVibration$VibratorAdapter;)Z
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0, p1}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_a
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 140
    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public canPipelineWith(Lcom/android/server/vibrator/HalVibration;Landroid/util/SparseArray;I)Z
    .registers 9

    if-eqz p2, :cond_9

    .line 166
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v0, p2}, Landroid/os/CombinedVibration;->getDuration(Landroid/util/SparseArray;)J

    move-result-wide v0

    goto :goto_f

    .line 167
    :cond_9
    iget-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p2}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    :goto_f
    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    const/4 v2, 0x0

    if-nez p2, :cond_1a

    return v2

    :cond_1a
    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    const/4 v3, 0x1

    if-lez p2, :cond_27

    int-to-long p2, p3

    cmp-long p2, v0, p2

    if-gez p2, :cond_27

    return v3

    .line 182
    :cond_27
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p2, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object p3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p3, p3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    if-ne p2, p3, :cond_46

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/16 p2, 0x8

    .line 183
    invoke-virtual {p0, p2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_46

    iget-object p0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 184
    invoke-virtual {p0, p2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_46

    return v3

    :cond_46
    return v2
.end method

.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .registers 2

    .line 76
    invoke-super {p0, p1}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public fillFallbacks(Ljava/util/function/IntFunction;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public final fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V
    .registers 5

    .line 190
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_e

    .line 191
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    return-void

    .line 192
    :cond_e
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 193
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    .line 194
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    .line 195
    :goto_19
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 196
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 199
    :cond_2b
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_47

    .line 200
    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    .line 201
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p1

    .line 202
    :goto_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 203
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_47
    return-void
.end method

.method public final fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V
    .registers 8

    .line 211
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_3f

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 214
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_3f

    .line 216
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 217
    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v3, :cond_3c

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 218
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    if-eqz v3, :cond_3c

    .line 220
    iget-object v4, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_3f
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .registers 12

    .line 156
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_b
    move-object v7, v0

    goto :goto_10

    :cond_d
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    goto :goto_b

    .line 157
    :goto_10
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 158
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->findVibrationType(Landroid/os/CombinedVibration;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v6, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    iget v8, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    iget v9, p0, Lcom/android/server/vibrator/HalVibration;->mScaleFactor:F

    iget v10, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    invoke-direct/range {v1 .. v10}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IFF)V

    return-object v1
.end method

.method public getEffectToPlay()Landroid/os/CombinedVibration;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V
    .registers 7

    .line 107
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationScaler;->getScaleFactor(IZ)F

    move-result v2

    iput v2, p0, Lcom/android/server/vibrator/HalVibration;->mScaleFactor:F

    .line 112
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    .line 113
    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibrationStats;->reportAdaptiveScale(F)V

    .line 116
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    new-instance v3, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/vibrator/HalVibration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibrationScaler;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/CombinedVibration;->transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 118
    iput-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 122
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 123
    iget-object v2, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {p1, v3, v0}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_53
    return-void
.end method

.method public waitForEnd()V
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
