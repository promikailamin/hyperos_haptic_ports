.class Lcom/android/internal/compat/AlertControllerImpl2$5;
.super Ljava/lang/Object;
.source "AlertControllerImpl2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 135
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2$5;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 138
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$5;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmBaseUI(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/app/Dialog;

    move-result-object v0

    if-ne p1, v0, :cond_11

    .line 139
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$5;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$fgetmDialogInterface(Lcom/android/internal/compat/AlertControllerImpl2;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    :cond_11
    return-void
.end method
