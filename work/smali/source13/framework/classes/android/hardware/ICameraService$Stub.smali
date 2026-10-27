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

.field static final greylist-max-o TRANSACTION_getCameraCharacteristics:I = 0x9

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getCameraVendorTagCache:I = 0xb

.field static final greylist-max-o TRANSACTION_getCameraVendorTagDescriptor:I = 0xa

.field static final blacklist TRANSACTION_getConcurrentCameraIds:I = 0x6

.field static final greylist-max-o TRANSACTION_getLegacyParameters:I = 0xc

.field static final greylist-max-o TRANSACTION_getNumberOfCameras:I = 0x1

.field static final blacklist TRANSACTION_getTorchStrengthLevel:I = 0x12

.field static final blacklist TRANSACTION_injectCamera:I = 0xf

.field static final blacklist TRANSACTION_isConcurrentSessionConfigurationSupported:I = 0x7

.field static final blacklist TRANSACTION_isHiddenPhysicalCamera:I = 0xe

.field static final blacklist TRANSACTION_notifyDeviceStateChange:I = 0x15

.field static final blacklist TRANSACTION_notifyDisplayConfigurationChange:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySystemEvent:I = 0x13

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_setTorchMode:I = 0x10

.field static final greylist-max-o TRANSACTION_supportsCameraApi:I = 0xd

.field static final blacklist TRANSACTION_turnOnTorchWithStrengthLevel:I = 0x11


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 177
    if-nez p0, :cond_4

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_4
    const-string v0, "android.hardware.ICameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 181
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_14

    .line 182
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraService;

    return-object v1

    .line 184
    :cond_14
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 193
    packed-switch p0, :pswitch_data_4c

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 277
    :pswitch_5
    const-string/jumbo v0, "notifyDeviceStateChange"

    return-object v0

    .line 273
    :pswitch_9
    const-string/jumbo v0, "notifyDisplayConfigurationChange"

    return-object v0

    .line 269
    :pswitch_d
    const-string/jumbo v0, "notifySystemEvent"

    return-object v0

    .line 265
    :pswitch_11
    const-string v0, "getTorchStrengthLevel"

    return-object v0

    .line 261
    :pswitch_14
    const-string/jumbo v0, "turnOnTorchWithStrengthLevel"

    return-object v0

    .line 257
    :pswitch_18
    const-string/jumbo v0, "setTorchMode"

    return-object v0

    .line 253
    :pswitch_1c
    const-string v0, "injectCamera"

    return-object v0

    .line 249
    :pswitch_1f
    const-string v0, "isHiddenPhysicalCamera"

    return-object v0

    .line 245
    :pswitch_22
    const-string/jumbo v0, "supportsCameraApi"

    return-object v0

    .line 241
    :pswitch_26
    const-string v0, "getLegacyParameters"

    return-object v0

    .line 237
    :pswitch_29
    const-string v0, "getCameraVendorTagCache"

    return-object v0

    .line 233
    :pswitch_2c
    const-string v0, "getCameraVendorTagDescriptor"

    return-object v0

    .line 229
    :pswitch_2f
    const-string v0, "getCameraCharacteristics"

    return-object v0

    .line 225
    :pswitch_32
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 221
    :pswitch_36
    const-string v0, "isConcurrentSessionConfigurationSupported"

    return-object v0

    .line 217
    :pswitch_39
    const-string v0, "getConcurrentCameraIds"

    return-object v0

    .line 213
    :pswitch_3c
    const-string v0, "addListener"

    return-object v0

    .line 209
    :pswitch_3f
    const-string v0, "connectDevice"

    return-object v0

    .line 205
    :pswitch_42
    const-string v0, "connect"

    return-object v0

    .line 201
    :pswitch_45
    const-string v0, "getCameraInfo"

    return-object v0

    .line 197
    :pswitch_48
    const-string v0, "getNumberOfCameras"

    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 188
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1021
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 288
    invoke-static {p1}, Landroid/hardware/ICameraService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.hardware.ICameraService"

    .line 293
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 294
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    :cond_15
    packed-switch v9, :pswitch_data_1fc

    .line 304
    packed-switch v9, :pswitch_data_202

    .line 541
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 300
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return v13

    .line 534
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 535
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChange(J)V

    .line 537
    goto/16 :goto_1fb

    .line 528
    .end local v0    # "_arg0":J
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->notifyDisplayConfigurationChange()V

    .line 529
    goto/16 :goto_1fb

    .line 519
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 521
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 522
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 524
    goto/16 :goto_1fb

    .line 509
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getTorchStrengthLevel(Ljava/lang/String;)I

    move-result v1

    .line 512
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    goto/16 :goto_1fb

    .line 496
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 501
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_1fb

    .line 483
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 487
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 488
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto/16 :goto_1fb

    .line 467
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraInjectionCallback;

    move-result-object v3

    .line 474
    .local v3, "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v4

    .line 476
    .local v4, "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 478
    goto/16 :goto_1fb

    .line 457
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v4    # "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    :pswitch_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v1

    .line 460
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 462
    goto/16 :goto_1fb

    .line 445
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v2

    .line 450
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 452
    goto/16 :goto_1fb

    .line 435
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    goto/16 :goto_1fb

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_e6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v0

    .line 428
    .local v0, "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    goto/16 :goto_1fb

    .line 420
    .end local v0    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :pswitch_f2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v0

    .line 421
    .local v0, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 423
    goto/16 :goto_1fb

    .line 409
    .end local v0    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 414
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 416
    goto/16 :goto_1fb

    .line 400
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 401
    .local v0, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto/16 :goto_1fb

    .line 388
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :pswitch_128
    sget-object v0, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 390
    .local v0, "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v8, v0, v1}, Landroid/hardware/ICameraService$Stub;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;I)Z

    move-result v2

    .line 393
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 395
    goto/16 :goto_1fb

    .line 380
    .end local v0    # "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_143
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v0

    .line 381
    .local v0, "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 383
    goto/16 :goto_1fb

    .line 371
    .end local v0    # "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :pswitch_14f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v0

    .line 372
    .local v0, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v1

    .line 374
    .local v1, "_result":[Landroid/hardware/CameraStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 376
    goto/16 :goto_1fb

    .line 349
    .end local v0    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v1    # "_result":[Landroid/hardware/CameraStatus;
    :pswitch_166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    .line 351
    .local v14, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 353
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 357
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 359
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 361
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 362
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v0

    .line 364
    .local v0, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 366
    goto :goto_1fb

    .line 329
    .end local v0    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v14    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_1a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v7

    .line 331
    .local v7, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 333
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 335
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 337
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 339
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 340
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;III)Landroid/hardware/ICamera;

    move-result-object v0

    .line 342
    .local v0, "_result":Landroid/hardware/ICamera;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 344
    goto :goto_1fb

    .line 319
    .end local v0    # "_result":Landroid/hardware/ICamera;
    .end local v7    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v1

    .line 322
    .local v1, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 324
    goto :goto_1fb

    .line 309
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/hardware/CameraInfo;
    :pswitch_1e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v8, v0}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    move-result v1

    .line 312
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    nop

    .line 544
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :goto_1fb
    return v13

    :pswitch_data_1fc
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1e9
        :pswitch_1d7
        :pswitch_1a2
        :pswitch_166
        :pswitch_14f
        :pswitch_143
        :pswitch_128
        :pswitch_115
        :pswitch_fe
        :pswitch_f2
        :pswitch_e6
        :pswitch_d3
        :pswitch_bc
        :pswitch_a9
        :pswitch_86
        :pswitch_6f
        :pswitch_58
        :pswitch_45
        :pswitch_35
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
