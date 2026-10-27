.class public Lcom/android/server/pm/BackgroundDexOptServiceStub;
.super Ljava/lang/Object;
.source "BackgroundDexOptServiceStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/BackgroundDexOptServiceStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/pm/BackgroundDexOptServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BackgroundDexOptServiceStub;

    return-object v0
.end method


# virtual methods
.method public ifRunIdleOptimization(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BackgroundDexOptJobService;Ljava/util/List;Landroid/app/job/JobParameters;Z)[Z
    .registers 12
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "job"    # Lcom/android/server/pm/BackgroundDexOptJobService;
    .param p4, "params"    # Landroid/app/job/JobParameters;
    .param p5, "completed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/BackgroundDexOptJobService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/job/JobParameters;",
            "Z)[Z"
        }
    .end annotation

    .line 24
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 25
    .local v0, "result":[Z
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getService()Lcom/android/server/pm/BackgroundDexOptService;

    move-result-object v1

    .line 26
    invoke-virtual {p4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x321

    if-ne v2, v5, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v4

    .line 25
    :goto_14
    invoke-virtual {v1, p1, p3, v2}, Lcom/android/server/pm/BackgroundDexOptService;->miuiRunIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result v1

    aput-boolean v1, v0, v4

    .line 27
    aput-boolean v4, v0, v3

    .line 28
    return-object v0
.end method

.method initInternal(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/BackgroundDexOptService$Injector;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "Bgds"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "injector"    # Lcom/android/server/pm/BackgroundDexOptService$Injector;
    .param p3, "dexoptServiceName"    # Landroid/content/ComponentName;

    .line 17
    return-void
.end method

.method public miuiRegisterReceiver()V
    .registers 1

    .line 19
    return-void
.end method

.method public rescheduleIdleOptJob()V
    .registers 1

    .line 20
    return-void
.end method

.method public rescheduleIdleOptJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;ZZ)V
    .registers 6
    .param p1, "job"    # Lcom/android/server/pm/BackgroundDexOptJobService;
    .param p2, "params"    # Landroid/app/job/JobParameters;
    .param p3, "completed"    # Z
    .param p4, "isPowerConstraint"    # Z

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/pm/BackgroundDexOptJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 34
    return-void
.end method
