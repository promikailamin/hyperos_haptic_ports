.class public Lcom/android/internal/compat/AlertActivity2;
.super Landroid/app/Activity;
.source "AlertActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected blacklist mAlert:Lcom/android/internal/compat/AlertController;

.field protected blacklist mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private blacklist enableHardwareAcc()V
    .registers 3

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 67
    .local v0, "w":Landroid/view/Window;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 1

    .line 39
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity2;->finish()V

    .line 40
    return-void
.end method

.method public whitelist dismiss()V
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity2;->finish()V

    .line 36
    :cond_9
    return-void
.end method

.method public whitelist finish()V
    .registers 2

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/compat/AlertActivity2;->overridePendingTransition(II)V

    .line 63
    return-void
.end method

.method protected blacklist notifyOpenStyle()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlert:Lcom/android/internal/compat/AlertController;

    check-cast v0, Lcom/android/internal/compat/AlertControllerWrapper2;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertControllerWrapper2;->notifyOpenStyle()V

    .line 51
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlert:Lcom/android/internal/compat/AlertController;

    check-cast v0, Lcom/android/internal/compat/AlertControllerWrapper2;

    .line 46
    .local v0, "alertWrapper":Lcom/android/internal/compat/AlertControllerWrapper2;
    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerWrapper2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-direct {p0}, Lcom/android/internal/compat/AlertActivity2;->enableHardwareAcc()V

    .line 20
    new-instance v0, Lcom/android/internal/compat/AlertControllerWrapper2;

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity2;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/compat/AlertControllerWrapper2;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlert:Lcom/android/internal/compat/AlertController;

    .line 21
    new-instance v0, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerWrapper2$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/compat/AlertActivity2;->overridePendingTransition(II)V

    .line 24
    return-void
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 55
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/compat/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected blacklist setupAlert()V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/compat/AlertActivity2;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/compat/AlertController$AlertParams;->apply(Lcom/android/internal/compat/AlertController;)V

    .line 28
    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity2;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertController;->installContent()V

    .line 30
    return-void
.end method
