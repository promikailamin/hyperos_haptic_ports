.class Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1285
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 1286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1291
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    goto :goto_31

    .line 1300
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    .line 1301
    :try_start_10
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    move v2, v3

    .line 1302
    .local v2, "allowThrottle":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3, v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateAllTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;Z)V

    .line 1303
    .end local v2    # "allowThrottle":Z
    monitor-exit v1

    goto :goto_31

    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_21
    throw v2

    .line 1294
    .restart local p0    # "this":Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :pswitch_22
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_33

    .line 1295
    :try_start_27
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1296
    monitor-exit v1

    .line 1297
    goto :goto_31

    .line 1296
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    .end local p0    # "this":Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_30
    throw v2

    .line 1306
    .restart local p0    # "this":Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_31
    monitor-exit v0

    .line 1307
    return-void

    .line 1306
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw v1

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_22
        :pswitch_b
    .end packed-switch
.end method
