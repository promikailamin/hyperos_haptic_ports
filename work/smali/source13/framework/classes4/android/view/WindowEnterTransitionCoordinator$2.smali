.class Landroid/view/WindowEnterTransitionCoordinator$2;
.super Ljava/lang/Object;
.source "WindowEnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowEnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mAnimations:I

.field final synthetic blacklist this$0:Landroid/view/WindowEnterTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowEnterTransitionCoordinator;

    .line 401
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$2;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 406
    iget v0, p0, Landroid/view/WindowEnterTransitionCoordinator$2;->mAnimations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/WindowEnterTransitionCoordinator$2;->mAnimations:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    .line 407
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$2;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 408
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2a

    .line 409
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 411
    .end local v0    # "decorView":Landroid/view/View;
    :cond_15
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$2;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    iget-object v0, v0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_2a

    .line 412
    iget-object v0, p0, Landroid/view/WindowEnterTransitionCoordinator$2;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    iget-object v0, v0, Landroid/view/WindowEnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x65

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2b

    .line 411
    :cond_2a
    :goto_2a
    nop

    .line 415
    :goto_2b
    return-void
.end method
