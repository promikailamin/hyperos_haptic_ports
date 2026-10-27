.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final greylist-max-o TRANSACTION_abandon:I = 0xe

.field static final blacklist TRANSACTION_addChildSessionId:I = 0x16

.field static final greylist-max-o TRANSACTION_addClientProgress:I = 0x2

.field static final blacklist TRANSACTION_addFile:I = 0x12

.field static final greylist-max-o TRANSACTION_close:I = 0xb

.field static final greylist-max-o TRANSACTION_commit:I = 0xc

.field static final blacklist TRANSACTION_fetchPackageNames:I = 0x10

.field static final blacklist TRANSACTION_getAppMetadataFd:I = 0x1e

.field static final blacklist TRANSACTION_getChildSessionIds:I = 0x15

.field static final blacklist TRANSACTION_getDataLoaderParams:I = 0x11

.field static final blacklist TRANSACTION_getInstallFlags:I = 0x1a

.field static final greylist-max-o TRANSACTION_getNames:I = 0x3

.field static final blacklist TRANSACTION_getParentSessionId:I = 0x18

.field static final blacklist TRANSACTION_getPreVerifiedDomains:I = 0x22

.field static final blacklist TRANSACTION_isApplicationEnabledSettingPersistent:I = 0x1c

.field static final blacklist TRANSACTION_isMultiPackage:I = 0x14

.field static final blacklist TRANSACTION_isRequestUpdateOwnership:I = 0x1d

.field static final blacklist TRANSACTION_isStaged:I = 0x19

.field static final greylist-max-o TRANSACTION_openRead:I = 0x5

.field static final greylist-max-o TRANSACTION_openWrite:I = 0x4

.field static final blacklist TRANSACTION_openWriteAppMetadata:I = 0x1f

.field static final blacklist TRANSACTION_removeAppMetadata:I = 0x20

.field static final blacklist TRANSACTION_removeChildSessionId:I = 0x17

.field static final blacklist TRANSACTION_removeFile:I = 0x13

.field static final greylist-max-o TRANSACTION_removeSplit:I = 0xa

.field static final blacklist TRANSACTION_requestChecksums:I = 0x9

.field static final blacklist TRANSACTION_requestUserPreapproval:I = 0x1b

.field static final blacklist TRANSACTION_seal:I = 0xf

.field static final blacklist TRANSACTION_setChecksums:I = 0x8

.field static final greylist-max-o TRANSACTION_setClientProgress:I = 0x1

.field static final blacklist TRANSACTION_setPreVerifiedDomains:I = 0x21

.field static final blacklist TRANSACTION_stageViaHardLink:I = 0x7

.field static final greylist-max-o TRANSACTION_transfer:I = 0xd

.field static final greylist-max-o TRANSACTION_write:I = 0x6


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    nop

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 156
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_d

    .line 149
    iput-object p1, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 150
    return-void

    .line 147
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
    .registers 3

    .line 163
    if-nez p0, :cond_4

    .line 164
    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_4
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    if-eqz v1, :cond_13

    .line 168
    check-cast v0, Landroid/content/pm/IPackageInstallerSession;

    return-object v0

    .line 170
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 179
    packed-switch p0, :pswitch_data_7e

    .line 319
    const/4 p0, 0x0

    return-object p0

    .line 315
    :pswitch_5
    const-string p0, "getPreVerifiedDomains"

    return-object p0

    .line 311
    :pswitch_8
    const-string/jumbo p0, "setPreVerifiedDomains"

    return-object p0

    .line 307
    :pswitch_c
    const-string/jumbo p0, "removeAppMetadata"

    return-object p0

    .line 303
    :pswitch_10
    const-string/jumbo p0, "openWriteAppMetadata"

    return-object p0

    .line 299
    :pswitch_14
    const-string p0, "getAppMetadataFd"

    return-object p0

    .line 295
    :pswitch_17
    const-string/jumbo p0, "isRequestUpdateOwnership"

    return-object p0

    .line 291
    :pswitch_1b
    const-string p0, "isApplicationEnabledSettingPersistent"

    return-object p0

    .line 287
    :pswitch_1e
    const-string/jumbo p0, "requestUserPreapproval"

    return-object p0

    .line 283
    :pswitch_22
    const-string p0, "getInstallFlags"

    return-object p0

    .line 279
    :pswitch_25
    const-string/jumbo p0, "isStaged"

    return-object p0

    .line 275
    :pswitch_29
    const-string p0, "getParentSessionId"

    return-object p0

    .line 271
    :pswitch_2c
    const-string/jumbo p0, "removeChildSessionId"

    return-object p0

    .line 267
    :pswitch_30
    const-string p0, "addChildSessionId"

    return-object p0

    .line 263
    :pswitch_33
    const-string p0, "getChildSessionIds"

    return-object p0

    .line 259
    :pswitch_36
    const-string p0, "isMultiPackage"

    return-object p0

    .line 255
    :pswitch_39
    const-string/jumbo p0, "removeFile"

    return-object p0

    .line 251
    :pswitch_3d
    const-string p0, "addFile"

    return-object p0

    .line 247
    :pswitch_40
    const-string p0, "getDataLoaderParams"

    return-object p0

    .line 243
    :pswitch_43
    const-string p0, "fetchPackageNames"

    return-object p0

    .line 239
    :pswitch_46
    const-string/jumbo p0, "seal"

    return-object p0

    .line 235
    :pswitch_4a
    const-string p0, "abandon"

    return-object p0

    .line 231
    :pswitch_4d
    const-string/jumbo p0, "transfer"

    return-object p0

    .line 227
    :pswitch_51
    const-string p0, "commit"

    return-object p0

    .line 223
    :pswitch_54
    const-string p0, "close"

    return-object p0

    .line 219
    :pswitch_57
    const-string/jumbo p0, "removeSplit"

    return-object p0

    .line 215
    :pswitch_5b
    const-string/jumbo p0, "requestChecksums"

    return-object p0

    .line 211
    :pswitch_5f
    const-string/jumbo p0, "setChecksums"

    return-object p0

    .line 207
    :pswitch_63
    const-string/jumbo p0, "stageViaHardLink"

    return-object p0

    .line 203
    :pswitch_67
    const-string/jumbo p0, "write"

    return-object p0

    .line 199
    :pswitch_6b
    const-string/jumbo p0, "openRead"

    return-object p0

    .line 195
    :pswitch_6f
    const-string/jumbo p0, "openWrite"

    return-object p0

    .line 191
    :pswitch_73
    const-string p0, "getNames"

    return-object p0

    .line 187
    :pswitch_76
    const-string p0, "addClientProgress"

    return-object p0

    .line 183
    :pswitch_79
    const-string/jumbo p0, "setClientProgress"

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addFile_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1253
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 174
    return-object p0
.end method

.method protected blacklist getDataLoaderParams_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1248
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1277
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 326
    invoke-static {p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    nop

    .line 331
    const-string v3, "android.content.pm.IPackageInstallerSession"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 332
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    return v7

    .line 338
    :cond_17
    packed-switch p1, :pswitch_data_24e

    .line 649
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 642
    :pswitch_1f
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v0

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 645
    goto/16 :goto_24c

    .line 634
    :pswitch_2b
    sget-object v1, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/verify/domain/DomainSet;

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->setPreVerifiedDomains(Landroid/content/pm/verify/domain/DomainSet;)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_24c

    .line 627
    :pswitch_3e
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeAppMetadata()V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_24c

    .line 620
    :pswitch_46
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 623
    goto/16 :goto_24c

    .line 613
    :pswitch_52
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getAppMetadataFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 616
    goto/16 :goto_24c

    .line 606
    :pswitch_5e
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isRequestUpdateOwnership()Z

    move-result v0

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 609
    goto/16 :goto_24c

    .line 599
    :pswitch_6a
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isApplicationEnabledSettingPersistent()Z

    move-result v0

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    goto/16 :goto_24c

    .line 589
    :pswitch_76
    sget-object v1, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 591
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageInstallerSession$Stub;->requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_24c

    .line 581
    :pswitch_91
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getInstallFlags()I

    move-result v0

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    goto/16 :goto_24c

    .line 574
    :pswitch_9d
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isStaged()Z

    move-result v0

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 577
    goto/16 :goto_24c

    .line 567
    :pswitch_a9
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getParentSessionId()I

    move-result v0

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    goto/16 :goto_24c

    .line 559
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeChildSessionId(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_24c

    .line 550
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->addChildSessionId(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto/16 :goto_24c

    .line 542
    :pswitch_d3
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getChildSessionIds()[I

    move-result-object v0

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 545
    goto/16 :goto_24c

    .line 535
    :pswitch_df
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isMultiPackage()Z

    move-result v0

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 538
    goto/16 :goto_24c

    .line 525
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeFile(ILjava/lang/String;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_24c

    .line 508
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->addFile(ILjava/lang/String;J[B[B)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_24c

    .line 500
    :pswitch_11e
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 503
    goto/16 :goto_24c

    .line 493
    :pswitch_12a
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->fetchPackageNames()Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 496
    goto/16 :goto_24c

    .line 487
    :pswitch_136
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->seal()V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_24c

    .line 481
    :pswitch_13e
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    goto/16 :goto_24c

    .line 473
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->transfer(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_24c

    .line 462
    :pswitch_155
    sget-object v1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;Z)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_24c

    .line 455
    :pswitch_16c
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_24c

    .line 447
    :pswitch_174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeSplit(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_24c

    .line 429
    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 436
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v5

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_24c

    .line 416
    :pswitch_1af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    sget-object v2, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Checksum;

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageInstallerSession$Stub;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_24c

    .line 407
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->stageViaHardLink(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_24c

    .line 392
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 398
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto :goto_24c

    .line 382
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 387
    goto :goto_24c

    .line 368
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 377
    goto :goto_24c

    .line 360
    :pswitch_225
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 363
    goto :goto_24c

    .line 352
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto :goto_24c

    .line 343
    :pswitch_23e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    nop

    .line 652
    :goto_24c
    return v7

    nop

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_23e
        :pswitch_230
        :pswitch_225
        :pswitch_20a
        :pswitch_1f8
        :pswitch_1d9
        :pswitch_1ca
        :pswitch_1af
        :pswitch_183
        :pswitch_174
        :pswitch_16c
        :pswitch_155
        :pswitch_146
        :pswitch_13e
        :pswitch_136
        :pswitch_12a
        :pswitch_11e
        :pswitch_fe
        :pswitch_eb
        :pswitch_df
        :pswitch_d3
        :pswitch_c4
        :pswitch_b5
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_76
        :pswitch_6a
        :pswitch_5e
        :pswitch_52
        :pswitch_46
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist removeFile_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1258
    return-void
.end method
