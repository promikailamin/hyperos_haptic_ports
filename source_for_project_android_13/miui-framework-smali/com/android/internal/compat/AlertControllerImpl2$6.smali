.class Lcom/android/internal/compat/AlertControllerImpl2$6;
.super Ljava/lang/Object;
.source "AlertControllerImpl2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/compat/AlertControllerImpl2;->prepareCutomTitle(Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/compat/AlertControllerImpl2;

.field final synthetic blacklist val$closeButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/compat/AlertControllerImpl2;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/compat/AlertControllerImpl2;

    .line 512
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2$6;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl2$6;->val$closeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 515
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$6;->val$closeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_e

    .line 516
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl2$6;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v1}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmBaseUI(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 518
    :cond_e
    return-void
.end method
