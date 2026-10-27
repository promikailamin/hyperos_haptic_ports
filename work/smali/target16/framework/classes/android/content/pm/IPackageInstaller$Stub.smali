.class public abstract Landroid/content/pm/IPackageInstaller$Stub;
.super Landroid/os/Binder;
.source "IPackageInstaller.java"

# interfaces
.implements Landroid/content/pm/IPackageInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstaller$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstaller"

.field static final greylist-max-o TRANSACTION_abandonSession:I = 0x4

.field static final blacklist TRANSACTION_addDeveloperVerificationExperiment:I = 0x21

.field static final blacklist TRANSACTION_bypassNextAllowedApexUpdateCheck:I = 0x11

.field static final blacklist TRANSACTION_bypassNextStagedInstallerCheck:I = 0x10

.field static final blacklist TRANSACTION_checkInstallConstraints:I = 0x15

.field static final blacklist TRANSACTION_clearDeveloperVerificationExperiment:I = 0x22

.field static final greylist-max-o TRANSACTION_createSession:I = 0x1

.field static final blacklist TRANSACTION_disableVerificationForUid:I = 0x12

.field static final greylist-max-o TRANSACTION_getAllSessions:I = 0x7

.field static final blacklist TRANSACTION_getDeveloperVerificationPolicy:I = 0x1b

.field static final blacklist TRANSACTION_getDeveloperVerificationPolicyDelegatePackage:I = 0x1e

.field static final blacklist TRANSACTION_getDeveloperVerificationServiceProvider:I = 0x1d

.field static final blacklist TRANSACTION_getDeveloperVerificationUserConfirmationInfo:I = 0x20

.field static final greylist-max-o TRANSACTION_getMySessions:I = 0x8

.field static final greylist-max-o TRANSACTION_getSessionInfo:I = 0x6

.field static final blacklist TRANSACTION_getStagedSessions:I = 0x9

.field static final blacklist TRANSACTION_installExistingPackage:I = 0xe

.field static final blacklist TRANSACTION_installPackageArchived:I = 0x19

.field static final greylist-max-o TRANSACTION_openSession:I = 0x5

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0xa

.field static final blacklist TRANSACTION_reportUnarchivalStatus:I = 0x1a

.field static final blacklist TRANSACTION_requestArchive:I = 0x17

.field static final blacklist TRANSACTION_requestUnarchive:I = 0x18

.field static final blacklist TRANSACTION_setAllowUnlimitedSilentUpdates:I = 0x13

.field static final blacklist TRANSACTION_setDeveloperVerificationPolicy:I = 0x1c

.field static final blacklist TRANSACTION_setDeveloperVerificationUserResponse:I = 0x1f

.field static final greylist-max-o TRANSACTION_setPermissionsResult:I = 0xf

.field static final blacklist TRANSACTION_setSilentUpdatesThrottleTime:I = 0x14

.field static final greylist-max-o TRANSACTION_uninstall:I = 0xc

.field static final blacklist TRANSACTION_uninstallExistingPackage:I = 0xd

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0xb

.field static final greylist-max-o TRANSACTION_updateSessionAppIcon:I = 0x2

.field static final greylist-max-o TRANSACTION_updateSessionAppLabel:I = 0x3

.field static final blacklist TRANSACTION_waitForInstallConstraints:I = 0x16


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    nop

    .line 151
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_d

    .line 145
    iput-object p1, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 146
    return-void

    .line 143
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;
    .registers 3

    .line 159
    if-nez p0, :cond_4

    .line 160
    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_4
    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageInstaller;

    if-eqz v1, :cond_13

    .line 164
    check-cast v0, Landroid/content/pm/IPackageInstaller;

    return-object v0

    .line 166
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageInstaller$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 175
    packed-switch p0, :pswitch_data_7c

    .line 315
    const/4 p0, 0x0

    return-object p0

    .line 311
    :pswitch_5
    const-string p0, "clearDeveloperVerificationExperiment"

    return-object p0

    .line 307
    :pswitch_8
    const-string p0, "addDeveloperVerificationExperiment"

    return-object p0

    .line 303
    :pswitch_b
    const-string p0, "getDeveloperVerificationUserConfirmationInfo"

    return-object p0

    .line 299
    :pswitch_e
    const-string/jumbo p0, "setDeveloperVerificationUserResponse"

    return-object p0

    .line 295
    :pswitch_12
    const-string p0, "getDeveloperVerificationPolicyDelegatePackage"

    return-object p0

    .line 291
    :pswitch_15
    const-string p0, "getDeveloperVerificationServiceProvider"

    return-object p0

    .line 287
    :pswitch_18
    const-string/jumbo p0, "setDeveloperVerificationPolicy"

    return-object p0

    .line 283
    :pswitch_1c
    const-string p0, "getDeveloperVerificationPolicy"

    return-object p0

    .line 279
    :pswitch_1f
    const-string/jumbo p0, "reportUnarchivalStatus"

    return-object p0

    .line 275
    :pswitch_23
    const-string p0, "installPackageArchived"

    return-object p0

    .line 271
    :pswitch_26
    const-string/jumbo p0, "requestUnarchive"

    return-object p0

    .line 267
    :pswitch_2a
    const-string/jumbo p0, "requestArchive"

    return-object p0

    .line 263
    :pswitch_2e
    const-string/jumbo p0, "waitForInstallConstraints"

    return-object p0

    .line 259
    :pswitch_32
    const-string p0, "checkInstallConstraints"

    return-object p0

    .line 255
    :pswitch_35
    const-string/jumbo p0, "setSilentUpdatesThrottleTime"

    return-object p0

    .line 251
    :pswitch_39
    const-string/jumbo p0, "setAllowUnlimitedSilentUpdates"

    return-object p0

    .line 247
    :pswitch_3d
    const-string p0, "disableVerificationForUid"

    return-object p0

    .line 243
    :pswitch_40
    const-string p0, "bypassNextAllowedApexUpdateCheck"

    return-object p0

    .line 239
    :pswitch_43
    const-string p0, "bypassNextStagedInstallerCheck"

    return-object p0

    .line 235
    :pswitch_46
    const-string/jumbo p0, "setPermissionsResult"

    return-object p0

    .line 231
    :pswitch_4a
    const-string p0, "installExistingPackage"

    return-object p0

    .line 227
    :pswitch_4d
    const-string/jumbo p0, "uninstallExistingPackage"

    return-object p0

    .line 223
    :pswitch_51
    const-string/jumbo p0, "uninstall"

    return-object p0

    .line 219
    :pswitch_55
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 215
    :pswitch_59
    const-string/jumbo p0, "registerCallback"

    return-object p0

    .line 211
    :pswitch_5d
    const-string p0, "getStagedSessions"

    return-object p0

    .line 207
    :pswitch_60
    const-string p0, "getMySessions"

    return-object p0

    .line 203
    :pswitch_63
    const-string p0, "getAllSessions"

    return-object p0

    .line 199
    :pswitch_66
    const-string p0, "getSessionInfo"

    return-object p0

    .line 195
    :pswitch_69
    const-string/jumbo p0, "openSession"

    return-object p0

    .line 191
    :pswitch_6d
    const-string p0, "abandonSession"

    return-object p0

    .line 187
    :pswitch_70
    const-string/jumbo p0, "updateSessionAppLabel"

    return-object p0

    .line 183
    :pswitch_74
    const-string/jumbo p0, "updateSessionAppIcon"

    return-object p0

    .line 179
    :pswitch_78
    const-string p0, "createSession"

    return-object p0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 170
    return-object p0
.end method

.method protected blacklist getDeveloperVerificationPolicyDelegatePackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVELOPER_VERIFICATION_AGENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1388
    return-void
.end method

.method protected blacklist getDeveloperVerificationUserConfirmationInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_DEVELOPER_VERIFICATION_USER_RESPONSE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1398
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1404
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 322
    invoke-static {p1}, Landroid/content/pm/IPackageInstaller$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 326
    nop

    .line 327
    const-string v3, "android.content.pm.IPackageInstaller"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 328
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    return v7

    .line 334
    :cond_17
    packed-switch p1, :pswitch_data_35e

    .line 741
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 733
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->clearDeveloperVerificationExperiment(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto/16 :goto_35d

    .line 720
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->addDeveloperVerificationExperiment(Ljava/lang/String;I[I)V

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_35d

    .line 710
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getDeveloperVerificationUserConfirmationInfo(I)Landroid/content/pm/PackageInstaller$DeveloperVerificationUserConfirmationInfo;

    move-result-object v0

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 715
    goto/16 :goto_35d

    .line 699
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageInstaller$Stub;->setDeveloperVerificationUserResponse(II)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_35d

    .line 689
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getDeveloperVerificationPolicyDelegatePackage(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 694
    goto/16 :goto_35d

    .line 681
    :pswitch_7e
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->getDeveloperVerificationServiceProvider()Landroid/content/ComponentName;

    move-result-object v0

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 684
    goto/16 :goto_35d

    .line 670
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageInstaller$Stub;->setDeveloperVerificationPolicy(II)Z

    move-result v0

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 677
    goto/16 :goto_35d

    .line 660
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getDeveloperVerificationPolicy(I)I

    move-result v0

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    goto/16 :goto_35d

    .line 643
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    move v5, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 649
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 651
    sget-object v8, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    move-object v0, p0

    move v2, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    goto/16 :goto_35d

    .line 626
    :pswitch_e0
    sget-object v0, Landroid/content/pm/ArchivedPackageParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ArchivedPackageParcel;

    .line 628
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 630
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 634
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_35d

    .line 611
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 615
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 617
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/pm/IPackageInstaller$Stub;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    goto/16 :goto_35d

    .line 594
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 598
    move-object v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 600
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentSender;

    .line 602
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    move-object v0, p0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_35d

    .line 577
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 581
    sget-object v3, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 583
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    goto/16 :goto_35d

    .line 562
    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 566
    sget-object v4, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 568
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/pm/IPackageInstaller$Stub;->checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    goto/16 :goto_35d

    .line 553
    :pswitch_1ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->setSilentUpdatesThrottleTime(J)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto/16 :goto_35d

    .line 544
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto/16 :goto_35d

    .line 535
    :pswitch_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->disableVerificationForUid(I)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto/16 :goto_35d

    .line 526
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->bypassNextAllowedApexUpdateCheck(Z)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto/16 :goto_35d

    .line 517
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->bypassNextStagedInstallerCheck(Z)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_35d

    .line 506
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult(IZ)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_35d

    .line 487
    :pswitch_20b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 491
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentSender;

    .line 495
    move v2, v4

    move-object v4, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    goto/16 :goto_35d

    .line 472
    :pswitch_236
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto/16 :goto_35d

    .line 455
    :pswitch_259
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    goto/16 :goto_35d

    .line 446
    :pswitch_281
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    goto/16 :goto_35d

    .line 435
    :pswitch_294
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v1

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_35d

    .line 427
    :pswitch_2ab
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    goto/16 :goto_35d

    .line 416
    :pswitch_2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 423
    goto/16 :goto_35d

    .line 406
    :pswitch_2ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 411
    goto/16 :goto_35d

    .line 396
    :pswitch_2e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 401
    goto :goto_35d

    .line 386
    :pswitch_2f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 391
    goto :goto_35d

    .line 377
    :pswitch_305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->abandonSession(I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto :goto_35d

    .line 366
    :pswitch_313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppLabel(ILjava/lang/String;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    goto :goto_35d

    .line 355
    :pswitch_325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto :goto_35d

    .line 339
    :pswitch_33b
    sget-object v1, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    nop

    .line 744
    :goto_35d
    return v7

    :pswitch_data_35e
    .packed-switch 0x1
        :pswitch_33b
        :pswitch_325
        :pswitch_313
        :pswitch_305
        :pswitch_2f3
        :pswitch_2e1
        :pswitch_2ce
        :pswitch_2b7
        :pswitch_2ab
        :pswitch_294
        :pswitch_281
        :pswitch_259
        :pswitch_236
        :pswitch_20b
        :pswitch_1f8
        :pswitch_1e9
        :pswitch_1da
        :pswitch_1cb
        :pswitch_1bc
        :pswitch_1ad
        :pswitch_18a
        :pswitch_161
        :pswitch_135
        :pswitch_112
        :pswitch_e0
        :pswitch_b4
        :pswitch_a1
        :pswitch_8a
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
        :pswitch_45
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist setDeveloperVerificationUserResponse_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SET_DEVELOPER_VERIFICATION_USER_RESPONSE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1393
    return-void
.end method

.method protected blacklist setPermissionsResult_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1369
    return-void
.end method
