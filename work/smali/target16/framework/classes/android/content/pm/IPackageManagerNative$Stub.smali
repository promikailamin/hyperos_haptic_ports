.class public abstract Landroid/content/pm/IPackageManagerNative$Stub;
.super Landroid/os/Binder;
.source "IPackageManagerNative.java"

# interfaces
.implements Landroid/content/pm/IPackageManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManagerNative$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManagerNative"

.field static final blacklist TRANSACTION_checkPermission:I = 0x5

.field static final greylist-max-o TRANSACTION_getInstallerForPackage:I = 0x6

.field static final blacklist TRANSACTION_getLocationFlags:I = 0x9

.field static final blacklist TRANSACTION_getModuleMetadataPackageName:I = 0xb

.field static final greylist-max-o TRANSACTION_getNamesForUids:I = 0x1

.field static final blacklist TRANSACTION_getPackageInfoWithSigningInfo:I = 0x2

.field static final blacklist TRANSACTION_getPackageInfoWithSigningInfoForUid:I = 0x3

.field static final blacklist TRANSACTION_getPackageUid:I = 0x4

.field static final blacklist TRANSACTION_getStagedApexInfos:I = 0x11

.field static final blacklist TRANSACTION_getTargetSdkVersionForPackage:I = 0xa

.field static final greylist-max-o TRANSACTION_getVersionCodeForPackage:I = 0x7

.field static final blacklist TRANSACTION_hasSha256SigningCertificate:I = 0xc

.field static final blacklist TRANSACTION_hasSystemFeature:I = 0xe

.field static final blacklist TRANSACTION_isAudioPlaybackCaptureAllowed:I = 0x8

.field static final blacklist TRANSACTION_isPackageDebuggable:I = 0xd

.field static final blacklist TRANSACTION_registerStagedApexObserver:I = 0xf

.field static final blacklist TRANSACTION_unregisterStagedApexObserver:I = 0x10


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 201
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 202
    const-string v0, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManagerNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;
    .registers 3

    .line 210
    if-nez p0, :cond_4

    .line 211
    const/4 p0, 0x0

    return-object p0

    .line 213
    :cond_4
    const-string v0, "android.content.pm.IPackageManagerNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageManagerNative;

    if-eqz v1, :cond_13

    .line 215
    check-cast v0, Landroid/content/pm/IPackageManagerNative;

    return-object v0

    .line 217
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageManagerNative$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManagerNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 221
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    nop

    .line 226
    const-string v0, "android.content.pm.IPackageManagerNative"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 227
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 230
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return v1

    .line 233
    :cond_17
    packed-switch p1, :pswitch_data_16c

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 406
    :pswitch_1f
    invoke-virtual {p0}, Landroid/content/pm/IPackageManagerNative$Stub;->getStagedApexInfos()[Landroid/content/pm/StagedApexInfo;

    move-result-object p1

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 409
    goto/16 :goto_16a

    .line 398
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IStagedApexObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IStagedApexObserver;

    move-result-object p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_16a

    .line 389
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IStagedApexObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IStagedApexObserver;

    move-result-object p1

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    goto/16 :goto_16a

    .line 377
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IPackageManagerNative$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 384
    goto/16 :goto_16a

    .line 367
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->isPackageDebuggable(Ljava/lang/String;)Z

    move-result p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 372
    goto/16 :goto_16a

    .line 355
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IPackageManagerNative$Stub;->hasSha256SigningCertificate(Ljava/lang/String;[B)Z

    move-result p1

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 362
    goto/16 :goto_16a

    .line 347
    :pswitch_92
    invoke-virtual {p0}, Landroid/content/pm/IPackageManagerNative$Stub;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    goto/16 :goto_16a

    .line 338
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->getTargetSdkVersionForPackage(Ljava/lang/String;)I

    move-result p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    goto/16 :goto_16a

    .line 328
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->getLocationFlags(Ljava/lang/String;)I

    move-result p1

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    goto/16 :goto_16a

    .line 318
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z

    move-result-object p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 323
    goto/16 :goto_16a

    .line 308
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->getVersionCodeForPackage(Ljava/lang/String;)J

    move-result-wide p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 313
    goto/16 :goto_16a

    .line 298
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    goto :goto_16a

    .line 284
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, p4, v0}, Landroid/content/pm/IPackageManagerNative$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    goto :goto_16a

    .line 270
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1, v2, v3, p4}, Landroid/content/pm/IPackageManagerNative$Stub;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto :goto_16a

    .line 260
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->getPackageInfoWithSigningInfoForUid(I)[Landroid/content/pm/PackageInfoNative;

    move-result-object p1

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 265
    goto :goto_16a

    .line 248
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/IPackageManagerNative$Stub;->getPackageInfoWithSigningInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfoNative;

    move-result-object p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto :goto_16a

    .line 238
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1}, Landroid/content/pm/IPackageManagerNative$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 243
    nop

    .line 416
    :goto_16a
    return v1

    nop

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_158
        :pswitch_142
        :pswitch_130
        :pswitch_116
        :pswitch_fc
        :pswitch_ea
        :pswitch_d7
        :pswitch_c4
        :pswitch_b1
        :pswitch_9e
        :pswitch_92
        :pswitch_7b
        :pswitch_68
        :pswitch_51
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
