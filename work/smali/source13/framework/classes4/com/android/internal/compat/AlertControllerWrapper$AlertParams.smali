.class public Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;
.super Lcom/android/internal/compat/AlertController$AlertParams;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/compat/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/compat/AlertController;)V
    .registers 6
    .param p1, "dialog"    # Lcom/android/internal/compat/AlertController;

    .line 64
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/compat/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 69
    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/compat/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 74
    :cond_16
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_22

    .line 75
    const/4 v0, -0x2

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/compat/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 80
    :cond_22
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 81
    const/4 v0, -0x3

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/compat/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 86
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 87
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/compat/AlertController;->setView(Landroid/view/View;)V

    .line 89
    :cond_37
    return-void
.end method
