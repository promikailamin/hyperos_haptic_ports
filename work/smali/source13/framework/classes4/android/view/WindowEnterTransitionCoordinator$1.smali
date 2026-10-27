.class Landroid/view/WindowEnterTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "WindowEnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowEnterTransitionCoordinator;-><init>(Landroid/view/ViewRootImpl;Landroid/os/ResultReceiver;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowEnterTransitionCoordinator;

.field final synthetic blacklist val$decorView:Landroid/view/View;

.field final synthetic blacklist val$viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/WindowEnterTransitionCoordinator;

    .line 57
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$fgetmIsReadyForTransition(Landroid/view/WindowEnterTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 61
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1f

    .line 64
    :cond_16
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 67
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method
