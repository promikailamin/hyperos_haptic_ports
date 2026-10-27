.class Landroid/view/WindowExitTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "WindowExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->sharedElementExitBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowExitTransitionCoordinator;

.field final synthetic blacklist val$decorView:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/WindowExitTransitionCoordinator;

    .line 130
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$1;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    iput-object p2, p0, Landroid/view/WindowExitTransitionCoordinator$1;->val$decorView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 132
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$1;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    iget-object v1, p0, Landroid/view/WindowExitTransitionCoordinator$1;->val$decorView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$mstartSharedElementExit(Landroid/view/WindowExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    .line 133
    return-void
.end method
