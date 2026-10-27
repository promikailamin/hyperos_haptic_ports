.class public Lcom/android/server/wm/ShellRoot;
.super Ljava/lang/Object;
.source "ShellRoot.java"


# instance fields
.field public mAccessibilityWindow:Landroid/view/IWindow;

.field public mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

.field public mClient:Landroid/view/IWindow;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mShellRootLayer:I

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mToken:Lcom/android/server/wm/WindowToken;

.field public mWindowType:I


# direct methods
.method public static synthetic $r8$lambda$L2dx9mPsIUHgcC1vLwzdtiGIa4g(Lcom/android/server/wm/ShellRoot;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ShellRoot;->lambda$setAccessibilityWindow$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$aRcc5NXYaAKQgWwxRszxrGvFTRM(Lcom/android/server/wm/ShellRoot;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ShellRoot;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V
    .registers 9

    .line 55
    const-string v0, "ShellRoot"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 56
    iput-object p2, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 57
    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mShellRootLayer:I

    .line 58
    new-instance v2, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ShellRoot;I)V

    iput-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 60
    :try_start_13
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_98

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    const/4 v2, 0x1

    if-eqz p3, :cond_3e

    if-ne p3, v2, :cond_27

    const/16 p3, 0x7f6

    .line 72
    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    goto :goto_42

    .line 75
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not an acceptable shell root layer."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    const/16 p3, 0x7f2

    .line 69
    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    .line 78
    :goto_42
    new-instance p3, Lcom/android/server/wm/WindowToken$Builder;

    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget v4, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    invoke-direct {p3, v3, p1, v4}, Lcom/android/server/wm/WindowToken$Builder;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;I)V

    .line 79
    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowToken$Builder;->setDisplayContent(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowToken$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowToken$Builder;->setPersistOnEmpty(Z)Lcom/android/server/wm/WindowToken$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowToken$Builder;->setOwnerCanManageAppTokens(Z)Lcom/android/server/wm/WindowToken$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken$Builder;->build()Lcom/android/server/wm/WindowToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 83
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shell Root Leash "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 88
    iget-object p1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :catch_98
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add shell root layer "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " on display "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 97
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 98
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    .line 100
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1a

    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 102
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    :cond_1a
    return-void
.end method

.method public getAccessibilityWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    if-eqz p0, :cond_9

    .line 141
    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClient()Landroid/view/IWindow;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final synthetic lambda$new$0(I)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeShellRoot(I)V

    return-void
.end method

.method public final synthetic lambda$setAccessibilityWindow$1()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_b
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ShellRoot;->setAccessibilityWindow(Landroid/view/IWindow;)V

    .line 157
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setAccessibilityWindow(Landroid/view/IWindow;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 148
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 150
    :cond_e
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    if-eqz p1, :cond_28

    .line 153
    :try_start_12
    new-instance p1, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ShellRoot;)V

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

    .line 159
    iget-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_24} :catch_25

    return-void

    :catch_25
    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    :cond_28
    return-void
.end method
