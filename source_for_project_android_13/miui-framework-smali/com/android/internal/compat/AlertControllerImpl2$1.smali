.class Lcom/android/internal/compat/AlertControllerImpl2$1;
.super Ljava/lang/Object;
.source "AlertControllerImpl2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertControllerImpl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/compat/AlertControllerImpl2;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/compat/AlertControllerImpl2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/compat/AlertControllerImpl2;

    .line 62
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmButtonPositive(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_f

    .line 65
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$mhandleClick(Lcom/android/internal/compat/AlertControllerImpl2;I)V

    goto :goto_34

    .line 66
    :cond_f
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmButtonNegative(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    .line 67
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$mhandleClick(Lcom/android/internal/compat/AlertControllerImpl2;I)V

    goto :goto_34

    .line 68
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmButtonNeutral(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 69
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$1;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$mhandleClick(Lcom/android/internal/compat/AlertControllerImpl2;I)V

    .line 71
    :cond_34
    :goto_34
    return-void
.end method
