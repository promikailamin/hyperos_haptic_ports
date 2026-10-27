.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final blacklist TRANSACTION_areUserDisabledHdrTypesAllowed:I = 0x11

.field static final greylist-max-o TRANSACTION_connectWifiDisplay:I = 0x8

.field static final greylist-max-o TRANSACTION_createVirtualDisplay:I = 0x15

.field static final blacklist TRANSACTION_disableConnectedDisplay:I = 0x3c

.field static final greylist-max-o TRANSACTION_disconnectWifiDisplay:I = 0x9

.field static final blacklist TRANSACTION_enableConnectedDisplay:I = 0x3b

.field static final greylist-max-o TRANSACTION_forgetWifiDisplay:I = 0xb

.field static final greylist-max-o TRANSACTION_getAmbientBrightnessStats:I = 0x1c

.field static final blacklist TRANSACTION_getBrightness:I = 0x26

.field static final blacklist TRANSACTION_getBrightnessByUnit:I = 0x27

.field static final blacklist TRANSACTION_getBrightnessConfigurationForDisplay:I = 0x1f

.field static final greylist-max-o TRANSACTION_getBrightnessConfigurationForUser:I = 0x20

.field static final greylist-max-o TRANSACTION_getBrightnessEvents:I = 0x1b

.field static final blacklist TRANSACTION_getBrightnessInfo:I = 0x2a

.field static final blacklist TRANSACTION_getConnectionPreference:I = 0x3f

.field static final greylist-max-o TRANSACTION_getDefaultBrightnessConfiguration:I = 0x21

.field static final blacklist TRANSACTION_getDefaultDozeBrightness:I = 0x43

.field static final blacklist TRANSACTION_getDisplayDecorationSupport:I = 0x38

.field static final greylist-max-o TRANSACTION_getDisplayIds:I = 0x2

.field static final greylist-max-o TRANSACTION_getDisplayInfo:I = 0x1

.field static final blacklist TRANSACTION_getDisplayTopology:I = 0x44

.field static final blacklist TRANSACTION_getDozeBrightnessSensorValueToBrightness:I = 0x42

.field static final blacklist TRANSACTION_getHdrConversionMode:I = 0x32

.field static final blacklist TRANSACTION_getHdrConversionModeSetting:I = 0x31

.field static final blacklist TRANSACTION_getHighestHdrSdrRatio:I = 0x41

.field static final greylist-max-o TRANSACTION_getMinimumBrightnessCurve:I = 0x29

.field static final blacklist TRANSACTION_getOverlaySupport:I = 0x3a

.field static final blacklist TRANSACTION_getPreferredWideGamutColorSpaceId:I = 0x2b

.field static final blacklist TRANSACTION_getRefreshRateSwitchingType:I = 0x37

.field static final greylist-max-o TRANSACTION_getStableDisplaySize:I = 0x1a

.field static final blacklist TRANSACTION_getSupportedHdrOutputTypes:I = 0x33

.field static final blacklist TRANSACTION_getSystemPreferredDisplayMode:I = 0x2f

.field static final blacklist TRANSACTION_getUserDisabledHdrTypes:I = 0x12

.field static final blacklist TRANSACTION_getUserPreferredDisplayMode:I = 0x2e

.field static final greylist-max-o TRANSACTION_getWifiDisplayStatus:I = 0xe

.field static final blacklist TRANSACTION_isMinimalPostProcessingRequested:I = 0x22

.field static final blacklist TRANSACTION_isUidPresentOnDisplay:I = 0x3

.field static final blacklist TRANSACTION_overrideHdrTypes:I = 0x13

.field static final greylist-max-o TRANSACTION_pauseWifiDisplay:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x4

.field static final blacklist TRANSACTION_registerCallbackWithEventMask:I = 0x5

.field static final greylist-max-o TRANSACTION_releaseVirtualDisplay:I = 0x18

.field static final greylist-max-o TRANSACTION_renameWifiDisplay:I = 0xa

.field static final greylist-max-o TRANSACTION_requestColorMode:I = 0x14

.field static final blacklist TRANSACTION_requestDisplayModes:I = 0x40

.field static final blacklist TRANSACTION_requestDisplayPower:I = 0x3d

.field static final blacklist TRANSACTION_resetUserPreferredDisplayMode:I = 0x2d

.field static final greylist-max-o TRANSACTION_resizeVirtualDisplay:I = 0x16

.field static final greylist-max-o TRANSACTION_resumeWifiDisplay:I = 0xd

.field static final blacklist TRANSACTION_setAreUserDisabledHdrTypesAllowed:I = 0x10

.field static final blacklist TRANSACTION_setBrightness:I = 0x24

.field static final blacklist TRANSACTION_setBrightnessByUnit:I = 0x25

.field static final blacklist TRANSACTION_setBrightnessConfigurationForDisplay:I = 0x1e

.field static final greylist-max-o TRANSACTION_setBrightnessConfigurationForUser:I = 0x1d

.field static final blacklist TRANSACTION_setConnectionPreference:I = 0x3e

.field static final blacklist TRANSACTION_setDisplayIdToMirror:I = 0x39

.field static final blacklist TRANSACTION_setDisplayTopology:I = 0x45

.field static final blacklist TRANSACTION_setHdrConversionMode:I = 0x30

.field static final blacklist TRANSACTION_setRefreshRateSwitchingType:I = 0x36

.field static final blacklist TRANSACTION_setShouldAlwaysRespectAppRequestedMode:I = 0x34

.field static final greylist-max-o TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x28

.field static final greylist-max-o TRANSACTION_setTemporaryBrightness:I = 0x23

.field static final blacklist TRANSACTION_setUserDisabledHdrTypes:I = 0xf

.field static final blacklist TRANSACTION_setUserPreferredDisplayMode:I = 0x2c

.field static final blacklist TRANSACTION_setVirtualDisplayRotation:I = 0x19

.field static final greylist-max-o TRANSACTION_setVirtualDisplaySurface:I = 0x17

.field static final blacklist TRANSACTION_shouldAlwaysRespectAppRequestedMode:I = 0x35

.field static final greylist-max-o TRANSACTION_startWifiDisplayScan:I = 0x6

.field static final greylist-max-o TRANSACTION_stopWifiDisplayScan:I = 0x7


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    nop

    .line 352
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 353
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 341
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 342
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 343
    if-eqz p1, :cond_d

    .line 346
    iput-object p1, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 347
    return-void

    .line 344
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 3

    .line 360
    if-nez p0, :cond_4

    .line 361
    const/4 p0, 0x0

    return-object p0

    .line 363
    :cond_4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_13

    .line 365
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    return-object v0

    .line 367
    :cond_13
    new-instance v0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 376
    packed-switch p0, :pswitch_data_d4

    .line 656
    const/4 p0, 0x0

    return-object p0

    .line 652
    :pswitch_5
    const-string p0, "setDisplayTopology"

    return-object p0

    .line 648
    :pswitch_8
    const-string p0, "getDisplayTopology"

    return-object p0

    .line 644
    :pswitch_b
    const-string p0, "getDefaultDozeBrightness"

    return-object p0

    .line 640
    :pswitch_e
    const-string p0, "getDozeBrightnessSensorValueToBrightness"

    return-object p0

    .line 636
    :pswitch_11
    const-string p0, "getHighestHdrSdrRatio"

    return-object p0

    .line 632
    :pswitch_14
    const-string p0, "requestDisplayModes"

    return-object p0

    .line 628
    :pswitch_17
    const-string p0, "getConnectionPreference"

    return-object p0

    .line 624
    :pswitch_1a
    const-string p0, "setConnectionPreference"

    return-object p0

    .line 620
    :pswitch_1d
    const-string p0, "requestDisplayPower"

    return-object p0

    .line 616
    :pswitch_20
    const-string p0, "disableConnectedDisplay"

    return-object p0

    .line 612
    :pswitch_23
    const-string p0, "enableConnectedDisplay"

    return-object p0

    .line 608
    :pswitch_26
    const-string p0, "getOverlaySupport"

    return-object p0

    .line 604
    :pswitch_29
    const-string p0, "setDisplayIdToMirror"

    return-object p0

    .line 600
    :pswitch_2c
    const-string p0, "getDisplayDecorationSupport"

    return-object p0

    .line 596
    :pswitch_2f
    const-string p0, "getRefreshRateSwitchingType"

    return-object p0

    .line 592
    :pswitch_32
    const-string p0, "setRefreshRateSwitchingType"

    return-object p0

    .line 588
    :pswitch_35
    const-string p0, "shouldAlwaysRespectAppRequestedMode"

    return-object p0

    .line 584
    :pswitch_38
    const-string p0, "setShouldAlwaysRespectAppRequestedMode"

    return-object p0

    .line 580
    :pswitch_3b
    const-string p0, "getSupportedHdrOutputTypes"

    return-object p0

    .line 576
    :pswitch_3e
    const-string p0, "getHdrConversionMode"

    return-object p0

    .line 572
    :pswitch_41
    const-string p0, "getHdrConversionModeSetting"

    return-object p0

    .line 568
    :pswitch_44
    const-string p0, "setHdrConversionMode"

    return-object p0

    .line 564
    :pswitch_47
    const-string p0, "getSystemPreferredDisplayMode"

    return-object p0

    .line 560
    :pswitch_4a
    const-string p0, "getUserPreferredDisplayMode"

    return-object p0

    .line 556
    :pswitch_4d
    const-string p0, "resetUserPreferredDisplayMode"

    return-object p0

    .line 552
    :pswitch_50
    const-string p0, "setUserPreferredDisplayMode"

    return-object p0

    .line 548
    :pswitch_53
    const-string p0, "getPreferredWideGamutColorSpaceId"

    return-object p0

    .line 544
    :pswitch_56
    const-string p0, "getBrightnessInfo"

    return-object p0

    .line 540
    :pswitch_59
    const-string p0, "getMinimumBrightnessCurve"

    return-object p0

    .line 536
    :pswitch_5c
    const-string p0, "setTemporaryAutoBrightnessAdjustment"

    return-object p0

    .line 532
    :pswitch_5f
    const-string p0, "getBrightnessByUnit"

    return-object p0

    .line 528
    :pswitch_62
    const-string p0, "getBrightness"

    return-object p0

    .line 524
    :pswitch_65
    const-string p0, "setBrightnessByUnit"

    return-object p0

    .line 520
    :pswitch_68
    const-string p0, "setBrightness"

    return-object p0

    .line 516
    :pswitch_6b
    const-string p0, "setTemporaryBrightness"

    return-object p0

    .line 512
    :pswitch_6e
    const-string p0, "isMinimalPostProcessingRequested"

    return-object p0

    .line 508
    :pswitch_71
    const-string p0, "getDefaultBrightnessConfiguration"

    return-object p0

    .line 504
    :pswitch_74
    const-string p0, "getBrightnessConfigurationForUser"

    return-object p0

    .line 500
    :pswitch_77
    const-string p0, "getBrightnessConfigurationForDisplay"

    return-object p0

    .line 496
    :pswitch_7a
    const-string p0, "setBrightnessConfigurationForDisplay"

    return-object p0

    .line 492
    :pswitch_7d
    const-string p0, "setBrightnessConfigurationForUser"

    return-object p0

    .line 488
    :pswitch_80
    const-string p0, "getAmbientBrightnessStats"

    return-object p0

    .line 484
    :pswitch_83
    const-string p0, "getBrightnessEvents"

    return-object p0

    .line 480
    :pswitch_86
    const-string p0, "getStableDisplaySize"

    return-object p0

    .line 476
    :pswitch_89
    const-string p0, "setVirtualDisplayRotation"

    return-object p0

    .line 472
    :pswitch_8c
    const-string p0, "releaseVirtualDisplay"

    return-object p0

    .line 468
    :pswitch_8f
    const-string p0, "setVirtualDisplaySurface"

    return-object p0

    .line 464
    :pswitch_92
    const-string p0, "resizeVirtualDisplay"

    return-object p0

    .line 460
    :pswitch_95
    const-string p0, "createVirtualDisplay"

    return-object p0

    .line 456
    :pswitch_98
    const-string p0, "requestColorMode"

    return-object p0

    .line 452
    :pswitch_9b
    const-string p0, "overrideHdrTypes"

    return-object p0

    .line 448
    :pswitch_9e
    const-string p0, "getUserDisabledHdrTypes"

    return-object p0

    .line 444
    :pswitch_a1
    const-string p0, "areUserDisabledHdrTypesAllowed"

    return-object p0

    .line 440
    :pswitch_a4
    const-string p0, "setAreUserDisabledHdrTypesAllowed"

    return-object p0

    .line 436
    :pswitch_a7
    const-string p0, "setUserDisabledHdrTypes"

    return-object p0

    .line 432
    :pswitch_aa
    const-string p0, "getWifiDisplayStatus"

    return-object p0

    .line 428
    :pswitch_ad
    const-string p0, "resumeWifiDisplay"

    return-object p0

    .line 424
    :pswitch_b0
    const-string p0, "pauseWifiDisplay"

    return-object p0

    .line 420
    :pswitch_b3
    const-string p0, "forgetWifiDisplay"

    return-object p0

    .line 416
    :pswitch_b6
    const-string p0, "renameWifiDisplay"

    return-object p0

    .line 412
    :pswitch_b9
    const-string p0, "disconnectWifiDisplay"

    return-object p0

    .line 408
    :pswitch_bc
    const-string p0, "connectWifiDisplay"

    return-object p0

    .line 404
    :pswitch_bf
    const-string p0, "stopWifiDisplayScan"

    return-object p0

    .line 400
    :pswitch_c2
    const-string p0, "startWifiDisplayScan"

    return-object p0

    .line 396
    :pswitch_c5
    const-string p0, "registerCallbackWithEventMask"

    return-object p0

    .line 392
    :pswitch_c8
    const-string p0, "registerCallback"

    return-object p0

    .line 388
    :pswitch_cb
    const-string p0, "isUidPresentOnDisplay"

    return-object p0

    .line 384
    :pswitch_ce
    const-string p0, "getDisplayIds"

    return-object p0

    .line 380
    :pswitch_d1
    const-string p0, "getDisplayInfo"

    return-object p0

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 371
    return-object p0
.end method

.method protected blacklist connectWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2598
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2599
    return-void
.end method

.method protected blacklist disableConnectedDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2758
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2759
    return-void
.end method

.method protected blacklist enableConnectedDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2753
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2754
    return-void
.end method

.method protected blacklist forgetWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2609
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2610
    return-void
.end method

.method protected blacklist getAmbientBrightnessStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2654
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_AMBIENT_LIGHT_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2655
    return-void
.end method

.method protected blacklist getBrightnessConfigurationForDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2669
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2670
    return-void
.end method

.method protected blacklist getBrightnessEvents_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2649
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BRIGHTNESS_SLIDER_USAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2650
    return-void
.end method

.method protected blacklist getBrightnessInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2708
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2709
    return-void
.end method

.method protected blacklist getBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2696
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2697
    return-void
.end method

.method protected blacklist getDefaultBrightnessConfiguration_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2675
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2676
    return-void
.end method

.method protected blacklist getDefaultDozeBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2785
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2786
    return-void
.end method

.method protected blacklist getDozeBrightnessSensorValueToBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2780
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2781
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2796
    const/16 v0, 0x44

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 663
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    nop

    .line 668
    const-string v0, "android.hardware.display.IDisplayManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 669
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 672
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    return v1

    .line 675
    :cond_17
    packed-switch p1, :pswitch_data_4d8

    .line 1336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1328
    :pswitch_1f
    sget-object p1, Landroid/hardware/display/DisplayTopology;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayTopology;

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V

    .line 1331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    goto/16 :goto_4d6

    .line 1320
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object p1

    .line 1321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1323
    goto/16 :goto_4d6

    .line 1311
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultDozeBrightness(I)F

    move-result p1

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1316
    goto/16 :goto_4d6

    .line 1301
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDozeBrightnessSensorValueToBrightness(I)[F

    move-result-object p1

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1306
    goto/16 :goto_4d6

    .line 1291
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1293
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getHighestHdrSdrRatio(I)F

    move-result p1

    .line 1294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1296
    goto/16 :goto_4d6

    .line 1278
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1282
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayModes(Landroid/os/IBinder;I[I)V

    .line 1285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_4d6

    .line 1268
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getConnectionPreference(Ljava/lang/String;)I

    move-result p1

    .line 1271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    goto/16 :goto_4d6

    .line 1257
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->setConnectionPreference(Ljava/lang/String;I)V

    .line 1262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    goto/16 :goto_4d6

    .line 1245
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1249
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayPower(II)Z

    move-result p1

    .line 1250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1252
    goto/16 :goto_4d6

    .line 1236
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1238
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->disableConnectedDisplay(I)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    goto/16 :goto_4d6

    .line 1227
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->enableConnectedDisplay(I)V

    .line 1230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    goto/16 :goto_4d6

    .line 1219
    :pswitch_e9
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object p1

    .line 1220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1222
    goto/16 :goto_4d6

    .line 1209
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->setDisplayIdToMirror(Landroid/os/IBinder;I)V

    .line 1214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    goto/16 :goto_4d6

    .line 1199
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object p1

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1204
    goto/16 :goto_4d6

    .line 1191
    :pswitch_11b
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getRefreshRateSwitchingType()I

    move-result p1

    .line 1192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    goto/16 :goto_4d6

    .line 1183
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType(I)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    goto/16 :goto_4d6

    .line 1175
    :pswitch_136
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode()Z

    move-result p1

    .line 1176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1178
    goto/16 :goto_4d6

    .line 1167
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    goto/16 :goto_4d6

    .line 1159
    :pswitch_151
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getSupportedHdrOutputTypes()[I

    move-result-object p1

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1162
    goto/16 :goto_4d6

    .line 1152
    :pswitch_15d
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object p1

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1155
    goto/16 :goto_4d6

    .line 1145
    :pswitch_169
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object p1

    .line 1146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1148
    goto/16 :goto_4d6

    .line 1137
    :pswitch_175
    sget-object p1, Landroid/hardware/display/HdrConversionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/HdrConversionMode;

    .line 1138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V

    .line 1140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    goto/16 :goto_4d6

    .line 1127
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object p1

    .line 1130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1132
    goto/16 :goto_4d6

    .line 1117
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object p1

    .line 1120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1122
    goto/16 :goto_4d6

    .line 1108
    :pswitch_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->resetUserPreferredDisplayMode(I)V

    .line 1111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    goto/16 :goto_4d6

    .line 1095
    :pswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1097
    sget-object p4, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/Display$Mode;

    .line 1099
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;Z)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    goto/16 :goto_4d6

    .line 1087
    :pswitch_1d8
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getPreferredWideGamutColorSpaceId()I

    move-result p1

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    goto/16 :goto_4d6

    .line 1078
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p1

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1083
    goto/16 :goto_4d6

    .line 1070
    :pswitch_1f7
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object p1

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1073
    goto/16 :goto_4d6

    .line 1062
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    goto/16 :goto_4d6

    .line 1050
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessByUnit(II)F

    move-result p1

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1057
    goto/16 :goto_4d6

    .line 1040
    :pswitch_229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightness(I)F

    move-result p1

    .line 1043
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1045
    goto/16 :goto_4d6

    .line 1027
    :pswitch_23c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessByUnit(IFI)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_4d6

    .line 1016
    :pswitch_253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness(IF)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_4d6

    .line 1005
    :pswitch_266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(IF)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_4d6

    .line 995
    :pswitch_279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->isMinimalPostProcessingRequested(I)Z

    move-result p1

    .line 998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1000
    goto/16 :goto_4d6

    .line 987
    :pswitch_28c
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 990
    goto/16 :goto_4d6

    .line 978
    :pswitch_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 983
    goto/16 :goto_4d6

    .line 966
    :pswitch_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 973
    goto/16 :goto_4d6

    .line 951
    :pswitch_2c2
    sget-object p1, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    goto/16 :goto_4d6

    .line 938
    :pswitch_2e1
    sget-object p1, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    goto/16 :goto_4d6

    .line 930
    :pswitch_2fc
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 933
    goto/16 :goto_4d6

    .line 921
    :pswitch_308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 926
    goto/16 :goto_4d6

    .line 913
    :pswitch_31b
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object p1

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 916
    goto/16 :goto_4d6

    .line 903
    :pswitch_327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p1

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 907
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplayRotation(Landroid/hardware/display/IVirtualDisplayCallback;I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    goto/16 :goto_4d6

    .line 894
    :pswitch_33e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p1

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_4d6

    .line 883
    :pswitch_351
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p1

    .line 885
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/Surface;

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    goto/16 :goto_4d6

    .line 868
    :pswitch_36c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p1

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    goto/16 :goto_4d6

    .line 852
    :pswitch_38b
    sget-object p1, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/VirtualDisplayConfig;

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p4

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result p1

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    goto/16 :goto_4d6

    .line 841
    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_4d6

    .line 830
    :pswitch_3c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->overrideHdrTypes(I[I)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_4d6

    .line 822
    :pswitch_3dc
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getUserDisabledHdrTypes()[I

    move-result-object p1

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 825
    goto/16 :goto_4d6

    .line 815
    :pswitch_3e8
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->areUserDisabledHdrTypesAllowed()Z

    move-result p1

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    goto/16 :goto_4d6

    .line 807
    :pswitch_3f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto/16 :goto_4d6

    .line 798
    :pswitch_403
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes([I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_4d6

    .line 790
    :pswitch_412
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    .line 791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 793
    goto/16 :goto_4d6

    .line 784
    :pswitch_41e
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    goto/16 :goto_4d6

    .line 778
    :pswitch_426
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 779
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_4d6

    .line 770
    :pswitch_42e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_4d6

    .line 759
    :pswitch_43d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    goto/16 :goto_4d6

    .line 752
    :pswitch_450
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    goto/16 :goto_4d6

    .line 744
    :pswitch_458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto :goto_4d6

    .line 737
    :pswitch_466
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto :goto_4d6

    .line 731
    :pswitch_46d
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto :goto_4d6

    .line 721
    :pswitch_474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object p1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, p1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto :goto_4d6

    .line 712
    :pswitch_48a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object p1

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    goto :goto_4d6

    .line 700
    :pswitch_49c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {p0, p1, p4}, Landroid/hardware/display/IDisplayManager$Stub;->isUidPresentOnDisplay(II)Z

    move-result p1

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 707
    goto :goto_4d6

    .line 690
    :pswitch_4b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds(Z)[I

    move-result-object p1

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 695
    goto :goto_4d6

    .line 680
    :pswitch_4c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, p1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 685
    nop

    .line 1339
    :goto_4d6
    return v1

    nop

    :pswitch_data_4d8
    .packed-switch 0x1
        :pswitch_4c4
        :pswitch_4b2
        :pswitch_49c
        :pswitch_48a
        :pswitch_474
        :pswitch_46d
        :pswitch_466
        :pswitch_458
        :pswitch_450
        :pswitch_43d
        :pswitch_42e
        :pswitch_426
        :pswitch_41e
        :pswitch_412
        :pswitch_403
        :pswitch_3f4
        :pswitch_3e8
        :pswitch_3dc
        :pswitch_3c9
        :pswitch_3b6
        :pswitch_38b
        :pswitch_36c
        :pswitch_351
        :pswitch_33e
        :pswitch_327
        :pswitch_31b
        :pswitch_308
        :pswitch_2fc
        :pswitch_2e1
        :pswitch_2c2
        :pswitch_2ab
        :pswitch_298
        :pswitch_28c
        :pswitch_279
        :pswitch_266
        :pswitch_253
        :pswitch_23c
        :pswitch_229
        :pswitch_212
        :pswitch_203
        :pswitch_1f7
        :pswitch_1e4
        :pswitch_1d8
        :pswitch_1bd
        :pswitch_1ae
        :pswitch_19b
        :pswitch_188
        :pswitch_175
        :pswitch_169
        :pswitch_15d
        :pswitch_151
        :pswitch_142
        :pswitch_136
        :pswitch_127
        :pswitch_11b
        :pswitch_108
        :pswitch_f5
        :pswitch_e9
        :pswitch_da
        :pswitch_cb
        :pswitch_b4
        :pswitch_a1
        :pswitch_8e
        :pswitch_77
        :pswitch_64
        :pswitch_51
        :pswitch_3e
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist pauseWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2614
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2615
    return-void
.end method

.method protected blacklist renameWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2604
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2605
    return-void
.end method

.method protected blacklist requestColorMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2638
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_COLOR_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2639
    return-void
.end method

.method protected blacklist requestDisplayModes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2774
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RESTRICT_DISPLAY_MODES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2775
    return-void
.end method

.method protected blacklist requestDisplayPower_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2763
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2764
    return-void
.end method

.method protected blacklist resetUserPreferredDisplayMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2719
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_USER_PREFERRED_DISPLAY_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2720
    return-void
.end method

.method protected blacklist resumeWifiDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2619
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2620
    return-void
.end method

.method protected blacklist setAreUserDisabledHdrTypesAllowed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2630
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2631
    return-void
.end method

.method protected blacklist setBrightnessByUnit_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2691
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2692
    return-void
.end method

.method protected blacklist setBrightnessConfigurationForDisplay_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2664
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2665
    return-void
.end method

.method protected blacklist setBrightnessConfigurationForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2659
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2660
    return-void
.end method

.method protected blacklist setBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2686
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2687
    return-void
.end method

.method protected blacklist setConnectionPreference_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2768
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2769
    return-void
.end method

.method protected blacklist setDisplayTopology_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2791
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_DISPLAYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2792
    return-void
.end method

.method protected blacklist setHdrConversionMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2726
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_HDR_CONVERSION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2727
    return-void
.end method

.method protected blacklist setRefreshRateSwitchingType_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2744
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_REFRESH_RATE_SWITCHING_TYPE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2745
    return-void
.end method

.method protected blacklist setShouldAlwaysRespectAppRequestedMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2734
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2735
    return-void
.end method

.method protected blacklist setTemporaryAutoBrightnessAdjustment_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2702
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2703
    return-void
.end method

.method protected blacklist setTemporaryBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2682
    return-void
.end method

.method protected blacklist setUserDisabledHdrTypes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2625
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2626
    return-void
.end method

.method protected blacklist setUserPreferredDisplayMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2714
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_USER_PREFERRED_DISPLAY_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2715
    return-void
.end method

.method protected blacklist shouldAlwaysRespectAppRequestedMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2739
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2740
    return-void
.end method

.method protected blacklist startWifiDisplayScan_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2588
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2589
    return-void
.end method

.method protected blacklist stopWifiDisplayScan_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2593
    iget-object v0, p0, Landroid/hardware/display/IDisplayManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2594
    return-void
.end method
