.class public final Lcom/android/server/policy/RestartAction;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "RestartAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/LongPressAction;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 5

    const v0, 0x10805da

    const v1, 0x104049f

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    .line 33
    iput-object p1, p0, Lcom/android/server/policy/RestartAction;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/server/policy/RestartAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 4

    .line 41
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 44
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/RestartAction;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 45
    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 46
    iget-object p0, p0, Lcom/android/server/policy/RestartAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return v0

    :cond_22
    return v1
.end method

.method public onPress()V
    .registers 2

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 69
    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/RestartAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
