.class final Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;
.super Landroid/os/Handler;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeviceIdleJobsDelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 304
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 305
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 306
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 310
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    goto :goto_47

    .line 313
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_b
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmDeviceIdleUpdateFunctor(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->prepare()V

    .line 315
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmDeviceIdleUpdateFunctor(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 316
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmDeviceIdleUpdateFunctor(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 317
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmDeviceIdleUpdateFunctor(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {v1, v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 320
    :cond_42
    monitor-exit v0

    goto :goto_47

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_44

    throw v1

    .line 323
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
