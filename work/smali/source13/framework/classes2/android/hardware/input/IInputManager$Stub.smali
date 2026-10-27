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

.field static final greylist-max-o TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x14

.field static final blacklist TRANSACTION_addPortAssociation:I = 0x28

.field static final blacklist TRANSACTION_addUniqueIdAssociation:I = 0x2a

.field static final blacklist TRANSACTION_cancelCurrentTouch:I = 0x37

.field static final greylist-max-o TRANSACTION_cancelVibrate:I = 0x1c

.field static final blacklist TRANSACTION_closeLightSession:I = 0x36

.field static final greylist-max-o TRANSACTION_disableInputDevice:I = 0x5

.field static final blacklist TRANSACTION_disableSensor:I = 0x30

.field static final greylist-max-o TRANSACTION_enableInputDevice:I = 0x4

.field static final blacklist TRANSACTION_enableSensor:I = 0x2f

.field static final blacklist TRANSACTION_flushSensor:I = 0x31

.field static final blacklist TRANSACTION_getBatteryCapacity:I = 0x22

.field static final blacklist TRANSACTION_getBatteryStatus:I = 0x21

.field static final greylist-max-o TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0x11

.field static final greylist-max-o TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x13

.field static final greylist-max-o TRANSACTION_getInputDevice:I = 0x1

.field static final greylist-max-o TRANSACTION_getInputDeviceIds:I = 0x2

.field static final blacklist TRANSACTION_getKeyCodeForKeyLocation:I = 0x7

.field static final greylist-max-o TRANSACTION_getKeyboardLayout:I = 0x10

.field static final greylist-max-o TRANSACTION_getKeyboardLayouts:I = 0xe

.field static final greylist-max-o TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xf

.field static final blacklist TRANSACTION_getLightState:I = 0x33

.field static final blacklist TRANSACTION_getLights:I = 0x32

.field static final blacklist TRANSACTION_getSensorList:I = 0x2c

.field static final greylist-max-o TRANSACTION_getTouchCalibrationForInputDevice:I = 0xc

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x1d

.field static final greylist-max-o TRANSACTION_hasKeys:I = 0x6

.field static final greylist-max-r TRANSACTION_injectInputEvent:I = 0x9

.field static final blacklist TRANSACTION_injectInputEventToTarget:I = 0xa

.field static final greylist-max-o TRANSACTION_isInTabletMode:I = 0x17

.field static final greylist-max-o TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final blacklist TRANSACTION_isMicMuted:I = 0x19

.field static final blacklist TRANSACTION_isVibrating:I = 0x1e

.field static final blacklist TRANSACTION_monitorGestureInput:I = 0x27

.field static final blacklist TRANSACTION_openLightSession:I = 0x35

.field static final greylist-max-o TRANSACTION_registerInputDevicesChangedListener:I = 0x16

.field static final blacklist TRANSACTION_registerSensorListener:I = 0x2d

.field static final greylist-max-o TRANSACTION_registerTabletModeChangedListener:I = 0x18

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x1f

.field static final greylist-max-o TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x15

.field static final blacklist TRANSACTION_removePortAssociation:I = 0x29

.field static final blacklist TRANSACTION_removeUniqueIdAssociation:I = 0x2b

.field static final greylist-max-o TRANSACTION_requestPointerCapture:I = 0x26

.field static final greylist-max-o TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0x12

.field static final greylist-max-o TRANSACTION_setCustomPointerIcon:I = 0x25

.field static final blacklist TRANSACTION_setLightStates:I = 0x34

.field static final blacklist TRANSACTION_setMagicPointerIconType:I = 0x24

.field static final greylist-max-o TRANSACTION_setPointerIconType:I = 0x23

.field static final greylist-max-o TRANSACTION_setTouchCalibrationForInputDevice:I = 0xd

.field static final greylist-max-o TRANSACTION_tryPointerSpeed:I = 0x8

.field static final blacklist TRANSACTION_unregisterSensorListener:I = 0x2e

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x20

.field static final blacklist TRANSACTION_verifyInputEvent:I = 0xb

.field static final greylist-max-o TRANSACTION_vibrate:I = 0x1a

.field static final blacklist TRANSACTION_vibrateCombined:I = 0x1b


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 243
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 244
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 252
    if-nez p0, :cond_4

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 256
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_14

    .line 257
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/IInputManager;

    return-object v1

    .line 259
    :cond_14
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 268
    packed-switch p0, :pswitch_data_aa

    .line 492
    const/4 v0, 0x0

    return-object v0

    .line 488
    :pswitch_5
    const-string v0, "cancelCurrentTouch"

    return-object v0

    .line 484
    :pswitch_8
    const-string v0, "closeLightSession"

    return-object v0

    .line 480
    :pswitch_b
    const-string v0, "openLightSession"

    return-object v0

    .line 476
    :pswitch_e
    const-string v0, "setLightStates"

    return-object v0

    .line 472
    :pswitch_11
    const-string v0, "getLightState"

    return-object v0

    .line 468
    :pswitch_14
    const-string v0, "getLights"

    return-object v0

    .line 464
    :pswitch_17
    const-string v0, "flushSensor"

    return-object v0

    .line 460
    :pswitch_1a
    const-string v0, "disableSensor"

    return-object v0

    .line 456
    :pswitch_1d
    const-string v0, "enableSensor"

    return-object v0

    .line 452
    :pswitch_20
    const-string v0, "unregisterSensorListener"

    return-object v0

    .line 448
    :pswitch_23
    const-string v0, "registerSensorListener"

    return-object v0

    .line 444
    :pswitch_26
    const-string v0, "getSensorList"

    return-object v0

    .line 440
    :pswitch_29
    const-string v0, "removeUniqueIdAssociation"

    return-object v0

    .line 436
    :pswitch_2c
    const-string v0, "addUniqueIdAssociation"

    return-object v0

    .line 432
    :pswitch_2f
    const-string v0, "removePortAssociation"

    return-object v0

    .line 428
    :pswitch_32
    const-string v0, "addPortAssociation"

    return-object v0

    .line 424
    :pswitch_35
    const-string v0, "monitorGestureInput"

    return-object v0

    .line 420
    :pswitch_38
    const-string v0, "requestPointerCapture"

    return-object v0

    .line 416
    :pswitch_3b
    const-string v0, "setCustomPointerIcon"

    return-object v0

    .line 412
    :pswitch_3e
    const-string v0, "setMagicPointerIconType"

    return-object v0

    .line 408
    :pswitch_41
    const-string v0, "setPointerIconType"

    return-object v0

    .line 404
    :pswitch_44
    const-string v0, "getBatteryCapacity"

    return-object v0

    .line 400
    :pswitch_47
    const-string v0, "getBatteryStatus"

    return-object v0

    .line 396
    :pswitch_4a
    const-string v0, "unregisterVibratorStateListener"

    return-object v0

    .line 392
    :pswitch_4d
    const-string v0, "registerVibratorStateListener"

    return-object v0

    .line 388
    :pswitch_50
    const-string v0, "isVibrating"

    return-object v0

    .line 384
    :pswitch_53
    const-string v0, "getVibratorIds"

    return-object v0

    .line 380
    :pswitch_56
    const-string v0, "cancelVibrate"

    return-object v0

    .line 376
    :pswitch_59
    const-string v0, "vibrateCombined"

    return-object v0

    .line 372
    :pswitch_5c
    const-string v0, "vibrate"

    return-object v0

    .line 368
    :pswitch_5f
    const-string v0, "isMicMuted"

    return-object v0

    .line 364
    :pswitch_62
    const-string v0, "registerTabletModeChangedListener"

    return-object v0

    .line 360
    :pswitch_65
    const-string v0, "isInTabletMode"

    return-object v0

    .line 356
    :pswitch_68
    const-string v0, "registerInputDevicesChangedListener"

    return-object v0

    .line 352
    :pswitch_6b
    const-string v0, "removeKeyboardLayoutForInputDevice"

    return-object v0

    .line 348
    :pswitch_6e
    const-string v0, "addKeyboardLayoutForInputDevice"

    return-object v0

    .line 344
    :pswitch_71
    const-string v0, "getEnabledKeyboardLayoutsForInputDevice"

    return-object v0

    .line 340
    :pswitch_74
    const-string v0, "setCurrentKeyboardLayoutForInputDevice"

    return-object v0

    .line 336
    :pswitch_77
    const-string v0, "getCurrentKeyboardLayoutForInputDevice"

    return-object v0

    .line 332
    :pswitch_7a
    const-string v0, "getKeyboardLayout"

    return-object v0

    .line 328
    :pswitch_7d
    const-string v0, "getKeyboardLayoutsForInputDevice"

    return-object v0

    .line 324
    :pswitch_80
    const-string v0, "getKeyboardLayouts"

    return-object v0

    .line 320
    :pswitch_83
    const-string v0, "setTouchCalibrationForInputDevice"

    return-object v0

    .line 316
    :pswitch_86
    const-string v0, "getTouchCalibrationForInputDevice"

    return-object v0

    .line 312
    :pswitch_89
    const-string v0, "verifyInputEvent"

    return-object v0

    .line 308
    :pswitch_8c
    const-string v0, "injectInputEventToTarget"

    return-object v0

    .line 304
    :pswitch_8f
    const-string v0, "injectInputEvent"

    return-object v0

    .line 300
    :pswitch_92
    const-string v0, "tryPointerSpeed"

    return-object v0

    .line 296
    :pswitch_95
    const-string v0, "getKeyCodeForKeyLocation"

    return-object v0

    .line 292
    :pswitch_98
    const-string v0, "hasKeys"

    return-object v0

    .line 288
    :pswitch_9b
    const-string v0, "disableInputDevice"

    return-object v0

    .line 284
    :pswitch_9e
    const-string v0, "enableInputDevice"

    return-object v0

    .line 280
    :pswitch_a1
    const-string v0, "isInputDeviceEnabled"

    return-object v0

    .line 276
    :pswitch_a4
    const-string v0, "getInputDeviceIds"

    return-object v0

    .line 272
    :pswitch_a7
    const-string v0, "getInputDevice"

    return-object v0

    :pswitch_data_aa
    .packed-switch 0x1
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

    .line 263
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2162
    const/16 v0, 0x36

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 499
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    const-string v0, "android.hardware.input.IInputManager"

    .line 504
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 505
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    :cond_d
    packed-switch p1, :pswitch_data_48c

    .line 515
    packed-switch p1, :pswitch_data_492

    .line 1107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 511
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    return v1

    .line 1101
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->cancelCurrentTouch()V

    .line 1102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    goto/16 :goto_48a

    .line 1091
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1093
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1094
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->closeLightSession(ILandroid/os/IBinder;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    goto/16 :goto_48a

    .line 1078
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1080
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1083
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    goto/16 :goto_48a

    .line 1063
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1065
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1067
    .local v3, "_arg1":[I
    sget-object v4, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 1069
    .local v4, "_arg2":[Landroid/hardware/lights/LightState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1070
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/input/IInputManager$Stub;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V

    .line 1072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_48a

    .line 1051
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[Landroid/hardware/lights/LightState;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1053
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1054
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v4

    .line 1056
    .local v4, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1058
    goto/16 :goto_48a

    .line 1041
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/lights/LightState;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1042
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getLights(I)Ljava/util/List;

    move-result-object v3

    .line 1044
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1046
    goto/16 :goto_48a

    .line 1029
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1031
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1032
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->flushSensor(II)Z

    move-result v4

    .line 1034
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1036
    goto/16 :goto_48a

    .line 1018
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1020
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1021
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->disableSensor(II)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_48a

    .line 1002
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1004
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1006
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1008
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1009
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/input/IInputManager$Stub;->enableSensor(IIII)Z

    move-result v6

    .line 1011
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1013
    goto/16 :goto_48a

    .line 993
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v2

    .line 994
    .local v2, "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    goto/16 :goto_48a

    .line 983
    .end local v2    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object v2

    .line 984
    .restart local v2    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v3

    .line 986
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 988
    goto/16 :goto_48a

    .line 973
    .end local v2    # "_arg0":Landroid/hardware/input/IInputSensorEventListener;
    .end local v3    # "_result":Z
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 974
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v3

    .line 976
    .local v3, "_result":[Landroid/hardware/input/InputSensorInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 978
    goto/16 :goto_48a

    .line 964
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/hardware/input/InputSensorInfo;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 965
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociation(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    goto/16 :goto_48a

    .line 953
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 955
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_48a

    .line 944
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 945
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->removePortAssociation(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    goto/16 :goto_48a

    .line 933
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 935
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 936
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->addPortAssociation(Ljava/lang/String;I)V

    .line 938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_48a

    .line 919
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 921
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 924
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v5

    .line 926
    .local v5, "_result":Landroid/view/InputMonitor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 928
    goto/16 :goto_48a

    .line 909
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/view/InputMonitor;
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 911
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 912
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 914
    goto/16 :goto_48a

    .line 900
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_18c
    sget-object v2, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    .line 901
    .local v2, "_arg0":Landroid/view/PointerIcon;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_48a

    .line 891
    .end local v2    # "_arg0":Landroid/view/PointerIcon;
    :pswitch_19f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 892
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setMagicPointerIconType(I)V

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_48a

    .line 882
    .end local v2    # "_arg0":I
    :pswitch_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_48a

    .line 872
    .end local v2    # "_arg0":I
    :pswitch_1bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 873
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getBatteryCapacity(I)I

    move-result v3

    .line 875
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    goto/16 :goto_48a

    .line 862
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getBatteryStatus(I)I

    move-result v3

    .line 865
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    goto/16 :goto_48a

    .line 850
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v3

    .line 853
    .local v3, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v4

    .line 855
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 857
    goto/16 :goto_48a

    .line 838
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v4    # "_result":Z
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 840
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v3

    .line 841
    .restart local v3    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v4

    .line 843
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 845
    goto/16 :goto_48a

    .line 828
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v4    # "_result":Z
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 829
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->isVibrating(I)Z

    move-result v3

    .line 831
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    goto/16 :goto_48a

    .line 818
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_22c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 819
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getVibratorIds(I)[I

    move-result-object v3

    .line 821
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 823
    goto/16 :goto_48a

    .line 807
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_23f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 809
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 810
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    goto/16 :goto_48a

    .line 794
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 796
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 798
    .local v3, "_arg1":Landroid/os/CombinedVibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 799
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_48a

    .line 781
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/CombinedVibration;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_26d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 783
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    .line 785
    .local v3, "_arg1":Landroid/os/VibrationEffect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 786
    .restart local v4    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_48a

    .line 773
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/VibrationEffect;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_288
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isMicMuted()I

    move-result v2

    .line 774
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    goto/16 :goto_48a

    .line 765
    .end local v2    # "_result":I
    :pswitch_294
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v2

    .line 766
    .local v2, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    goto/16 :goto_48a

    .line 757
    .end local v2    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :pswitch_2a7
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v2

    .line 758
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    goto/16 :goto_48a

    .line 749
    .end local v2    # "_result":I
    :pswitch_2b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v2

    .line 750
    .local v2, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_48a

    .line 738
    .end local v2    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :pswitch_2c6
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 740
    .local v2, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    goto/16 :goto_48a

    .line 727
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2dd
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 729
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_48a

    .line 717
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2f4
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 718
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 722
    goto/16 :goto_48a

    .line 706
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_30b
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 708
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_48a

    .line 696
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_322
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 697
    .restart local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    goto/16 :goto_48a

    .line 686
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 689
    .local v3, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 691
    goto/16 :goto_48a

    .line 676
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/input/KeyboardLayout;
    :pswitch_34c
    sget-object v2, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 677
    .local v2, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 679
    .local v3, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 681
    goto/16 :goto_48a

    .line 668
    .end local v2    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_363
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 669
    .local v2, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 671
    goto/16 :goto_48a

    .line 656
    .end local v2    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 660
    .local v3, "_arg1":I
    sget-object v4, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/TouchCalibration;

    .line 661
    .local v4, "_arg2":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_48a

    .line 644
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :pswitch_38a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 646
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v4

    .line 649
    .local v4, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 651
    goto/16 :goto_48a

    .line 634
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/input/TouchCalibration;
    :pswitch_3a1
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 635
    .local v2, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v3

    .line 637
    .local v3, "_result":Landroid/view/VerifiedInputEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 639
    goto/16 :goto_48a

    .line 620
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_result":Landroid/view/VerifiedInputEvent;
    :pswitch_3b8
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 622
    .restart local v2    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 624
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 625
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v5

    .line 627
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 629
    goto/16 :goto_48a

    .line 608
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_3d7
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 610
    .restart local v2    # "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 611
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v4

    .line 613
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto/16 :goto_48a

    .line 599
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_48a

    .line 587
    .end local v2    # "_arg0":I
    :pswitch_401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 590
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyCodeForKeyLocation(II)I

    move-result v4

    .line 592
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    goto/16 :goto_48a

    .line 565
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 569
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 571
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 572
    .local v5, "_arg3_length":I
    if-gez v5, :cond_42c

    .line 573
    const/4 v6, 0x0

    .local v6, "_arg3":[Z
    goto :goto_42e

    .line 575
    .end local v6    # "_arg3":[Z
    :cond_42c
    new-array v6, v5, [Z

    .line 577
    .restart local v6    # "_arg3":[Z
    :goto_42e
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v7

    .line 579
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 581
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 582
    goto :goto_48a

    .line 556
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3_length":I
    .end local v6    # "_arg3":[Z
    .end local v7    # "_result":Z
    :pswitch_43f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto :goto_48a

    .line 547
    .end local v2    # "_arg0":I
    :pswitch_44d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto :goto_48a

    .line 537
    .end local v2    # "_arg0":I
    :pswitch_45b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result v3

    .line 540
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 542
    goto :goto_48a

    .line 529
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_46d
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v2

    .line 530
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 532
    goto :goto_48a

    .line 520
    .end local v2    # "_result":[I
    :pswitch_478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 521
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 523
    .local v3, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 525
    nop

    .line 1110
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/InputDevice;
    :goto_48a
    return v1

    nop

    :pswitch_data_48c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_492
    .packed-switch 0x1
        :pswitch_478
        :pswitch_46d
        :pswitch_45b
        :pswitch_44d
        :pswitch_43f
        :pswitch_418
        :pswitch_401
        :pswitch_3f2
        :pswitch_3d7
        :pswitch_3b8
        :pswitch_3a1
        :pswitch_38a
        :pswitch_36f
        :pswitch_363
        :pswitch_34c
        :pswitch_339
        :pswitch_322
        :pswitch_30b
        :pswitch_2f4
        :pswitch_2dd
        :pswitch_2c6
        :pswitch_2b3
        :pswitch_2a7
        :pswitch_294
        :pswitch_288
        :pswitch_26d
        :pswitch_252
        :pswitch_23f
        :pswitch_22c
        :pswitch_219
        :pswitch_1fe
        :pswitch_1e3
        :pswitch_1d0
        :pswitch_1bd
        :pswitch_1ae
        :pswitch_19f
        :pswitch_18c
        :pswitch_17c
        :pswitch_161
        :pswitch_14e
        :pswitch_13f
        :pswitch_12c
        :pswitch_11d
        :pswitch_10a
        :pswitch_f3
        :pswitch_e0
        :pswitch_c1
        :pswitch_ae
        :pswitch_97
        :pswitch_84
        :pswitch_6d
        :pswitch_4e
        :pswitch_37
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
