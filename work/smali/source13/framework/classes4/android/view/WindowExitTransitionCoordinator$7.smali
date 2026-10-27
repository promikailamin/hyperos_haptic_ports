.class Landroid/view/WindowExitTransitionCoordinator$7;
.super Ljava/lang/Object;
.source "WindowExitTransitionCoordinator.java"

# interfaces
.implements Landroid/view/WindowSharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->notifyComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowExitTransitionCoordinator;

.field final synthetic blacklist val$resultReceiver:Landroid/os/ResultReceiver;

.field final synthetic blacklist val$sharedElementBundle:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/WindowExitTransitionCoordinator;

    .line 402
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$7;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowExitTransitionCoordinator$7;->val$resultReceiver:Landroid/os/ResultReceiver;

    iput-object p3, p0, Landroid/view/WindowExitTransitionCoordinator$7;->val$sharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSharedElementsReady()V
    .registers 4

    .line 405
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$7;->val$resultReceiver:Landroid/os/ResultReceiver;

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator$7;->val$sharedElementBundle:Landroid/os/Bundle;

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 407
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$7;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$mnotifyExitComplete(Landroid/view/WindowExitTransitionCoordinator;)V

    .line 408
    return-void
.end method
