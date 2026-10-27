.class Lcom/android/internal/compat/AlertControllerImpl2$4;
.super Ljava/lang/Object;
.source "AlertControllerImpl2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 127
    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl2$4;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 130
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$4;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$mhandleClick(Lcom/android/internal/compat/AlertControllerImpl2;I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl2$4;->this$0:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-static {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->-$$Nest$mrecycle(Lcom/android/internal/compat/AlertControllerImpl2;)V

    .line 132
    return-void
.end method
