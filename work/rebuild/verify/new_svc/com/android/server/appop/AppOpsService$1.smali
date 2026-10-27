.class public Lcom/android/server/appop/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 355
    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 356
    new-instance v1, Lcom/android/server/appop/AppOpsService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$1$1;-><init>(Lcom/android/server/appop/AppOpsService$1;)V

    .line 362
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method
