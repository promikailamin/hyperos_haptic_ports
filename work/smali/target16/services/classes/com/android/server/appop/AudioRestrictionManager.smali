.class public Lcom/android/server/appop/AudioRestrictionManager;
.super Ljava/lang/Object;
.source "AudioRestrictionManager.java"


# static fields
.field public static final CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;


# instance fields
.field public mCameraAudioRestriction:I

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mZenModeAudioRestrictions:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$iaowhOSmyVZdt6WZ-QmYjAaDxsU(Ljava/io/PrintWriter;Lcom/android/server/appop/AudioRestrictionManager$Key;Lcom/android/server/appop/AudioRestrictionManager$Restriction;)V
    .registers 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 58
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 59
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 60
    sget-object v2, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x3

    if-ge v4, v3, :cond_4f

    aget v6, v2, v4

    .line 61
    sget-object v7, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_46

    const/4 v9, 0x2

    if-eq v7, v9, :cond_46

    const/4 v9, 0x4

    if-ne v7, v9, :cond_27

    goto :goto_46

    :cond_27
    const/4 v6, 0x5

    if-eq v7, v6, :cond_4c

    const/4 v6, 0x6

    if-eq v7, v6, :cond_4c

    if-eq v7, v5, :cond_4c

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown audio suppression behavior"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioRestriction"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 65
    :cond_46
    :goto_46
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 66
    invoke-virtual {v1, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 73
    :cond_4f
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    const/16 v3, 0x1c

    .line 74
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 53
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x50

    const-string v2, "Historical restrictions"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public static cameraRestrictionModeToName(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    .line 200
    const-string p0, "Unknown"

    return-object p0

    .line 198
    :cond_b
    const-string p0, "MuteVibrationAndSound"

    return-object p0

    .line 196
    :cond_e
    const-string p0, "MuteVibration"

    return-object p0

    .line 194
    :cond_11
    const-string p0, "None"

    return-object p0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 7

    .line 120
    monitor-enter p0

    .line 122
    :try_start_1
    iget p3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz p3, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/16 v1, 0x1c

    if-ne p1, v1, :cond_23

    if-ne p3, v0, :cond_23

    .line 126
    :cond_e
    sget-object p3, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_23

    .line 128
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    if-eqz p3, :cond_23

    const/4 p1, 0x1

    .line 129
    monitor-exit p0

    return p1

    :catchall_21
    move-exception p1

    goto :goto_2e

    .line 135
    :cond_23
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkZenModeRestrictionLocked(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2b

    .line 137
    monitor-exit p0

    return p1

    .line 139
    :cond_2b
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_21

    throw p1
.end method

.method public final checkZenModeRestrictionLocked(IILjava/lang/String;)I
    .registers 6

    .line 144
    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/appop/AudioRestrictionManager$Key;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/appop/AudioRestrictionManager$Key;-><init>(IILcom/android/server/appop/AudioRestrictionManager-IA;)V

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz p0, :cond_21

    if-eqz p3, :cond_1c

    .line 145
    invoke-static {p0}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->-$$Nest$fgetexceptionPackages(Lcom/android/server/appop/AudioRestrictionManager$Restriction;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 146
    :cond_1c
    invoke-static {p0}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->-$$Nest$fgetmode(Lcom/android/server/appop/AudioRestrictionManager$Restriction;)I

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)Z
    .registers 4

    .line 178
    const-string v0, "  Audio Restrictions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    monitor-enter p0

    .line 180
    :try_start_6
    const-string v0, "   Zen Audio Restriction Mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/AudioRestrictionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/appop/AudioRestrictionManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Camera Audio Restriction Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 183
    invoke-static {v1}, Lcom/android/server/appop/AudioRestrictionManager;->cameraRestrictionModeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_3f

    .line 185
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 186
    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const-string v0, "    "

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p0, 0x1

    return p0

    :catchall_3f
    move-exception p1

    .line 184
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public setCameraAudioRestriction(I)V
    .registers 2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_1
    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 173
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setZenModeAudioRestriction(III[Ljava/lang/String;)V
    .registers 7

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    new-instance v0, Lcom/android/server/appop/AudioRestrictionManager$Key;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/appop/AudioRestrictionManager$Key;-><init>(IILcom/android/server/appop/AudioRestrictionManager-IA;)V

    if-eqz p3, :cond_30

    .line 157
    new-instance p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz p4, :cond_14

    .line 158
    invoke-static {p4}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    goto :goto_16

    :catchall_12
    move-exception p1

    goto :goto_44

    :cond_14
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_16
    invoke-direct {p1, p3, p2}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;-><init>(ILjava/util/Set;)V

    .line 159
    iget-object p2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    .line 160
    iget-object p2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;

    invoke-direct {p3, v0, p1}, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;-><init>(Lcom/android/server/appop/AudioRestrictionManager$Key;Lcom/android/server/appop/AudioRestrictionManager$Restriction;)V

    invoke-virtual {p2, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_42

    .line 163
    :cond_30
    iget-object p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 164
    iget-object p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p2, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;

    invoke-direct {p2, v0, v1}, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;-><init>(Lcom/android/server/appop/AudioRestrictionManager$Key;Lcom/android/server/appop/AudioRestrictionManager$Restriction;)V

    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 167
    :cond_42
    :goto_42
    monitor-exit p0

    return-void

    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_12

    throw p1
.end method
