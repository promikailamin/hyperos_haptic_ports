.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$FingerListener;,
        Lcom/android/server/policy/WindowManagerPolicy$AltBarPosition;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final INPUT_DISPLAY_OVERLAY_LAYER:I = 0x7f000000

.field public static final SCREEN_DECOR_DISPLAY_OVERLAY_LAYER:I = 0x7effffff

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 1170
    packed-switch p0, :pswitch_data_e

    .line 1176
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1174
    :pswitch_8
    const-string v0, "USER_ROTATION_LOCKED"

    return-object v0

    .line 1172
    :pswitch_b
    const-string v0, "USER_ROTATION_FREE"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardOcclusionChange(Z)I
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(IZLjava/lang/String;[I)I
.end method

.method public abstract createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
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

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp(I)V
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 1201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getLockScreenTimeout()J
    .registers 3

    .line 1226
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxWindowLayer()I
    .registers 2

    .line 643
    const/16 v0, 0x24

    return v0
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"    # I

    .line 656
    packed-switch p1, :pswitch_data_28

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x0

    return v0

    .line 667
    :pswitch_1d
    const/4 v0, 0x3

    return v0

    .line 663
    :pswitch_1f
    const/4 v0, -0x1

    return v0

    .line 665
    :pswitch_21
    const/4 v0, 0x2

    return v0

    .line 661
    :pswitch_23
    const/4 v0, -0x2

    return v0

    .line 659
    :pswitch_25
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x3e8
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_25
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public abstract getUiMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"    # I

    .line 479
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 483
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0

    .line 480
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .line 501
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result v0

    return v0
.end method

.method public getWindowLayerFromTypeLw(IZZ)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z
    .param p3, "roundedCornerOverlay"    # Z

    .line 524
    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    .line 525
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v0

    return v0

    .line 527
    :cond_9
    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    const/16 v1, 0x63

    if-gt p1, v1, :cond_12

    .line 528
    const/4 v0, 0x2

    return v0

    .line 531
    :cond_12
    const/16 v1, 0x9

    const/4 v2, 0x3

    sparse-switch p1, :sswitch_data_92

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return v2

    .line 569
    :sswitch_31
    const/16 v0, 0x10

    return v0

    .line 571
    :sswitch_34
    const/16 v0, 0x11

    return v0

    .line 617
    :sswitch_37
    const/16 v0, 0x20

    return v0

    .line 559
    :sswitch_3a
    const/16 v0, 0xb

    return v0

    .line 599
    :sswitch_3d
    const/16 v0, 0x1a

    return v0

    .line 577
    :sswitch_40
    const/16 v0, 0x14

    return v0

    .line 615
    :sswitch_43
    const/16 v0, 0x1f

    return v0

    .line 580
    :sswitch_46
    const/16 v0, 0x15

    return v0

    .line 605
    :sswitch_49
    const/16 v0, 0x1c

    return v0

    .line 608
    :sswitch_4c
    const/16 v0, 0x1d

    return v0

    .line 595
    :sswitch_4f
    const/16 v0, 0x19

    return v0

    .line 544
    :sswitch_52
    const/4 v0, 0x5

    return v0

    .line 621
    :sswitch_54
    const/16 v0, 0x22

    return v0

    .line 584
    :sswitch_57
    const/16 v0, 0x16

    return v0

    .line 592
    :sswitch_5a
    const/16 v0, 0x18

    return v0

    .line 626
    :sswitch_5d
    const/16 v0, 0x23

    return v0

    .line 573
    :sswitch_60
    const/16 v0, 0x12

    return v0

    .line 612
    :sswitch_63
    const/16 v0, 0x1e

    return v0

    .line 619
    :sswitch_66
    const/16 v0, 0x21

    return v0

    .line 534
    :sswitch_69
    return v0

    .line 565
    :sswitch_6a
    const/16 v0, 0xe

    return v0

    .line 562
    :sswitch_6d
    const/16 v0, 0xd

    return v0

    .line 602
    :sswitch_70
    if-eqz p2, :cond_74

    const/16 v1, 0x1b

    :cond_74
    return v1

    .line 575
    :sswitch_75
    const/16 v0, 0x13

    return v0

    .line 546
    :sswitch_78
    const/4 v0, 0x6

    return v0

    .line 552
    :sswitch_7a
    const/16 v0, 0x8

    return v0

    .line 588
    :sswitch_7d
    if-eqz p2, :cond_82

    const/16 v0, 0x17

    goto :goto_84

    :cond_82
    const/16 v0, 0xa

    :goto_84
    return v0

    .line 549
    :sswitch_85
    const/4 v0, 0x7

    return v0

    .line 557
    :sswitch_87
    if-eqz p2, :cond_8b

    const/16 v1, 0xc

    :cond_8b
    return v1

    .line 540
    :sswitch_8c
    return v2

    .line 542
    :sswitch_8d
    const/4 v0, 0x4

    return v0

    .line 567
    :sswitch_8f
    const/16 v0, 0xf

    return v0

    :sswitch_data_92
    .sparse-switch
        0x7d0 -> :sswitch_8f
        0x7d1 -> :sswitch_8d
        0x7d2 -> :sswitch_8c
        0x7d3 -> :sswitch_87
        0x7d5 -> :sswitch_85
        0x7d6 -> :sswitch_7d
        0x7d7 -> :sswitch_7a
        0x7d8 -> :sswitch_78
        0x7d9 -> :sswitch_75
        0x7da -> :sswitch_70
        0x7db -> :sswitch_6d
        0x7dc -> :sswitch_6a
        0x7dd -> :sswitch_69
        0x7df -> :sswitch_66
        0x7e0 -> :sswitch_63
        0x7e1 -> :sswitch_60
        0x7e2 -> :sswitch_5d
        0x7e3 -> :sswitch_5a
        0x7e4 -> :sswitch_57
        0x7e5 -> :sswitch_54
        0x7e6 -> :sswitch_52
        0x7e8 -> :sswitch_4f
        0x7ea -> :sswitch_4c
        0x7eb -> :sswitch_49
        0x7ee -> :sswitch_8c
        0x7ef -> :sswitch_46
        0x7f0 -> :sswitch_43
        0x7f1 -> :sswitch_40
        0x7f2 -> :sswitch_8c
        0x7f3 -> :sswitch_8c
        0x7f4 -> :sswitch_3d
        0x7f5 -> :sswitch_8c
        0x7f6 -> :sswitch_3a
        0x7f7 -> :sswitch_37
        0x7f8 -> :sswitch_34
        0x7f9 -> :sswitch_31
        0x9c4 -> :sswitch_5d
        0xbb6 -> :sswitch_5a
    .end sparse-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 468
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public abstract interceptPowerKeyByFinger(J)V
.end method

.method public isDisplayFolded()Z
    .registers 2

    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isGoingToSleep()Z
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

.method public isKeyguardUnoccluding()Z
    .registers 2

    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract notifySideFpAuthenOrEnroll(Z)V
.end method

.method public abstract okToAnimate(Z)Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1207
    return-void
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onPowerGroupWakefulnessChanged(IIII)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1183
    return-void
.end method

.method public abstract registerFingerListener(Lcom/android/server/policy/WindowManagerPolicy$FingerListener;)V
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract screenTurnedOff(I)V
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

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 1087
    return-void
.end method

.method public abstract setHangUpEnable(Z)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 1195
    return-void
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

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp(I)V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1188
    return-void
.end method

.method public abstract userActivity()V
.end method
