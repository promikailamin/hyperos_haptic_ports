.class public Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;
.implements Ljava/lang/Runnable;


# instance fields
.field public mAnimatingTypes:I

.field public final mGlobalLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mInsetsController:Landroid/view/InsetsController;

.field public final mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

.field public final mName:Ljava/lang/String;

.field public final mRequestedVisibleTypes:I

.field public final mState:Landroid/view/InsetsState;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;ZZ)V
    .registers 7

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    if-eqz p2, :cond_f

    .line 955
    const-string v0, "Showing"

    goto :goto_11

    :cond_f
    const-string v0, "Hiding"

    :goto_11
    if-eqz p3, :cond_16

    .line 956
    const-string p3, "Permanent"

    goto :goto_18

    :cond_16
    const-string p3, "Transient"

    :goto_18
    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 954
    const-string v0, "%s%sControlTarget"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 957
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 958
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iput-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Landroid/os/Handler;

    .line 959
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Ljava/lang/Object;

    .line 960
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 961
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 962
    new-instance p1, Landroid/view/InsetsController;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$Host;

    invoke-direct {v0, v2, p3, p0}, Lcom/android/server/wm/InsetsPolicy$Host;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/wm/InsetsControlTarget;)V

    invoke-direct {p1, v0}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    .line 963
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v0

    if-eqz p2, :cond_4c

    const/4 v1, 0x0

    goto :goto_50

    :cond_4c
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    :goto_50
    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mRequestedVisibleTypes:I

    if-nez p2, :cond_5d

    .line 965
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsController;->hide(I)V

    .line 967
    :cond_5d
    iput-object p3, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getAnimatingTypes()I
    .registers 1

    .line 1003
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mAnimatingTypes:I

    return p0
.end method

.method public getRequestedVisibleTypes()I
    .registers 1

    .line 997
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mRequestedVisibleTypes:I

    return p0
.end method

.method public isRequestedVisible(I)Z
    .registers 2

    .line 991
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mRequestedVisibleTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public notifyInsetsControlChanged(I)V
    .registers 2

    .line 972
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 5

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 979
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 980
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    .line 981
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4

    .line 1009
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    iget v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mAnimatingTypes:I

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/server/wm/InsetsPolicy;->onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;II)V

    .line 1010
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mAnimatingTypes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 1016
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    return-object p0
.end method
