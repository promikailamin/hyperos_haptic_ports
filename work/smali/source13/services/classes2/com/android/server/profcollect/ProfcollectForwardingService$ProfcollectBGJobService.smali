.class public Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;
.super Landroid/app/job/JobService;
.source "ProfcollectForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/profcollect/ProfcollectForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfcollectBGJobService"
.end annotation


# static fields
.field private static final JOB_IDLE_PROCESS:I = 0x3fad1

.field private static final JOB_SERVICE_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 194
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->JOB_SERVICE_NAME:Landroid/content/ComponentName;

    .line 194
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic lambda$onStartJob$0()V
    .registers 3

    .line 220
    :try_start_0
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsSelfService()Lcom/android/server/profcollect/ProfcollectForwardingService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$fgetmIProfcollect(Lcom/android/server/profcollect/ProfcollectForwardingService;)Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/profcollect/IProfCollectd;->process()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 224
    goto :goto_29

    .line 221
    :catch_c
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process profiles in background: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v2, "ProfcollectForwardingService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 202
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 204
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService;->JOB_SERVICE_NAME:Landroid/content/ComponentName;

    const v3, 0x3fad1

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 205
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetBG_PROCESS_PERIOD()J

    move-result-wide v2

    .line 207
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 209
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 213
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    const-string v0, "ProfcollectForwardingService"

    const-string v1, "Starting background process job"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_d
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectBGJobService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 232
    const/4 v0, 0x0

    return v0
.end method
