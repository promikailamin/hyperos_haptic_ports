.class Lcom/android/internal/compat/AlertControllerImpl$1;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/compat/AlertControllerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/compat/AlertControllerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/compat/AlertControllerImpl;

    .line 51
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonPositive(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 55
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_51

    .line 56
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonNegative(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_37

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 57
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_51

    .line 58
    :cond_37
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonNeutral(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_51

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 59
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 61
    :cond_51
    :goto_51
    if-eqz v0, :cond_56

    .line 62
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_56
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-static {v3}, Lcom/android/internal/compat/AlertControllerImpl;->-$$Nest$fgetmDialogInterface(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 65
    return-void
.end method
