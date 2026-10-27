.class public Lcom/android/server/statusbar/StatusBarManagerService$1;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 377
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortTransient(II)V
    .registers 4

    .line 871
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 878
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mclearTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I)V

    .line 879
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 882
    :try_start_1a
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    .registers 3

    .line 1018
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$maddQsTileToFrontOrEnd(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public appTransitionCancelled(I)V
    .registers 3

    .line 671
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 678
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 681
    :try_start_11
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public appTransitionFinished(I)V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 488
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 489
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 492
    :try_start_16
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionFinished(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    :goto_19
    return-void
.end method

.method public appTransitionPending(I)V
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 661
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 664
    :try_start_11
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public appTransitionStarting(IJJ)V
    .registers 12

    .line 689
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 696
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_17

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 699
    :try_start_14
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(IJJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    :goto_17
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 539
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public collapsePanels()V
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 569
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public confirmImmersivePrompt()V
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 743
    :cond_9
    :try_start_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->confirmImmersivePrompt()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :goto_12
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 1

    .line 577
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 580
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .registers 3

    .line 556
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 559
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 902
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 905
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public immersiveModeChanged(IIZI)V
    .registers 6

    .line 751
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1f

    .line 754
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_1f

    .line 761
    :cond_12
    sget-boolean p1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez p1, :cond_1f

    .line 764
    :try_start_16
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->immersiveModeChanged(IZI)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    :goto_1f
    return-void
.end method

.method public moveFocusedTaskToDesktop(I)V
    .registers 2

    .line 996
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 999
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToDesktop(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public moveFocusedTaskToFullscreen(I)V
    .registers 2

    .line 966
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 969
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToFullscreen(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public moveFocusedTaskToStageSplit(IZ)V
    .registers 3

    .line 976
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 979
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 2

    .line 425
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 428
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onCameraLaunchGestureDetected(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public onDisplayAddSystemDecorations(I)V
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 797
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 800
    :try_start_11
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onDisplayAddSystemDecorations(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public onDisplayRemoveSystemDecorations(I)V
    .registers 3

    .line 807
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 817
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 820
    :try_start_11
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onDisplayRemoveSystemDecorations(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 456
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->onEmergencyActionLaunchGestureDetected()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public onProposedRotationChanged(IIZ)V
    .registers 5

    .line 773
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1a

    .line 780
    :cond_9
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 782
    :try_start_11
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .registers 20

    .line 830
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 837
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetBarAttributes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 840
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v2

    if-eqz v2, :cond_34

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 843
    :try_start_31
    invoke-interface/range {v2 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :goto_34
    return-void
.end method

.method public onWalletLaunchGestureDetected()V
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 439
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->onWalletLaunchGestureDetected()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 3

    .line 1028
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public preloadRecentApps()V
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 529
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public removeQsTile(Landroid/content/ComponentName;)V
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public requestMagnificationConnection(Z)Z
    .registers 2

    .line 912
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 915
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestMagnificationConnection(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentUser(I)V
    .registers 2

    .line 520
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmCurrentUserId(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    return-void
.end method

.method public setDisableFlags(IILjava/lang/String;)V
    .registers 4

    .line 465
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 605
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 3

    .line 611
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public setImeWindowStatus(IIIZ)V
    .registers 5

    .line 598
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(IIIZ)V

    return-void
.end method

.method public setNavigationBarLumaSamplingEnabled(IZ)V
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 933
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 936
    :try_start_11
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
    .registers 2

    .line 380
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmNotificationDelegate(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)V

    return-void
.end method

.method public setTopAppHidesStatusBar(IZ)V
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_14

    .line 714
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 717
    :try_start_11
    invoke-interface {p0, p2}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .registers 4

    .line 943
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 944
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmUdfpsRefreshRateRequestCallback(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 945
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_19

    .line 946
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 949
    :try_start_15
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void

    :catchall_19
    move-exception p0

    .line 945
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public setWindowState(III)V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 644
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 647
    :try_start_11
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(III)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public showAssistDisclosure()V
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 406
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showAssistDisclosure()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public showChargingAnimation(I)V
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 619
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showWirelessChargingAnimation(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V
    .registers 4

    .line 1007
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1010
    :try_start_8
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 630
    :try_start_8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public showRearDisplayDialog(I)V
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 959
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRearDisplayDialog(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public showRecentApps(Z)V
    .registers 2

    .line 546
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 549
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public showScreenPinningRequest(II)V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUser(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_14

    .line 392
    :cond_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 395
    :try_start_11
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    :goto_14
    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;Z)Z
    .registers 6

    .line 724
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmContext(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110265

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return v1

    .line 727
    :cond_15
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 730
    :try_start_1d
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_22

    const/4 p0, 0x1

    return p0

    :catch_22
    :cond_22
    return v1
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .registers 18

    .line 891
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_15

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 894
    :try_start_12
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method public showTransient(IIZ)V
    .registers 5

    .line 853
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$misVisibleBackgroundUserOnDisplay(Lcom/android/server/statusbar/StatusBarManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1d

    .line 860
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mshowTransient(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I)V

    .line 861
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 864
    :try_start_1a
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(IIZ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 2

    .line 414
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 417
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 2

    .line 587
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 590
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public toggleRecentApps()V
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 512
    :try_start_8
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method
