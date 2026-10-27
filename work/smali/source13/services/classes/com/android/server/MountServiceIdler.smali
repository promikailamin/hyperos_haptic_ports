.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# static fields
.field private static ABORT_IDLE_MAINT_DELAY_TIME:I = 0x0

.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFinishCallback(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJobParams(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/MountServiceIdler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStarted(Lcom/android/server/MountServiceIdler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/MountServiceIdler;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 38
    const/16 v0, 0x328

    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    .line 41
    const v0, 0xea60

    sput v0, Lcom/android/server/MountServiceIdler;->ABORT_IDLE_MAINT_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 46
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private static offsetFromTodayMidnight(II)Ljava/util/Calendar;
    .registers 5
    .param p0, "nDays"    # I
    .param p1, "nHours"    # I

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 150
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 151
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 153
    return-object v0
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-static {}, Lcom/android/server/MountServiceIdlerStub;->getInstance()Lcom/android/server/MountServiceIdlerStub;

    move-result-object v0

    sget v1, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v2, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/MountServiceIdlerStub;->internalScheduleIdlePass(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    return-void

    .line 122
    :cond_f
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 124
    .local v0, "tm":Landroid/app/job/JobScheduler;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 125
    .local v3, "today3AM":J
    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 126
    .local v5, "today4AM":J
    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 129
    .local v7, "tomorrow3AM":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v9, v3

    if-lez v2, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v9, v5

    if-gez v2, :cond_4d

    .line 130
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0xa

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .local v9, "nextScheduleTime":J
    goto :goto_53

    .line 132
    .end local v9    # "nextScheduleTime":J
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v7, v9

    .line 135
    .restart local v9    # "nextScheduleTime":J
    :goto_53
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget v11, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v12, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v2, v11, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 136
    .local v2, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 137
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 138
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 139
    invoke-virtual {v2, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 140
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 143
    .end local v0    # "tm":Landroid/app/job/JobScheduler;
    .end local v2    # "builder":Landroid/app/job/JobInfo$Builder;
    .end local v3    # "today3AM":J
    .end local v5    # "today4AM":J
    .end local v7    # "tomorrow3AM":J
    .end local v9    # "nextScheduleTime":J
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 66
    invoke-static {}, Lcom/android/server/MountServiceIdlerStub;->getInstance()Lcom/android/server/MountServiceIdlerStub;

    move-result-object v0

    sget v1, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v2, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/MountServiceIdlerStub;->runIdleMaint(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 67
    return v1

    .line 75
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_18

    .line 77
    goto :goto_19

    .line 76
    :catch_18
    move-exception v0

    .line 82
    :goto_19
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 83
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 84
    .local v0, "ms":Lcom/android/server/StorageManagerService;
    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 85
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v3

    .line 86
    :try_start_23
    iput-boolean v2, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 87
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2c

    .line 88
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 87
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    .line 90
    :cond_2f
    :goto_2f
    if-eqz v0, :cond_32

    move v1, v2

    :cond_32
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 98
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 99
    .local v0, "ms":Lcom/android/server/StorageManagerService;
    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 102
    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v2

    .line 103
    :try_start_8
    iget-boolean v3, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    if-eqz v3, :cond_36

    .line 104
    const-string v3, "MountServiceIdler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abort idle maint delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/MountServiceIdler;->ABORT_IDLE_MAINT_DELAY_TIME:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget v3, Lcom/android/server/MountServiceIdler;->ABORT_IDLE_MAINT_DELAY_TIME:I

    iget-object v4, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/StorageManagerService;->abortIdleMaintDelayed(ILjava/lang/Runnable;)V

    .line 106
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 108
    :cond_36
    monitor-exit v2

    goto :goto_3b

    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v1

    .line 111
    :cond_3b
    :goto_3b
    return v1
.end method
