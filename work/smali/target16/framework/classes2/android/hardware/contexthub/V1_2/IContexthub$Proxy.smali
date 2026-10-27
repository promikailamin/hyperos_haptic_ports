.class public final Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;
.super Ljava/lang/Object;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_2/IContexthub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_2/IContexthub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IHwBinder;)V
    .registers 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 245
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 545
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 547
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 549
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 551
    :try_start_15
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 552
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 553
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 555
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 556
    nop

    .line 557
    return-void

    .line 555
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 556
    throw p2
.end method

.method public blacklist disableNanoApp(IJI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 404
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 406
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 407
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 409
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 411
    :try_start_18
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x7

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 412
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 415
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 416
    nop

    .line 418
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 416
    return p2

    .line 418
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 419
    throw p2
.end method

.method public blacklist enableNanoApp(IJI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 382
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 384
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 385
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 387
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 389
    :try_start_18
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x6

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 390
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 391
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 393
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 394
    nop

    .line 396
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 394
    return p2

    .line 396
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 397
    throw p2
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 264
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 657
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 659
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 661
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 662
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 663
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 665
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 666
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 667
    nop

    .line 669
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 667
    return-object v0

    .line 669
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 670
    throw v0
.end method

.method public blacklist getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 582
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 586
    :try_start_f
    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 587
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 588
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 594
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 595
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 596
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 595
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 599
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 600
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 601
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 603
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 604
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 605
    nop

    .line 607
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 600
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 611
    :cond_54
    nop

    .line 613
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 611
    return-object v0

    .line 613
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 614
    throw v0
.end method

.method public blacklist getHubs()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 277
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 281
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 282
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 283
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 285
    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/ContextHub;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 286
    nop

    .line 288
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 286
    return-object v0

    .line 288
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 289
    throw v0
.end method

.method public blacklist getHubs_1_2(Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 466
    const-string v1, "android.hardware.contexthub@1.2::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 470
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 472
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 474
    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/ContextHub;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 476
    invoke-interface {p1, v0, v2}, Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;->onValues(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 478
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 479
    throw p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 269
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 526
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 530
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 531
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 532
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 534
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 535
    nop

    .line 537
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 535
    return-object v0

    .line 537
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 538
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 563
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 567
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 568
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 569
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 571
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 572
    nop

    .line 574
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 572
    return-object v0

    .line 574
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 575
    throw v0
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public blacklist loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 338
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 340
    invoke-virtual {p2, v0}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->writeToParcel(Landroid/os/HwParcel;)V

    .line 341
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 343
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 345
    :try_start_18
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x4

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 346
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 347
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 349
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 350
    nop

    .line 352
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 350
    return p2

    .line 352
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 353
    throw p2
.end method

.method public blacklist notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 677
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 679
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 681
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 682
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 684
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 685
    nop

    .line 686
    return-void

    .line 684
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 685
    throw v0
.end method

.method public blacklist onSettingChanged(BB)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 447
    const-string v1, "android.hardware.contexthub@1.1::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 449
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 451
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 453
    :try_start_15
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 454
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 455
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_28

    .line 457
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 458
    nop

    .line 459
    return-void

    .line 457
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 458
    throw p2
.end method

.method public blacklist onSettingChanged_1_2(BB)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 507
    const-string v1, "android.hardware.contexthub@1.2::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 509
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 511
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 513
    :try_start_15
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 514
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_28

    .line 517
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 518
    throw p2
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 641
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 645
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 646
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 647
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 649
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 650
    nop

    .line 651
    return-void

    .line 649
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 650
    throw v0
.end method

.method public blacklist queryApps(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 426
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 429
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 431
    :try_start_12
    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 432
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 433
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 435
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 436
    nop

    .line 438
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 436
    return v0

    .line 438
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 439
    throw v0
.end method

.method public blacklist registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 296
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 298
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {p2}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 300
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 302
    :try_start_1d
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 303
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 306
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_33

    .line 307
    nop

    .line 309
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 307
    return p2

    .line 309
    :catchall_33
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 310
    throw p2
.end method

.method public blacklist registerCallback_1_2(ILandroid/hardware/contexthub/V1_2/IContexthubCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 486
    const-string v1, "android.hardware.contexthub@1.2::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 488
    if-nez p2, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {p2}, Landroid/hardware/contexthub/V1_2/IContexthubCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_15
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 490
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 492
    :try_start_1d
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 493
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 494
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 496
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_34

    .line 497
    nop

    .line 499
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 497
    return p2

    .line 499
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 500
    throw p2
.end method

.method public blacklist sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 317
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 319
    invoke-virtual {p2, v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->writeToParcel(Landroid/os/HwParcel;)V

    .line 321
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 323
    :try_start_15
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 324
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 325
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 327
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2b

    .line 328
    nop

    .line 330
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 328
    return p2

    .line 330
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 331
    throw p2
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 621
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 625
    :try_start_f
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 626
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 628
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 629
    nop

    .line 630
    return-void

    .line 628
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 629
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 256
    :catch_18
    move-exception v0

    .line 259
    const-string v0, "[class or subclass of android.hardware.contexthub@1.2::IContexthub]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public blacklist unloadNanoApp(IJI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 360
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 362
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 363
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 365
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 367
    :try_start_18
    iget-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x5

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 368
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 369
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 371
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 372
    nop

    .line 374
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 372
    return p2

    .line 374
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 375
    throw p2
.end method
