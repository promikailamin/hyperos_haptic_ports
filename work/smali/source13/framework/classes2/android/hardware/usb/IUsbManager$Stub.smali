.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final blacklist TRANSACTION_addAccessoryPackagesToPreferenceDenied:I = 0x8

.field static final blacklist TRANSACTION_addDevicePackagesToPreferenceDenied:I = 0x7

.field static final greylist-max-o TRANSACTION_clearDefaults:I = 0x14

.field static final blacklist TRANSACTION_enableContaminantDetection:I = 0x27

.field static final blacklist TRANSACTION_enableLimitPowerTransfer:I = 0x26

.field static final blacklist TRANSACTION_enableUsbData:I = 0x1f

.field static final blacklist TRANSACTION_enableUsbDataWhileDocked:I = 0x20

.field static final greylist-max-o TRANSACTION_getControlFd:I = 0x22

.field static final greylist-max-o TRANSACTION_getCurrentAccessory:I = 0x3

.field static final greylist-max-o TRANSACTION_getCurrentFunctions:I = 0x18

.field static final blacklist TRANSACTION_getCurrentUsbSpeed:I = 0x19

.field static final greylist-max-o TRANSACTION_getDeviceList:I = 0x1

.field static final blacklist TRANSACTION_getGadgetHalVersion:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPortStatus:I = 0x24

.field static final greylist-max-o TRANSACTION_getPorts:I = 0x23

.field static final greylist-max-o TRANSACTION_getScreenUnlockedFunctions:I = 0x1c

.field static final blacklist TRANSACTION_getUsbHalVersion:I = 0x21

.field static final greylist-max-o TRANSACTION_grantAccessoryPermission:I = 0x12

.field static final greylist-max-o TRANSACTION_grantDevicePermission:I = 0x11

.field static final greylist-max-o TRANSACTION_hasAccessoryPermission:I = 0xe

.field static final greylist-max-o TRANSACTION_hasDefaults:I = 0x13

.field static final greylist-max-o TRANSACTION_hasDevicePermission:I = 0xd

.field static final greylist-max-o TRANSACTION_isFunctionEnabled:I = 0x15

.field static final greylist-max-o TRANSACTION_openAccessory:I = 0x4

.field static final greylist-max-o TRANSACTION_openDevice:I = 0x2

.field static final blacklist TRANSACTION_removeAccessoryPackagesFromPreferenceDenied:I = 0xa

.field static final blacklist TRANSACTION_removeDevicePackagesFromPreferenceDenied:I = 0x9

.field static final greylist-max-o TRANSACTION_requestAccessoryPermission:I = 0x10

.field static final greylist-max-o TRANSACTION_requestDevicePermission:I = 0xf

.field static final blacklist TRANSACTION_resetUsbGadget:I = 0x1d

.field static final blacklist TRANSACTION_resetUsbPort:I = 0x1e

.field static final greylist-max-o TRANSACTION_setAccessoryPackage:I = 0x6

.field static final blacklist TRANSACTION_setAccessoryPersistentPermission:I = 0xc

.field static final greylist-max-o TRANSACTION_setCurrentFunction:I = 0x17

.field static final greylist-max-o TRANSACTION_setCurrentFunctions:I = 0x16

.field static final greylist-max-o TRANSACTION_setDevicePackage:I = 0x5

.field static final blacklist TRANSACTION_setDevicePersistentPermission:I = 0xb

.field static final greylist-max-o TRANSACTION_setPortRoles:I = 0x25

.field static final greylist-max-o TRANSACTION_setScreenUnlockedFunctions:I = 0x1b

.field static final greylist-max-o TRANSACTION_setUsbDeviceConnectionHandler:I = 0x28


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 227
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 228
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 236
    if-nez p0, :cond_4

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_4
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 240
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_14

    .line 241
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbManager;

    return-object v1

    .line 243
    :cond_14
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 252
    packed-switch p0, :pswitch_data_7e

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 412
    :pswitch_5
    const-string v0, "setUsbDeviceConnectionHandler"

    return-object v0

    .line 408
    :pswitch_8
    const-string v0, "enableContaminantDetection"

    return-object v0

    .line 404
    :pswitch_b
    const-string v0, "enableLimitPowerTransfer"

    return-object v0

    .line 400
    :pswitch_e
    const-string v0, "setPortRoles"

    return-object v0

    .line 396
    :pswitch_11
    const-string v0, "getPortStatus"

    return-object v0

    .line 392
    :pswitch_14
    const-string v0, "getPorts"

    return-object v0

    .line 388
    :pswitch_17
    const-string v0, "getControlFd"

    return-object v0

    .line 384
    :pswitch_1a
    const-string v0, "getUsbHalVersion"

    return-object v0

    .line 380
    :pswitch_1d
    const-string v0, "enableUsbDataWhileDocked"

    return-object v0

    .line 376
    :pswitch_20
    const-string v0, "enableUsbData"

    return-object v0

    .line 372
    :pswitch_23
    const-string v0, "resetUsbPort"

    return-object v0

    .line 368
    :pswitch_26
    const-string v0, "resetUsbGadget"

    return-object v0

    .line 364
    :pswitch_29
    const-string v0, "getScreenUnlockedFunctions"

    return-object v0

    .line 360
    :pswitch_2c
    const-string v0, "setScreenUnlockedFunctions"

    return-object v0

    .line 356
    :pswitch_2f
    const-string v0, "getGadgetHalVersion"

    return-object v0

    .line 352
    :pswitch_32
    const-string v0, "getCurrentUsbSpeed"

    return-object v0

    .line 348
    :pswitch_35
    const-string v0, "getCurrentFunctions"

    return-object v0

    .line 344
    :pswitch_38
    const-string v0, "setCurrentFunction"

    return-object v0

    .line 340
    :pswitch_3b
    const-string v0, "setCurrentFunctions"

    return-object v0

    .line 336
    :pswitch_3e
    const-string v0, "isFunctionEnabled"

    return-object v0

    .line 332
    :pswitch_41
    const-string v0, "clearDefaults"

    return-object v0

    .line 328
    :pswitch_44
    const-string v0, "hasDefaults"

    return-object v0

    .line 324
    :pswitch_47
    const-string v0, "grantAccessoryPermission"

    return-object v0

    .line 320
    :pswitch_4a
    const-string v0, "grantDevicePermission"

    return-object v0

    .line 316
    :pswitch_4d
    const-string v0, "requestAccessoryPermission"

    return-object v0

    .line 312
    :pswitch_50
    const-string v0, "requestDevicePermission"

    return-object v0

    .line 308
    :pswitch_53
    const-string v0, "hasAccessoryPermission"

    return-object v0

    .line 304
    :pswitch_56
    const-string v0, "hasDevicePermission"

    return-object v0

    .line 300
    :pswitch_59
    const-string v0, "setAccessoryPersistentPermission"

    return-object v0

    .line 296
    :pswitch_5c
    const-string v0, "setDevicePersistentPermission"

    return-object v0

    .line 292
    :pswitch_5f
    const-string v0, "removeAccessoryPackagesFromPreferenceDenied"

    return-object v0

    .line 288
    :pswitch_62
    const-string v0, "removeDevicePackagesFromPreferenceDenied"

    return-object v0

    .line 284
    :pswitch_65
    const-string v0, "addAccessoryPackagesToPreferenceDenied"

    return-object v0

    .line 280
    :pswitch_68
    const-string v0, "addDevicePackagesToPreferenceDenied"

    return-object v0

    .line 276
    :pswitch_6b
    const-string v0, "setAccessoryPackage"

    return-object v0

    .line 272
    :pswitch_6e
    const-string v0, "setDevicePackage"

    return-object v0

    .line 268
    :pswitch_71
    const-string v0, "openAccessory"

    return-object v0

    .line 264
    :pswitch_74
    const-string v0, "getCurrentAccessory"

    return-object v0

    .line 260
    :pswitch_77
    const-string v0, "openDevice"

    return-object v0

    .line 256
    :pswitch_7a
    const-string v0, "getDeviceList"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
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

    .line 247
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1699
    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 423
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    const-string v0, "android.hardware.usb.IUsbManager"

    .line 428
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 429
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    :cond_d
    packed-switch p1, :pswitch_data_394

    .line 439
    packed-switch p1, :pswitch_data_39a

    .line 880
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 435
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    return v1

    .line 872
    :pswitch_1c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 873
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto/16 :goto_392

    .line 861
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 864
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->enableContaminantDetection(Ljava/lang/String;Z)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    goto/16 :goto_392

    .line 846
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 848
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 850
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 852
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v5

    .line 853
    .local v5, "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_392

    .line 833
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 835
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 837
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 838
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    goto/16 :goto_392

    .line 823
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 824
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 826
    .local v3, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 828
    goto/16 :goto_392

    .line 815
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :pswitch_8b
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()Ljava/util/List;

    move-result-object v2

    .line 816
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 818
    goto/16 :goto_392

    .line 806
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/ParcelableUsbPort;>;"
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 807
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 809
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 811
    goto/16 :goto_392

    .line 798
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_aa
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getUsbHalVersion()I

    move-result v2

    .line 799
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    goto/16 :goto_392

    .line 786
    .end local v2    # "_result":I
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 790
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v4

    .line 791
    .local v4, "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_392

    .line 770
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 772
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 774
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 776
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v5

    .line 777
    .restart local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v6

    .line 779
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 781
    goto/16 :goto_392

    .line 757
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/hardware/usb/IUsbOperationInternal;
    .end local v6    # "_result":Z
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 759
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 761
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/IUsbOperationInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbOperationInternal;

    move-result-object v4

    .line 762
    .local v4, "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    goto/16 :goto_392

    .line 750
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/usb/IUsbOperationInternal;
    :pswitch_10f
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbGadget()V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_392

    .line 743
    :pswitch_117
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions()J

    move-result-wide v2

    .line 744
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 746
    goto/16 :goto_392

    .line 735
    .end local v2    # "_result":J
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 736
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions(J)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_392

    .line 727
    .end local v2    # "_arg0":J
    :pswitch_132
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getGadgetHalVersion()I

    move-result v2

    .line 728
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    goto/16 :goto_392

    .line 720
    .end local v2    # "_result":I
    :pswitch_13e
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentUsbSpeed()I

    move-result v2

    .line 721
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    goto/16 :goto_392

    .line 713
    .end local v2    # "_result":I
    :pswitch_14a
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions()J

    move-result-wide v2

    .line 714
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 716
    goto/16 :goto_392

    .line 703
    .end local v2    # "_result":J
    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 706
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_392

    .line 694
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 695
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions(J)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_392

    .line 684
    .end local v2    # "_arg0":J
    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 687
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 689
    goto/16 :goto_392

    .line 673
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 675
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 676
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    goto/16 :goto_392

    .line 661
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 663
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 664
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v4

    .line 666
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 668
    goto/16 :goto_392

    .line 650
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1b5
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 652
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 653
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    goto/16 :goto_392

    .line 639
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    :pswitch_1cc
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 641
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 642
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_392

    .line 626
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    :pswitch_1e3
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 628
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 631
    .local v4, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_392

    .line 613
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_202
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 615
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 618
    .restart local v4    # "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_392

    .line 603
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_221
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 604
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 606
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 608
    goto/16 :goto_392

    .line 591
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Z
    :pswitch_238
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 593
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v4

    .line 596
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 598
    goto/16 :goto_392

    .line 576
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_253
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 578
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 580
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 582
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 583
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_392

    .line 561
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Z
    :pswitch_276
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 563
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 565
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 567
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 568
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto/16 :goto_392

    .line 548
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    .end local v5    # "_arg3":Z
    :pswitch_299
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 550
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 553
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto/16 :goto_392

    .line 535
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2b8
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 537
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 539
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 540
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto/16 :goto_392

    .line 522
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2d7
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 524
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 526
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 527
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto/16 :goto_392

    .line 509
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_2f6
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 511
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 513
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 514
    .restart local v4    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    goto/16 :goto_392

    .line 496
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_315
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 498
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 501
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto :goto_392

    .line 483
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_32f
    sget-object v2, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 485
    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 488
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto :goto_392

    .line 473
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_349
    sget-object v2, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 474
    .local v2, "_arg0":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 476
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 478
    goto :goto_392

    .line 465
    .end local v2    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_35f
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v2

    .line 466
    .local v2, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 468
    goto :goto_392

    .line 454
    .end local v2    # "_result":Landroid/hardware/usb/UsbAccessory;
    :pswitch_36a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v2, v3}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 459
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 461
    goto :goto_392

    .line 444
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_380
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 449
    nop

    .line 883
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_392
    return v1

    nop

    :pswitch_data_394
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_39a
    .packed-switch 0x1
        :pswitch_380
        :pswitch_36a
        :pswitch_35f
        :pswitch_349
        :pswitch_32f
        :pswitch_315
        :pswitch_2f6
        :pswitch_2d7
        :pswitch_2b8
        :pswitch_299
        :pswitch_276
        :pswitch_253
        :pswitch_238
        :pswitch_221
        :pswitch_202
        :pswitch_1e3
        :pswitch_1cc
        :pswitch_1b5
        :pswitch_19e
        :pswitch_18b
        :pswitch_178
        :pswitch_169
        :pswitch_156
        :pswitch_14a
        :pswitch_13e
        :pswitch_132
        :pswitch_123
        :pswitch_117
        :pswitch_10f
        :pswitch_f4
        :pswitch_d1
        :pswitch_b6
        :pswitch_aa
        :pswitch_97
        :pswitch_8b
        :pswitch_78
        :pswitch_61
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
