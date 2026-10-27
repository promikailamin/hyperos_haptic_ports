.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final greylist-max-o TRANSACTION_beginConfigure:I = 0x5

.field static final greylist-max-o TRANSACTION_cancelRequest:I = 0x4

.field static final greylist-max-o TRANSACTION_createDefaultRequest:I = 0xc

.field static final greylist-max-o TRANSACTION_createInputStream:I = 0xa

.field static final greylist-max-o TRANSACTION_createStream:I = 0x9

.field static final greylist-max-o TRANSACTION_deleteStream:I = 0x8

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x1

.field static final greylist-max-o TRANSACTION_endConfigure:I = 0x6

.field static final greylist-max-o TRANSACTION_finalizeOutputConfigurations:I = 0x14

.field static final greylist-max-o TRANSACTION_flush:I = 0xf

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0xd

.field static final blacklist TRANSACTION_getGlobalAudioRestriction:I = 0x16

.field static final greylist-max-o TRANSACTION_getInputSurface:I = 0xb

.field static final blacklist TRANSACTION_isSessionConfigurationSupported:I = 0x7

.field static final greylist-max-o TRANSACTION_prepare:I = 0x10

.field static final greylist-max-o TRANSACTION_prepare2:I = 0x12

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0x15

.field static final greylist-max-o TRANSACTION_submitRequest:I = 0x2

.field static final greylist-max-o TRANSACTION_submitRequestList:I = 0x3

.field static final blacklist TRANSACTION_switchToOffline:I = 0x17

.field static final greylist-max-o TRANSACTION_tearDown:I = 0x11

.field static final greylist-max-o TRANSACTION_updateOutputConfiguration:I = 0x13

.field static final greylist-max-o TRANSACTION_waitUntilIdle:I = 0xe


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 190
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 198
    if-nez p0, :cond_4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_4
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 202
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_14

    .line 203
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v1

    .line 205
    :cond_14
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 214
    packed-switch p0, :pswitch_data_54

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 306
    :pswitch_5
    const-string/jumbo v0, "switchToOffline"

    return-object v0

    .line 302
    :pswitch_9
    const-string v0, "getGlobalAudioRestriction"

    return-object v0

    .line 298
    :pswitch_c
    const-string/jumbo v0, "setCameraAudioRestriction"

    return-object v0

    .line 294
    :pswitch_10
    const-string v0, "finalizeOutputConfigurations"

    return-object v0

    .line 290
    :pswitch_13
    const-string/jumbo v0, "updateOutputConfiguration"

    return-object v0

    .line 286
    :pswitch_17
    const-string/jumbo v0, "prepare2"

    return-object v0

    .line 282
    :pswitch_1b
    const-string/jumbo v0, "tearDown"

    return-object v0

    .line 278
    :pswitch_1f
    const-string/jumbo v0, "prepare"

    return-object v0

    .line 274
    :pswitch_23
    const-string v0, "flush"

    return-object v0

    .line 270
    :pswitch_26
    const-string/jumbo v0, "waitUntilIdle"

    return-object v0

    .line 266
    :pswitch_2a
    const-string v0, "getCameraInfo"

    return-object v0

    .line 262
    :pswitch_2d
    const-string v0, "createDefaultRequest"

    return-object v0

    .line 258
    :pswitch_30
    const-string v0, "getInputSurface"

    return-object v0

    .line 254
    :pswitch_33
    const-string v0, "createInputStream"

    return-object v0

    .line 250
    :pswitch_36
    const-string v0, "createStream"

    return-object v0

    .line 246
    :pswitch_39
    const-string v0, "deleteStream"

    return-object v0

    .line 242
    :pswitch_3c
    const-string v0, "isSessionConfigurationSupported"

    return-object v0

    .line 238
    :pswitch_3f
    const-string v0, "endConfigure"

    return-object v0

    .line 234
    :pswitch_42
    const-string v0, "beginConfigure"

    return-object v0

    .line 230
    :pswitch_45
    const-string v0, "cancelRequest"

    return-object v0

    .line 226
    :pswitch_48
    const-string/jumbo v0, "submitRequestList"

    return-object v0

    .line 222
    :pswitch_4c
    const-string/jumbo v0, "submitRequest"

    return-object v0

    .line 218
    :pswitch_50
    const-string v0, "disconnect"

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 209
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1080
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 317
    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 321
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    .line 322
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 323
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    :cond_d
    packed-switch p1, :pswitch_data_1be

    .line 333
    packed-switch p1, :pswitch_data_1c4

    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 329
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    return v1

    .line 547
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v2

    .line 549
    .local v2, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 550
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v4

    .line 552
    .local v4, "_result":Landroid/hardware/camera2/ICameraOfflineSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 554
    goto/16 :goto_1bd

    .line 539
    .end local v2    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Landroid/hardware/camera2/ICameraOfflineSession;
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getGlobalAudioRestriction()I

    move-result v2

    .line 540
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    goto/16 :goto_1bd

    .line 531
    .end local v2    # "_result":I
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setCameraAudioRestriction(I)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_1bd

    .line 520
    .end local v2    # "_arg0":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 523
    .local v3, "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_1bd

    .line 509
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 511
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 512
    .restart local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    goto/16 :goto_1bd

    .line 498
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/params/OutputConfiguration;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 501
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_1bd

    .line 489
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_1bd

    .line 480
    .end local v2    # "_arg0":I
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    goto/16 :goto_1bd

    .line 472
    .end local v2    # "_arg0":I
    :pswitch_b1
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide v2

    .line 473
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    goto/16 :goto_1bd

    .line 466
    .end local v2    # "_result":J
    :pswitch_bd
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_1bd

    .line 459
    :pswitch_c5
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 460
    .local v2, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 462
    goto/16 :goto_1bd

    .line 450
    .end local v2    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 451
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    .line 453
    .local v3, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 455
    goto/16 :goto_1bd

    .line 442
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_e4
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    .line 443
    .local v2, "_result":Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 445
    goto/16 :goto_1bd

    .line 427
    .end local v2    # "_result":Landroid/view/Surface;
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 431
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 433
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 434
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(IIIZ)I

    move-result v6

    .line 436
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    goto/16 :goto_1bd

    .line 417
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":I
    :pswitch_10f
    sget-object v2, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 418
    .local v2, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v3

    .line 420
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    goto/16 :goto_1bd

    .line 408
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v3    # "_result":I
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_1bd

    .line 398
    .end local v2    # "_arg0":I
    :pswitch_135
    sget-object v2, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 399
    .local v2, "_arg0":Landroid/hardware/camera2/params/SessionConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result v3

    .line 401
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 403
    goto :goto_1bd

    .line 384
    .end local v2    # "_arg0":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v3    # "_result":Z
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 388
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 389
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object v6

    .line 391
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 393
    goto :goto_1bd

    .line 377
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_arg2":J
    .end local v6    # "_result":[I
    :pswitch_169
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto :goto_1bd

    .line 368
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide v3

    .line 371
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 373
    goto :goto_1bd

    .line 356
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_182
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/CaptureRequest;

    .line 358
    .local v2, "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 359
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 361
    .local v4, "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 363
    goto :goto_1bd

    .line 344
    .end local v2    # "_arg0":[Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_19c
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 346
    .local v2, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 347
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v4

    .line 349
    .restart local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 351
    goto :goto_1bd

    .line 337
    .end local v2    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/hardware/camera2/utils/SubmitInfo;
    :pswitch_1b6
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    nop

    .line 561
    :goto_1bd
    return v1

    :pswitch_data_1be
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_1b6
        :pswitch_19c
        :pswitch_182
        :pswitch_170
        :pswitch_169
        :pswitch_14b
        :pswitch_135
        :pswitch_126
        :pswitch_10f
        :pswitch_f0
        :pswitch_e4
        :pswitch_d1
        :pswitch_c5
        :pswitch_bd
        :pswitch_b1
        :pswitch_a2
        :pswitch_93
        :pswitch_80
        :pswitch_69
        :pswitch_52
        :pswitch_43
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
