.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x5

.field static final greylist-max-o TRANSACTION_connect:I = 0x3

.field static final greylist-max-o TRANSACTION_connectDevice:I = 0x4

.field static final blacklist TRANSACTION_createDefaultRequest:I = 0x17

.field static final greylist-max-o TRANSACTION_getCameraCharacteristics:I = 0xa

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getCameraVendorTagCache:I = 0xc

.field static final greylist-max-o TRANSACTION_getCameraVendorTagDescriptor:I = 0xb

.field static final blacklist TRANSACTION_getConcurrentCameraIds:I = 0x6

.field static final greylist-max-o TRANSACTION_getLegacyParameters:I = 0xd

.field static final greylist-max-o TRANSACTION_getNumberOfCameras:I = 0x1

.field static final blacklist TRANSACTION_getSessionCharacteristics:I = 0x19

.field static final blacklist TRANSACTION_getTorchStrengthLevel:I = 0x12

.field static final blacklist TRANSACTION_injectCamera:I = 0xf

.field static final blacklist TRANSACTION_injectSessionParams:I = 0x8

.field static final blacklist TRANSACTION_isConcurrentSessionConfigurationSupported:I = 0x7

.field static final blacklist TRANSACTION_isHiddenPhysicalCamera:I = 0xe

.field static final blacklist TRANSACTION_isSessionConfigurationWithParametersSupported:I = 0x18

.field static final blacklist TRANSACTION_notifyDeviceStateChange:I = 0x15

.field static final blacklist TRANSACTION_notifyDisplayConfigurationChange:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySystemEvent:I = 0x13

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x9

.field static final blacklist TRANSACTION_reportExtensionSessionStats:I = 0x16

.field static final greylist-max-o TRANSACTION_setTorchMode:I = 0x10

.field static final blacklist TRANSACTION_turnOnTorchWithStrengthLevel:I = 0x11


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 357
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 358
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .registers 3

    .line 366
    if-nez p0, :cond_4

    .line 367
    const/4 p0, 0x0

    return-object p0

    .line 369
    :cond_4
    const-string v0, "android.hardware.ICameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_13

    .line 371
    check-cast v0, Landroid/hardware/ICameraService;

    return-object v0

    .line 373
    :cond_13
    new-instance v0, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 382
    packed-switch p0, :pswitch_data_58

    .line 486
    const/4 p0, 0x0

    return-object p0

    .line 482
    :pswitch_5
    const-string p0, "getSessionCharacteristics"

    return-object p0

    .line 478
    :pswitch_8
    const-string/jumbo p0, "isSessionConfigurationWithParametersSupported"

    return-object p0

    .line 474
    :pswitch_c
    const-string p0, "createDefaultRequest"

    return-object p0

    .line 470
    :pswitch_f
    const-string/jumbo p0, "reportExtensionSessionStats"

    return-object p0

    .line 466
    :pswitch_13
    const-string/jumbo p0, "notifyDeviceStateChange"

    return-object p0

    .line 462
    :pswitch_17
    const-string/jumbo p0, "notifyDisplayConfigurationChange"

    return-object p0

    .line 458
    :pswitch_1b
    const-string/jumbo p0, "notifySystemEvent"

    return-object p0

    .line 454
    :pswitch_1f
    const-string p0, "getTorchStrengthLevel"

    return-object p0

    .line 450
    :pswitch_22
    const-string/jumbo p0, "turnOnTorchWithStrengthLevel"

    return-object p0

    .line 446
    :pswitch_26
    const-string/jumbo p0, "setTorchMode"

    return-object p0

    .line 442
    :pswitch_2a
    const-string p0, "injectCamera"

    return-object p0

    .line 438
    :pswitch_2d
    const-string p0, "isHiddenPhysicalCamera"

    return-object p0

    .line 434
    :pswitch_30
    const-string p0, "getLegacyParameters"

    return-object p0

    .line 430
    :pswitch_33
    const-string p0, "getCameraVendorTagCache"

    return-object p0

    .line 426
    :pswitch_36
    const-string p0, "getCameraVendorTagDescriptor"

    return-object p0

    .line 422
    :pswitch_39
    const-string p0, "getCameraCharacteristics"

    return-object p0

    .line 418
    :pswitch_3c
    const-string/jumbo p0, "removeListener"

    return-object p0

    .line 414
    :pswitch_40
    const-string p0, "injectSessionParams"

    return-object p0

    .line 410
    :pswitch_43
    const-string p0, "isConcurrentSessionConfigurationSupported"

    return-object p0

    .line 406
    :pswitch_46
    const-string p0, "getConcurrentCameraIds"

    return-object p0

    .line 402
    :pswitch_49
    const-string p0, "addListener"

    return-object p0

    .line 398
    :pswitch_4c
    const-string p0, "connectDevice"

    return-object p0

    .line 394
    :pswitch_4f
    const-string p0, "connect"

    return-object p0

    .line 390
    :pswitch_52
    const-string p0, "getCameraInfo"

    return-object p0

    .line 386
    :pswitch_55
    const-string p0, "getNumberOfCameras"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 377
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1593
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 493
    invoke-static {p1}, Landroid/hardware/ICameraService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    nop

    .line 498
    const-string v0, "android.hardware.ICameraService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 499
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 502
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    return v1

    .line 505
    :cond_17
    packed-switch p1, :pswitch_data_31a

    .line 841
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 822
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 826
    sget-object p1, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/res/CameraCompatibilityInfo;

    .line 828
    sget-object p1, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 830
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/content/AttributionSourceState;

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/ICameraService$Stub;->getSessionCharacteristics(Ljava/lang/String;ILandroid/content/res/CameraCompatibilityInfo;Landroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 837
    goto/16 :goto_319

    .line 804
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 808
    sget-object p1, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 810
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/ICameraService$Stub;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z

    move-result p1

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 817
    goto/16 :goto_319

    .line 788
    :pswitch_85
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 792
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/ICameraService$Stub;->createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 799
    goto/16 :goto_319

    .line 778
    :pswitch_a9
    move-object v2, p0

    sget-object p1, Landroid/hardware/CameraExtensionSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/CameraExtensionSessionStats;

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraService$Stub;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    goto/16 :goto_319

    .line 770
    :pswitch_c1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, p3, p4}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChange(J)V

    .line 773
    goto/16 :goto_319

    .line 764
    :pswitch_ce
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->notifyDisplayConfigurationChange()V

    .line 765
    goto/16 :goto_319

    .line 755
    :pswitch_d4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, p1, p3}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 760
    goto/16 :goto_319

    .line 741
    :pswitch_e5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 743
    sget-object p4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/AttributionSourceState;

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/ICameraService$Stub;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result p1

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    goto/16 :goto_319

    .line 724
    :pswitch_105
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 730
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/ICameraService$Stub;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    goto/16 :goto_319

    .line 707
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 713
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_319

    .line 691
    :pswitch_14f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraInjectionCallback;

    move-result-object v3

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/ICameraService$Stub;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object p1

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 702
    goto/16 :goto_319

    .line 681
    :pswitch_173
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraService$Stub;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result p1

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 686
    goto/16 :goto_319

    .line 671
    :pswitch_187
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    goto/16 :goto_319

    .line 663
    :pswitch_19b
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object p1

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 666
    goto/16 :goto_319

    .line 656
    :pswitch_1a8
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object p1

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 659
    goto/16 :goto_319

    .line 639
    :pswitch_1b5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 643
    sget-object p1, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/content/res/CameraCompatibilityInfo;

    .line 645
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;ILandroid/content/res/CameraCompatibilityInfo;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 652
    goto/16 :goto_319

    .line 630
    :pswitch_1e3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object p1

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_319

    .line 619
    :pswitch_1f7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 621
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, p1, p4}, Landroid/hardware/ICameraService$Stub;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_319

    .line 603
    :pswitch_20f
    move-object v2, p0

    sget-object p1, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 607
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/ICameraService$Stub;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z

    move-result p1

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 614
    goto/16 :goto_319

    .line 595
    :pswitch_237
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object p1

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 598
    goto/16 :goto_319

    .line 586
    :pswitch_244
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object p1

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object p1

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 591
    goto/16 :goto_319

    .line 562
    :pswitch_25c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v3

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 570
    sget-object p1, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/content/res/CameraCompatibilityInfo;

    .line 572
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/content/AttributionSourceState;

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual/range {v2 .. v10}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IILandroid/content/res/CameraCompatibilityInfo;Landroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object p1

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 581
    goto/16 :goto_319

    .line 540
    :pswitch_29a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v3

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 546
    sget-object p1, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/res/CameraCompatibilityInfo;

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 550
    sget-object p1, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/content/AttributionSourceState;

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;IILandroid/content/res/CameraCompatibilityInfo;ZLandroid/content/AttributionSourceState;I)Landroid/hardware/ICamera;

    move-result-object p1

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 557
    goto :goto_319

    .line 524
    :pswitch_2d3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 526
    sget-object p4, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/res/CameraCompatibilityInfo;

    .line 528
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(ILandroid/content/res/CameraCompatibilityInfo;Landroid/content/AttributionSourceState;I)Landroid/hardware/CameraInfo;

    move-result-object p1

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 535
    goto :goto_319

    .line 510
    :pswitch_2fa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 512
    sget-object p4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/AttributionSourceState;

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(ILandroid/content/AttributionSourceState;I)I

    move-result p1

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    nop

    .line 844
    :goto_319
    return v1

    :pswitch_data_31a
    .packed-switch 0x1
        :pswitch_2fa
        :pswitch_2d3
        :pswitch_29a
        :pswitch_25c
        :pswitch_244
        :pswitch_237
        :pswitch_20f
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_1b5
        :pswitch_1a8
        :pswitch_19b
        :pswitch_187
        :pswitch_173
        :pswitch_14f
        :pswitch_12a
        :pswitch_105
        :pswitch_e5
        :pswitch_d4
        :pswitch_ce
        :pswitch_c1
        :pswitch_a9
        :pswitch_85
        :pswitch_57
        :pswitch_20
    .end packed-switch
.end method
