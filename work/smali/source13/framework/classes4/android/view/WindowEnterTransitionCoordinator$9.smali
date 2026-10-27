.class Landroid/view/WindowEnterTransitionCoordinator$9;
.super Ljava/lang/Object;
.source "WindowEnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowEnterTransitionCoordinator;->startEnterTransitionOnly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowEnterTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowEnterTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowEnterTransitionCoordinator;

    .line 698
    iput-object p1, p0, Landroid/view/WindowEnterTransitionCoordinator$9;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 701
    const/4 v0, 0x1

    .line 702
    .local v0, "startEnterTransition":Z
    const/4 v1, 0x0

    .line 703
    .local v1, "startSharedElementTransition":Z
    iget-object v2, p0, Landroid/view/WindowEnterTransitionCoordinator$9;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-virtual {v2}, Landroid/view/WindowEnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v2

    .line 704
    .local v2, "decorView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_15

    .line 705
    iget-object v3, p0, Landroid/view/WindowEnterTransitionCoordinator$9;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-static {v3, v2, v0, v1}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$mbeginTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v3

    .line 707
    .local v3, "transition":Landroid/transition/Transition;
    iget-object v4, p0, Landroid/view/WindowEnterTransitionCoordinator$9;->this$0:Landroid/view/WindowEnterTransitionCoordinator;

    invoke-static {v4, v3}, Landroid/view/WindowEnterTransitionCoordinator;->-$$Nest$mstartEnterTransition(Landroid/view/WindowEnterTransitionCoordinator;Landroid/transition/Transition;)V

    .line 709
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_15
    return-void
.end method
