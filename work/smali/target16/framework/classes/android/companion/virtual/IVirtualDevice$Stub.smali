.class public abstract Landroid/companion/virtual/IVirtualDevice$Stub;
.super Landroid/os/Binder;
.source "IVirtualDevice.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addActivityPolicyExemption:I = 0xc

.field static final blacklist TRANSACTION_canCreateMirrorDisplays:I = 0x7

.field static final blacklist TRANSACTION_close:I = 0xa

.field static final blacklist TRANSACTION_createVirtualDisplay:I = 0x11

.field static final blacklist TRANSACTION_createVirtualDpad:I = 0x12

.field static final blacklist TRANSACTION_createVirtualKeyboard:I = 0x13

.field static final blacklist TRANSACTION_createVirtualMouse:I = 0x14

.field static final blacklist TRANSACTION_createVirtualNavigationTouchpad:I = 0x16

.field static final blacklist TRANSACTION_createVirtualRotaryEncoder:I = 0x18

.field static final blacklist TRANSACTION_createVirtualStylus:I = 0x17

.field static final blacklist TRANSACTION_createVirtualTouchscreen:I = 0x15

.field static final blacklist TRANSACTION_getAssociationId:I = 0x1

.field static final blacklist TRANSACTION_getDeviceId:I = 0x2

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0x5

.field static final blacklist TRANSACTION_getDisplayIds:I = 0x4

.field static final blacklist TRANSACTION_getPersistentDeviceId:I = 0x3

.field static final blacklist TRANSACTION_getVirtualCameraId:I = 0x24

.field static final blacklist TRANSACTION_getVirtualSensorList:I = 0x19

.field static final blacklist TRANSACTION_goToSleep:I = 0x8

.field static final blacklist TRANSACTION_hasCustomAudioInputSupport:I = 0x6

.field static final blacklist TRANSACTION_launchPendingIntent:I = 0x1c

.field static final blacklist TRANSACTION_onAudioSessionEnded:I = 0x10

.field static final blacklist TRANSACTION_onAudioSessionStarting:I = 0xf

.field static final blacklist TRANSACTION_registerIntentInterceptor:I = 0x20

.field static final blacklist TRANSACTION_registerVirtualCamera:I = 0x22

.field static final blacklist TRANSACTION_removeActivityPolicyExemption:I = 0xd

.field static final blacklist TRANSACTION_sendSensorAdditionalInfo:I = 0x1b

.field static final blacklist TRANSACTION_sendSensorEvent:I = 0x1a

.field static final blacklist TRANSACTION_setDevicePolicy:I = 0xb

.field static final blacklist TRANSACTION_setDevicePolicyForDisplay:I = 0xe

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x1e

.field static final blacklist TRANSACTION_setDisplayUiMode:I = 0x1f

.field static final blacklist TRANSACTION_setListeners:I = 0x25

.field static final blacklist TRANSACTION_setShowPointerIcon:I = 0x1d

.field static final blacklist TRANSACTION_unregisterIntentInterceptor:I = 0x21

.field static final blacklist TRANSACTION_unregisterVirtualCamera:I = 0x23

.field static final blacklist TRANSACTION_wakeUp:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 222
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 223
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;
    .registers 3

    .line 231
    if-nez p0, :cond_4

    .line 232
    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_4
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_13

    .line 236
    check-cast v0, Landroid/companion/virtual/IVirtualDevice;

    return-object v0

    .line 238
    :cond_13
    new-instance v0, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 247
    packed-switch p0, :pswitch_data_86

    .line 399
    const/4 p0, 0x0

    return-object p0

    .line 395
    :pswitch_5
    const-string/jumbo p0, "setListeners"

    return-object p0

    .line 391
    :pswitch_9
    const-string p0, "getVirtualCameraId"

    return-object p0

    .line 387
    :pswitch_c
    const-string/jumbo p0, "unregisterVirtualCamera"

    return-object p0

    .line 383
    :pswitch_10
    const-string/jumbo p0, "registerVirtualCamera"

    return-object p0

    .line 379
    :pswitch_14
    const-string/jumbo p0, "unregisterIntentInterceptor"

    return-object p0

    .line 375
    :pswitch_18
    const-string/jumbo p0, "registerIntentInterceptor"

    return-object p0

    .line 371
    :pswitch_1c
    const-string/jumbo p0, "setDisplayUiMode"

    return-object p0

    .line 367
    :pswitch_20
    const-string/jumbo p0, "setDisplayImePolicy"

    return-object p0

    .line 363
    :pswitch_24
    const-string/jumbo p0, "setShowPointerIcon"

    return-object p0

    .line 359
    :pswitch_28
    const-string/jumbo p0, "launchPendingIntent"

    return-object p0

    .line 355
    :pswitch_2c
    const-string/jumbo p0, "sendSensorAdditionalInfo"

    return-object p0

    .line 351
    :pswitch_30
    const-string/jumbo p0, "sendSensorEvent"

    return-object p0

    .line 347
    :pswitch_34
    const-string p0, "getVirtualSensorList"

    return-object p0

    .line 343
    :pswitch_37
    const-string p0, "createVirtualRotaryEncoder"

    return-object p0

    .line 339
    :pswitch_3a
    const-string p0, "createVirtualStylus"

    return-object p0

    .line 335
    :pswitch_3d
    const-string p0, "createVirtualNavigationTouchpad"

    return-object p0

    .line 331
    :pswitch_40
    const-string p0, "createVirtualTouchscreen"

    return-object p0

    .line 327
    :pswitch_43
    const-string p0, "createVirtualMouse"

    return-object p0

    .line 323
    :pswitch_46
    const-string p0, "createVirtualKeyboard"

    return-object p0

    .line 319
    :pswitch_49
    const-string p0, "createVirtualDpad"

    return-object p0

    .line 315
    :pswitch_4c
    const-string p0, "createVirtualDisplay"

    return-object p0

    .line 311
    :pswitch_4f
    const-string/jumbo p0, "onAudioSessionEnded"

    return-object p0

    .line 307
    :pswitch_53
    const-string/jumbo p0, "onAudioSessionStarting"

    return-object p0

    .line 303
    :pswitch_57
    const-string/jumbo p0, "setDevicePolicyForDisplay"

    return-object p0

    .line 299
    :pswitch_5b
    const-string/jumbo p0, "removeActivityPolicyExemption"

    return-object p0

    .line 295
    :pswitch_5f
    const-string p0, "addActivityPolicyExemption"

    return-object p0

    .line 291
    :pswitch_62
    const-string/jumbo p0, "setDevicePolicy"

    return-object p0

    .line 287
    :pswitch_66
    const-string p0, "close"

    return-object p0

    .line 283
    :pswitch_69
    const-string/jumbo p0, "wakeUp"

    return-object p0

    .line 279
    :pswitch_6d
    const-string p0, "goToSleep"

    return-object p0

    .line 275
    :pswitch_70
    const-string p0, "canCreateMirrorDisplays"

    return-object p0

    .line 271
    :pswitch_73
    const-string p0, "hasCustomAudioInputSupport"

    return-object p0

    .line 267
    :pswitch_76
    const-string p0, "getDevicePolicy"

    return-object p0

    .line 263
    :pswitch_79
    const-string p0, "getDisplayIds"

    return-object p0

    .line 259
    :pswitch_7c
    const-string p0, "getPersistentDeviceId"

    return-object p0

    .line 255
    :pswitch_7f
    const-string p0, "getDeviceId"

    return-object p0

    .line 251
    :pswitch_82
    const-string p0, "getAssociationId"

    return-object p0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 242
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1526
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 406
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    nop

    .line 411
    const-string v0, "android.companion.virtual.IVirtualDevice"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 412
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 415
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    return v1

    .line 418
    :cond_17
    packed-switch p1, :pswitch_data_2f8

    .line 783
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 773
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p1

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-result-object p4

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_2f6

    .line 763
    :pswitch_3a
    sget-object p1, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;

    move-result-object p1

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    goto/16 :goto_2f6

    .line 754
    :pswitch_51
    sget-object p1, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    goto/16 :goto_2f6

    .line 745
    :pswitch_64
    sget-object p1, Landroid/companion/virtual/camera/VirtualCameraConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    goto/16 :goto_2f6

    .line 736
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object p1

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto/16 :goto_2f6

    .line 725
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;

    move-result-object p1

    .line 727
    sget-object p4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/IntentFilter;

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    goto/16 :goto_2f6

    .line 714
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDisplayUiMode(II)V

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    goto/16 :goto_2f6

    .line 703
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDisplayImePolicy(II)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_2f6

    .line 694
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon(Z)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_2f6

    .line 681
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 683
    sget-object p4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/PendingIntent;

    .line 685
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_2f6

    .line 669
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 671
    sget-object p4, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    move-result p1

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 676
    goto/16 :goto_2f6

    .line 657
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 659
    sget-object p4, Landroid/companion/virtual/sensor/VirtualSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result p1

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 664
    goto/16 :goto_2f6

    .line 649
    :pswitch_12f
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualSensorList()Ljava/util/List;

    move-result-object p1

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 652
    goto/16 :goto_2f6

    .line 638
    :pswitch_13b
    sget-object p1, Landroid/hardware/input/VirtualRotaryEncoderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualRotaryEncoderConfig;

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 645
    goto/16 :goto_2f6

    .line 626
    :pswitch_156
    sget-object p1, Landroid/hardware/input/VirtualStylusConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualStylusConfig;

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 633
    goto/16 :goto_2f6

    .line 614
    :pswitch_171
    sget-object p1, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 621
    goto/16 :goto_2f6

    .line 602
    :pswitch_18c
    sget-object p1, Landroid/hardware/input/VirtualTouchscreenConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualTouchscreenConfig;

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 609
    goto/16 :goto_2f6

    .line 590
    :pswitch_1a7
    sget-object p1, Landroid/hardware/input/VirtualMouseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualMouseConfig;

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 597
    goto/16 :goto_2f6

    .line 578
    :pswitch_1c2
    sget-object p1, Landroid/hardware/input/VirtualKeyboardConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualKeyboardConfig;

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 585
    goto/16 :goto_2f6

    .line 566
    :pswitch_1dd
    sget-object p1, Landroid/hardware/input/VirtualDpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/VirtualDpadConfig;

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 573
    goto/16 :goto_2f6

    .line 554
    :pswitch_1f8
    sget-object p1, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/VirtualDisplayConfig;

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object p4

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I

    move-result p1

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    goto/16 :goto_2f6

    .line 547
    :pswitch_217
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded()V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_2f6

    .line 535
    :pswitch_21f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioRoutingCallback;

    move-result-object p4

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    move-result-object v0

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto/16 :goto_2f6

    .line 522
    :pswitch_23e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicyForDisplay(III)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto/16 :goto_2f6

    .line 513
    :pswitch_255
    sget-object p1, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/ActivityPolicyExemption;

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    goto/16 :goto_2f6

    .line 504
    :pswitch_268
    sget-object p1, Landroid/companion/virtual/ActivityPolicyExemption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/ActivityPolicyExemption;

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_2f6

    .line 493
    :pswitch_27b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicy(II)V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto :goto_2f6

    .line 486
    :pswitch_28d
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close()V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    goto :goto_2f6

    .line 480
    :pswitch_294
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->wakeUp()V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto :goto_2f6

    .line 474
    :pswitch_29b
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->goToSleep()V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    goto :goto_2f6

    .line 467
    :pswitch_2a2
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->canCreateMirrorDisplays()Z

    move-result p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 470
    goto :goto_2f6

    .line 460
    :pswitch_2ad
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->hasCustomAudioInputSupport()Z

    move-result p1

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 463
    goto :goto_2f6

    .line 451
    :pswitch_2b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDevicePolicy(I)I

    move-result p1

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    goto :goto_2f6

    .line 443
    :pswitch_2ca
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDisplayIds()[I

    move-result-object p1

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 446
    goto :goto_2f6

    .line 436
    :pswitch_2d5
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    goto :goto_2f6

    .line 429
    :pswitch_2e0
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDeviceId()I

    move-result p1

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    goto :goto_2f6

    .line 422
    :pswitch_2eb
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getAssociationId()I

    move-result p1

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    nop

    .line 786
    :goto_2f6
    return v1

    nop

    :pswitch_data_2f8
    .packed-switch 0x1
        :pswitch_2eb
        :pswitch_2e0
        :pswitch_2d5
        :pswitch_2ca
        :pswitch_2b8
        :pswitch_2ad
        :pswitch_2a2
        :pswitch_29b
        :pswitch_294
        :pswitch_28d
        :pswitch_27b
        :pswitch_268
        :pswitch_255
        :pswitch_23e
        :pswitch_21f
        :pswitch_217
        :pswitch_1f8
        :pswitch_1dd
        :pswitch_1c2
        :pswitch_1a7
        :pswitch_18c
        :pswitch_171
        :pswitch_156
        :pswitch_13b
        :pswitch_12f
        :pswitch_114
        :pswitch_f9
        :pswitch_da
        :pswitch_cb
        :pswitch_b8
        :pswitch_a5
        :pswitch_8a
        :pswitch_77
        :pswitch_64
        :pswitch_51
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
