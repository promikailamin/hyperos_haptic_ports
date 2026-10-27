.class public final Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
.super Ljava/lang/Object;
.source "Notifier.java"


# instance fields
.field public final mLastReportedState:Landroid/util/ArrayMap;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public mScreenTimeoutPolicy:I

.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public static synthetic $r8$lambda$MOtENJn2Hd41HsBJZMj9HMGGcTA(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->lambda$updateScreenTimeoutPolicyAndNotifyIfNeededLocked$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$d9TM40x9oR3NrlOnNwHswWJ-KrU(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->lambda$addListenerLocked$1(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastReportedState(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/Notifier;I)V
    .registers 4

    .line 1406
    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1398
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    .line 1407
    iput p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1408
    new-instance p2, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Lcom/android/server/power/Notifier;)V

    iput-object p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/os/IScreenTimeoutPolicyListener;)V
    .registers 4

    .line 1434
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isEmpty()Z
    .registers 1

    .line 1445
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$addListenerLocked$1(Landroid/os/IScreenTimeoutPolicyListener;)V
    .registers 2

    .line 1435
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public final synthetic lambda$updateScreenTimeoutPolicyAndNotifyIfNeededLocked$0()V
    .registers 3

    .line 1424
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1425
    iget-object v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IScreenTimeoutPolicyListener;

    .line 1426
    invoke-virtual {p0, v1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1428
    :cond_18
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V
    .registers 5

    .line 1451
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmLock(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1452
    :try_start_7
    iget v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1453
    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1454
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_58

    if-eqz v2, :cond_20

    .line 1456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_20

    :cond_1f
    return-void

    .line 1461
    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {p1, v1}, Landroid/os/IScreenTimeoutPolicyListener;->onScreenTimeoutPolicyChanged(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmLock(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_4f
    .catchall {:try_start_20 .. :try_end_2a} :catchall_38

    .line 1464
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_38} :catch_4f
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    .line 1471
    const-string v1, "PowerManagerNotifier"

    const-string v2, "Exception when notifying screen timeout policy change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1472
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmLock(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1473
    :try_start_47
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->removeListenerLocked(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1474
    monitor-exit v0

    goto :goto_57

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_4c

    throw p0

    :catch_4f
    move-exception p0

    .line 1469
    const-string p1, "PowerManagerNotifier"

    const-string v0, "Remote exception when notifying screen timeout policy change"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    return-void

    :catchall_58
    move-exception p0

    .line 1454
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public removeListenerLocked(Landroid/os/IScreenTimeoutPolicyListener;)V
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1441
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateScreenTimeoutPolicyAndNotifyIfNeededLocked(I)V
    .registers 3

    .line 1421
    iput p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1423
    iget-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
