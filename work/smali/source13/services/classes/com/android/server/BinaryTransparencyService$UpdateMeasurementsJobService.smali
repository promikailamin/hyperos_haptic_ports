.class public Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;
.super Landroid/app/job/JobService;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMeasurementsJobService"
.end annotation


# static fields
.field private static final COMPUTE_APEX_MODULE_SHA256_JOB_ID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 394
    const-class v0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->COMPUTE_APEX_MODULE_SHA256_JOB_ID:I

    .line 394
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Lcom/android/server/BinaryTransparencyService;

    .line 434
    const-string v0, "TransparencyService"

    const-string v1, "Scheduling APEX & Module SHA256 digest computation job"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 436
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    if-nez v1, :cond_17

    .line 437
    const-string v2, "Failed to obtain an instance of JobScheduler."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 441
    :cond_17
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget v3, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->COMPUTE_APEX_MODULE_SHA256_JOB_ID:I

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 443
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 444
    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 446
    .local v2, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v5

    if-eq v5, v4, :cond_3e

    .line 447
    const-string v3, "Failed to schedule job to update binary measurements."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 450
    :cond_3e
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    .line 450
    const-string v3, "Job %d to update binary measurements scheduled successfully."

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method


# virtual methods
.method synthetic lambda$onStartJob$0$com-android-server-BinaryTransparencyService$UpdateMeasurementsJobService(Landroid/app/job/JobParameters;)V
    .registers 7
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 412
    const-string/jumbo v0, "transparency"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 413
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 414
    invoke-static {v0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IBinaryTransparencyService;

    move-result-object v1

    .line 416
    .local v1, "iBtsService":Lcom/android/internal/os/IBinaryTransparencyService;
    :try_start_c
    invoke-interface {v1}, Lcom/android/internal/os/IBinaryTransparencyService;->getApexInfo()Ljava/util/Map;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_15

    .line 420
    nop

    .line 421
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 422
    return-void

    .line 417
    :catch_15
    move-exception v2

    .line 418
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TransparencyService"

    const-string v4, "Updating binary measurements was interrupted."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 399
    const-string v0, "TransparencyService"

    const-string v1, "Job to update binary measurements started."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    sget v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->COMPUTE_APEX_MODULE_SHA256_JOB_ID:I

    if-eq v0, v1, :cond_11

    .line 401
    const/4 v0, 0x0

    return v0

    .line 407
    :cond_11
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 429
    const/4 v0, 0x0

    return v0
.end method
