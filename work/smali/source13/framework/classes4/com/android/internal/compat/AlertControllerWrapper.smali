.class public Lcom/android/internal/compat/AlertControllerWrapper;
.super Lcom/android/internal/compat/AlertController;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;
    }
.end annotation


# instance fields
.field blacklist mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/compat/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 15
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/compat/AlertControllerImpl;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "which"    # I

    .line 46
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public blacklist installContent()V
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertControllerImpl;->installContent()V

    .line 21
    return-void
.end method

.method public blacklist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 51
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/compat/AlertControllerImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 41
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/compat/AlertControllerImpl;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 42
    return-void
.end method

.method public blacklist setCustomTitle(Landroid/view/View;)V
    .registers 3
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->setCustomTitle(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 25
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->setView(Landroid/view/View;)V

    .line 36
    return-void
.end method
