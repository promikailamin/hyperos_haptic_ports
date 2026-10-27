.class Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field private mFocusedApp:Ljava/lang/String;

.field private mFolded:Ljava/lang/Boolean;

.field private final mFoldedArea:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayFoldListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mOverrideFoldedArea:Landroid/graphics/Rect;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p3, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p4, "displayId"    # I
    .param p5, "foldedArea"    # Landroid/graphics/Rect;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 51
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 54
    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 60
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 61
    iput-object p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 62
    iput p4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 64
    iput-object p6, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    .line 66
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 67
    .local v0, "deviceStateManager":Landroid/hardware/devicestate/DeviceStateManager;
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v3, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    invoke-direct {v2, p1, v3}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 69
    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 177
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 178
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 179
    .local v0, "windowManagerService":Lcom/android/server/wm/WindowManagerInternal;
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 180
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/hardware/display/DisplayManagerInternal;

    .line 182
    .local v8, "displayService":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "configFoldedArea":Ljava/lang/String;
    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2b

    .line 188
    :cond_25
    invoke-static {v9}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v10, v1

    .local v1, "foldedArea":Landroid/graphics/Rect;
    goto :goto_31

    .line 186
    .end local v1    # "foldedArea":Landroid/graphics/Rect;
    :cond_2b
    :goto_2b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v1

    .line 191
    .local v10, "foldedArea":Landroid/graphics/Rect;
    :goto_31
    new-instance v11, Lcom/android/server/policy/DisplayFoldController;

    .line 192
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move v5, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/DisplayFoldController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V

    .line 191
    return-object v11
.end method

.method private setDeviceFolded(Z)V
    .registers 10
    .param p1, "folded"    # Z

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_b

    .line 87
    return-void

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .local v0, "foldedArea":Landroid/graphics/Rect;
    goto :goto_22

    .line 93
    .end local v0    # "foldedArea":Landroid/graphics/Rect;
    :cond_16
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .restart local v0    # "foldedArea":Landroid/graphics/Rect;
    goto :goto_22

    .line 96
    .end local v0    # "foldedArea":Landroid/graphics/Rect;
    :cond_21
    const/4 v0, 0x0

    .line 100
    .restart local v0    # "foldedArea":Landroid/graphics/Rect;
    :goto_22
    const/4 v1, 0x1

    if-eqz v0, :cond_82

    .line 101
    if-eqz p1, :cond_6c

    .line 103
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 105
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 107
    .local v2, "dx":I
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 111
    .local v3, "dy":I
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v4, v5, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 112
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 112
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    .line 114
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    neg-int v6, v2

    neg-int v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 115
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    goto :goto_82

    .line 116
    :cond_6c
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 117
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    .line 118
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v2, v3, v4, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 122
    :cond_82
    :goto_82
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->setDeviceFolded(Z)V

    .line 123
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/DisplayFoldDurationLogger;->logFocusedAppWithFoldState(ZLjava/lang/String;)V

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 127
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v3, :cond_9f

    .line 128
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->updateOrientationAndModeForFold(ZZ)V

    .line 131
    :cond_9f
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 132
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a6
    if-ge v2, v1, :cond_ba

    .line 134
    :try_start_a8
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayFoldListener;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v3, v4, p1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b5} :catch_b6

    .line 137
    goto :goto_b7

    .line 135
    :catch_b6
    move-exception v3

    .line 132
    :goto_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 139
    .end local v2    # "i":I
    :cond_ba
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    return-void
.end method


# virtual methods
.method finishedGoingToSleep()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedGoingToSleep()V

    .line 73
    return-void
.end method

.method finishedWakingUp()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedWakingUp(Ljava/lang/Boolean;)V

    .line 77
    return-void
.end method

.method getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    return-object v0

    .line 168
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method isFolded()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$new$0$com-android-server-policy-DisplayFoldController(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "folded"    # Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    return-void
.end method

.method synthetic lambda$registerDisplayFoldListener$1$com-android-server-policy-DisplayFoldController(Landroid/view/IDisplayFoldListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 149
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 152
    goto :goto_d

    .line 150
    :catch_c
    move-exception v0

    .line 153
    :goto_d
    return-void
.end method

.method onDefaultDisplayFocusChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    .line 174
    return-void
.end method

.method registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 143
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 144
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 145
    return-void

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 162
    return-void
.end method

.method unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 158
    return-void
.end method
