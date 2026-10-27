.class final Lcom/android/server/pm/InstallParams;
.super Lcom/android/server/pm/HandlerParams;
.source "InstallParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;
    }
.end annotation


# instance fields
.field final mAllowlistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAutoRevokePermissionsMode:I

.field final mDataLoaderType:I

.field final mForceQueryableOverride:Z

.field final mGrantedRuntimePermissions:[Ljava/lang/String;

.field mInstallFlags:I

.field final mInstallReason:I

.field final mInstallScenario:I

.field final mInstallSource:Lcom/android/server/pm/InstallSource;

.field mIsAutoUpdate:Z

.field mIsRemoveDmAfterInstall:Z

.field final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field final mPackageAbiOverride:Ljava/lang/String;

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field final mPackageSource:I

.field mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

.field final mRequiredInstalledVersionCode:J

.field mRet:I

.field final mSigningDetails:Landroid/content/pm/SigningDetails;

.field final mVolumeUuid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mprocessInstallRequestsAsync(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstallParams;->processInstallRequestsAsync(ZLjava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 14
    .param p1, "originInfo"    # Lcom/android/server/pm/OriginInfo;
    .param p2, "moveInfo"    # Lcom/android/server/pm/MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "packageAbiOverride"    # Ljava/lang/String;
    .param p9, "packageSource"    # I
    .param p10, "packageLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p11, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 88
    invoke-direct {p0, p7, p11}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 89
    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 90
    iput-object p2, p0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 91
    iput-object p3, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 92
    iput p4, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 93
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 94
    iput-object p6, p0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    .line 100
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    .line 102
    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    .line 103
    iput-boolean v0, p0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    .line 104
    iput v0, p0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    .line 106
    iput p9, p0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    .line 107
    iput-object p10, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 108
    return-void
.end method

.method constructor <init>(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 12
    .param p1, "stagedDir"    # Ljava/io/File;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p4, "installSource"    # Lcom/android/server/pm/InstallSource;
    .param p5, "user"    # Landroid/os/UserHandle;
    .param p6, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p7, "installerUid"    # I
    .param p8, "packageLite"    # Landroid/content/pm/parsing/PackageLite;
    .param p9, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 114
    invoke-direct {p0, p5, p9}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 115
    invoke-static {p1}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 117
    iget-object v0, p4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-direct {p0, v0, p7, v1}, Lcom/android/server/pm/InstallParams;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    .line 119
    iget v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    .line 120
    iput-object p2, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 121
    iget v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 122
    iput-object p4, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 123
    iget-object v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    .line 124
    iget-object v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    .line 125
    iget-object v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    .line 126
    iget-object v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 127
    iget v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    .line 128
    iput-object p6, p0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 129
    iget-boolean v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    .line 130
    iget-object v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_47

    .line 131
    iget-object v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    iput v0, p0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    .line 132
    iget-wide v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    .line 133
    iget v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    .line 134
    iput-object p8, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 136
    iget-boolean v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->isRemoveDmAfterInstall:Z

    iput-boolean v0, p0, Lcom/android/server/pm/InstallParams;->mIsRemoveDmAfterInstall:Z

    .line 137
    iget-boolean v0, p3, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoUpdate:Z

    iput-boolean v0, p0, Lcom/android/server/pm/InstallParams;->mIsAutoUpdate:Z

    .line 139
    return-void
.end method

.method private createInstallArgs(Lcom/android/server/pm/InstallParams;)Lcom/android/server/pm/InstallArgs;
    .registers 3
    .param p1, "params"    # Lcom/android/server/pm/InstallParams;

    .line 269
    iget-object v0, p1, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_a

    .line 270
    new-instance v0, Lcom/android/server/pm/MoveInstallArgs;

    invoke-direct {v0, p1}, Lcom/android/server/pm/MoveInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object v0

    .line 272
    :cond_a
    new-instance v0, Lcom/android/server/pm/FileInstallArgs;

    invoke-direct {v0, p1}, Lcom/android/server/pm/FileInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object v0
.end method

.method private fixUpInstallReason(Ljava/lang/String;II)I
    .registers 7
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "installerUid"    # I
    .param p3, "installReason"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    .line 310
    return p3

    .line 312
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 313
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "ownerPackage":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 317
    return v1

    .line 321
    :cond_25
    if-ne p3, v1, :cond_29

    .line 326
    const/4 v1, 0x0

    return v1

    .line 331
    :cond_29
    return p3
.end method

.method private overrideInstallLocation(Ljava/lang/String;II)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "recommendedInstallLocation"    # I
    .param p3, "installLocation"    # I

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v0, :cond_1b

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 160
    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_1b

    .line 162
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid stage location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1b
    :goto_1b
    if-gez p2, :cond_22

    .line 166
    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result v0

    return v0

    .line 169
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 171
    :try_start_27
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 172
    .local v1, "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_42

    .line 174
    iget v2, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 176
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v3

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v4

    .line 174
    invoke-static {p3, p2, v2, v3, v4}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result v2

    move p2, v2

    .line 178
    .end local v1    # "installedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_5c

    .line 180
    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    move v1, v2

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    .line 182
    .local v1, "onInt":Z
    :goto_4d
    if-nez v1, :cond_5b

    .line 184
    const/4 v3, 0x2

    if-ne p2, v3, :cond_57

    .line 186
    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_5b

    .line 189
    :cond_57
    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    .line 192
    :cond_5b
    :goto_5b
    return v2

    .line 178
    .end local v1    # "onInt":Z
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private processInstallRequestsAsync(ZLjava/util/List;)V
    .registers 5
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method private processPendingInstall()V
    .registers 6

    .line 244
    invoke-direct {p0, p0}, Lcom/android/server/pm/InstallParams;->createInstallArgs(Lcom/android/server/pm/InstallParams;)Lcom/android/server/pm/InstallArgs;

    move-result-object v0

    .line 245
    .local v0, "args":Lcom/android/server/pm/InstallArgs;
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 246
    invoke-virtual {v0}, Lcom/android/server/pm/InstallArgs;->copyApk()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    .line 248
    :cond_f
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    if-ne v1, v2, :cond_2d

    .line 252
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressModeUserForData()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 253
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {v1, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 258
    :cond_2d
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    if-eqz v1, :cond_37

    .line 259
    iget v2, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->tryProcessInstallRequest(Lcom/android/server/pm/InstallArgs;I)V

    goto :goto_50

    .line 261
    :cond_37
    new-instance v1, Lcom/android/server/pm/PackageInstalledInfo;

    iget v3, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageInstalledInfo;-><init>(I)V

    .line 262
    .local v1, "res":Lcom/android/server/pm/PackageInstalledInfo;
    iget v3, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v3, v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    new-instance v3, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V

    .line 264
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 262
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/InstallParams;->processInstallRequestsAsync(ZLjava/util/List;)V

    .line 266
    .end local v1    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    :goto_50
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .registers 1

    .line 240
    invoke-direct {p0}, Lcom/android/server/pm/InstallParams;->processPendingInstall()V

    .line 241
    return-void
.end method

.method public handleStartCopy()V
    .registers 12

    .line 202
    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 203
    iput v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    .line 204
    return-void

    .line 206
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    iget-object v5, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 211
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget v2, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    move v2, v1

    goto :goto_28

    :cond_27
    move v2, v3

    .line 212
    .local v2, "isStaged":Z
    :goto_28
    if-eqz v2, :cond_41

    .line 213
    iget-object v4, p0, Lcom/android/server/pm/InstallParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v5, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    iget v7, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v4

    .line 215
    .local v4, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    .line 216
    if-eq v5, v1, :cond_41

    .line 217
    return-void

    .line 221
    .end local v4    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_41
    iget v4, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_48

    goto :goto_49

    :cond_48
    move v1, v3

    .line 222
    .local v1, "ephemeral":Z
    :goto_49
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_68

    if-eqz v1, :cond_68

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgLite for install: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_68
    iget-object v3, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v3, v3, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v3, :cond_87

    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_87

    .line 230
    iget-object v5, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v6, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget-object v7, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v8, v3, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 234
    :cond_87
    iget-object v3, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/InstallParams;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    .line 236
    return-void
.end method

.method public installStage()V
    .registers 6

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "installStage"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    .line 337
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 339
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 341
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 341
    const-string/jumbo v2, "queueInstall"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 344
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 349
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallParams;>;"
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, p0, p0, p1, v2}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;-><init>(Lcom/android/server/pm/InstallParams;Lcom/android/server/pm/InstallParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 352
    .local v1, "params":Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;
    const-string v2, "installStageMultiPackage"

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v3

    .line 353
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    .line 354
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 356
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 358
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 358
    const-string/jumbo v3, "queueInstall"

    invoke-static {v4, v5, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 360
    iget-object v2, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    return-void
.end method

.method synthetic lambda$processInstallRequestsAsync$0$com-android-server-pm-InstallParams(ZLjava/util/List;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "installRequests"    # Ljava/util/List;

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->processInstallRequests(ZLjava/util/List;)V

    .line 281
    return-void
.end method

.method public movePackage()V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "msg":Landroid/os/Message;
    const-string/jumbo v1, "movePackage"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    .line 366
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 368
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 370
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 370
    const-string/jumbo v2, "queueInstall"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 372
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
