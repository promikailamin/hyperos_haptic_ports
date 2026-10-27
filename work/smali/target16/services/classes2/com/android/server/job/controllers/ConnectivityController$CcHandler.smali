.class public Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "ConnectivityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .registers 3

    .line 1878
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 1879
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1884
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1885
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_93

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7f

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_63

    const/4 v5, 0x3

    if-eq v1, v5, :cond_36

    const/4 p1, 0x4

    if-eq v1, p1, :cond_19

    goto/16 :goto_9e

    .line 1921
    :cond_19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_33

    .line 1923
    :try_start_21
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSystemDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/net/Network;

    move-result-object p0

    if-nez p0, :cond_2e

    .line 1924
    monitor-exit p1

    goto/16 :goto_9e

    :catchall_2c
    move-exception p0

    goto :goto_31

    .line 1927
    :cond_2e
    monitor-exit p1

    goto/16 :goto_9e

    .line 1977
    :goto_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_2c

    :try_start_32
    throw p0

    :catchall_33
    move-exception p0

    goto/16 :goto_a3

    .line 1908
    :cond_36
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1909
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eq p1, v5, :cond_3d

    move v2, v3

    .line 1911
    :cond_3d
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_33

    .line 1912
    :try_start_42
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmBackgroundMeteredAllowed(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eq v3, v2, :cond_5f

    .line 1914
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmBackgroundMeteredAllowed(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1915
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0, v1, v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    goto :goto_5f

    :catchall_5d
    move-exception p0

    goto :goto_61

    .line 1917
    :cond_5f
    :goto_5f
    monitor-exit p1

    goto :goto_9e

    :goto_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_5d

    :try_start_62
    throw p0

    .line 1900
    :cond_63
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1901
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_33

    .line 1902
    :try_start_6b
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmBackgroundMeteredAllowed(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1903
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {p0, v1, v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1904
    monitor-exit p1

    goto :goto_9e

    :catchall_7c
    move-exception p0

    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_6b .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw p0

    .line 1893
    :cond_7f
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_33

    .line 1894
    :try_start_84
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_89

    move v2, v3

    .line 1895
    :cond_89
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateAllTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;Z)V

    .line 1896
    monitor-exit v1

    goto :goto_9e

    :catchall_90
    move-exception p0

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_90

    :try_start_92
    throw p0

    .line 1887
    :cond_93
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_33

    .line 1888
    :try_start_98
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1889
    monitor-exit p1
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_a0

    .line 1980
    :goto_9e
    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_33

    return-void

    :catchall_a0
    move-exception p0

    .line 1889
    :try_start_a1
    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw p0

    .line 1980
    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_33

    throw p0
.end method
