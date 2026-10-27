.class public Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;
.super Ljava/lang/Object;
.source "PhysicalDisplaySwitchTransitionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

.field private final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsFolded:Z

.field private mTransition:Lcom/android/server/wm/Transition;

.field private final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsFolded(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mIsFolded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TransitionController;)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "transitionController"    # Lcom/android/server/wm/TransitionController;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 49
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 52
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 54
    if-eqz v1, :cond_2e

    .line 55
    new-instance v2, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;-><init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    .line 56
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 60
    :cond_2e
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v0, :cond_9

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 66
    :cond_9
    return-void
.end method

.method public onDisplayUpdated()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_a

    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 110
    :cond_a
    return-void
.end method

.method public requestDisplaySwitchTransitionIfNeeded(IIIII)V
    .registers 22
    .param p1, "displayId"    # I
    .param p2, "oldDisplayWidth"    # I
    .param p3, "oldDisplayHeight"    # I
    .param p4, "newDisplayWidth"    # I
    .param p5, "newDisplayHeight"    # I

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 74
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    .line 76
    :cond_14
    iget-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mIsFolded:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_31

    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11101e0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 78
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    move v1, v3

    .line 80
    .local v1, "shouldRequestUnfoldTransition":Z
    :goto_32
    if-nez v1, :cond_35

    .line 81
    return-void

    .line 84
    :cond_35
    new-instance v4, Landroid/window/TransitionRequestInfo$DisplayChange;

    move/from16 v5, p1

    invoke-direct {v4, v5}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 87
    .local v4, "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct {v6, v3, v3, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v15, v6

    .line 88
    .local v15, "startAbsBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v15}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 89
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v12, p4

    move/from16 v11, p5

    invoke-direct {v6, v3, v3, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v6

    .line 90
    .local v3, "endAbsBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 91
    invoke-virtual {v4, v2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 93
    iget-object v6, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v7, 0x6

    const/4 v8, 0x0

    iget-object v10, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    move-object v9, v10

    move-object v11, v2

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object v2

    .line 98
    .local v2, "t":Lcom/android/server/wm/Transition;
    if-eqz v2, :cond_7a

    .line 99
    iget-object v6, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    .line 100
    iget-object v6, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 101
    iput-object v2, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 103
    :cond_7a
    return-void
.end method
