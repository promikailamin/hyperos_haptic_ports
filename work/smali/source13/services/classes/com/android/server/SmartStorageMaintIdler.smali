.class public Lcom/android/server/SmartStorageMaintIdler;
.super Landroid/app/job/JobService;
.source "SmartStorageMaintIdler.java"


# static fields
.field private static final SMART_MAINT_JOB_ID:I = 0xaf8

.field private static final SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "SmartStorageMaintIdler"


# instance fields
.field private final mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmJobParams(Lcom/android/server/SmartStorageMaintIdler;)Landroid/app/job/JobParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/SmartStorageMaintIdler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStarted(Lcom/android/server/SmartStorageMaintIdler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/SmartStorageMaintIdler;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 39
    new-instance v0, Lcom/android/server/SmartStorageMaintIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/SmartStorageMaintIdler$1;-><init>(Lcom/android/server/SmartStorageMaintIdler;)V

    iput-object v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static scheduleSmartIdlePass(Landroid/content/Context;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nMinutes"    # I

    .line 74
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 75
    .local v0, "ms":Lcom/android/server/StorageManagerService;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/StorageManagerService;->isPassedLifetimeThresh()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2e

    .line 79
    :cond_b
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 81
    .local v1, "tm":Landroid/app/job/JobScheduler;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 83
    .local v2, "nextScheduleTime":J
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    const/16 v5, 0xaf8

    sget-object v6, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 86
    .local v4, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v4, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 87
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 88
    return-void

    .line 76
    .end local v1    # "tm":Landroid/app/job/JobScheduler;
    .end local v2    # "nextScheduleTime":J
    .end local v4    # "builder":Landroid/app/job/JobInfo$Builder;
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 55
    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 56
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 57
    .local v0, "ms":Lcom/android/server/StorageManagerService;
    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 58
    iput-boolean v1, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    .line 59
    iget-object v2, p0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService;->runSmartIdleMaint(Ljava/lang/Runnable;)V

    .line 61
    :cond_e
    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Z

    .line 67
    return v0
.end method
