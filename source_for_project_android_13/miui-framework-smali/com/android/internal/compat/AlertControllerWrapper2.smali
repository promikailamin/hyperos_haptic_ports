.class public Lcom/android/internal/compat/AlertControllerWrapper2;
.super Lcom/android/internal/compat/AlertController;
.source "AlertControllerWrapper2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;
    }
.end annotation


# instance fields
.field blacklist mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/compat/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 16
    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/compat/AlertControllerImpl2;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "which"    # I

    .line 47
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl2;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getnotifyOpenStyle()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->getOpenStyle()Z

    move-result v0

    return v0
.end method

.method public blacklist installContent()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertControllerImpl2;->installContent()V

    .line 22
    return-void
.end method

.method public blacklist notifyOpenStyle()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/compat/AlertControllerImpl2;->setOpenStyle(Z)V

    .line 61
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 56
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    return-void
.end method

.method public blacklist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 52
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/compat/AlertControllerImpl2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 42
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/compat/AlertControllerImpl2;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 43
    return-void
.end method

.method public blacklist setCustomTitle(Landroid/view/View;)V
    .registers 3
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl2;->setCustomTitle(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 26
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl2;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper2;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl2;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl2;->setView(Landroid/view/View;)V

    .line 37
    return-void
.end method
