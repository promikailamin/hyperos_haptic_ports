.class Landroid/app/ExitTransitionCoordinator$3;
.super Landroid/os/Handler;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/app/ExitTransitionCoordinator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 231
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$fputmIsCanceled(Landroid/app/ExitTransitionCoordinator;Z)V

    .line 232
    iget-object p1, p0, Landroid/app/ExitTransitionCoordinator$3;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {p1}, Landroid/app/ExitTransitionCoordinator;->-$$Nest$mfinish(Landroid/app/ExitTransitionCoordinator;)V

    .line 233
    return-void
.end method
