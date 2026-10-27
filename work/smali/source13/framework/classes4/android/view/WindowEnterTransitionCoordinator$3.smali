.class Landroid/view/WindowEnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "WindowEnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowEnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowEnterTransitionCoordinator;

.field final synthetic blacklist val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/WindowEnterTransitionCoordinator;

    .line 436
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$3;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowEnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSharedElementsReady$0$android-view-WindowEnterTransitionCoordinator$3(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 443
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$3;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$mstartSharedElementTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 444
    return-void
.end method

.method synthetic blacklist lambda$onSharedElementsReady$1$android-view-WindowEnterTransitionCoordinator$3(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .line 442
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$3;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    new-instance v1, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda1;-><init>(Landroid/view/WindowEnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public blacklist onSharedElementsReady()V
    .registers 5

    .line 439
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$3;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 440
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_16

    .line 441
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    new-instance v3, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Landroid/view/WindowEnterTransitionCoordinator$3$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowEnterTransitionCoordinator$3;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v3}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 448
    :cond_16
    return-void
.end method
