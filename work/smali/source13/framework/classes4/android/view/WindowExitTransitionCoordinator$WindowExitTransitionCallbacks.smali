.class public Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;
.super Ljava/lang/Object;
.source "WindowExitTransitionCoordinator.java"

# interfaces
.implements Landroid/view/WindowExitTransitionCoordinator$ExitTransitionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowExitTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowExitTransitionCallbacks"
.end annotation


# instance fields
.field final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 532
    return-void
.end method


# virtual methods
.method public blacklist isReturnTransitionAllowed()Z
    .registers 2

    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onFinish()V
    .registers 4

    .line 542
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 543
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 545
    :cond_16
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$WindowExitTransitionCallbacks;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowTransitionState:Landroid/view/WindowTransitionState;

    invoke-virtual {v0}, Landroid/view/WindowTransitionState;->clear()V

    .line 546
    return-void
.end method
