.class final Lcom/android/server/vibrator/Vibration;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/Vibration$DebugInfo;,
        Lcom/android/server/vibrator/Vibration$Status;
    }
.end annotation


# static fields
.field private static final DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "Vibration"


# instance fields
.field public final attrs:Landroid/os/VibrationAttributes;

.field public final id:J

.field private final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field private mEffect:Landroid/os/CombinedVibration;

.field private mEndTimeDebug:J

.field private mEndUptimeMillis:J

.field public final mFallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalEffect:Landroid/os/CombinedVibration;

.field private final mStartTimeDebug:J

.field private mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public final opPkg:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final startUptimeMillis:J

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG_DATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # I
    .param p3, "effect"    # Landroid/os/CombinedVibration;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 114
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    .line 115
    iput-object p3, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    .line 116
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    .line 118
    iput-object p4, p0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 119
    iput p5, p0, Lcom/android/server/vibrator/Vibration;->uid:I

    .line 120
    iput-object p6, p0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 121
    iput-object p7, p0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    .line 123
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 124
    return-void
.end method

.method private static transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;
    .registers 7
    .param p0, "combinedEffect"    # Landroid/os/CombinedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    .line 189
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;>;"
    instance-of v0, p0, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_16

    .line 190
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 191
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    return-object v1

    .line 192
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    :cond_16
    instance-of v0, p0, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_47

    .line 193
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    .line 194
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    .line 196
    .local v0, "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 197
    .local v1, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 198
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v3, v4}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 200
    .end local v2    # "i":I
    :cond_42
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2

    .line 201
    .end local v0    # "effects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .end local v1    # "combination":Landroid/os/CombinedVibration$ParallelCombination;
    :cond_47
    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_73

    .line 202
    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 203
    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 206
    .local v1, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 207
    .local v3, "effect":Landroid/os/CombinedVibration;
    invoke-static {v3, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 208
    .end local v3    # "effect":Landroid/os/CombinedVibration;
    goto :goto_5a

    .line 209
    :cond_6e
    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    return-object v2

    .line 212
    .end local v0    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/CombinedVibration;>;"
    .end local v1    # "combination":Landroid/os/CombinedVibration$SequentialCombination;
    :cond_73
    return-object p0
.end method


# virtual methods
.method public addFallback(ILandroid/os/VibrationEffect;)V
    .registers 4
    .param p1, "effectId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 163
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4
    .param p1, "status"    # Lcom/android/server/vibrator/Vibration$Status;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    return-void

    .line 138
    :cond_7
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndUptimeMillis:J

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    .line 141
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 142
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .registers 19

    .line 234
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v1, v0, Lcom/android/server/vibrator/Vibration;->mEndUptimeMillis:J

    iget-wide v3, v0, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    sub-long/2addr v1, v3

    goto :goto_10

    :cond_e
    const-wide/16 v1, -0x1

    :goto_10
    move-wide v8, v1

    .line 235
    .local v8, "durationMs":J
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v4, v0, Lcom/android/server/vibrator/Vibration;->mStartTimeDebug:J

    iget-wide v6, v0, Lcom/android/server/vibrator/Vibration;->mEndTimeDebug:J

    iget-object v10, v0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iget-object v11, v0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    iget v14, v0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v15, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    return-object v1
.end method

.method public getEffect()Landroid/os/CombinedVibration;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    return-object v0
.end method

.method public getFallback(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "effectId"    # I

    .line 155
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public hasEnded()Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRepeating()Z
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public updateEffects(Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/VibrationEffect;",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "updateFn":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;>;"
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/Vibration;->transformCombinedEffect(Landroid/os/CombinedVibration;Ljava/util/function/Function;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 172
    .local v0, "newEffect":Landroid/os/CombinedVibration;
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 173
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez v1, :cond_16

    .line 174
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    iput-object v1, p0, Lcom/android/server/vibrator/Vibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 176
    :cond_16
    iput-object v0, p0, Lcom/android/server/vibrator/Vibration;->mEffect:Landroid/os/CombinedVibration;

    .line 178
    :cond_18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 179
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 181
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method public waitForEnd()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 147
    return-void
.end method
