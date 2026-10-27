.class final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OrientationSensorJudge"
.end annotation


# static fields
.field private static final ROTATION_UNSET:I = -0x1


# instance fields
.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mCancelRotationResolverRequest:Ljava/lang/Runnable;

.field private mCurrentCallbackId:I

.field private mDesiredRotation:I

.field private mLastRotationResolution:I

.field private mLastRotationResolutionTimeStamp:J

.field private mProposedRotation:I

.field private mRotationEvaluationScheduled:Z

.field private mRotationEvaluator:Ljava/lang/Runnable;

.field private mRotationMemorizationTimeoutMillis:J

.field private mRotationResolverTimeoutMillis:J

.field private mTouchEndedTimestampNanos:J

.field private mTouching:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCancelRotationResolverRequest(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCallbackId(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRotationEvaluationScheduled(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinalizeRotation(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowOrientationListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/WindowOrientationListener;

    .line 1104
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    .line 1092
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1094
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1100
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 1361
    new-instance v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    .line 1106
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->setupRotationResolverParameters()V

    .line 1108
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1109
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1110
    return-void
.end method

.method private finalizeRotation(I)V
    .registers 6
    .param p1, "reportedRotation"    # I

    .line 1300
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1301
    :try_start_7
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    .line 1303
    .local v1, "newRotation":I
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    .line 1304
    if-ltz v1, :cond_1d

    .line 1305
    iput v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    .line 1307
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1309
    :cond_1d
    return-void

    .line 1303
    .end local v1    # "newRotation":I
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private isDesiredRotationAcceptableLocked(J)Z
    .registers 9
    .param p1, "now"    # J

    .line 1312
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1313
    return v1

    .line 1315
    :cond_6
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_11

    .line 1316
    return v1

    .line 1318
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private readRotationResolverParameters()V
    .registers 5

    .line 1125
    const-string/jumbo v0, "window_manager"

    const-string/jumbo v1, "rotation_resolver_timeout_millis"

    const-wide/16 v2, 0x2bc

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    .line 1129
    const-string/jumbo v1, "rotation_memorization_timeout_millis"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    .line 1133
    return-void
.end method

.method private rotationToLogEnum(I)I
    .registers 3
    .param p1, "rotation"    # I

    .line 1376
    packed-switch p1, :pswitch_data_e

    .line 1386
    const/4 v0, 0x0

    return v0

    .line 1384
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1382
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1380
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1378
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private scheduleRotationEvaluationIfNecessaryLocked(J)V
    .registers 9
    .param p1, "now"    # J

    .line 1322
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    const-string v1, "WindowOrientationListener"

    if-nez v0, :cond_51

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v0, v2, :cond_d

    goto :goto_51

    .line 1329
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_1e

    .line 1330
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1331
    const-string/jumbo v0, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_1d
    return-void

    .line 1336
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    .line 1338
    .local v2, "timeOfNextPossibleRotationNanos":J
    cmp-long v0, p1, v2

    if-ltz v0, :cond_35

    .line 1339
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1340
    const-string/jumbo v0, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_34
    return-void

    .line 1347
    :cond_35
    sub-long v0, v2, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 1348
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1349
    .local v0, "delayMs":J
    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v4}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1350
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1351
    return-void

    .line 1323
    .end local v0    # "delayMs":J
    .end local v2    # "timeOfNextPossibleRotationNanos":J
    :cond_51
    :goto_51
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1324
    const-string/jumbo v0, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_5d
    return-void
.end method

.method private setupRotationResolverParameters()V
    .registers 4

    .line 1113
    nop

    .line 1114
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    .line 1113
    const-string/jumbo v2, "window_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1121
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->readRotationResolverParameters()V

    .line 1122
    return-void
.end method

.method private unscheduleRotationEvaluationLocked()V
    .registers 3

    .line 1354
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    .line 1355
    return-void

    .line 1357
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmHandler(Lcom/android/server/wm/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1359
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1266
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastRotationResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .registers 5

    .line 1284
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1285
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_b

    .line 1286
    return v2

    .line 1288
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1289
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->isDesiredRotationAcceptableLocked(J)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1290
    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1291
    return v2

    .line 1293
    :cond_1a
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1295
    return v2
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .line 1137
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0
.end method

.method synthetic lambda$setupRotationResolverParameters$0$com-android-server-wm-WindowOrientationListener$OrientationSensorJudge(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1115
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 1116
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "rotation_resolver_timeout_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1117
    const-string/jumbo v1, "rotation_memorization_timeout_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1118
    :cond_16
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->readRotationResolverParameters()V

    .line 1120
    :cond_19
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1258
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1166
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 1167
    .local v0, "reportedRotation":I
    if-ltz v0, :cond_e3

    const/4 v2, 0x3

    if-le v0, v2, :cond_d

    goto/16 :goto_e3

    .line 1171
    :cond_d
    const/16 v2, 0x14d

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1174
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->rotationToLogEnum(I)I

    move-result v5

    const/4 v6, 0x2

    .line 1171
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    .line 1177
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->isRotationResolverEnabled()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 1178
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1179
    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5b

    .line 1180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5b

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reusing the last rotation resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOrientationListener"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    goto :goto_5e

    .line 1186
    :cond_5b
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 1188
    :goto_5e
    return-void

    .line 1191
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez v1, :cond_7b

    .line 1192
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    const-class v2, Landroid/rotationresolver/RotationResolverInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/rotationresolver/RotationResolverInternal;

    iput-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    .line 1194
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez v1, :cond_7b

    .line 1195
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 1196
    return-void

    .line 1200
    :cond_7b
    const/4 v1, 0x0

    .line 1201
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v2, :cond_95

    .line 1202
    nop

    .line 1203
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 1204
    .local v2, "controller":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_95

    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_95

    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_95

    .line 1207
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1211
    .end local v2    # "controller":Lcom/android/server/wm/WindowProcessController;
    :cond_95
    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 1213
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    if-eqz v2, :cond_aa

    .line 1214
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1216
    :cond_aa
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    move-object v10, v2

    .line 1217
    .local v10, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;

    invoke-direct {v2, v10}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;-><init>(Landroid/os/CancellationSignal;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    .line 1218
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1221
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    new-instance v3, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v4}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v6

    iget-wide v7, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    move-object v4, v1

    move v5, v0

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/rotationresolver/RotationResolverInternal;->resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V

    .line 1252
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v10    # "cancellationSignal":Landroid/os/CancellationSignal;
    goto :goto_e2

    .line 1253
    :cond_df
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 1255
    :goto_e2
    return-void

    .line 1168
    :cond_e3
    :goto_e3
    return-void
.end method

.method public onTouchEndLocked(J)V
    .registers 5
    .param p1, "whenElapsedNanos"    # J

    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1156
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1157
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq v0, v1, :cond_12

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1159
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1161
    .end local v0    # "now":J
    :cond_12
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1151
    return-void
.end method

.method public resetLocked(Z)V
    .registers 4
    .param p1, "clearCurrentRotation"    # Z

    .line 1274
    if-eqz p1, :cond_7

    .line 1275
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1276
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1278
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1279
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1280
    invoke-direct {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1281
    return-void
.end method

.method public resetProposedRotation()V
    .registers 2

    .line 1143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1144
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1145
    return-void
.end method
