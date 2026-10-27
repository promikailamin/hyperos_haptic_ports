.class public abstract Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceManager.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createVirtualDevice:I = 0x1

.field static final blacklist TRANSACTION_getAllPersistentDeviceIds:I = 0x12

.field static final blacklist TRANSACTION_getAudioPlaybackSessionId:I = 0xe

.field static final blacklist TRANSACTION_getAudioRecordingSessionId:I = 0xf

.field static final blacklist TRANSACTION_getDeviceIdForDisplayId:I = 0x9

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0xc

.field static final blacklist TRANSACTION_getDevicePolicyForDisplayId:I = 0xd

.field static final blacklist TRANSACTION_getDisplayNameForPersistentDeviceId:I = 0xa

.field static final blacklist TRANSACTION_getVirtualDevice:I = 0x4

.field static final blacklist TRANSACTION_getVirtualDevices:I = 0x3

.field static final blacklist TRANSACTION_isValidVirtualDeviceId:I = 0xb

.field static final blacklist TRANSACTION_isVirtualDeviceOwnedMirrorDisplay:I = 0x11

.field static final blacklist TRANSACTION_playSoundEffect:I = 0x10

.field static final blacklist TRANSACTION_registerAutomatedPackageListener:I = 0x7

.field static final blacklist TRANSACTION_registerVirtualDeviceListener:I = 0x5

.field static final blacklist TRANSACTION_requestComputerControlSession:I = 0x2

.field static final blacklist TRANSACTION_unregisterAutomatedPackageListener:I = 0x8

.field static final blacklist TRANSACTION_unregisterVirtualDeviceListener:I = 0x6


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    nop

    .line 161
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 162
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    if-eqz p1, :cond_d

    .line 155
    iput-object p1, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 156
    return-void

    .line 153
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceManager;
    .registers 3

    .line 169
    if-nez p0, :cond_4

    .line 170
    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_4
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDeviceManager;

    if-eqz v1, :cond_13

    .line 174
    check-cast v0, Landroid/companion/virtual/IVirtualDeviceManager;

    return-object v0

    .line 176
    :cond_13
    new-instance v0, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 185
    packed-switch p0, :pswitch_data_44

    .line 261
    const/4 p0, 0x0

    return-object p0

    .line 257
    :pswitch_5
    const-string p0, "getAllPersistentDeviceIds"

    return-object p0

    .line 253
    :pswitch_8
    const-string/jumbo p0, "isVirtualDeviceOwnedMirrorDisplay"

    return-object p0

    .line 249
    :pswitch_c
    const-string/jumbo p0, "playSoundEffect"

    return-object p0

    .line 245
    :pswitch_10
    const-string p0, "getAudioRecordingSessionId"

    return-object p0

    .line 241
    :pswitch_13
    const-string p0, "getAudioPlaybackSessionId"

    return-object p0

    .line 237
    :pswitch_16
    const-string p0, "getDevicePolicyForDisplayId"

    return-object p0

    .line 233
    :pswitch_19
    const-string p0, "getDevicePolicy"

    return-object p0

    .line 229
    :pswitch_1c
    const-string/jumbo p0, "isValidVirtualDeviceId"

    return-object p0

    .line 225
    :pswitch_20
    const-string p0, "getDisplayNameForPersistentDeviceId"

    return-object p0

    .line 221
    :pswitch_23
    const-string p0, "getDeviceIdForDisplayId"

    return-object p0

    .line 217
    :pswitch_26
    const-string/jumbo p0, "unregisterAutomatedPackageListener"

    return-object p0

    .line 213
    :pswitch_2a
    const-string/jumbo p0, "registerAutomatedPackageListener"

    return-object p0

    .line 209
    :pswitch_2e
    const-string/jumbo p0, "unregisterVirtualDeviceListener"

    return-object p0

    .line 205
    :pswitch_32
    const-string/jumbo p0, "registerVirtualDeviceListener"

    return-object p0

    .line 201
    :pswitch_36
    const-string p0, "getVirtualDevice"

    return-object p0

    .line 197
    :pswitch_39
    const-string p0, "getVirtualDevices"

    return-object p0

    .line 193
    :pswitch_3c
    const-string/jumbo p0, "requestComputerControlSession"

    return-object p0

    .line 189
    :pswitch_40
    const-string p0, "createVirtualDevice"

    return-object p0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 180
    return-object p0
.end method

.method protected blacklist createVirtualDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 870
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 895
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 268
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    nop

    .line 273
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 274
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 277
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return v1

    .line 280
    :cond_17
    packed-switch p1, :pswitch_data_1ae

    .line 478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 471
    :pswitch_1f
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getAllPersistentDeviceIds()Ljava/util/List;

    move-result-object p1

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 474
    goto/16 :goto_1ad

    .line 462
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->isVirtualDeviceOwnedMirrorDisplay(I)Z

    move-result p1

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 467
    goto/16 :goto_1ad

    .line 451
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->playSoundEffect(II)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_1ad

    .line 441
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getAudioRecordingSessionId(I)I

    move-result p1

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    goto/16 :goto_1ad

    .line 431
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getAudioPlaybackSessionId(I)I

    move-result p1

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    goto/16 :goto_1ad

    .line 419
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDevicePolicyForDisplayId(II)I

    move-result p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_1ad

    .line 407
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, p1, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDevicePolicy(II)I

    move-result p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    goto/16 :goto_1ad

    .line 397
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->isValidVirtualDeviceId(I)Z

    move-result p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 402
    goto/16 :goto_1ad

    .line 381
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz p1, :cond_d0

    .line 386
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1ad

    .line 390
    :cond_d0
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    goto/16 :goto_1ad

    .line 371
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDeviceIdForDisplayId(I)I

    move-result p1

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    goto/16 :goto_1ad

    .line 362
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/computercontrol/IAutomatedPackageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;

    move-result-object p1

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->unregisterAutomatedPackageListener(Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_1ad

    .line 353
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/computercontrol/IAutomatedPackageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;

    move-result-object p1

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->registerAutomatedPackageListener(Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    goto/16 :goto_1ad

    .line 344
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceListener;

    move-result-object p1

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    goto/16 :goto_1ad

    .line 335
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceListener;

    move-result-object p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_1ad

    .line 325
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    goto :goto_1ad

    .line 317
    :pswitch_147
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getVirtualDevices()Ljava/util/List;

    move-result-object p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 320
    goto :goto_1ad

    .line 305
    :pswitch_152
    sget-object p1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/AttributionSource;

    .line 307
    sget-object p4, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;

    move-result-object v0

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, p1, p4, v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->requestComputerControlSession(Landroid/content/AttributionSource;Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto :goto_1ad

    .line 285
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 287
    sget-object p1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/AttributionSource;

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    sget-object p1, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/companion/virtual/VirtualDeviceParams;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v7

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-result-object v8

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p1

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 300
    nop

    .line 481
    :goto_1ad
    return v1

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_174
        :pswitch_152
        :pswitch_147
        :pswitch_135
        :pswitch_122
        :pswitch_10f
        :pswitch_fc
        :pswitch_e9
        :pswitch_d6
        :pswitch_b8
        :pswitch_a5
        :pswitch_8e
        :pswitch_77
        :pswitch_64
        :pswitch_51
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist requestComputerControlSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_COMPUTER_CONTROL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 875
    return-void
.end method
