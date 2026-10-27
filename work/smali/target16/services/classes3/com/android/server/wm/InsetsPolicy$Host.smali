.class public Lcom/android/server/wm/InsetsPolicy$Host;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field public final mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public final mHandler:Landroid/os/Handler;

.field public final mName:Ljava/lang/String;

.field public final mTmpFloat9:[F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 5

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 1022
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    .line 1032
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    .line 1033
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    .line 1034
    iput-object p3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method


# virtual methods
.method public addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 6

    .line 1072
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1073
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_14

    .line 1074
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1076
    :cond_14
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1077
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public dipToPx(I)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 2

    .line 0
    return-void
.end method

.method public dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 2

    .line 0
    return-void
.end method

.method public dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 3

    .line 0
    return-object p1
.end method

.method public dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 3

    .line 0
    return-object p2
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 1040
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootViewTitle()Ljava/lang/String;
    .registers 1

    .line 1138
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemBarsAppearance()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getSystemBarsBehavior()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAnimationCallbacks()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyInsetsChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 2

    .line 1118
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 1083
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 0
    return-void
.end method
