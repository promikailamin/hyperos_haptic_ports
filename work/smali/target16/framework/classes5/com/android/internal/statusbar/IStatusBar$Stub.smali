.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final blacklist TRANSACTION_abortTransient:I = 0x39

.field static final greylist-max-o TRANSACTION_addQsTile:I = 0x25

.field static final blacklist TRANSACTION_addQsTileToFrontOrEnd:I = 0x26

.field static final greylist-max-o TRANSACTION_animateCollapsePanels:I = 0x7

.field static final greylist-max-o TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final greylist-max-o TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final greylist-max-o TRANSACTION_appTransitionCancelled:I = 0x19

.field static final greylist-max-o TRANSACTION_appTransitionFinished:I = 0x1b

.field static final greylist-max-o TRANSACTION_appTransitionPending:I = 0x18

.field static final greylist-max-o TRANSACTION_appTransitionStarting:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x47

.field static final greylist-max-o TRANSACTION_clickQsTile:I = 0x29

.field static final blacklist TRANSACTION_confirmImmersivePrompt:I = 0x14

.field static final greylist-max-o TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_disableForAllDisplays:I = 0x4

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x3b

.field static final greylist-max-o TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x16

.field static final blacklist TRANSACTION_dumpProto:I = 0x4c

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2a

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x32

.field static final greylist-max-o TRANSACTION_hideRecentApps:I = 0xd

.field static final blacklist TRANSACTION_hideToast:I = 0x3d

.field static final blacklist TRANSACTION_immersiveModeChanged:I = 0x15

.field static final blacklist TRANSACTION_moveFocusedTaskToDesktop:I = 0x52

.field static final blacklist TRANSACTION_moveFocusedTaskToFullscreen:I = 0x4e

.field static final blacklist TRANSACTION_moveFocusedTaskToStageSplit:I = 0x4f

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x2f

.field static final blacklist TRANSACTION_onBiometricError:I = 0x31

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x30

.field static final greylist-max-o TRANSACTION_onCameraLaunchGestureDetected:I = 0x1e

.field static final blacklist TRANSACTION_onDisplayAddSystemDecorations:I = 0x35

.field static final blacklist TRANSACTION_onDisplayRemoveSystemDecorations:I = 0x36

.field static final blacklist TRANSACTION_onEmergencyActionLaunchGestureDetected:I = 0x20

.field static final greylist-max-o TRANSACTION_onProposedRotationChanged:I = 0x23

.field static final blacklist TRANSACTION_onSystemBarAttributesChanged:I = 0x37

.field static final blacklist TRANSACTION_onWalletLaunchGestureDetected:I = 0x1f

.field static final blacklist TRANSACTION_passThroughShellCommand:I = 0x42

.field static final greylist-max-o TRANSACTION_preloadRecentApps:I = 0x11

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x4a

.field static final greylist-max-o TRANSACTION_remQsTile:I = 0x27

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0x2

.field static final blacklist TRANSACTION_requestAddTile:I = 0x46

.field static final blacklist TRANSACTION_requestMagnificationConnection:I = 0x41

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x45

.field static final blacklist TRANSACTION_runGcForTest:I = 0x44

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x33

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x1

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xa

.field static final blacklist TRANSACTION_setNavigationBarLumaSamplingEnabled:I = 0x43

.field static final blacklist TRANSACTION_setQsTiles:I = 0x28

.field static final blacklist TRANSACTION_setSplitscreenFocus:I = 0x50

.field static final greylist-max-o TRANSACTION_setTopAppHidesStatusBar:I = 0x24

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x34

.field static final greylist-max-o TRANSACTION_setWindowState:I = 0xb

.field static final greylist-max-o TRANSACTION_showAssistDisclosure:I = 0x1c

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x2e

.field static final greylist-max-o TRANSACTION_showGlobalActionsMenu:I = 0x22

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x3a

.field static final blacklist TRANSACTION_showMediaOutputSwitcher:I = 0x51

.field static final greylist-max-o TRANSACTION_showPictureInPictureMenu:I = 0x21

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2b

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2c

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4d

.field static final greylist-max-o TRANSACTION_showRecentApps:I = 0xc

.field static final greylist-max-o TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final greylist-max-o TRANSACTION_showShutdownUi:I = 0x2d

.field static final blacklist TRANSACTION_showToast:I = 0x3c

.field static final blacklist TRANSACTION_showTransient:I = 0x38

.field static final greylist-max-o TRANSACTION_showWirelessChargingAnimation:I = 0x9

.field static final greylist-max-o TRANSACTION_startAssist:I = 0x1d

.field static final blacklist TRANSACTION_startTracing:I = 0x3e

.field static final blacklist TRANSACTION_stopTracing:I = 0x3f

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x40

.field static final blacklist TRANSACTION_toggleCameraFlash:I = 0x53

.field static final greylist-max-o TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x17

.field static final blacklist TRANSACTION_toggleNotificationsPanel:I = 0x8

.field static final greylist-max-o TRANSACTION_toggleRecentApps:I = 0xe

.field static final greylist-max-o TRANSACTION_toggleSplitScreen:I = 0x10

.field static final blacklist TRANSACTION_toggleTaskbar:I = 0xf

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x4b

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x49

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x48


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 451
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 452
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3

    .line 460
    if-nez p0, :cond_4

    .line 461
    const/4 p0, 0x0

    return-object p0

    .line 463
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_13

    .line 465
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    return-object v0

    .line 467
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 476
    packed-switch p0, :pswitch_data_136

    .line 812
    const/4 p0, 0x0

    return-object p0

    .line 808
    :pswitch_5
    const-string/jumbo p0, "toggleCameraFlash"

    return-object p0

    .line 804
    :pswitch_9
    const-string p0, "moveFocusedTaskToDesktop"

    return-object p0

    .line 800
    :pswitch_c
    const-string/jumbo p0, "showMediaOutputSwitcher"

    return-object p0

    .line 796
    :pswitch_10
    const-string/jumbo p0, "setSplitscreenFocus"

    return-object p0

    .line 792
    :pswitch_14
    const-string p0, "moveFocusedTaskToStageSplit"

    return-object p0

    .line 788
    :pswitch_17
    const-string p0, "moveFocusedTaskToFullscreen"

    return-object p0

    .line 784
    :pswitch_1a
    const-string/jumbo p0, "showRearDisplayDialog"

    return-object p0

    .line 780
    :pswitch_1e
    const-string p0, "dumpProto"

    return-object p0

    .line 776
    :pswitch_21
    const-string/jumbo p0, "unregisterNearbyMediaDevicesProvider"

    return-object p0

    .line 772
    :pswitch_25
    const-string/jumbo p0, "registerNearbyMediaDevicesProvider"

    return-object p0

    .line 768
    :pswitch_29
    const-string/jumbo p0, "updateMediaTapToTransferReceiverDisplay"

    return-object p0

    .line 764
    :pswitch_2d
    const-string/jumbo p0, "updateMediaTapToTransferSenderDisplay"

    return-object p0

    .line 760
    :pswitch_31
    const-string p0, "cancelRequestAddTile"

    return-object p0

    .line 756
    :pswitch_34
    const-string/jumbo p0, "requestAddTile"

    return-object p0

    .line 752
    :pswitch_38
    const-string/jumbo p0, "requestTileServiceListeningState"

    return-object p0

    .line 748
    :pswitch_3c
    const-string/jumbo p0, "runGcForTest"

    return-object p0

    .line 744
    :pswitch_40
    const-string/jumbo p0, "setNavigationBarLumaSamplingEnabled"

    return-object p0

    .line 740
    :pswitch_44
    const-string/jumbo p0, "passThroughShellCommand"

    return-object p0

    .line 736
    :pswitch_48
    const-string/jumbo p0, "requestMagnificationConnection"

    return-object p0

    .line 732
    :pswitch_4c
    const-string/jumbo p0, "suppressAmbientDisplay"

    return-object p0

    .line 728
    :pswitch_50
    const-string/jumbo p0, "stopTracing"

    return-object p0

    .line 724
    :pswitch_54
    const-string/jumbo p0, "startTracing"

    return-object p0

    .line 720
    :pswitch_58
    const-string p0, "hideToast"

    return-object p0

    .line 716
    :pswitch_5b
    const-string/jumbo p0, "showToast"

    return-object p0

    .line 712
    :pswitch_5f
    const-string p0, "dismissInattentiveSleepWarning"

    return-object p0

    .line 708
    :pswitch_62
    const-string/jumbo p0, "showInattentiveSleepWarning"

    return-object p0

    .line 704
    :pswitch_66
    const-string p0, "abortTransient"

    return-object p0

    .line 700
    :pswitch_69
    const-string/jumbo p0, "showTransient"

    return-object p0

    .line 696
    :pswitch_6d
    const-string/jumbo p0, "onSystemBarAttributesChanged"

    return-object p0

    .line 692
    :pswitch_71
    const-string/jumbo p0, "onDisplayRemoveSystemDecorations"

    return-object p0

    .line 688
    :pswitch_75
    const-string/jumbo p0, "onDisplayAddSystemDecorations"

    return-object p0

    .line 684
    :pswitch_79
    const-string/jumbo p0, "setUdfpsRefreshRateCallback"

    return-object p0

    .line 680
    :pswitch_7d
    const-string/jumbo p0, "setBiometicContextListener"

    return-object p0

    .line 676
    :pswitch_81
    const-string p0, "hideAuthenticationDialog"

    return-object p0

    .line 672
    :pswitch_84
    const-string/jumbo p0, "onBiometricError"

    return-object p0

    .line 668
    :pswitch_88
    const-string/jumbo p0, "onBiometricHelp"

    return-object p0

    .line 664
    :pswitch_8c
    const-string/jumbo p0, "onBiometricAuthenticated"

    return-object p0

    .line 660
    :pswitch_90
    const-string/jumbo p0, "showAuthenticationDialog"

    return-object p0

    .line 656
    :pswitch_94
    const-string/jumbo p0, "showShutdownUi"

    return-object p0

    .line 652
    :pswitch_98
    const-string/jumbo p0, "showPinningEscapeToast"

    return-object p0

    .line 648
    :pswitch_9c
    const-string/jumbo p0, "showPinningEnterExitToast"

    return-object p0

    .line 644
    :pswitch_a0
    const-string p0, "handleSystemKey"

    return-object p0

    .line 640
    :pswitch_a3
    const-string p0, "clickQsTile"

    return-object p0

    .line 636
    :pswitch_a6
    const-string/jumbo p0, "setQsTiles"

    return-object p0

    .line 632
    :pswitch_aa
    const-string/jumbo p0, "remQsTile"

    return-object p0

    .line 628
    :pswitch_ae
    const-string p0, "addQsTileToFrontOrEnd"

    return-object p0

    .line 624
    :pswitch_b1
    const-string p0, "addQsTile"

    return-object p0

    .line 620
    :pswitch_b4
    const-string/jumbo p0, "setTopAppHidesStatusBar"

    return-object p0

    .line 616
    :pswitch_b8
    const-string/jumbo p0, "onProposedRotationChanged"

    return-object p0

    .line 612
    :pswitch_bc
    const-string/jumbo p0, "showGlobalActionsMenu"

    return-object p0

    .line 608
    :pswitch_c0
    const-string/jumbo p0, "showPictureInPictureMenu"

    return-object p0

    .line 604
    :pswitch_c4
    const-string/jumbo p0, "onEmergencyActionLaunchGestureDetected"

    return-object p0

    .line 600
    :pswitch_c8
    const-string/jumbo p0, "onWalletLaunchGestureDetected"

    return-object p0

    .line 596
    :pswitch_cc
    const-string/jumbo p0, "onCameraLaunchGestureDetected"

    return-object p0

    .line 592
    :pswitch_d0
    const-string/jumbo p0, "startAssist"

    return-object p0

    .line 588
    :pswitch_d4
    const-string/jumbo p0, "showAssistDisclosure"

    return-object p0

    .line 584
    :pswitch_d8
    const-string p0, "appTransitionFinished"

    return-object p0

    .line 580
    :pswitch_db
    const-string p0, "appTransitionStarting"

    return-object p0

    .line 576
    :pswitch_de
    const-string p0, "appTransitionCancelled"

    return-object p0

    .line 572
    :pswitch_e1
    const-string p0, "appTransitionPending"

    return-object p0

    .line 568
    :pswitch_e4
    const-string/jumbo p0, "toggleKeyboardShortcutsMenu"

    return-object p0

    .line 564
    :pswitch_e8
    const-string p0, "dismissKeyboardShortcutsMenu"

    return-object p0

    .line 560
    :pswitch_eb
    const-string p0, "immersiveModeChanged"

    return-object p0

    .line 556
    :pswitch_ee
    const-string p0, "confirmImmersivePrompt"

    return-object p0

    .line 552
    :pswitch_f1
    const-string/jumbo p0, "showScreenPinningRequest"

    return-object p0

    .line 548
    :pswitch_f5
    const-string p0, "cancelPreloadRecentApps"

    return-object p0

    .line 544
    :pswitch_f8
    const-string/jumbo p0, "preloadRecentApps"

    return-object p0

    .line 540
    :pswitch_fc
    const-string/jumbo p0, "toggleSplitScreen"

    return-object p0

    .line 536
    :pswitch_100
    const-string/jumbo p0, "toggleTaskbar"

    return-object p0

    .line 532
    :pswitch_104
    const-string/jumbo p0, "toggleRecentApps"

    return-object p0

    .line 528
    :pswitch_108
    const-string p0, "hideRecentApps"

    return-object p0

    .line 524
    :pswitch_10b
    const-string/jumbo p0, "showRecentApps"

    return-object p0

    .line 520
    :pswitch_10f
    const-string/jumbo p0, "setWindowState"

    return-object p0

    .line 516
    :pswitch_113
    const-string/jumbo p0, "setImeWindowStatus"

    return-object p0

    .line 512
    :pswitch_117
    const-string/jumbo p0, "showWirelessChargingAnimation"

    return-object p0

    .line 508
    :pswitch_11b
    const-string/jumbo p0, "toggleNotificationsPanel"

    return-object p0

    .line 504
    :pswitch_11f
    const-string p0, "animateCollapsePanels"

    return-object p0

    .line 500
    :pswitch_122
    const-string p0, "animateExpandSettingsPanel"

    return-object p0

    .line 496
    :pswitch_125
    const-string p0, "animateExpandNotificationsPanel"

    return-object p0

    .line 492
    :pswitch_128
    const-string p0, "disableForAllDisplays"

    return-object p0

    .line 488
    :pswitch_12b
    const-string p0, "disable"

    return-object p0

    .line 484
    :pswitch_12e
    const-string/jumbo p0, "removeIcon"

    return-object p0

    .line 480
    :pswitch_132
    const-string/jumbo p0, "setIcon"

    return-object p0

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_132
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11b
        :pswitch_117
        :pswitch_113
        :pswitch_10f
        :pswitch_10b
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 471
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2905
    const/16 v0, 0x52

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 819
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    move-object/from16 v2, p2

    .line 824
    const-string v3, "com.android.internal.statusbar.IStatusBar"

    const/4 v12, 0x1

    if-lt p1, v12, :cond_f

    const v4, 0xffffff

    if-gt p1, v4, :cond_f

    .line 825
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    :cond_f
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1a

    .line 828
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    return v12

    .line 831
    :cond_1a
    move-object/from16 v4, p3

    packed-switch p1, :pswitch_data_526

    .line 1560
    move-object v13, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1555
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleCameraFlash()V

    .line 1556
    goto/16 :goto_525

    .line 1548
    :pswitch_2a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1549
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1550
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToDesktop(I)V

    .line 1551
    goto/16 :goto_525

    .line 1536
    :pswitch_36
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1538
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1540
    sget-object v4, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$Token;

    .line 1541
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1542
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    .line 1543
    goto/16 :goto_525

    .line 1528
    :pswitch_52
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1529
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1530
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSplitscreenFocus(Z)V

    .line 1531
    goto/16 :goto_525

    .line 1518
    :pswitch_5e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1520
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1521
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToStageSplit(IZ)V

    .line 1523
    goto/16 :goto_525

    .line 1510
    :pswitch_6e
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1511
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->moveFocusedTaskToFullscreen(I)V

    .line 1513
    goto/16 :goto_525

    .line 1502
    :pswitch_7a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1503
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1504
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRearDisplayDialog(I)V

    .line 1505
    goto/16 :goto_525

    .line 1492
    :pswitch_86
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1494
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 1495
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1496
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1497
    goto/16 :goto_525

    .line 1484
    :pswitch_9a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1485
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1486
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1487
    goto/16 :goto_525

    .line 1476
    :pswitch_aa
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1477
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1479
    goto/16 :goto_525

    .line 1462
    :pswitch_ba
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1464
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1466
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 1468
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1469
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1471
    goto/16 :goto_525

    .line 1450
    :pswitch_de
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1452
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1454
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v4

    .line 1455
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1456
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1457
    goto/16 :goto_525

    .line 1442
    :pswitch_fa
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1445
    goto/16 :goto_525

    .line 1424
    :pswitch_106
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1426
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1428
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1430
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1432
    sget-object v6, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Icon;

    .line 1434
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v7

    .line 1435
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1437
    goto/16 :goto_525

    .line 1416
    :pswitch_140
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1417
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 1419
    goto/16 :goto_525

    .line 1410
    :pswitch_150
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->runGcForTest()V

    .line 1411
    goto/16 :goto_525

    .line 1401
    :pswitch_155
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1403
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1404
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarLumaSamplingEnabled(IZ)V

    .line 1406
    goto/16 :goto_525

    .line 1391
    :pswitch_165
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1393
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 1394
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 1396
    goto/16 :goto_525

    .line 1383
    :pswitch_179
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1384
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->requestMagnificationConnection(Z)V

    .line 1386
    goto/16 :goto_525

    .line 1375
    :pswitch_185
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1376
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1377
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    .line 1378
    goto/16 :goto_525

    .line 1369
    :pswitch_191
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    .line 1370
    goto/16 :goto_525

    .line 1364
    :pswitch_196
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    .line 1365
    goto/16 :goto_525

    .line 1355
    :pswitch_19b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1357
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1358
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1360
    goto/16 :goto_525

    .line 1333
    :pswitch_1ab
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1335
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1337
    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1339
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1341
    move-object v2, v4

    move-object v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v8

    .line 1347
    move-object/from16 v9, p2

    move-object v7, v8

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1348
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    .line 1350
    goto/16 :goto_525

    .line 1325
    :pswitch_1e2
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1326
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1328
    goto/16 :goto_525

    .line 1319
    :pswitch_1ef
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    .line 1320
    goto/16 :goto_525

    .line 1310
    :pswitch_1f4
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1312
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1313
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(II)V

    .line 1315
    goto/16 :goto_525

    .line 1298
    :pswitch_205
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1300
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1302
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1303
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1304
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(IIZ)V

    .line 1305
    goto/16 :goto_525

    .line 1276
    :pswitch_21a
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1280
    sget-object v3, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/view/AppearanceRegion;

    .line 1282
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1284
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1286
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1288
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1290
    sget-object v8, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1291
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 1293
    goto/16 :goto_525

    .line 1268
    :pswitch_24c
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1269
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayRemoveSystemDecorations(I)V

    .line 1271
    goto/16 :goto_525

    .line 1260
    :pswitch_259
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1261
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayAddSystemDecorations(I)V

    .line 1263
    goto/16 :goto_525

    .line 1252
    :pswitch_266
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1253
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1255
    goto/16 :goto_525

    .line 1244
    :pswitch_277
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1245
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1247
    goto/16 :goto_525

    .line 1236
    :pswitch_288
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1237
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog(J)V

    .line 1239
    goto/16 :goto_525

    .line 1224
    :pswitch_295
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1228
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1229
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    .line 1231
    goto/16 :goto_525

    .line 1214
    :pswitch_2aa
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1217
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1219
    goto/16 :goto_525

    .line 1206
    :pswitch_2bb
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1207
    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated(I)V

    .line 1209
    goto/16 :goto_525

    .line 1182
    :pswitch_2c8
    move-object v9, v2

    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1184
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1186
    invoke-virtual {v9}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1188
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1190
    invoke-virtual {v9}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1192
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1194
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1198
    move-object/from16 v13, p2

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1199
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1201
    goto/16 :goto_525

    .line 1170
    :pswitch_300
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1172
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1175
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;Z)V

    .line 1177
    goto/16 :goto_525

    .line 1164
    :pswitch_315
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    .line 1165
    goto/16 :goto_525

    .line 1157
    :pswitch_31a
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1158
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    .line 1160
    goto/16 :goto_525

    .line 1149
    :pswitch_327
    move-object v13, v2

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1150
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1152
    goto/16 :goto_525

    .line 1141
    :pswitch_338
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1142
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 1144
    goto/16 :goto_525

    .line 1133
    :pswitch_349
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setQsTiles([Ljava/lang/String;)V

    .line 1136
    goto/16 :goto_525

    .line 1125
    :pswitch_356
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1126
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 1128
    goto/16 :goto_525

    .line 1115
    :pswitch_367
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1117
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1118
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    .line 1120
    goto/16 :goto_525

    .line 1107
    :pswitch_37c
    move-object v13, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1108
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 1110
    goto/16 :goto_525

    .line 1099
    :pswitch_38d
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1100
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    .line 1102
    goto/16 :goto_525

    .line 1089
    :pswitch_39a
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1091
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1092
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    .line 1094
    goto/16 :goto_525

    .line 1083
    :pswitch_3ab
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    .line 1084
    goto/16 :goto_525

    .line 1078
    :pswitch_3b0
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    .line 1079
    goto/16 :goto_525

    .line 1073
    :pswitch_3b5
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onEmergencyActionLaunchGestureDetected()V

    .line 1074
    goto/16 :goto_525

    .line 1068
    :pswitch_3ba
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onWalletLaunchGestureDetected()V

    .line 1069
    goto/16 :goto_525

    .line 1061
    :pswitch_3bf
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1062
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 1064
    goto/16 :goto_525

    .line 1053
    :pswitch_3cc
    move-object v13, v2

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1054
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1056
    goto/16 :goto_525

    .line 1047
    :pswitch_3dd
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 1048
    goto/16 :goto_525

    .line 1040
    :pswitch_3e2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    .line 1043
    goto/16 :goto_525

    .line 1028
    :pswitch_3ef
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1030
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1032
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1033
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1034
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    .line 1035
    goto/16 :goto_525

    .line 1020
    :pswitch_405
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1021
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    .line 1023
    goto/16 :goto_525

    .line 1012
    :pswitch_412
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1013
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    .line 1015
    goto/16 :goto_525

    .line 1004
    :pswitch_41f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1005
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 1007
    goto/16 :goto_525

    .line 998
    :pswitch_42c
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 999
    goto/16 :goto_525

    .line 987
    :pswitch_431
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 991
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 992
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->immersiveModeChanged(IZI)V

    .line 994
    goto/16 :goto_525

    .line 981
    :pswitch_446
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->confirmImmersivePrompt()V

    .line 982
    goto/16 :goto_525

    .line 974
    :pswitch_44b
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 975
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 977
    goto/16 :goto_525

    .line 968
    :pswitch_458
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 969
    goto/16 :goto_525

    .line 963
    :pswitch_45d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 964
    goto/16 :goto_525

    .line 958
    :pswitch_462
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 959
    goto/16 :goto_525

    .line 953
    :pswitch_467
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleTaskbar()V

    .line 954
    goto/16 :goto_525

    .line 948
    :pswitch_46c
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 949
    goto/16 :goto_525

    .line 939
    :pswitch_471
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 941
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 942
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 944
    goto/16 :goto_525

    .line 931
    :pswitch_482
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 932
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 934
    goto/16 :goto_525

    .line 919
    :pswitch_48f
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 921
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 923
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 924
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    .line 926
    goto/16 :goto_525

    .line 905
    :pswitch_4a4
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 907
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 909
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 911
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 912
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(IIIZ)V

    .line 914
    goto/16 :goto_525

    .line 897
    :pswitch_4bd
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    .line 900
    goto :goto_525

    .line 891
    :pswitch_4c9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationsPanel()V

    .line 892
    goto :goto_525

    .line 886
    :pswitch_4cd
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 887
    goto :goto_525

    .line 879
    :pswitch_4d1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 880
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 882
    goto :goto_525

    .line 873
    :pswitch_4dd
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 874
    goto :goto_525

    .line 866
    :pswitch_4e1
    move-object v13, v2

    sget-object v1, Lcom/android/internal/statusbar/DisableStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/DisableStates;

    .line 867
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disableForAllDisplays(Lcom/android/internal/statusbar/DisableStates;)V

    .line 869
    goto :goto_525

    .line 854
    :pswitch_4f1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 858
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 859
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    .line 861
    goto :goto_525

    .line 846
    :pswitch_505
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 849
    goto :goto_525

    .line 836
    :pswitch_511
    move-object v13, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 838
    sget-object v2, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 839
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 841
    nop

    .line 1563
    :goto_525
    return v12

    :pswitch_data_526
    .packed-switch 0x1
        :pswitch_511
        :pswitch_505
        :pswitch_4f1
        :pswitch_4e1
        :pswitch_4dd
        :pswitch_4d1
        :pswitch_4cd
        :pswitch_4c9
        :pswitch_4bd
        :pswitch_4a4
        :pswitch_48f
        :pswitch_482
        :pswitch_471
        :pswitch_46c
        :pswitch_467
        :pswitch_462
        :pswitch_45d
        :pswitch_458
        :pswitch_44b
        :pswitch_446
        :pswitch_431
        :pswitch_42c
        :pswitch_41f
        :pswitch_412
        :pswitch_405
        :pswitch_3ef
        :pswitch_3e2
        :pswitch_3dd
        :pswitch_3cc
        :pswitch_3bf
        :pswitch_3ba
        :pswitch_3b5
        :pswitch_3b0
        :pswitch_3ab
        :pswitch_39a
        :pswitch_38d
        :pswitch_37c
        :pswitch_367
        :pswitch_356
        :pswitch_349
        :pswitch_338
        :pswitch_327
        :pswitch_31a
        :pswitch_315
        :pswitch_300
        :pswitch_2c8
        :pswitch_2bb
        :pswitch_2aa
        :pswitch_295
        :pswitch_288
        :pswitch_277
        :pswitch_266
        :pswitch_259
        :pswitch_24c
        :pswitch_21a
        :pswitch_205
        :pswitch_1f4
        :pswitch_1ef
        :pswitch_1e2
        :pswitch_1ab
        :pswitch_19b
        :pswitch_196
        :pswitch_191
        :pswitch_185
        :pswitch_179
        :pswitch_165
        :pswitch_155
        :pswitch_150
        :pswitch_140
        :pswitch_106
        :pswitch_fa
        :pswitch_de
        :pswitch_ba
        :pswitch_aa
        :pswitch_9a
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_5e
        :pswitch_52
        :pswitch_36
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method
