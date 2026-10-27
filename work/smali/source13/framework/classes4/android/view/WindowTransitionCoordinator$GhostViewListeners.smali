.class Landroid/view/WindowTransitionCoordinator$GhostViewListeners;
.super Ljava/lang/Object;
.source "WindowTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostViewListeners"
.end annotation


# instance fields
.field private blacklist mDecor:Landroid/view/ViewGroup;

.field private blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mParent:Landroid/view/View;

.field private blacklist mView:Landroid/view/View;

.field private blacklist mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "decor"    # Landroid/view/ViewGroup;

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    .line 973
    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    .line 974
    iput-object p2, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    .line 975
    iput-object p3, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    .line 976
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 977
    return-void
.end method


# virtual methods
.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 980
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist onPreDraw()Z
    .registers 5

    .line 985
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    .line 986
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_20

    .line 989
    :cond_11
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 990
    iget-object v1, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_23

    .line 987
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 992
    :goto_23
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1007
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 1011
    invoke-virtual {p0}, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 1012
    return-void
.end method

.method public blacklist removeListener()V
    .registers 2

    .line 996
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 997
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_17

    .line 999
    :cond_e
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1001
    :goto_17
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1002
    return-void
.end method
