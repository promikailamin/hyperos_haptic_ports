.class public Lcom/android/internal/compat/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected blacklist mAlert:Lcom/android/internal/compat/AlertController;

.field protected blacklist mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->finish()V

    .line 34
    return-void
.end method

.method public whitelist dismiss()V
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->finish()V

    .line 30
    :cond_9
    return-void
.end method

.method public whitelist finish()V
    .registers 2

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/compat/AlertActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Lcom/android/internal/compat/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/compat/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    .line 17
    new-instance v0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    .line 18
    return-void
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 38
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/compat/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 39
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected blacklist setupAlert()V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/compat/AlertController$AlertParams;->apply(Lcom/android/internal/compat/AlertController;)V

    .line 22
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertController;->installContent()V

    .line 24
    return-void
.end method
