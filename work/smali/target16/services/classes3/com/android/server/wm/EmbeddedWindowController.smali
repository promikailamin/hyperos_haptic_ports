.class public Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Ljava/lang/Object;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mWindows:Landroid/util/ArrayMap;

.field public mWindowsByInputTransferToken:Landroid/util/ArrayMap;

.field public mWindowsByWindowToken:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$BS8sNYvr200yoQQ-WxXf5a9znDs(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/EmbeddedWindowController;->lambda$add$0(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/input/InputManagerService;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .registers 6

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V

    .line 88
    iget-object p2, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    invoke-interface {p2, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    return-void

    .line 97
    :catch_26
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object p0
.end method

.method public getByHostWindow(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_24

    .line 156
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 157
    iget-object v3, v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_21

    if-nez v1, :cond_1e

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :cond_1e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_24
    return-object v1
.end method

.method public getByInputTransferToken(Landroid/window/InputTransferToken;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 2

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object p0
.end method

.method public getByWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object p0
.end method

.method public final isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z
    .registers 7

    const/4 p0, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p2, :cond_16

    .line 170
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_15

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x18f294284d81c31cL    # -2.5602865557940637E188

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_15
    return v1

    .line 174
    :cond_16
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 176
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2c

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0xce7e638d4a03bf1L

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2c
    return v1

    .line 181
    :cond_2d
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_4c

    .line 182
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_4b

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x96251081c1431a2L

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4b
    return v1

    .line 188
    :cond_4c
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputChannelToken()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_63

    .line 189
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_62

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x7ad897a35fe3389L

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_62
    return v1

    .line 194
    :cond_63
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-nez p1, :cond_78

    .line 195
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_77

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x7871a9458b81c6baL    # -2.80409086366314E-272

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_77
    return v1

    :cond_78
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$add$0(Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_36

    .line 132
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 133
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_33

    .line 134
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public remove(Landroid/os/IBinder;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_37

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 121
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    if-ne v2, p1, :cond_34

    .line 122
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {p1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 123
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_37
    return-void
.end method

.method public transferToEmbedded(ILcom/android/server/wm/WindowState;Landroid/window/InputTransferToken;)Z
    .registers 7

    .line 223
    invoke-virtual {p0, p3}, Lcom/android/server/wm/EmbeddedWindowController;->getByInputTransferToken(Landroid/window/InputTransferToken;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object p3

    .line 224
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/EmbeddedWindowController;->isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 227
    :cond_c
    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne p1, v0, :cond_29

    .line 231
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 233
    invoke-virtual {p3}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputChannelToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    .line 231
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 235
    iput-boolean v2, p3, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BackNavigationController;->onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V

    :cond_28
    return p1

    .line 228
    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Transfer request must originate from owner of transferFromToken"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transferToHost(ILandroid/window/InputTransferToken;Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 204
    invoke-virtual {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->getByInputTransferToken(Landroid/window/InputTransferToken;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object p2

    .line 205
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/EmbeddedWindowController;->isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 208
    :cond_c
    iget v0, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    if-ne p1, v0, :cond_22

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 213
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputChannelToken()Landroid/os/IBinder;

    move-result-object p1

    iget-object p3, p3, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 216
    iput-boolean v1, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    :cond_21
    return p0

    .line 209
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Transfer request must originate from owner of transferFromToken"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .registers 4

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 109
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-nez p0, :cond_19

    .line 112
    const-string p0, "WindowManager"

    const-string p1, "Could not find the embedding process."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_19
    iget-object p1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->addHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
