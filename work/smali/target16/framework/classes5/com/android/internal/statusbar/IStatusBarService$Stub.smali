.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final greylist-max-o TRANSACTION_addTile:I = 0x29

.field static final blacklist TRANSACTION_cancelRequestAddTile:I = 0x3f

.field static final blacklist TRANSACTION_clearInlineReplyUriPermissions:I = 0x22

.field static final greylist-max-o TRANSACTION_clearNotificationEffects:I = 0x12

.field static final greylist-max-o TRANSACTION_clickTile:I = 0x2b

.field static final greylist-max-o TRANSACTION_collapsePanels:I = 0x2

.field static final greylist-max-o TRANSACTION_disable:I = 0x4

.field static final greylist-max-o TRANSACTION_disable2:I = 0x6

.field static final greylist-max-o TRANSACTION_disable2ForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_disableForUser:I = 0x5

.field static final blacklist TRANSACTION_dismissInattentiveSleepWarning:I = 0x38

.field static final greylist-max-o TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final greylist-max-o TRANSACTION_expandSettingsPanel:I = 0xd

.field static final blacklist TRANSACTION_getDisableFlags:I = 0x8

.field static final blacklist TRANSACTION_getLastSystemKey:I = 0x2d

.field static final blacklist TRANSACTION_getNavBarMode:I = 0x41

.field static final blacklist TRANSACTION_grantInlineReplyUriPermission:I = 0x21

.field static final greylist-max-o TRANSACTION_handleSystemKey:I = 0x2c

.field static final blacklist TRANSACTION_hideAuthenticationDialog:I = 0x34

.field static final blacklist TRANSACTION_hideCurrentInputMethodForBubbles:I = 0x20

.field static final blacklist TRANSACTION_isTracing:I = 0x3b

.field static final blacklist TRANSACTION_onBiometricAuthenticated:I = 0x31

.field static final blacklist TRANSACTION_onBiometricError:I = 0x33

.field static final blacklist TRANSACTION_onBiometricHelp:I = 0x32

.field static final blacklist TRANSACTION_onBubbleMetadataFlagChanged:I = 0x1f

.field static final greylist-max-o TRANSACTION_onClearAllNotifications:I = 0x16

.field static final greylist-max-o TRANSACTION_onGlobalActionsHidden:I = 0x25

.field static final greylist-max-o TRANSACTION_onGlobalActionsShown:I = 0x24

.field static final greylist-max-o TRANSACTION_onNotificationActionClick:I = 0x14

.field static final blacklist TRANSACTION_onNotificationBubbleChanged:I = 0x1e

.field static final greylist-max-o TRANSACTION_onNotificationClear:I = 0x17

.field static final greylist-max-o TRANSACTION_onNotificationClick:I = 0x13

.field static final greylist-max-o TRANSACTION_onNotificationDirectReplied:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationError:I = 0x15

.field static final greylist-max-o TRANSACTION_onNotificationExpansionChanged:I = 0x19

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x23

.field static final greylist-max-o TRANSACTION_onNotificationSettingsViewed:I = 0x1d

.field static final greylist-max-o TRANSACTION_onNotificationSmartReplySent:I = 0x1c

.field static final blacklist TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1b

.field static final greylist-max-o TRANSACTION_onNotificationVisibilityChanged:I = 0x18

.field static final greylist-max-o TRANSACTION_onPanelHidden:I = 0x11

.field static final greylist-max-o TRANSACTION_onPanelRevealed:I = 0x10

.field static final blacklist TRANSACTION_onSessionEnded:I = 0x45

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x44

.field static final greylist-max-o TRANSACTION_reboot:I = 0x27

.field static final blacklist TRANSACTION_registerNearbyMediaDevicesProvider:I = 0x48

.field static final blacklist TRANSACTION_registerSessionListener:I = 0x42

.field static final greylist-max-o TRANSACTION_registerStatusBar:I = 0xe

.field static final blacklist TRANSACTION_registerStatusBarForAllDisplays:I = 0xf

.field static final greylist-max-o TRANSACTION_remTile:I = 0x2a

.field static final greylist-max-o TRANSACTION_removeIcon:I = 0xb

.field static final blacklist TRANSACTION_requestAddTile:I = 0x3e

.field static final blacklist TRANSACTION_requestTileServiceListeningState:I = 0x3d

.field static final blacklist TRANSACTION_restart:I = 0x28

.field static final blacklist TRANSACTION_setBiometicContextListener:I = 0x35

.field static final greylist-max-o TRANSACTION_setIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setIconVisibility:I = 0xa

.field static final greylist-max-o TRANSACTION_setImeWindowStatus:I = 0xc

.field static final blacklist TRANSACTION_setNavBarMode:I = 0x40

.field static final blacklist TRANSACTION_setUdfpsRefreshRateCallback:I = 0x36

.field static final blacklist TRANSACTION_showAuthenticationDialog:I = 0x30

.field static final blacklist TRANSACTION_showInattentiveSleepWarning:I = 0x37

.field static final greylist-max-o TRANSACTION_showPinningEnterExitToast:I = 0x2e

.field static final greylist-max-o TRANSACTION_showPinningEscapeToast:I = 0x2f

.field static final blacklist TRANSACTION_showRearDisplayDialog:I = 0x4a

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x26

.field static final blacklist TRANSACTION_startAssist:I = 0x4b

.field static final blacklist TRANSACTION_startTracing:I = 0x39

.field static final blacklist TRANSACTION_stopTracing:I = 0x3a

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x3c

.field static final blacklist TRANSACTION_toggleCameraFlash:I = 0x4c

.field static final greylist-max-o TRANSACTION_togglePanel:I = 0x3

.field static final blacklist TRANSACTION_unregisterNearbyMediaDevicesProvider:I = 0x49

.field static final blacklist TRANSACTION_unregisterSessionListener:I = 0x43

.field static final blacklist TRANSACTION_updateMediaTapToTransferReceiverDisplay:I = 0x47

.field static final blacklist TRANSACTION_updateMediaTapToTransferSenderDisplay:I = 0x46


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 322
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 323
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 331
    if-nez p0, :cond_4

    .line 332
    const/4 p0, 0x0

    return-object p0

    .line 334
    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_13

    .line 336
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0

    .line 338
    :cond_13
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 347
    packed-switch p0, :pswitch_data_120

    .line 655
    const/4 p0, 0x0

    return-object p0

    .line 651
    :pswitch_5
    const-string/jumbo p0, "toggleCameraFlash"

    return-object p0

    .line 647
    :pswitch_9
    const-string/jumbo p0, "startAssist"

    return-object p0

    .line 643
    :pswitch_d
    const-string/jumbo p0, "showRearDisplayDialog"

    return-object p0

    .line 639
    :pswitch_11
    const-string/jumbo p0, "unregisterNearbyMediaDevicesProvider"

    return-object p0

    .line 635
    :pswitch_15
    const-string/jumbo p0, "registerNearbyMediaDevicesProvider"

    return-object p0

    .line 631
    :pswitch_19
    const-string/jumbo p0, "updateMediaTapToTransferReceiverDisplay"

    return-object p0

    .line 627
    :pswitch_1d
    const-string/jumbo p0, "updateMediaTapToTransferSenderDisplay"

    return-object p0

    .line 623
    :pswitch_21
    const-string/jumbo p0, "onSessionEnded"

    return-object p0

    .line 619
    :pswitch_25
    const-string/jumbo p0, "onSessionStarted"

    return-object p0

    .line 615
    :pswitch_29
    const-string/jumbo p0, "unregisterSessionListener"

    return-object p0

    .line 611
    :pswitch_2d
    const-string/jumbo p0, "registerSessionListener"

    return-object p0

    .line 607
    :pswitch_31
    const-string p0, "getNavBarMode"

    return-object p0

    .line 603
    :pswitch_34
    const-string/jumbo p0, "setNavBarMode"

    return-object p0

    .line 599
    :pswitch_38
    const-string p0, "cancelRequestAddTile"

    return-object p0

    .line 595
    :pswitch_3b
    const-string/jumbo p0, "requestAddTile"

    return-object p0

    .line 591
    :pswitch_3f
    const-string/jumbo p0, "requestTileServiceListeningState"

    return-object p0

    .line 587
    :pswitch_43
    const-string/jumbo p0, "suppressAmbientDisplay"

    return-object p0

    .line 583
    :pswitch_47
    const-string p0, "isTracing"

    return-object p0

    .line 579
    :pswitch_4a
    const-string/jumbo p0, "stopTracing"

    return-object p0

    .line 575
    :pswitch_4e
    const-string/jumbo p0, "startTracing"

    return-object p0

    .line 571
    :pswitch_52
    const-string p0, "dismissInattentiveSleepWarning"

    return-object p0

    .line 567
    :pswitch_55
    const-string/jumbo p0, "showInattentiveSleepWarning"

    return-object p0

    .line 563
    :pswitch_59
    const-string/jumbo p0, "setUdfpsRefreshRateCallback"

    return-object p0

    .line 559
    :pswitch_5d
    const-string/jumbo p0, "setBiometicContextListener"

    return-object p0

    .line 555
    :pswitch_61
    const-string p0, "hideAuthenticationDialog"

    return-object p0

    .line 551
    :pswitch_64
    const-string/jumbo p0, "onBiometricError"

    return-object p0

    .line 547
    :pswitch_68
    const-string/jumbo p0, "onBiometricHelp"

    return-object p0

    .line 543
    :pswitch_6c
    const-string/jumbo p0, "onBiometricAuthenticated"

    return-object p0

    .line 539
    :pswitch_70
    const-string/jumbo p0, "showAuthenticationDialog"

    return-object p0

    .line 535
    :pswitch_74
    const-string/jumbo p0, "showPinningEscapeToast"

    return-object p0

    .line 531
    :pswitch_78
    const-string/jumbo p0, "showPinningEnterExitToast"

    return-object p0

    .line 527
    :pswitch_7c
    const-string p0, "getLastSystemKey"

    return-object p0

    .line 523
    :pswitch_7f
    const-string p0, "handleSystemKey"

    return-object p0

    .line 519
    :pswitch_82
    const-string p0, "clickTile"

    return-object p0

    .line 515
    :pswitch_85
    const-string/jumbo p0, "remTile"

    return-object p0

    .line 511
    :pswitch_89
    const-string p0, "addTile"

    return-object p0

    .line 507
    :pswitch_8c
    const-string/jumbo p0, "restart"

    return-object p0

    .line 503
    :pswitch_90
    const-string/jumbo p0, "reboot"

    return-object p0

    .line 499
    :pswitch_94
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 495
    :pswitch_98
    const-string/jumbo p0, "onGlobalActionsHidden"

    return-object p0

    .line 491
    :pswitch_9c
    const-string/jumbo p0, "onGlobalActionsShown"

    return-object p0

    .line 487
    :pswitch_a0
    const-string/jumbo p0, "onNotificationFeedbackReceived"

    return-object p0

    .line 483
    :pswitch_a4
    const-string p0, "clearInlineReplyUriPermissions"

    return-object p0

    .line 479
    :pswitch_a7
    const-string p0, "grantInlineReplyUriPermission"

    return-object p0

    .line 475
    :pswitch_aa
    const-string p0, "hideCurrentInputMethodForBubbles"

    return-object p0

    .line 471
    :pswitch_ad
    const-string/jumbo p0, "onBubbleMetadataFlagChanged"

    return-object p0

    .line 467
    :pswitch_b1
    const-string/jumbo p0, "onNotificationBubbleChanged"

    return-object p0

    .line 463
    :pswitch_b5
    const-string/jumbo p0, "onNotificationSettingsViewed"

    return-object p0

    .line 459
    :pswitch_b9
    const-string/jumbo p0, "onNotificationSmartReplySent"

    return-object p0

    .line 455
    :pswitch_bd
    const-string/jumbo p0, "onNotificationSmartSuggestionsAdded"

    return-object p0

    .line 451
    :pswitch_c1
    const-string/jumbo p0, "onNotificationDirectReplied"

    return-object p0

    .line 447
    :pswitch_c5
    const-string/jumbo p0, "onNotificationExpansionChanged"

    return-object p0

    .line 443
    :pswitch_c9
    const-string/jumbo p0, "onNotificationVisibilityChanged"

    return-object p0

    .line 439
    :pswitch_cd
    const-string/jumbo p0, "onNotificationClear"

    return-object p0

    .line 435
    :pswitch_d1
    const-string/jumbo p0, "onClearAllNotifications"

    return-object p0

    .line 431
    :pswitch_d5
    const-string/jumbo p0, "onNotificationError"

    return-object p0

    .line 427
    :pswitch_d9
    const-string/jumbo p0, "onNotificationActionClick"

    return-object p0

    .line 423
    :pswitch_dd
    const-string/jumbo p0, "onNotificationClick"

    return-object p0

    .line 419
    :pswitch_e1
    const-string p0, "clearNotificationEffects"

    return-object p0

    .line 415
    :pswitch_e4
    const-string/jumbo p0, "onPanelHidden"

    return-object p0

    .line 411
    :pswitch_e8
    const-string/jumbo p0, "onPanelRevealed"

    return-object p0

    .line 407
    :pswitch_ec
    const-string/jumbo p0, "registerStatusBarForAllDisplays"

    return-object p0

    .line 403
    :pswitch_f0
    const-string/jumbo p0, "registerStatusBar"

    return-object p0

    .line 399
    :pswitch_f4
    const-string p0, "expandSettingsPanel"

    return-object p0

    .line 395
    :pswitch_f7
    const-string/jumbo p0, "setImeWindowStatus"

    return-object p0

    .line 391
    :pswitch_fb
    const-string/jumbo p0, "removeIcon"

    return-object p0

    .line 387
    :pswitch_ff
    const-string/jumbo p0, "setIconVisibility"

    return-object p0

    .line 383
    :pswitch_103
    const-string/jumbo p0, "setIcon"

    return-object p0

    .line 379
    :pswitch_107
    const-string p0, "getDisableFlags"

    return-object p0

    .line 375
    :pswitch_10a
    const-string p0, "disable2ForUser"

    return-object p0

    .line 371
    :pswitch_10d
    const-string p0, "disable2"

    return-object p0

    .line 367
    :pswitch_110
    const-string p0, "disableForUser"

    return-object p0

    .line 363
    :pswitch_113
    const-string p0, "disable"

    return-object p0

    .line 359
    :pswitch_116
    const-string/jumbo p0, "togglePanel"

    return-object p0

    .line 355
    :pswitch_11a
    const-string p0, "collapsePanels"

    return-object p0

    .line 351
    :pswitch_11d
    const-string p0, "expandNotificationsPanel"

    return-object p0

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_11d
        :pswitch_11a
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_103
        :pswitch_ff
        :pswitch_fb
        :pswitch_f7
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 3

    .line 845
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 847
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 342
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2894
    const/16 v0, 0x4b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 662
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    .line 667
    const-string v3, "com.android.internal.statusbar.IStatusBarService"

    const/4 v13, 0x1

    if-lt v1, v13, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    .line 668
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    :cond_13
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1c

    .line 671
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    return v13

    .line 674
    :cond_1c
    packed-switch v1, :pswitch_data_65c

    .line 1487
    move-object v14, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1481
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleCameraFlash()V

    .line 1482
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    goto/16 :goto_65b

    .line 1473
    :pswitch_2d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1474
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1475
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 1476
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    goto/16 :goto_65b

    .line 1464
    :pswitch_40
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1465
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1466
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRearDisplayDialog(I)V

    .line 1467
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    goto/16 :goto_65b

    .line 1455
    :pswitch_4f
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1456
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1458
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    goto/16 :goto_65b

    .line 1446
    :pswitch_62
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;

    move-result-object v1

    .line 1447
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    .line 1449
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    goto/16 :goto_65b

    .line 1431
    :pswitch_75
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1433
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1435
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 1437
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1438
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    .line 1440
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    goto/16 :goto_65b

    .line 1418
    :pswitch_9c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1420
    sget-object v3, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1422
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    move-result-object v4

    .line 1423
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    .line 1425
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    goto/16 :goto_65b

    .line 1407
    :pswitch_bb
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1409
    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/InstanceId;

    .line 1410
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1411
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    .line 1412
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    goto/16 :goto_65b

    .line 1396
    :pswitch_d2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1398
    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/logging/InstanceId;

    .line 1399
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    .line 1401
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    goto/16 :goto_65b

    .line 1385
    :pswitch_e9
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1387
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v3

    .line 1388
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1389
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1390
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    goto/16 :goto_65b

    .line 1374
    :pswitch_100
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1376
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/ISessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/ISessionListener;

    move-result-object v3

    .line 1377
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    .line 1379
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    goto/16 :goto_65b

    .line 1366
    :pswitch_117
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getNavBarMode()I

    move-result v0

    .line 1367
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    goto/16 :goto_65b

    .line 1358
    :pswitch_123
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1359
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1360
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setNavBarMode(I)V

    .line 1361
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    goto/16 :goto_65b

    .line 1349
    :pswitch_132
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1350
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelRequestAddTile(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    goto/16 :goto_65b

    .line 1332
    :pswitch_141
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1334
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1336
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 1338
    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1340
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IAddTileResultCallback;

    move-result-object v6

    .line 1341
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 1343
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    goto/16 :goto_65b

    .line 1321
    :pswitch_175
    move-object v5, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1323
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1324
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V

    .line 1326
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    goto/16 :goto_65b

    .line 1312
    :pswitch_18d
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1313
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->suppressAmbientDisplay(Z)V

    .line 1315
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    goto/16 :goto_65b

    .line 1304
    :pswitch_19d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->isTracing()Z

    move-result v0

    .line 1305
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1307
    goto/16 :goto_65b

    .line 1298
    :pswitch_1a9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->stopTracing()V

    .line 1299
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    goto/16 :goto_65b

    .line 1292
    :pswitch_1b1
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startTracing()V

    .line 1293
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    goto/16 :goto_65b

    .line 1284
    :pswitch_1b9
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1285
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissInattentiveSleepWarning(Z)V

    .line 1287
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    goto/16 :goto_65b

    .line 1277
    :pswitch_1c9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showInattentiveSleepWarning()V

    .line 1278
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    goto/16 :goto_65b

    .line 1269
    :pswitch_1d1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    move-result-object v1

    .line 1270
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    .line 1272
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    goto/16 :goto_65b

    .line 1260
    :pswitch_1e5
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object v1

    .line 1261
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 1263
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    goto/16 :goto_65b

    .line 1251
    :pswitch_1f9
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1252
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideAuthenticationDialog(J)V

    .line 1254
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    goto/16 :goto_65b

    .line 1238
    :pswitch_209
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1240
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1242
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1243
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(III)V

    .line 1245
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    goto/16 :goto_65b

    .line 1227
    :pswitch_221
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1229
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(ILjava/lang/String;)V

    .line 1232
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    goto/16 :goto_65b

    .line 1218
    :pswitch_235
    move-object v5, v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1219
    invoke-virtual {v5}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(I)V

    .line 1221
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    goto/16 :goto_65b

    .line 1193
    :pswitch_245
    move-object v5, v2

    sget-object v1, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 1195
    invoke-virtual {v5}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-result-object v2

    .line 1197
    invoke-virtual {v5}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1199
    invoke-virtual {v5}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1209
    move-object/from16 v14, p2

    invoke-virtual {v14}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1210
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    .line 1212
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    goto/16 :goto_65b

    .line 1186
    :pswitch_280
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    .line 1187
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    goto/16 :goto_65b

    .line 1178
    :pswitch_288
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1179
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    .line 1181
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    goto/16 :goto_65b

    .line 1170
    :pswitch_298
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getLastSystemKey()I

    move-result v0

    .line 1171
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    goto/16 :goto_65b

    .line 1162
    :pswitch_2a4
    move-object v14, v2

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1163
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 1165
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    goto/16 :goto_65b

    .line 1153
    :pswitch_2b8
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1154
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    .line 1156
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    goto/16 :goto_65b

    .line 1144
    :pswitch_2cc
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1145
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    .line 1147
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    goto/16 :goto_65b

    .line 1135
    :pswitch_2e0
    move-object v14, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1136
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    .line 1138
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    goto/16 :goto_65b

    .line 1128
    :pswitch_2f4
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->restart()V

    .line 1129
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    goto/16 :goto_65b

    .line 1118
    :pswitch_2fc
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1120
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(ZLjava/lang/String;)V

    .line 1123
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    goto/16 :goto_65b

    .line 1111
    :pswitch_310
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    .line 1112
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    goto/16 :goto_65b

    .line 1105
    :pswitch_318
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    .line 1106
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    goto/16 :goto_65b

    .line 1099
    :pswitch_320
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    .line 1100
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    goto/16 :goto_65b

    .line 1089
    :pswitch_328
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1091
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1092
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1094
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    goto/16 :goto_65b

    .line 1081
    :pswitch_340
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearInlineReplyUriPermissions(Ljava/lang/String;)V

    .line 1084
    goto/16 :goto_65b

    .line 1066
    :pswitch_34d
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1070
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1072
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1073
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    goto/16 :goto_65b

    .line 1057
    :pswitch_371
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1058
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideCurrentInputMethodForBubbles(I)V

    .line 1060
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_65b

    .line 1046
    :pswitch_381
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1048
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1049
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V

    .line 1051
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    goto/16 :goto_65b

    .line 1033
    :pswitch_395
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1037
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1038
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V

    .line 1040
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    goto/16 :goto_65b

    .line 1024
    :pswitch_3ad
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1026
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    goto/16 :goto_65b

    .line 1007
    :pswitch_3bd
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1011
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1013
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1015
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1016
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    .line 1018
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    goto/16 :goto_65b

    .line 990
    :pswitch_3e2
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 994
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 996
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 998
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 999
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    .line 1001
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    goto/16 :goto_65b

    .line 981
    :pswitch_403
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_65b

    .line 966
    :pswitch_413
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 968
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 970
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 972
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 973
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    .line 975
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_65b

    .line 955
    :pswitch_42f
    move-object v14, v2

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 957
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 958
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 960
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    goto/16 :goto_65b

    .line 934
    :pswitch_44b
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 938
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 942
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 944
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 946
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 947
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 949
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_65b

    .line 925
    :pswitch_478
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 928
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_65b

    .line 904
    :pswitch_488
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 906
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 912
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 914
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 916
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 917
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 919
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    goto/16 :goto_65b

    .line 887
    :pswitch_4b1
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 891
    sget-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/Notification$Action;

    .line 893
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 895
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 896
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    .line 898
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_65b

    .line 876
    :pswitch_4dc
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 879
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 881
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    goto/16 :goto_65b

    .line 870
    :pswitch_4f4
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 871
    goto/16 :goto_65b

    .line 864
    :pswitch_4f9
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 865
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    goto/16 :goto_65b

    .line 854
    :pswitch_501
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 856
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 859
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_65b

    .line 836
    :pswitch_515
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 837
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBarForAllDisplays(Lcom/android/internal/statusbar/IStatusBar;)Ljava/util/Map;

    move-result-object v0

    .line 839
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    if-nez v0, :cond_530

    .line 841
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_65b

    .line 843
    :cond_530
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12}, Lcom/android/internal/statusbar/IStatusBarService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 849
    goto/16 :goto_65b

    .line 826
    :pswitch_541
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    .line 827
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v0

    .line 829
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 831
    goto/16 :goto_65b

    .line 817
    :pswitch_559
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto/16 :goto_65b

    .line 802
    :pswitch_569
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 806
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 808
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 809
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(IIIZ)V

    .line 811
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    goto/16 :goto_65b

    .line 793
    :pswitch_585
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {p0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    goto/16 :goto_65b

    .line 782
    :pswitch_595
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 785
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 787
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    goto/16 :goto_65b

    .line 765
    :pswitch_5a9
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 771
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 773
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 774
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 776
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    goto/16 :goto_65b

    .line 753
    :pswitch_5ca
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 755
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 756
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v0

    .line 758
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 760
    goto/16 :goto_65b

    .line 738
    :pswitch_5e2
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 740
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 742
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 745
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 747
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto :goto_65b

    .line 725
    :pswitch_5fd
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 727
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 729
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto :goto_65b

    .line 710
    :pswitch_614
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 714
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 717
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 719
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto :goto_65b

    .line 697
    :pswitch_62f
    move-object v14, v2

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 699
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 701
    invoke-virtual {v14}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 702
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto :goto_65b

    .line 690
    :pswitch_646
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    .line 691
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto :goto_65b

    .line 684
    :pswitch_64d
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 685
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    goto :goto_65b

    .line 678
    :pswitch_654
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 679
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    nop

    .line 1490
    :goto_65b
    return v13

    :pswitch_data_65c
    .packed-switch 0x1
        :pswitch_654
        :pswitch_64d
        :pswitch_646
        :pswitch_62f
        :pswitch_614
        :pswitch_5fd
        :pswitch_5e2
        :pswitch_5ca
        :pswitch_5a9
        :pswitch_595
        :pswitch_585
        :pswitch_569
        :pswitch_559
        :pswitch_541
        :pswitch_515
        :pswitch_501
        :pswitch_4f9
        :pswitch_4f4
        :pswitch_4dc
        :pswitch_4b1
        :pswitch_488
        :pswitch_478
        :pswitch_44b
        :pswitch_42f
        :pswitch_413
        :pswitch_403
        :pswitch_3e2
        :pswitch_3bd
        :pswitch_3ad
        :pswitch_395
        :pswitch_381
        :pswitch_371
        :pswitch_34d
        :pswitch_340
        :pswitch_328
        :pswitch_320
        :pswitch_318
        :pswitch_310
        :pswitch_2fc
        :pswitch_2f4
        :pswitch_2e0
        :pswitch_2cc
        :pswitch_2b8
        :pswitch_2a4
        :pswitch_298
        :pswitch_288
        :pswitch_280
        :pswitch_245
        :pswitch_235
        :pswitch_221
        :pswitch_209
        :pswitch_1f9
        :pswitch_1e5
        :pswitch_1d1
        :pswitch_1c9
        :pswitch_1b9
        :pswitch_1b1
        :pswitch_1a9
        :pswitch_19d
        :pswitch_18d
        :pswitch_175
        :pswitch_141
        :pswitch_132
        :pswitch_123
        :pswitch_117
        :pswitch_100
        :pswitch_e9
        :pswitch_d2
        :pswitch_bb
        :pswitch_9c
        :pswitch_75
        :pswitch_62
        :pswitch_4f
        :pswitch_40
        :pswitch_2d
        :pswitch_25
    .end packed-switch
.end method
