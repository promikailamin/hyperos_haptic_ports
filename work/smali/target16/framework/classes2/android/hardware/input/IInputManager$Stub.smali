.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final blacklist PERMISSIONS_createVirtualKeyboard:[Ljava/lang/String;

.field static final blacklist TRANSACTION_addCustomInputGesture:I = 0x4c

.field static final blacklist TRANSACTION_addPortAssociation:I = 0x29

.field static final blacklist TRANSACTION_addUniqueIdAssociationByDescriptor:I = 0x2b

.field static final blacklist TRANSACTION_addUniqueIdAssociationByPort:I = 0x2d

.field static final blacklist TRANSACTION_cancelCurrentTouch:I = 0x3a

.field static final greylist-max-o TRANSACTION_cancelVibrate:I = 0x20

.field static final blacklist TRANSACTION_clearAllModifierKeyRemappings:I = 0x18

.field static final blacklist TRANSACTION_closeLightSession:I = 0x39

.field static final blacklist TRANSACTION_createVirtualKeyboard:I = 0xc

.field static final greylist-max-o TRANSACTION_disableInputDevice:I = 0x5

.field static final blacklist TRANSACTION_disableSensor:I = 0x33

.field static final greylist-max-o TRANSACTION_enableInputDevice:I = 0x4

.field static final blacklist TRANSACTION_enableSensor:I = 0x32

.field static final blacklist TRANSACTION_flushSensor:I = 0x34

.field static final blacklist TRANSACTION_getAppLaunchBookmarks:I = 0x50

.field static final blacklist TRANSACTION_getBatteryState:I = 0x25

.field static final blacklist TRANSACTION_getCursorPositionInLogicalDisplay:I = 0x54

.field static final blacklist TRANSACTION_getCursorPositionInPhysicalDisplay:I = 0x53

.field static final blacklist TRANSACTION_getCustomInputGestures:I = 0x4f

.field static final blacklist TRANSACTION_getHostUsiVersionFromDisplayConfig:I = 0x43

.field static final greylist-max-o TRANSACTION_getInputDevice:I = 0x2

.field static final blacklist TRANSACTION_getInputDeviceBluetoothAddress:I = 0x3f

.field static final greylist-max-o TRANSACTION_getInputDeviceIds:I = 0x3

.field static final blacklist TRANSACTION_getInputGesture:I = 0x4b

.field static final blacklist TRANSACTION_getKeyCharacterMap:I = 0x8

.field static final blacklist TRANSACTION_getKeyCodeForKeyLocation:I = 0x7

.field static final blacklist TRANSACTION_getKeyGlyphMap:I = 0x46

.field static final greylist-max-o TRANSACTION_getKeyboardLayout:I = 0x12

.field static final blacklist TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x13

.field static final blacklist TRANSACTION_getKeyboardLayoutListForInputDevice:I = 0x16

.field static final greylist-max-o TRANSACTION_getKeyboardLayouts:I = 0x11

.field static final blacklist TRANSACTION_getLightState:I = 0x36

.field static final blacklist TRANSACTION_getLights:I = 0x35

.field static final blacklist TRANSACTION_getModifierKeyRemapping:I = 0x19

.field static final blacklist TRANSACTION_getMousePointerSpeed:I = 0x9

.field static final blacklist TRANSACTION_getSensorList:I = 0x2f

.field static final greylist-max-o TRANSACTION_getTouchCalibrationForInputDevice:I = 0xf

.field static final blacklist TRANSACTION_getVelocityTrackerStrategy:I = 0x1

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x21

.field static final greylist-max-o TRANSACTION_hasKeys:I = 0x6

.field static final greylist-max-r TRANSACTION_injectInputEvent:I = 0xb

.field static final blacklist TRANSACTION_injectInputEventToTarget:I = 0xd

.field static final greylist-max-o TRANSACTION_isInTabletMode:I = 0x1b

.field static final blacklist TRANSACTION_isMicMuted:I = 0x1d

.field static final blacklist TRANSACTION_isVibrating:I = 0x22

.field static final blacklist TRANSACTION_monitorGestureInput:I = 0x28

.field static final blacklist TRANSACTION_openLightSession:I = 0x38

.field static final blacklist TRANSACTION_pilferPointers:I = 0x40

.field static final blacklist TRANSACTION_registerBatteryListener:I = 0x3b

.field static final greylist-max-o TRANSACTION_registerInputDevicesChangedListener:I = 0x1a

.field static final blacklist TRANSACTION_registerKeyEventActivityListener:I = 0x3d

.field static final blacklist TRANSACTION_registerKeyGestureEventListener:I = 0x47

.field static final blacklist TRANSACTION_registerKeyGestureHandler:I = 0x49

.field static final blacklist TRANSACTION_registerKeyboardBacklightListener:I = 0x41

.field static final blacklist TRANSACTION_registerSensorListener:I = 0x30

.field static final blacklist TRANSACTION_registerStickyModifierStateListener:I = 0x44

.field static final greylist-max-o TRANSACTION_registerTabletModeChangedListener:I = 0x1c

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x23

.field static final blacklist TRANSACTION_remapModifierKey:I = 0x17

.field static final blacklist TRANSACTION_removeAllCustomInputGestures:I = 0x4e

.field static final blacklist TRANSACTION_removeCustomInputGesture:I = 0x4d

.field static final blacklist TRANSACTION_removePortAssociation:I = 0x2a

.field static final blacklist TRANSACTION_removeUniqueIdAssociationByDescriptor:I = 0x2c

.field static final blacklist TRANSACTION_removeUniqueIdAssociationByPort:I = 0x2e

.field static final greylist-max-o TRANSACTION_requestPointerCapture:I = 0x27

.field static final blacklist TRANSACTION_resetLockedModifierState:I = 0x51

.field static final blacklist TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x15

.field static final blacklist TRANSACTION_setKeyboardLayoutOverrideForInputDevice:I = 0x14

.field static final blacklist TRANSACTION_setLightStates:I = 0x37

.field static final blacklist TRANSACTION_setMouseScalingEnabled:I = 0x52

.field static final blacklist TRANSACTION_setPointerIcon:I = 0x26

.field static final greylist-max-o TRANSACTION_setTouchCalibrationForInputDevice:I = 0x10

.field static final greylist-max-o TRANSACTION_tryPointerSpeed:I = 0xa

.field static final blacklist TRANSACTION_unregisterBatteryListener:I = 0x3c

.field static final blacklist TRANSACTION_unregisterKeyEventActivityListener:I = 0x3e

.field static final blacklist TRANSACTION_unregisterKeyGestureEventListener:I = 0x48

.field static final blacklist TRANSACTION_unregisterKeyGestureHandler:I = 0x4a

.field static final blacklist TRANSACTION_unregisterKeyboardBacklightListener:I = 0x42

.field static final blacklist TRANSACTION_unregisterSensorListener:I = 0x31

.field static final blacklist TRANSACTION_unregisterStickyModifierStateListener:I = 0x45

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x24

.field static final blacklist TRANSACTION_verifyInputEvent:I = 0xe

.field static final greylist-max-o TRANSACTION_vibrate:I = 0x1e

.field static final blacklist TRANSACTION_vibrateCombined:I = 0x1f


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3159
    const-string v0, "android.permission.INJECT_KEY_EVENTS"

    const-string v1, "android.permission.INJECT_EVENTS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/input/IInputManager$Stub;->PERMISSIONS_createVirtualKeyboard:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    nop

    .line 367
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/input/IInputManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 368
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 356
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 357
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 358
    if-eqz p1, :cond_d

    .line 361
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 362
    return-void

    .line 359
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .registers 3

    .line 375
    if-nez p0, :cond_4

    .line 376
    const/4 p0, 0x0

    return-object p0

    .line 378
    :cond_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_13

    .line 380
    check-cast v0, Landroid/hardware/input/IInputManager;

    return-object v0

    .line 382
    :cond_13
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 391
    packed-switch p0, :pswitch_data_102

    .line 731
    const/4 p0, 0x0

    return-object p0

    .line 727
    :pswitch_5
    const-string p0, "getCursorPositionInLogicalDisplay"

    return-object p0

    .line 723
    :pswitch_8
    const-string p0, "getCursorPositionInPhysicalDisplay"

    return-object p0

    .line 719
    :pswitch_b
    const-string p0, "setMouseScalingEnabled"

    return-object p0

    .line 715
    :pswitch_e
    const-string p0, "resetLockedModifierState"

    return-object p0

    .line 711
    :pswitch_11
    const-string p0, "getAppLaunchBookmarks"

    return-object p0

    .line 707
    :pswitch_14
    const-string p0, "getCustomInputGestures"

    return-object p0

    .line 703
    :pswitch_17
    const-string p0, "removeAllCustomInputGestures"

    return-object p0

    .line 699
    :pswitch_1a
    const-string p0, "removeCustomInputGesture"

    return-object p0

    .line 695
    :pswitch_1d
    const-string p0, "addCustomInputGesture"

    return-object p0

    .line 691
    :pswitch_20
    const-string p0, "getInputGesture"

    return-object p0

    .line 687
    :pswitch_23
    const-string p0, "unregisterKeyGestureHandler"

    return-object p0

    .line 683
    :pswitch_26
    const-string p0, "registerKeyGestureHandler"

    return-object p0

    .line 679
    :pswitch_29
    const-string p0, "unregisterKeyGestureEventListener"

    return-object p0

    .line 675
    :pswitch_2c
    const-string p0, "registerKeyGestureEventListener"

    return-object p0

    .line 671
    :pswitch_2f
    const-string p0, "getKeyGlyphMap"

    return-object p0

    .line 667
    :pswitch_32
    const-string p0, "unregisterStickyModifierStateListener"

    return-object p0

    .line 663
    :pswitch_35
    const-string p0, "registerStickyModifierStateListener"

    return-object p0

    .line 659
    :pswitch_38
    const-string p0, "getHostUsiVersionFromDisplayConfig"

    return-object p0

    .line 655
    :pswitch_3b
    const-string p0, "unregisterKeyboardBacklightListener"

    return-object p0

    .line 651
    :pswitch_3e
    const-string p0, "registerKeyboardBacklightListener"

    return-object p0

    .line 647
    :pswitch_41
    const-string p0, "pilferPointers"

    return-object p0

    .line 643
    :pswitch_44
    const-string p0, "getInputDeviceBluetoothAddress"

    return-object p0

    .line 639
    :pswitch_47
    const-string p0, "unregisterKeyEventActivityListener"

    return-object p0

    .line 635
    :pswitch_4a
    const-string p0, "registerKeyEventActivityListener"

    return-object p0

    .line 631
    :pswitch_4d
    const-string p0, "unregisterBatteryListener"

    return-object p0

    .line 627
    :pswitch_50
    const-string p0, "registerBatteryListener"

    return-object p0

    .line 623
    :pswitch_53
    const-string p0, "cancelCurrentTouch"

    return-object p0

    .line 619
    :pswitch_56
    const-string p0, "closeLightSession"

    return-object p0

    .line 615
    :pswitch_59
    const-string p0, "openLightSession"

    return-object p0

    .line 611
    :pswitch_5c
    const-string p0, "setLightStates"

    return-object p0

    .line 607
    :pswitch_5f
    const-string p0, "getLightState"

    return-object p0

    .line 603
    :pswitch_62
    const-string p0, "getLights"

    return-object p0

    .line 599
    :pswitch_65
    const-string p0, "flushSensor"

    return-object p0

    .line 595
    :pswitch_68
    const-string p0, "disableSensor"

    return-object p0

    .line 591
    :pswitch_6b
    const-string p0, "enableSensor"

    return-object p0

    .line 587
    :pswitch_6e
    const-string p0, "unregisterSensorListener"

    return-object p0

    .line 583
    :pswitch_71
    const-string p0, "registerSensorListener"

    return-object p0

    .line 579
    :pswitch_74
    const-string p0, "getSensorList"

    return-object p0

    .line 575
    :pswitch_77
    const-string p0, "removeUniqueIdAssociationByPort"

    return-object p0

    .line 571
    :pswitch_7a
    const-string p0, "addUniqueIdAssociationByPort"

    return-object p0

    .line 567
    :pswitch_7d
    const-string p0, "removeUniqueIdAssociationByDescriptor"

    return-object p0

    .line 563
    :pswitch_80
    const-string p0, "addUniqueIdAssociationByDescriptor"

    return-object p0

    .line 559
    :pswitch_83
    const-string p0, "removePortAssociation"

    return-object p0

    .line 555
    :pswitch_86
    const-string p0, "addPortAssociation"

    return-object p0

    .line 551
    :pswitch_89
    const-string p0, "monitorGestureInput"

    return-object p0

    .line 547
    :pswitch_8c
    const-string p0, "requestPointerCapture"

    return-object p0

    .line 543
    :pswitch_8f
    const-string p0, "setPointerIcon"

    return-object p0

    .line 539
    :pswitch_92
    const-string p0, "getBatteryState"

    return-object p0

    .line 535
    :pswitch_95
    const-string p0, "unregisterVibratorStateListener"

    return-object p0

    .line 531
    :pswitch_98
    const-string p0, "registerVibratorStateListener"

    return-object p0

    .line 527
    :pswitch_9b
    const-string p0, "isVibrating"

    return-object p0

    .line 523
    :pswitch_9e
    const-string p0, "getVibratorIds"

    return-object p0

    .line 519
    :pswitch_a1
    const-string p0, "cancelVibrate"

    return-object p0

    .line 515
    :pswitch_a4
    const-string p0, "vibrateCombined"

    return-object p0

    .line 511
    :pswitch_a7
    const-string p0, "vibrate"

    return-object p0

    .line 507
    :pswitch_aa
    const-string p0, "isMicMuted"

    return-object p0

    .line 503
    :pswitch_ad
    const-string p0, "registerTabletModeChangedListener"

    return-object p0

    .line 499
    :pswitch_b0
    const-string p0, "isInTabletMode"

    return-object p0

    .line 495
    :pswitch_b3
    const-string p0, "registerInputDevicesChangedListener"

    return-object p0

    .line 491
    :pswitch_b6
    const-string p0, "getModifierKeyRemapping"

    return-object p0

    .line 487
    :pswitch_b9
    const-string p0, "clearAllModifierKeyRemappings"

    return-object p0

    .line 483
    :pswitch_bc
    const-string p0, "remapModifierKey"

    return-object p0

    .line 479
    :pswitch_bf
    const-string p0, "getKeyboardLayoutListForInputDevice"

    return-object p0

    .line 475
    :pswitch_c2
    const-string p0, "setKeyboardLayoutForInputDevice"

    return-object p0

    .line 471
    :pswitch_c5
    const-string p0, "setKeyboardLayoutOverrideForInputDevice"

    return-object p0

    .line 467
    :pswitch_c8
    const-string p0, "getKeyboardLayoutForInputDevice"

    return-object p0

    .line 463
    :pswitch_cb
    const-string p0, "getKeyboardLayout"

    return-object p0

    .line 459
    :pswitch_ce
    const-string p0, "getKeyboardLayouts"

    return-object p0

    .line 455
    :pswitch_d1
    const-string p0, "setTouchCalibrationForInputDevice"

    return-object p0

    .line 451
    :pswitch_d4
    const-string p0, "getTouchCalibrationForInputDevice"

    return-object p0

    .line 447
    :pswitch_d7
    const-string p0, "verifyInputEvent"

    return-object p0

    .line 443
    :pswitch_da
    const-string p0, "injectInputEventToTarget"

    return-object p0

    .line 439
    :pswitch_dd
    const-string p0, "createVirtualKeyboard"

    return-object p0

    .line 435
    :pswitch_e0
    const-string p0, "injectInputEvent"

    return-object p0

    .line 431
    :pswitch_e3
    const-string p0, "tryPointerSpeed"

    return-object p0

    .line 427
    :pswitch_e6
    const-string p0, "getMousePointerSpeed"

    return-object p0

    .line 423
    :pswitch_e9
    const-string p0, "getKeyCharacterMap"

    return-object p0

    .line 419
    :pswitch_ec
    const-string p0, "getKeyCodeForKeyLocation"

    return-object p0

    .line 415
    :pswitch_ef
    const-string p0, "hasKeys"

    return-object p0

    .line 411
    :pswitch_f2
    const-string p0, "disableInputDevice"

    return-object p0

    .line 407
    :pswitch_f5
    const-string p0, "enableInputDevice"

    return-object p0

    .line 403
    :pswitch_f8
    const-string p0, "getInputDeviceIds"

    return-object p0

    .line 399
    :pswitch_fb
    const-string p0, "getInputDevice"

    return-object p0

    .line 395
    :pswitch_fe
    const-string p0, "getVelocityTrackerStrategy"

    return-object p0

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
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
.method protected blacklist addCustomInputGesture_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3302
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3303
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 386
    return-object p0
.end method

.method protected blacklist clearAllModifierKeyRemappings_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3190
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3191
    return-void
.end method

.method protected blacklist createVirtualKeyboard_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3162
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/hardware/input/IInputManager$Stub;->PERMISSIONS_createVirtualKeyboard:[Ljava/lang/String;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3163
    return-void
.end method

.method protected blacklist getInputDeviceBluetoothAddress_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3245
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3246
    return-void
.end method

.method protected blacklist getInputGesture_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3297
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3298
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3323
    const/16 v0, 0x53

    return v0
.end method

.method protected blacklist getModifierKeyRemapping_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3195
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3196
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 738
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    nop

    .line 743
    const-string v0, "android.hardware.input.IInputManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 744
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 747
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    return v1

    .line 750
    :cond_17
    packed-switch p1, :pswitch_data_74c

    .line 1650
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1641
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1642
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1643
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getCursorPositionInLogicalDisplay(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 1644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1646
    goto/16 :goto_74b

    .line 1631
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getCursorPositionInPhysicalDisplay(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 1634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1636
    goto/16 :goto_74b

    .line 1620
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1623
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1624
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->setMouseScalingEnabled(ZI)V

    .line 1625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    goto/16 :goto_74b

    .line 1613
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->resetLockedModifierState()V

    .line 1614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    goto/16 :goto_74b

    .line 1606
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    .line 1607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1609
    goto/16 :goto_74b

    .line 1595
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1599
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    .line 1600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1602
    goto/16 :goto_74b

    .line 1584
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->removeAllCustomInputGestures(II)V

    .line 1589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    goto/16 :goto_74b

    .line 1572
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1574
    sget-object p4, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/input/AidlInputGestureData;

    .line 1575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result p1

    .line 1577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    goto/16 :goto_74b

    .line 1560
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1562
    sget-object p4, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/input/AidlInputGestureData;

    .line 1563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1564
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I

    move-result p1

    .line 1565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    goto/16 :goto_74b

    .line 1548
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1550
    sget-object p4, Landroid/hardware/input/AidlInputGestureData$Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 1551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;

    move-result-object p1

    .line 1553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1555
    goto/16 :goto_74b

    .line 1539
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyGestureHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureHandler;

    move-result-object p1

    .line 1540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1541
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V

    .line 1542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    goto/16 :goto_74b

    .line 1528
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1530
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/input/IKeyGestureHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureHandler;

    move-result-object p4

    .line 1531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V

    .line 1533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    goto/16 :goto_74b

    .line 1519
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyGestureEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureEventListener;

    move-result-object p1

    .line 1520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V

    .line 1522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    goto/16 :goto_74b

    .line 1510
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyGestureEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyGestureEventListener;

    move-result-object p1

    .line 1511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V

    .line 1513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    goto/16 :goto_74b

    .line 1500
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p1

    .line 1503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1505
    goto/16 :goto_74b

    .line 1491
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IStickyModifierStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IStickyModifierStateListener;

    move-result-object p1

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1493
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V

    .line 1494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    goto/16 :goto_74b

    .line 1482
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IStickyModifierStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IStickyModifierStateListener;

    move-result-object p1

    .line 1483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1484
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V

    .line 1485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    goto/16 :goto_74b

    .line 1472
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1474
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object p1

    .line 1475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1477
    goto/16 :goto_74b

    .line 1463
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;

    move-result-object p1

    .line 1464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1465
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V

    .line 1466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    goto/16 :goto_74b

    .line 1454
    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyboardBacklightListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyboardBacklightListener;

    move-result-object p1

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1456
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V

    .line 1457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    goto/16 :goto_74b

    .line 1445
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->pilferPointers(Landroid/os/IBinder;)V

    .line 1448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    goto/16 :goto_74b

    .line 1435
    :pswitch_1b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1437
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object p1

    .line 1438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1440
    goto/16 :goto_74b

    .line 1425
    :pswitch_1cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyEventActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyEventActivityListener;

    move-result-object p1

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1427
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p1

    .line 1428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1430
    goto/16 :goto_74b

    .line 1415
    :pswitch_1e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IKeyEventActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IKeyEventActivityListener;

    move-result-object p1

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p1

    .line 1418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1420
    goto/16 :goto_74b

    .line 1404
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1406
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDeviceBatteryListener;

    move-result-object p4

    .line 1407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1408
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V

    .line 1409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    goto/16 :goto_74b

    .line 1393
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1395
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDeviceBatteryListener;

    move-result-object p4

    .line 1396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V

    .line 1398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    goto/16 :goto_74b

    .line 1386
    :pswitch_228
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->cancelCurrentTouch()V

    .line 1387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    goto/16 :goto_74b

    .line 1376
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->closeLightSession(ILandroid/os/IBinder;)V

    .line 1381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    goto/16 :goto_74b

    .line 1363
    :pswitch_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/input/IInputManager$Stub;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    goto/16 :goto_74b

    .line 1348
    :pswitch_25a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 1352
    sget-object v0, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/lights/LightState;

    .line 1354
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/input/IInputManager$Stub;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V

    .line 1357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    goto/16 :goto_74b

    .line 1336
    :pswitch_279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object p1

    .line 1341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1343
    goto/16 :goto_74b

    .line 1326
    :pswitch_290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1328
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getLights(I)Ljava/util/List;

    move-result-object p1

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1331
    goto/16 :goto_74b

    .line 1314
    :pswitch_2a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->flushSensor(II)Z

    move-result p1

    .line 1319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1321
    goto/16 :goto_74b

    .line 1303
    :pswitch_2ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->disableSensor(II)V

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    goto/16 :goto_74b

    .line 1287
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1295
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/input/IInputManager$Stub;->enableSensor(IIII)Z

    move-result p1

    .line 1296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1298
    goto/16 :goto_74b

    .line 1278
    :pswitch_2ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object p1

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_74b

    .line 1268
    :pswitch_2ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object p1

    .line 1269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result p1

    .line 1271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1273
    goto/16 :goto_74b

    .line 1258
    :pswitch_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p1

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1263
    goto/16 :goto_74b

    .line 1249
    :pswitch_329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    goto/16 :goto_74b

    .line 1238
    :pswitch_338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    goto/16 :goto_74b

    .line 1229
    :pswitch_34b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    goto/16 :goto_74b

    .line 1218
    :pswitch_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    goto/16 :goto_74b

    .line 1209
    :pswitch_36d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->removePortAssociation(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    goto/16 :goto_74b

    .line 1198
    :pswitch_37c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->addPortAssociation(Ljava/lang/String;I)V

    .line 1203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    goto/16 :goto_74b

    .line 1184
    :pswitch_38f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1193
    goto/16 :goto_74b

    .line 1174
    :pswitch_3aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, p1, p3}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;I)V

    .line 1179
    goto/16 :goto_74b

    .line 1156
    :pswitch_3ba
    sget-object p1, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/PointerIcon;

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/input/IInputManager$Stub;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p1

    .line 1167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1169
    goto/16 :goto_74b

    .line 1146
    :pswitch_3e3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1148
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object p1

    .line 1149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1151
    goto/16 :goto_74b

    .line 1134
    :pswitch_3f7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object p4

    .line 1137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1141
    goto/16 :goto_74b

    .line 1122
    :pswitch_413
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object p4

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1129
    goto/16 :goto_74b

    .line 1112
    :pswitch_42f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->isVibrating(I)Z

    move-result p1

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1117
    goto/16 :goto_74b

    .line 1102
    :pswitch_443
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getVibratorIds(I)[I

    move-result-object p1

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1107
    goto/16 :goto_74b

    .line 1091
    :pswitch_457
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    goto/16 :goto_74b

    .line 1078
    :pswitch_46b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1080
    sget-object p4, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/CombinedVibration;

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/input/IInputManager$Stub;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    goto/16 :goto_74b

    .line 1065
    :pswitch_487
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1067
    sget-object p4, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/VibrationEffect;

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/input/IInputManager$Stub;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_74b

    .line 1057
    :pswitch_4a3
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isMicMuted()I

    move-result p1

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    goto/16 :goto_74b

    .line 1049
    :pswitch_4b0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object p1

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    goto/16 :goto_74b

    .line 1041
    :pswitch_4c4
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result p1

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    goto/16 :goto_74b

    .line 1033
    :pswitch_4d1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object p1

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    goto/16 :goto_74b

    .line 1025
    :pswitch_4e5
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getModifierKeyRemapping()Ljava/util/Map;

    move-result-object p1

    .line 1026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1028
    goto/16 :goto_74b

    .line 1019
    :pswitch_4f2
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->clearAllModifierKeyRemappings()V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    goto/16 :goto_74b

    .line 1009
    :pswitch_4fb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->remapModifierKey(II)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    goto/16 :goto_74b

    .line 993
    :pswitch_50f
    move-object v2, p0

    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 997
    sget-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 999
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1004
    goto/16 :goto_74b

    .line 976
    :pswitch_53b
    move-object v2, p0

    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 980
    sget-object p1, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 982
    sget-object p1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_74b

    .line 965
    :pswitch_56a
    move-object v2, p0

    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    goto/16 :goto_74b

    .line 949
    :pswitch_582
    move-object v2, p0

    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 953
    sget-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 955
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p1

    .line 958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 960
    goto/16 :goto_74b

    .line 939
    :pswitch_5ae
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 944
    goto/16 :goto_74b

    .line 931
    :pswitch_5c2
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 934
    goto/16 :goto_74b

    .line 919
    :pswitch_5cf
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 923
    sget-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/TouchCalibration;

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    goto/16 :goto_74b

    .line 907
    :pswitch_5eb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object p1

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 914
    goto/16 :goto_74b

    .line 897
    :pswitch_603
    move-object v2, p0

    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p1

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 902
    goto/16 :goto_74b

    .line 883
    :pswitch_61b
    move-object v2, p0

    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/input/IInputManager$Stub;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result p1

    .line 890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 892
    goto/16 :goto_74b

    .line 871
    :pswitch_63b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 873
    sget-object p4, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/input/VirtualKeyboardConfig;

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 878
    goto/16 :goto_74b

    .line 859
    :pswitch_657
    move-object v2, p0

    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputEvent;

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p1

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 866
    goto/16 :goto_74b

    .line 850
    :pswitch_673
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_74b

    .line 842
    :pswitch_683
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getMousePointerSpeed()I

    move-result p1

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    goto/16 :goto_74b

    .line 833
    :pswitch_690
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object p1

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 838
    goto/16 :goto_74b

    .line 821
    :pswitch_6a4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {p0, p1, p4}, Landroid/hardware/input/IInputManager$Stub;->getKeyCodeForKeyLocation(II)I

    move-result p1

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    goto/16 :goto_74b

    .line 797
    :pswitch_6bc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 804
    const v4, 0xf4240

    if-gt v3, v4, :cond_6e9

    .line 806
    if-gez v3, :cond_6d6

    .line 807
    const/4 v3, 0x0

    goto :goto_6d8

    .line 809
    :cond_6d6
    new-array v3, v3, [Z

    .line 811
    :goto_6d8
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result p1

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 815
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 816
    goto :goto_74b

    .line 805
    :cond_6e9
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Array too large: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 788
    :pswitch_702
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 791
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    goto :goto_74b

    .line 779
    :pswitch_711
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto :goto_74b

    .line 771
    :pswitch_720
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object p1

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 774
    goto :goto_74b

    .line 762
    :pswitch_72c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 767
    goto :goto_74b

    .line 754
    :pswitch_73f
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 757
    nop

    .line 1653
    :goto_74b
    return v1

    :pswitch_data_74c
    .packed-switch 0x1
        :pswitch_73f
        :pswitch_72c
        :pswitch_720
        :pswitch_711
        :pswitch_702
        :pswitch_6bc
        :pswitch_6a4
        :pswitch_690
        :pswitch_683
        :pswitch_673
        :pswitch_657
        :pswitch_63b
        :pswitch_61b
        :pswitch_603
        :pswitch_5eb
        :pswitch_5cf
        :pswitch_5c2
        :pswitch_5ae
        :pswitch_582
        :pswitch_56a
        :pswitch_53b
        :pswitch_50f
        :pswitch_4fb
        :pswitch_4f2
        :pswitch_4e5
        :pswitch_4d1
        :pswitch_4c4
        :pswitch_4b0
        :pswitch_4a3
        :pswitch_487
        :pswitch_46b
        :pswitch_457
        :pswitch_443
        :pswitch_42f
        :pswitch_413
        :pswitch_3f7
        :pswitch_3e3
        :pswitch_3ba
        :pswitch_3aa
        :pswitch_38f
        :pswitch_37c
        :pswitch_36d
        :pswitch_35a
        :pswitch_34b
        :pswitch_338
        :pswitch_329
        :pswitch_316
        :pswitch_2ff
        :pswitch_2ec
        :pswitch_2cd
        :pswitch_2ba
        :pswitch_2a3
        :pswitch_290
        :pswitch_279
        :pswitch_25a
        :pswitch_243
        :pswitch_230
        :pswitch_228
        :pswitch_211
        :pswitch_1fa
        :pswitch_1e3
        :pswitch_1cc
        :pswitch_1b9
        :pswitch_1aa
        :pswitch_197
        :pswitch_184
        :pswitch_171
        :pswitch_15e
        :pswitch_14b
        :pswitch_138
        :pswitch_125
        :pswitch_112
        :pswitch_fb
        :pswitch_e8
        :pswitch_cd
        :pswitch_b2
        :pswitch_97
        :pswitch_84
        :pswitch_6d
        :pswitch_61
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist pilferPointers_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3250
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_INPUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3251
    return-void
.end method

.method protected blacklist registerKeyEventActivityListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3235
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LISTEN_FOR_KEY_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3236
    return-void
.end method

.method protected blacklist registerKeyGestureEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3277
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3278
    return-void
.end method

.method protected blacklist registerKeyGestureHandler_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3287
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3288
    return-void
.end method

.method protected blacklist registerKeyboardBacklightListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3255
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_KEYBOARD_BACKLIGHT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3256
    return-void
.end method

.method protected blacklist registerStickyModifierStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3266
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_STICKY_MODIFIER_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3267
    return-void
.end method

.method protected blacklist remapModifierKey_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3185
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMAP_MODIFIER_KEYS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3186
    return-void
.end method

.method protected blacklist removeAllCustomInputGestures_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3312
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3313
    return-void
.end method

.method protected blacklist removeCustomInputGesture_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3307
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3308
    return-void
.end method

.method protected blacklist setKeyboardLayoutForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3180
    return-void
.end method

.method protected blacklist setKeyboardLayoutOverrideForInputDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3174
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_KEYBOARD_LAYOUT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3175
    return-void
.end method

.method protected blacklist unregisterKeyEventActivityListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3240
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.LISTEN_FOR_KEY_ACTIVITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3241
    return-void
.end method

.method protected blacklist unregisterKeyGestureEventListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3282
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3283
    return-void
.end method

.method protected blacklist unregisterKeyGestureHandler_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3292
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3293
    return-void
.end method

.method protected blacklist unregisterKeyboardBacklightListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3260
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_KEYBOARD_BACKLIGHT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3261
    return-void
.end method

.method protected blacklist unregisterStickyModifierStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3271
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/input/IInputManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MONITOR_STICKY_MODIFIER_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3272
    return-void
.end method
