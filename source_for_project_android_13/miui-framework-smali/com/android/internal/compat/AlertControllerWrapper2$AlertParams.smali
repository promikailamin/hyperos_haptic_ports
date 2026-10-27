.class public Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;
.super Lcom/android/internal/compat/AlertController$AlertParams;
.source "AlertControllerWrapper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertControllerWrapper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/compat/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/compat/AlertController;)V
    .registers 6
    .param p1, "dialog"    # Lcom/android/internal/compat/AlertController;

    .line 74
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/compat/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_9
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 79
    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/compat/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 84
    :cond_16
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_22

    .line 85
    const/4 v0, -0x2

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/compat/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 90
    :cond_22
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 91
    const/4 v0, -0x3

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/compat/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 96
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 97
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/compat/AlertController;->setView(Landroid/view/View;)V

    .line 99
    :cond_37
    return-void
.end method
