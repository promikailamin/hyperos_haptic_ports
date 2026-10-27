.class Landroid/view/WindowExitTransitionCoordinator$3;
.super Landroid/os/Handler;
.source "WindowExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowExitTransitionCoordinator;->startExit(Landroid/view/ViewRootImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/WindowExitTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowExitTransitionCoordinator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowExitTransitionCoordinator;

    .line 207
    iput-object p1, p0, Landroid/view/WindowExitTransitionCoordinator$3;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 210
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$3;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$fputmIsCanceled(Landroid/view/WindowExitTransitionCoordinator;Z)V

    .line 211
    iget-object v0, p0, Landroid/view/WindowExitTransitionCoordinator$3;->this$0:Landroid/view/WindowExitTransitionCoordinator;

    invoke-static {v0}, Landroid/view/WindowExitTransitionCoordinator;->-$$Nest$mfinish(Landroid/view/WindowExitTransitionCoordinator;)V

    .line 212
    return-void
.end method
