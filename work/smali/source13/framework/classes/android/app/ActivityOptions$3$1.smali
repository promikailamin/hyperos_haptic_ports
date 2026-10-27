.class Landroid/app/ActivityOptions$3$1;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$3;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/ActivityOptions$3;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityOptions$3;)V
    .registers 2
    .param p1, "this$1"    # Landroid/app/ActivityOptions$3;

    .line 1002
    iput-object p1, p0, Landroid/app/ActivityOptions$3$1;->this$1:Landroid/app/ActivityOptions$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 1005
    iget-object v0, p0, Landroid/app/ActivityOptions$3$1;->this$1:Landroid/app/ActivityOptions$3;

    iget-object v0, v0, Landroid/app/ActivityOptions$3;->val$exitStartedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1006
    return-void
.end method
