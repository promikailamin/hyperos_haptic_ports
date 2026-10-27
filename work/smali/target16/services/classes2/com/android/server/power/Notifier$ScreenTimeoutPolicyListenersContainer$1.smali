.class public Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;
.super Landroid/os/RemoteCallbackList;
.source "Notifier.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

.field public final synthetic val$this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Lcom/android/server/power/Notifier;)V
    .registers 3

    .line 1408
    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iput-object p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->val$this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 1408
    check-cast p1, Landroid/os/IScreenTimeoutPolicyListener;

    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->onCallbackDied(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public onCallbackDied(Landroid/os/IScreenTimeoutPolicyListener;)V
    .registers 3

    .line 1411
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iget-object v0, v0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmLock(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1412
    :try_start_9
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-static {p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->-$$Nest$fgetmLastReportedState(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p0
.end method
