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

.field static final greylist-max-o TRANSACTION_beginConfigure:I = 0x6

.field static final greylist-max-o TRANSACTION_cancelRequest:I = 0x5

.field static final greylist-max-o TRANSACTION_createDefaultRequest:I = 0xd

.field static final greylist-max-o TRANSACTION_createInputStream:I = 0xb

.field static final greylist-max-o TRANSACTION_createStream:I = 0xa

.field static final greylist-max-o TRANSACTION_deleteStream:I = 0x9

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x1

.field static final greylist-max-o TRANSACTION_endConfigure:I = 0x7

.field static final greylist-max-o TRANSACTION_finalizeOutputConfigurations:I = 0x15

.field static final greylist-max-o TRANSACTION_flush:I = 0x10

.field static final greylist-max-o TRANSACTION_getCameraInfo:I = 0xe

.field static final blacklist TRANSACTION_getCaptureResultMetadataQueue:I = 0x16

.field static final blacklist TRANSACTION_getGlobalAudioRestriction:I = 0x18

.field static final greylist-max-o TRANSACTION_getInputSurface:I = 0xc

.field static final blacklist TRANSACTION_isPrimaryClient:I = 0x1a

.field static final blacklist TRANSACTION_isSessionConfigurationSupported:I = 0x8

.field static final greylist-max-o TRANSACTION_prepare:I = 0x11

.field static final greylist-max-o TRANSACTION_prepare2:I = 0x13

.field static final blacklist TRANSACTION_setCameraAudioRestriction:I = 0x17

.field static final blacklist TRANSACTION_startStreaming:I = 0x4

.field static final greylist-max-o TRANSACTION_submitRequest:I = 0x2

.field static final greylist-max-o TRANSACTION_submitRequestList:I = 0x3

.field static final blacklist TRANSACTION_switchToOffline:I = 0x19

.field static final greylist-max-o TRANSACTION_tearDown:I = 0x12

.field static final greylist-max-o TRANSACTION_updateOutputConfiguration:I = 0x14

.field static final greylist-max-o TRANSACTION_waitUntilIdle:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 226
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 227
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .registers 3

    .line 235
    if-nez p0, :cond_4

    .line 236
    const/4 p0, 0x0

    return-object p0

    .line 238
    :cond_4
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_13

    .line 240
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v0

    .line 242
    :cond_13
    new-instance v0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 251
    packed-switch p0, :pswitch_data_54

    .line 359
    const/4 p0, 0x0

    return-object p0

    .line 355
    :pswitch_5
    const-string p0, "isPrimaryClient"

    return-object p0

    .line 351
    :pswitch_8
    const-string p0, "switchToOffline"

    return-object p0

    .line 347
    :pswitch_b
    const-string p0, "getGlobalAudioRestriction"

    return-object p0

    .line 343
    :pswitch_e
    const-string p0, "setCameraAudioRestriction"

    return-object p0

    .line 339
    :pswitch_11
    const-string p0, "getCaptureResultMetadataQueue"

    return-object p0

    .line 335
    :pswitch_14
    const-string p0, "finalizeOutputConfigurations"

    return-object p0

    .line 331
    :pswitch_17
    const-string p0, "updateOutputConfiguration"

    return-object p0

    .line 327
    :pswitch_1a
    const-string p0, "prepare2"

    return-object p0

    .line 323
    :pswitch_1d
    const-string p0, "tearDown"

    return-object p0

    .line 319
    :pswitch_20
    const-string p0, "prepare"

    return-object p0

    .line 315
    :pswitch_23
    const-string p0, "flush"

    return-object p0

    .line 311
    :pswitch_26
    const-string p0, "waitUntilIdle"

    return-object p0

    .line 307
    :pswitch_29
    const-string p0, "getCameraInfo"

    return-object p0

    .line 303
    :pswitch_2c
    const-string p0, "createDefaultRequest"

    return-object p0

    .line 299
    :pswitch_2f
    const-string p0, "getInputSurface"

    return-object p0

    .line 295
    :pswitch_32
    const-string p0, "createInputStream"

    return-object p0

    .line 291
    :pswitch_35
    const-string p0, "createStream"

    return-object p0

    .line 287
    :pswitch_38
    const-string p0, "deleteStream"

    return-object p0

    .line 283
    :pswitch_3b
    const-string p0, "isSessionConfigurationSupported"

    return-object p0

    .line 279
    :pswitch_3e
    const-string p0, "endConfigure"

    return-object p0

    .line 275
    :pswitch_41
    const-string p0, "beginConfigure"

    return-object p0

    .line 271
    :pswitch_44
    const-string p0, "cancelRequest"

    return-object p0

    .line 267
    :pswitch_47
    const-string p0, "startStreaming"

    return-object p0

    .line 263
    :pswitch_4a
    const-string p0, "submitRequestList"

    return-object p0

    .line 259
    :pswitch_4d
    const-string p0, "submitRequest"

    return-object p0

    .line 255
    :pswitch_50
    const-string p0, "disconnect"

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
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

    .line 246
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1227
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 366
    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 370
    nop

    .line 371
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 372
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 375
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    return v1

    .line 378
    :cond_17
    packed-switch p1, :pswitch_data_1f0

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 622
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->isPrimaryClient()Z

    move-result p1

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    goto/16 :goto_1ef

    .line 611
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object p1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object p1

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 618
    goto/16 :goto_1ef

    .line 603
    :pswitch_46
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getGlobalAudioRestriction()I

    move-result p1

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    goto/16 :goto_1ef

    .line 595
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->setCameraAudioRestriction(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    goto/16 :goto_1ef

    .line 587
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCaptureResultMetadataQueue()Landroid/hardware/common/fmq/MQDescriptor;

    move-result-object p1

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 590
    goto/16 :goto_1ef

    .line 577
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 579
    sget-object p4, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    goto/16 :goto_1ef

    .line 566
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 568
    sget-object p4, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->updateOutputConfiguration(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    goto/16 :goto_1ef

    .line 555
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_1ef

    .line 546
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_1ef

    .line 537
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    goto/16 :goto_1ef

    .line 529
    :pswitch_cc
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    goto/16 :goto_1ef

    .line 523
    :pswitch_d8
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_1ef

    .line 516
    :pswitch_e0
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 519
    goto/16 :goto_1ef

    .line 507
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 512
    goto/16 :goto_1ef

    .line 499
    :pswitch_ff
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 502
    goto/16 :goto_1ef

    .line 484
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(IIIZ)I

    move-result p1

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    goto/16 :goto_1ef

    .line 474
    :pswitch_12a
    sget-object p1, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result p1

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    goto/16 :goto_1ef

    .line 465
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_1ef

    .line 455
    :pswitch_150
    sget-object p1, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Z

    move-result p1

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 460
    goto/16 :goto_1ef

    .line 441
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 443
    sget-object p4, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, p1, p4, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(ILandroid/hardware/camera2/impl/CameraMetadataNative;J)[I

    move-result-object p1

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 450
    goto :goto_1ef

    .line 434
    :pswitch_185
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto :goto_1ef

    .line 425
    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide p1

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 430
    goto :goto_1ef

    .line 413
    :pswitch_19e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->startStreaming([I[I)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 420
    goto :goto_1ef

    .line 401
    :pswitch_1b4
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/CaptureRequest;

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object p1

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 408
    goto :goto_1ef

    .line 389
    :pswitch_1ce
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, p1, p4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object p1

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 396
    goto :goto_1ef

    .line 382
    :pswitch_1e8
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    nop

    .line 632
    :goto_1ef
    return v1

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_1e8
        :pswitch_1ce
        :pswitch_1b4
        :pswitch_19e
        :pswitch_18c
        :pswitch_185
        :pswitch_167
        :pswitch_150
        :pswitch_141
        :pswitch_12a
        :pswitch_10b
        :pswitch_ff
        :pswitch_ec
        :pswitch_e0
        :pswitch_d8
        :pswitch_cc
        :pswitch_bd
        :pswitch_ae
        :pswitch_9b
        :pswitch_84
        :pswitch_6d
        :pswitch_61
        :pswitch_52
        :pswitch_46
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
