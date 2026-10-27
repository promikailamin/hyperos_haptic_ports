.class public final Lcom/android/server/pm/PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "PackageManagerNative.java"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 136
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 142
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 144
    invoke-interface {p0, p1, v0}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    return-object v1

    :cond_19
    const-wide/16 v1, 0x0

    .line 149
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 152
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2b

    .line 153
    const-string/jumbo p0, "preload"

    return-object p0

    .line 155
    :cond_2b
    const-string p0, ""

    return-object p0
.end method

.method public getLocationFlags(Ljava/lang/String;)I
    .registers 5

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 210
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 217
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    .line 218
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    or-int/2addr p1, v0

    .line 219
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 v1, 0x4

    :cond_2c
    or-int p0, p1, v1

    return p0

    .line 214
    :cond_2f
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t get ApplicationInfo for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModuleMetadataPackageName()Ljava/lang/String;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_86

    .line 54
    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_86

    .line 57
    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_30

    if-eqz p0, :cond_16

    move-object v0, p0

    goto :goto_19

    .line 58
    :cond_16
    :try_start_16
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 60
    :goto_19
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_2f

    .line 61
    aget-object v2, v0, v1

    if-nez v2, :cond_2c

    .line 62
    const-string v2, ""

    aput-object v2, v0, v1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_27

    goto :goto_2c

    :catchall_27
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_32

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_2f
    return-object v0

    :catchall_30
    move-exception v1

    move-object p0, v0

    .line 68
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PackageManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "names: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "results: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo p0, "throwing exception"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    throw v1

    :cond_86
    :goto_86
    return-object v0
.end method

.method public getPackageInfoWithSigningInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfoNative;
    .registers 6

    .line 78
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/32 v0, 0x8000000

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_11
    new-instance p2, Landroid/content/pm/PackageInfoNative;

    invoke-direct {p2}, Landroid/content/pm/PackageInfoNative;-><init>()V

    .line 85
    iput-object p1, p2, Landroid/content/pm/PackageInfoNative;->packageName:Ljava/lang/String;

    .line 87
    sget-boolean p1, Landroid/system/virtualmachine/AvfBuildFlags;->SUPPORT_AVF_ADVANCE_MULTITENANCY:Z

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_24

    .line 88
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, p2, Landroid/content/pm/PackageInfoNative;->sourceDir:Ljava/lang/String;

    .line 90
    :cond_24
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_29

    goto :goto_47

    .line 93
    :cond_29
    new-instance p1, Landroid/content/pm/SigningInfoNative;

    invoke-direct {p1}, Landroid/content/pm/SigningInfoNative;-><init>()V

    iput-object p1, p2, Landroid/content/pm/PackageInfoNative;->signingInfo:Landroid/content/pm/SigningInfoNative;

    .line 95
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 96
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_45

    .line 97
    :cond_3f
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    :goto_45
    if-nez p0, :cond_48

    :goto_47
    return-object p2

    .line 102
    :cond_48
    array-length p1, p0

    new-array p1, p1, [Landroid/content/pm/SignatureNative;

    const/4 v0, 0x0

    .line 103
    :goto_4c
    array-length v1, p0

    if-ge v0, v1, :cond_61

    .line 104
    new-instance v1, Landroid/content/pm/SignatureNative;

    invoke-direct {v1}, Landroid/content/pm/SignatureNative;-><init>()V

    .line 105
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/SignatureNative;->signature:[B

    .line 106
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 108
    :cond_61
    iget-object p0, p2, Landroid/content/pm/PackageInfoNative;->signingInfo:Landroid/content/pm/SigningInfoNative;

    iput-object p1, p0, Landroid/content/pm/SigningInfoNative;->apkContentSigners:[Landroid/content/pm/SignatureNative;

    return-object p2
.end method

.method public getPackageInfoWithSigningInfoForUid(I)[Landroid/content/pm/PackageInfoNative;
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_e
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 121
    array-length v1, v0

    new-array v1, v1, [Landroid/content/pm/PackageInfoNative;

    const/4 v2, 0x0

    .line 122
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 123
    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PackageManagerNative;->getPackageInfoWithSigningInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfoNative;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    return-object v1
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .registers 5

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    return p0
.end method

.method public getStagedApexInfos()[Landroid/content/pm/StagedApexInfo;
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/StagedApexInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/StagedApexInfo;

    return-object p0
.end method

.method public getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .registers 4

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    return p0

    .line 179
    :cond_e
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t get targetSdkVersion for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersionCodeForPackage(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, 0x0

    .line 161
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 162
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 163
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 165
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    return-wide p0

    :catch_1b
    :cond_1b
    return-wide v0
.end method

.method public hasSha256SigningCertificate(Ljava/lang/String;[B)Z
    .registers 4

    .line 230
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v0, 0x1

    .line 231
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 3

    .line 236
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .registers 9

    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 198
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    .line 199
    array-length v1, p1

    new-array v2, v1, [Z

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_13
    if-ltz v1, :cond_2d

    .line 201
    aget-object v4, p1, v1

    const-wide/16 v5, 0x0

    invoke-interface {p0, v4, v5, v6, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 202
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v4

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2d
    return-object v2
.end method

.method public isPackageDebuggable(Ljava/lang/String;)Z
    .registers 5

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 185
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 186
    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 188
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 191
    :cond_1c
    new-instance p0, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t get debug flag for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    return-void
.end method

.method public unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 2

    .line 246
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagingManager()Lcom/android/server/pm/StagingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V

    return-void
.end method
