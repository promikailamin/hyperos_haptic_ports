.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 1219
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1217
    :cond_a
    const-string p0, "USER_ROTATION_LOCKED"

    return-object p0

    .line 1215
    :cond_d
    const-string p0, "USER_ROTATION_FREE"

    return-object p0
.end method


# virtual methods
.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardOcclusionChange()I
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(IZLjava/lang/String;[II)I
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishedGoingToSleep(II)V
.end method

.method public abstract finishedGoingToSleepGlobal(I)V
.end method

.method public abstract finishedWakingUp(II)V
.end method

.method public abstract finishedWakingUpGlobal(I)V
.end method

.method public abstract getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
.end method

.method public abstract getFoldedArea()Landroid/graphics/Rect;
.end method

.method public getMaxWindowLayer()I
    .registers 1

    .line 0
    const/16 p0, 0x24

    return p0
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 3

    packed-switch p1, :pswitch_data_26

    .line 674
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sub-window type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :pswitch_1b
    const/4 p0, 0x3

    return p0

    :pswitch_1d
    const/4 p0, -0x1

    return p0

    :pswitch_1f
    const/4 p0, 0x2

    return p0

    :pswitch_21
    const/4 p0, -0x2

    return p0

    :pswitch_23
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_1b
    .end packed-switch
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 3

    .line 477
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 481
    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0

    .line 478
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 4

    const/4 v0, 0x0

    .line 499
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0
.end method

.method public getWindowLayerFromTypeLw(IZZ)I
    .registers 6

    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    .line 523
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x1

    if-lt p1, p0, :cond_12

    const/16 p3, 0x63

    if-gt p1, p3, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const/16 p3, 0x9

    const/16 v0, 0x1b

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_94

    .line 633
    :pswitch_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown window type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_31
    const/16 p0, 0x10

    return p0

    :pswitch_34
    const/16 p0, 0x11

    return p0

    :pswitch_37
    const/16 p0, 0x20

    return p0

    :pswitch_3a
    const/16 p0, 0xb

    return p0

    :pswitch_3d
    const/16 p0, 0x1a

    return p0

    :pswitch_40
    const/16 p0, 0x14

    return p0

    :pswitch_43
    const/16 p0, 0x1f

    return p0

    :pswitch_46
    const/16 p0, 0x15

    return p0

    :pswitch_49
    const/16 p0, 0x1c

    return p0

    :pswitch_4c
    const/16 p0, 0x1d

    return p0

    :pswitch_4f
    const/16 p0, 0x19

    return p0

    :pswitch_52
    const/4 p0, 0x5

    return p0

    :pswitch_54
    const/16 p0, 0x22

    return p0

    :pswitch_57
    const/16 p0, 0x16

    return p0

    :pswitch_5a
    const/16 p0, 0x18

    return p0

    :pswitch_5d
    const/16 p0, 0x23

    return p0

    :pswitch_60
    const/16 p0, 0x12

    return p0

    :pswitch_63
    const/16 p0, 0x1e

    return p0

    :pswitch_66
    const/16 p0, 0x21

    :pswitch_68
    return p0

    :pswitch_69
    const/16 p0, 0xe

    return p0

    :pswitch_6c
    const/16 p0, 0xd

    return p0

    :pswitch_6f
    if-eqz p2, :cond_72

    return v0

    :cond_72
    return p3

    :pswitch_73
    const/16 p0, 0x13

    return p0

    :pswitch_76
    const/4 p0, 0x6

    return p0

    :pswitch_78
    const/16 p0, 0x8

    return p0

    :pswitch_7b
    if-eqz p2, :cond_80

    const/16 p0, 0x17

    return p0

    :cond_80
    const/16 p0, 0xa

    return p0

    :pswitch_83
    if-eqz p2, :cond_86

    return v0

    :cond_86
    const/4 p0, 0x7

    return p0

    :pswitch_88
    if-eqz p2, :cond_8d

    const/16 p0, 0xc

    return p0

    :cond_8d
    return p3

    :pswitch_8e
    return v1

    :pswitch_8f
    const/4 p0, 0x4

    return p0

    :pswitch_91
    const/16 p0, 0xf

    return p0

    :pswitch_data_94
    .packed-switch 0x7d0
        :pswitch_91
        :pswitch_8f
        :pswitch_8e
        :pswitch_88
        :pswitch_1a
        :pswitch_83
        :pswitch_7b
        :pswitch_78
        :pswitch_76
        :pswitch_73
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_68
        :pswitch_1a
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_52
        :pswitch_1a
        :pswitch_4f
        :pswitch_1a
        :pswitch_4c
        :pswitch_49
        :pswitch_1a
        :pswitch_1a
        :pswitch_8e
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_8e
        :pswitch_8e
        :pswitch_3d
        :pswitch_8e
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 3

    .line 466
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    return p0
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IIIJI)I
.end method

.method public abstract interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
.end method

.method public abstract isGlobalKey(I)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public isScreenOn()Z
    .registers 2

    const/4 v0, 0x0

    .line 915
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn(I)Z

    move-result p0

    return p0
.end method

.method public abstract isScreenOn(I)Z
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate(Z)Z
.end method

.method public abstract onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract onDisplaySwitchStart(I)V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
.end method

.method public abstract screenTurnedOff(IZ)V
.end method

.method public abstract screenTurnedOn(I)V
.end method

.method public abstract screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract setAllowLockscreenWhenOn(IZ)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public abstract setDismissImeOnBackKeyPressed(Z)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public abstract setOverrideFoldedArea(Landroid/graphics/Rect;)V
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setTopFocusedDisplay(I)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showDismissibleKeyguard()V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract startKeyguardExitAnimation(J)V
.end method

.method public abstract startedGoingToSleep(II)V
.end method

.method public abstract startedGoingToSleepGlobal(I)V
.end method

.method public abstract startedWakingUp(II)V
.end method

.method public abstract startedWakingUpGlobal(I)V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
.end method

.method public abstract userActivity(II)V
.end method
