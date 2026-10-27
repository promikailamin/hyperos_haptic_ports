.class Lcom/android/server/wm/BackNavigationController$NavigationMonitor;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public final mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mNavigatingWindow:Lcom/android/server/wm/WindowState;

.field public mObserver:Landroid/os/RemoteCallback;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public static bridge synthetic -$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFocusWindowChanged(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->onFocusWindowChanged(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .registers 2

    .line 820
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    new-instance p1, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;-><init>(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final atSameDisplay(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 906
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 909
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    if-eqz p1, :cond_14

    .line 910
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    if-ne p1, p0, :cond_13

    goto :goto_14

    :cond_13
    return v0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelBackNavigating(Ljava/lang/String;)V
    .registers 4

    .line 914
    invoke-static {p1}, Lcom/android/server/wm/EventLogTags;->writeWmBackNaviCanceled(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 916
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 918
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorAnimationOrTransition()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$mcanCancelAnimations(Lcom/android/server/wm/BackNavigationController;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 919
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 921
    :cond_23
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmCurrentAnimationBuilder(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 922
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmCurrentAnimationBuilder(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$smnotifyAnimationCanceled(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 923
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p1, v0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fputmCurrentAnimationBuilder(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V

    .line 925
    :cond_39
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$mcancelPendingAnimation(Lcom/android/server/wm/BackNavigationController;)V

    return-void
.end method

.method public isMonitorAnimationOrTransition()Z
    .registers 2

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWaitTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isMonitorForRemote()Z
    .registers 2

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 897
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_b

    goto :goto_1b

    .line 900
    :cond_b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 901
    const-string v0, "TouchGestureTransferred"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 902
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public final onFocusWindowChanged(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->atSameDisplay(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 880
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorAnimationOrTransition()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_26

    :cond_13
    if-eqz p1, :cond_26

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_26

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_26

    .line 887
    :cond_21
    const-string p1, "focusWindowChanged"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public startMonitor(Lcom/android/server/wm/WindowState;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 838
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 839
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 841
    :try_start_4
    invoke-virtual {p2}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-void

    .line 844
    :catch_13
    const-string p0, "CoreBackPreview"

    const-string p1, "Failed to link to death"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMonitorForRemote()V
    .registers 4

    .line 849
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_12

    .line 850
    invoke-virtual {v0}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    const/4 v0, 0x0

    .line 853
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    return-void
.end method

.method public stopMonitorTransition()V
    .registers 2

    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method
