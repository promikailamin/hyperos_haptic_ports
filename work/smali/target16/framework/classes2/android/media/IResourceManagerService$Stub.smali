.class public abstract Landroid/media/IResourceManagerService$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addResource:I = 0x2

.field static final blacklist TRANSACTION_config:I = 0x1

.field static final blacklist TRANSACTION_getMediaResourceUsageReport:I = 0xf

.field static final blacklist TRANSACTION_markClientForPendingRemoval:I = 0x9

.field static final blacklist TRANSACTION_notifyClientConfigChanged:I = 0xe

.field static final blacklist TRANSACTION_notifyClientCreated:I = 0xb

.field static final blacklist TRANSACTION_notifyClientStarted:I = 0xc

.field static final blacklist TRANSACTION_notifyClientStopped:I = 0xd

.field static final blacklist TRANSACTION_overridePid:I = 0x7

.field static final blacklist TRANSACTION_overrideProcessInfo:I = 0x8

.field static final blacklist TRANSACTION_reclaimResource:I = 0x6

.field static final blacklist TRANSACTION_reclaimResourcesFromClientsPendingRemoval:I = 0xa

.field static final blacklist TRANSACTION_removeClient:I = 0x5

.field static final blacklist TRANSACTION_removeResource:I = 0x4

.field static final blacklist TRANSACTION_updateResource:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 195
    const-string v0, "android.media.IResourceManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IResourceManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;
    .registers 3

    .line 203
    if-nez p0, :cond_4

    .line 204
    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_4
    const-string v0, "android.media.IResourceManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IResourceManagerService;

    if-eqz v1, :cond_13

    .line 208
    check-cast v0, Landroid/media/IResourceManagerService;

    return-object v0

    .line 210
    :cond_13
    new-instance v0, Landroid/media/IResourceManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IResourceManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 219
    packed-switch p0, :pswitch_data_32

    .line 283
    const/4 p0, 0x0

    return-object p0

    .line 279
    :pswitch_5
    const-string p0, "getMediaResourceUsageReport"

    return-object p0

    .line 275
    :pswitch_8
    const-string p0, "notifyClientConfigChanged"

    return-object p0

    .line 271
    :pswitch_b
    const-string p0, "notifyClientStopped"

    return-object p0

    .line 267
    :pswitch_e
    const-string p0, "notifyClientStarted"

    return-object p0

    .line 263
    :pswitch_11
    const-string p0, "notifyClientCreated"

    return-object p0

    .line 259
    :pswitch_14
    const-string p0, "reclaimResourcesFromClientsPendingRemoval"

    return-object p0

    .line 255
    :pswitch_17
    const-string p0, "markClientForPendingRemoval"

    return-object p0

    .line 251
    :pswitch_1a
    const-string p0, "overrideProcessInfo"

    return-object p0

    .line 247
    :pswitch_1d
    const-string p0, "overridePid"

    return-object p0

    .line 243
    :pswitch_20
    const-string p0, "reclaimResource"

    return-object p0

    .line 239
    :pswitch_23
    const-string p0, "removeClient"

    return-object p0

    .line 235
    :pswitch_26
    const-string p0, "removeResource"

    return-object p0

    .line 231
    :pswitch_29
    const-string p0, "updateResource"

    return-object p0

    .line 227
    :pswitch_2c
    const-string p0, "addResource"

    return-object p0

    .line 223
    :pswitch_2f
    const-string p0, "config"

    return-object p0

    :pswitch_data_32
    .packed-switch 0x1
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

    .line 214
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 860
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 290
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 294
    nop

    .line 295
    const-string v0, "android.media.IResourceManagerService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 296
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    return v1

    .line 302
    :cond_17
    packed-switch p1, :pswitch_data_190

    .line 468
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 452
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 453
    const p4, 0xf4240

    if-gt p1, p4, :cond_3c

    .line 455
    if-gez p1, :cond_2c

    .line 456
    const/4 p1, 0x0

    goto :goto_2e

    .line 458
    :cond_2c
    new-array p1, p1, [Landroid/media/MediaResourceParcel;

    .line 460
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->getMediaResourceUsageReport([Landroid/media/MediaResourceParcel;)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 464
    goto/16 :goto_18e

    .line 454
    :cond_3c
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Array too large: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 443
    :pswitch_55
    sget-object p1, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientConfigParcel;

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->notifyClientConfigChanged(Landroid/media/ClientConfigParcel;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    goto/16 :goto_18e

    .line 434
    :pswitch_68
    sget-object p1, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientConfigParcel;

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->notifyClientStopped(Landroid/media/ClientConfigParcel;)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_18e

    .line 425
    :pswitch_7b
    sget-object p1, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientConfigParcel;

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->notifyClientStarted(Landroid/media/ClientConfigParcel;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_18e

    .line 416
    :pswitch_8e
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->notifyClientCreated(Landroid/media/ClientInfoParcel;)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_18e

    .line 407
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->reclaimResourcesFromClientsPendingRemoval(I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_18e

    .line 398
    :pswitch_b0
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->markClientForPendingRemoval(Landroid/media/ClientInfoParcel;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_18e

    .line 383
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object p1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/IResourceManagerService$Stub;->overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    goto/16 :goto_18e

    .line 372
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, p1, p4}, Landroid/media/IResourceManagerService$Stub;->overridePid(II)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_18e

    .line 360
    :pswitch_f5
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 362
    sget-object p4, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/media/MediaResourceParcel;

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, p1, p4}, Landroid/media/IResourceManagerService$Stub;->reclaimResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)Z

    move-result p1

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    goto/16 :goto_18e

    .line 351
    :pswitch_114
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->removeClient(Landroid/media/ClientInfoParcel;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto :goto_18e

    .line 340
    :pswitch_126
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 342
    sget-object p4, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/media/MediaResourceParcel;

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, p1, p4}, Landroid/media/IResourceManagerService$Stub;->removeResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    goto :goto_18e

    .line 329
    :pswitch_140
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 331
    sget-object p4, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/media/MediaResourceParcel;

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, p1, p4}, Landroid/media/IResourceManagerService$Stub;->updateResource(Landroid/media/ClientInfoParcel;[Landroid/media/MediaResourceParcel;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto :goto_18e

    .line 316
    :pswitch_15a
    sget-object p1, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ClientInfoParcel;

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object p4

    .line 320
    sget-object v0, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaResourceParcel;

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/IResourceManagerService$Stub;->addResource(Landroid/media/ClientInfoParcel;Landroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto :goto_18e

    .line 307
    :pswitch_17c
    sget-object p1, Landroid/media/MediaResourcePolicyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/MediaResourcePolicyParcel;

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, p1}, Landroid/media/IResourceManagerService$Stub;->config([Landroid/media/MediaResourcePolicyParcel;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    nop

    .line 471
    :goto_18e
    return v1

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_17c
        :pswitch_15a
        :pswitch_140
        :pswitch_126
        :pswitch_114
        :pswitch_f5
        :pswitch_e2
        :pswitch_c3
        :pswitch_b0
        :pswitch_a1
        :pswitch_8e
        :pswitch_7b
        :pswitch_68
        :pswitch_55
        :pswitch_1f
    .end packed-switch
.end method
