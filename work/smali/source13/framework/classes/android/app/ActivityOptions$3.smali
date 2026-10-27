.class Landroid/app/ActivityOptions$3;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions;->setOnAnimationExitStartedListener(Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityOptions;

.field final synthetic blacklist val$exitStartedCallback:Ljava/lang/Runnable;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/ActivityOptions;

    .line 999
    iput-object p1, p0, Landroid/app/ActivityOptions$3;->this$0:Landroid/app/ActivityOptions;

    iput-object p2, p0, Landroid/app/ActivityOptions$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/app/ActivityOptions$3;->val$exitStartedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Landroid/app/ActivityOptions$3;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityOptions$3$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityOptions$3$1;-><init>(Landroid/app/ActivityOptions$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1008
    return-void
.end method
