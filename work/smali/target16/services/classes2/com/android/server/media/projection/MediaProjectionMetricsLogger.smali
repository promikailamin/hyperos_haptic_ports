.class public Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
.super Ljava/lang/Object;
.source "MediaProjectionMetricsLogger.java"


# static fields
.field public static sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;


# instance fields
.field public final mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

.field public mPreviousProjectionState:I

.field public final mPreviousTargetBounds:Landroid/graphics/Rect;

.field public mPreviousTargetWindowingMode:I

.field public final mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field public final mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    .line 89
    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    .line 96
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    .line 97
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 98
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
    .registers 4

    .line 103
    sget-object v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    if-nez v0, :cond_18

    .line 104
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    new-instance v1, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-direct {v1}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;-><init>()V

    .line 107
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    move-result-object v2

    .line 108
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;-><init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 110
    :cond_18
    sget-object p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    return-object p0
.end method


# virtual methods
.method public final captureBoundsToTargetChangeType(Landroid/graphics/Rect;)I
    .registers 5

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const-string v2, "MediaProjectionMetricsLogger"

    if-eq v0, v1, :cond_22

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq p1, p0, :cond_22

    .line 281
    const-string/jumbo p0, "targetChangeType= changeBounds"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    .line 284
    :cond_22
    const-string/jumbo p0, "targetChangeType= changePosition"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method public contentToRecordToTargetType(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_d

    const/4 v0, 0x2

    if-eq p1, p0, :cond_c

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v0

    :cond_d
    return p0
.end method

.method public logAppSelectorDisplayed(I)V
    .registers 11

    .line 187
    const-string v0, "MediaProjectionMetricsLogger"

    const-string v1, "logAppSelectorDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 189
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v5, -0x2

    const/4 v6, -0x1

    move-object v1, p0

    move v4, p1

    .line 188
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public logChangedCaptureBounds(IIILandroid/graphics/Rect;)V
    .registers 17

    move-object/from16 v11, p4

    .line 258
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logChangedCaptureBounds: captureBounds= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " position= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 263
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    .line 264
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    move-result v2

    iget v5, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    .line 268
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 269
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 270
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 271
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 272
    invoke-virtual {p0, v11}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->captureBoundsToTargetChangeType(Landroid/graphics/Rect;)I

    move-result v10

    move-object v0, p0

    move v3, p2

    move v4, p3

    .line 262
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeTargetChanged(IIIIIIIIII)V

    .line 273
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public logChangedWindowingMode(IIII)V
    .registers 17

    move/from16 v11, p4

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logChangedWindowingMode: windowingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {v11}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v1, "targetChangeType= changeWindowingMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 233
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    .line 234
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    move-result v2

    .line 237
    invoke-virtual {p0, v11}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->windowingModeToTargetWindowingMode(I)I

    move-result v5

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 239
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    const/4 v10, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    .line 232
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeTargetChanged(IIIIIIIIII)V

    .line 243
    iput v11, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    return-void
.end method

.method public logInProgress(II)V
    .registers 12

    .line 205
    const-string v0, "MediaProjectionMetricsLogger"

    const-string v1, "logInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 207
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v6, -0x1

    move-object v1, p0

    move v4, p1

    move v5, p2

    .line 206
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public logInitiated(II)V
    .registers 12

    .line 131
    const-string v0, "MediaProjectionMetricsLogger"

    const-string v1, "logInitiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->timeSinceLastActiveSession()Ljava/time/Duration;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, -0x1

    :goto_10
    move v6, v0

    goto :goto_18

    .line 136
    :cond_12
    invoke-virtual {v0}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_10

    .line 137
    :goto_18
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 138
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->createAndGetNewSessionId()I

    move-result v2

    const/4 v5, -0x2

    const/4 v8, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move v4, p1

    move v7, p2

    .line 137
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public logPermissionRequestDisplayed(I)V
    .registers 11

    .line 154
    const-string v0, "MediaProjectionMetricsLogger"

    const-string v1, "logPermissionRequestDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v5, -0x2

    const/4 v6, -0x1

    move-object v1, p0

    move v4, p1

    .line 155
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public logProjectionPermissionRequestCancelled(I)V
    .registers 11

    .line 171
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 172
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x8

    const/4 v5, -0x2

    const/4 v6, -0x1

    move-object v1, p0

    move v4, p1

    .line 171
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    return-void
.end method

.method public logStopped(III)V
    .registers 14

    .line 350
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 353
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logStopped: wasCaptureInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stopReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 356
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v3

    const/4 v8, 0x0

    .line 362
    invoke-virtual {p0, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->stopReasonToSessionStopSource(I)I

    move-result v9

    const/4 v4, 0x7

    const/4 v7, -0x1

    move-object v2, p0

    move v5, p1

    move v6, p2

    .line 355
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    if-eqz v0, :cond_40

    .line 365
    iget-object p0, v2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->registerActiveSessionEnded()V

    :cond_40
    return-void
.end method

.method public stopReasonToSessionStopSource(I)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_1c

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0xa

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_b
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_12
    const/4 p0, 0x5

    return p0

    :pswitch_14
    const/4 p0, 0x4

    return p0

    :pswitch_16
    const/4 p0, 0x3

    return p0

    :pswitch_18
    const/4 p0, 0x2

    return p0

    :pswitch_1a
    const/4 p0, 0x1

    return p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public windowingModeToTargetWindowingMode(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_f

    const/4 p0, 0x5

    if-eq p1, p0, :cond_d

    const/4 p0, 0x6

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x3

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :cond_f
    const/4 p0, 0x2

    return p0
.end method

.method public final writeStateChanged(IIIIIII)V
    .registers 18

    .line 404
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    const/16 v1, 0x2d9

    iget v4, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;->writeStateChanged(IIIIIIIII)V

    .line 414
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    return-void
.end method

.method public final writeTargetChanged(IIIIIIIIII)V
    .registers 23

    .line 428
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    const/16 v1, 0x2da

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;->writeTargetChanged(IIIIIIIIIII)V

    return-void
.end method
