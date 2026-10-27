.class public final Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneWindowMenuCallback"
.end annotation


# static fields
.field private static final blacklist FEATURE_ID:I = 0x6


# instance fields
.field private blacklist mShowDialogForSubmenu:Z

.field private blacklist mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private final blacklist mWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2

    .line 3924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3925
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3926
    return-void
.end method

.method private blacklist onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 3953
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3954
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3955
    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3957
    :cond_18
    return-void
.end method


# virtual methods
.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 3930
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_9

    .line 3931
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 3934
    :cond_9
    if-eqz p2, :cond_36

    .line 3935
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    .line 3936
    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3937
    const/4 v0, 0x6

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3940
    :cond_1f
    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object p2, p2, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-ne p1, p2, :cond_2a

    .line 3941
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {p1}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$mdismissContextMenu(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3945
    :cond_2a
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz p1, :cond_36

    .line 3946
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 3947
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 3950
    :cond_36
    return-void
.end method

.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 3961
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    .line 3962
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3963
    const/4 v0, 0x6

    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 3962
    :goto_1a
    return p1
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 3968
    return-void
.end method

.method public blacklist onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 4

    .line 3972
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3973
    return v0

    .line 3977
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 3979
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mShowDialogForSubmenu:Z

    if-eqz v1, :cond_1a

    .line 3981
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 3982
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 3983
    const/4 p1, 0x1

    return p1

    .line 3986
    :cond_1a
    return v0
.end method

.method public blacklist setShowDialogForSubmenu(Z)V
    .registers 2

    .line 3990
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->mShowDialogForSubmenu:Z

    .line 3991
    return-void
.end method
