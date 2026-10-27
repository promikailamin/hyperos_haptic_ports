.class public Lcom/android/server/pm/InstallingSession;
.super Ljava/lang/Object;
.source "InstallingSession.java"


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mDependencyInstallerEnabled:Z

.field public final mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

.field public final mDevelopmentInstallFlags:I

.field public final mDexoptCompilerFilter:Ljava/lang/String;

.field public final mForceQueryableOverride:Z

.field public final mHasAppMetadataFile:Z

.field public mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public final mMissingSharedLibraryCount:I

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public final mRequireUserAction:I

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public mTraceCookie:I

.field public mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;

.field public final mWarnings:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$3YxEVU-qWs8li-YcaWhP_DprQyQ(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W6cR9Ys08-5335--4Z-HKpTJitw(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$installApexPackages$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEcdI8cK9dzFagC4AcY_lMc7VaM(Lcom/android/server/pm/InstallingSession;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$zYUVT-RGxbD5-C2bJNfd8Hvzf3M(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processInstallRequests$1(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReturnCode(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartCopy(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessInstallRequests(Lcom/android/server/pm/InstallingSession;ZLjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;ZZILcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;Ljava/util/List;)V
    .registers 17

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p11, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 162
    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 163
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    const/4 p2, 0x0

    .line 164
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 165
    iget-object p2, p5, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget p6, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p0, p2, p8, p6}, Lcom/android/server/pm/InstallingSession;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 167
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 168
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 169
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 170
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 171
    iput-object p5, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 172
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 173
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 174
    invoke-virtual {p4}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    .line 175
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 176
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 177
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 178
    iget-boolean p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 179
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 p3, 0x0

    if-eqz p2, :cond_50

    .line 180
    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p2

    goto :goto_51

    :cond_50
    move p2, p3

    :goto_51
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 181
    iget-wide p5, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p5, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 182
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 183
    iput-object p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 184
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p5, 0x2

    if-ne p2, p5, :cond_63

    const/4 p3, 0x1

    :cond_63
    iput-boolean p3, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 185
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 186
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 187
    iget-boolean p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 188
    iput-object p10, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 189
    iput-boolean p12, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 190
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 191
    iput-boolean p13, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    .line 192
    iput p14, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    move-object p1, p15

    .line 193
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    move-object/from16 p2, p16

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mWarnings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .registers 13

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p12, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 119
    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 120
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 121
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 122
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 123
    iput p4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 124
    iput p5, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 125
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 126
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 127
    iput-object p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 129
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p2, 0x3

    .line 131
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 132
    sget-object p2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    const/4 p2, 0x0

    .line 133
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 134
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 135
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 136
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    const-wide/16 p3, -0x1

    .line 137
    iput-wide p3, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 138
    iput p10, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 139
    iput-object p11, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 140
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    const/4 p3, -0x1

    .line 141
    iput p3, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 142
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 143
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 144
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 145
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 146
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 147
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    .line 148
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    .line 149
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mWarnings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    .line 572
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 573
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveToUuid()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMovePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveFromCodePath()Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 576
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->removeCodePath(Ljava/io/File;)V

    return-void
.end method

.method public final copyApk(Lcom/android/server/pm/InstallRequest;)I
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-nez v0, :cond_9

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0

    .line 324
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0
.end method

.method public final copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I
    .registers 11

    .line 329
    const-string v0, "Copying native libraries failed"

    const-string v1, "Failed to copy package"

    const-string v2, "PackageManager"

    const-string v3, "copyApk"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 331
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v6, v3, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_21

    .line 335
    iget-object p0, v3, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    .line 384
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v7

    :catchall_1e
    move-exception p0

    goto/16 :goto_bb

    .line 340
    :cond_21
    :try_start_21
    iget v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_29

    move v3, v7

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 342
    :goto_2a
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v8, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 343
    invoke-virtual {v6, v8, v3}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 342
    invoke-virtual {p1, v3}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_37} :catch_9c
    .catchall {:try_start_21 .. :try_end_37} :catchall_1e

    .line 352
    :try_start_37
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 353
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v3

    .line 352
    invoke-static {p0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    if-eq p0, v7, :cond_53

    .line 356
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p1, p0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_1e

    .line 384
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 362
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    .line 363
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v6

    const-string v8, "lib"

    invoke-direct {v3, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_1e

    const/4 v6, 0x0

    .line 366
    :try_start_6b
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v6

    .line 368
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-static {v6, v3, v8, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    if-eq p0, v7, :cond_91

    .line 371
    const-string v1, "Failed to copy native libraries"

    invoke-virtual {p1, p0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_82} :catch_85
    .catchall {:try_start_6b .. :try_end_82} :catchall_83

    goto :goto_91

    :catchall_83
    move-exception p0

    goto :goto_98

    :catch_85
    move-exception v1

    .line 375
    :try_start_86
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    .line 376
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_83

    .line 379
    :cond_91
    :goto_91
    :try_start_91
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_1e

    .line 384
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 379
    :goto_98
    :try_start_98
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 380
    throw p0

    :catch_9c
    move-exception p0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create copy file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string p0, "Failed to create copy file"

    const/4 v0, -0x4

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_98 .. :try_end_b7} :catchall_1e

    .line 384
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :goto_bb
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 385
    throw p0
.end method

.method public final copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I
    .registers 12

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1
    :try_end_8
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_8} :catch_25

    .line 394
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v7, v0, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v9, v0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_47

    if-eqz v1, :cond_28

    .line 397
    :try_start_21
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_24
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_28

    :catch_25
    move-exception v0

    move-object p0, v0

    goto :goto_54

    .line 405
    :cond_28
    :goto_28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 407
    invoke-static {p0}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_53

    .line 393
    :try_start_4b
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v0

    :try_start_50
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw p0
    :try_end_54
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_50 .. :try_end_54} :catch_25

    :goto_54
    const/4 v0, -0x2

    .line 399
    const-string v1, "Failed to move app"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    .line 401
    const-string p1, "PackageManager"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x6e

    return p0
.end method

.method public final fixUpInstallReason(Ljava/lang/String;II)I
    .registers 6

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_29

    .line 441
    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 442
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 441
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_25

    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    return p2

    :cond_25
    if-ne p3, p2, :cond_29

    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    return p3
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final handleReturnCode(Lcom/android/server/pm/InstallRequest;)V
    .registers 2

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->processPendingInstall(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public final handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .registers 12

    .line 257
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 258
    iput v2, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    return-void

    .line 261
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 266
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v1

    if-eqz v3, :cond_3c

    .line 268
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-wide v4, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 270
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v1, v2, :cond_3c

    .line 272
    const-string p0, "Failed to verify version code"

    invoke-virtual {p1, v1, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void

    .line 277
    :cond_3c
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_44

    move v1, v2

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    .line 278
    :goto_45
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_62

    if-eqz v1, :cond_62

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgLite for install: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_62
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v3, v1, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v3, :cond_7d

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x1

    if-ne v5, v3, :cond_7d

    .line 286
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v7, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 290
    :cond_7d
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/pm/InstallingSession;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v0, v2, :cond_90

    .line 293
    const-string p0, "Failed to override installation location"

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :cond_90
    return-void
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .registers 9

    .line 590
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5c

    .line 593
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bb

    const/4 v0, 0x0

    .line 597
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 599
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDevelopmentInstallFlags()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v0

    .line 604
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 605
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 611
    array-length v6, v5

    if-ne v6, v1, :cond_69

    .line 617
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v4
    :try_end_36
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1f .. :try_end_36} :catch_5a

    .line 618
    :try_start_36
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v0, v5, v0

    invoke-virtual {v6, v0, v3}, Lcom/android/server/pm/ApexManager;->installPackage(Ljava/io/File;Z)Landroid/apex/ApexInfo;

    move-result-object v0

    .line 625
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexInfo(Landroid/apex/ApexInfo;)V

    .line 626
    iget-object v0, v0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_5d

    if-eqz v4, :cond_5c

    .line 629
    :try_start_56
    invoke-virtual {v4}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_59
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_56 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p1

    goto :goto_aa

    :cond_5c
    :goto_5c
    return-void

    :catchall_5d
    move-exception p1

    if-eqz v4, :cond_68

    .line 617
    :try_start_60
    invoke-virtual {v4}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v0

    :try_start_65
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    throw p1

    .line 612
    :cond_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected exactly one .apex file under "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " got: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x25

    .line 612
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1

    .line 607
    :cond_8e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a directory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x24

    .line 607
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1
    :try_end_aa
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_65 .. :try_end_aa} :catch_5a

    .line 631
    :goto_aa
    const-string v0, "APEX installation failed"

    invoke-virtual {v2, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 633
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 635
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 636
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 594
    :cond_bb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final installApexPackagesTraced(Ljava/util/List;)V
    .registers 5

    const-wide/32 v0, 0x40000

    .line 582
    :try_start_3
    const-string v2, "installApexPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackages(Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 585
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 586
    throw p0
.end method

.method public installStage()V
    .registers 5

    .line 464
    const-string v0, "installStage"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 466
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 465
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 467
    const-string/jumbo v0, "queueInstall"

    .line 468
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 467
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .registers 6

    .line 474
    new-instance v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 475
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;-><init>(Lcom/android/server/pm/InstallingSession;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 476
    const-string p1, "installStageMultiPackage"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 480
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 479
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 481
    const-string/jumbo p1, "queueInstall"

    .line 482
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 481
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 483
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$installApexPackages$2(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x1

    .line 627
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$processInstallRequests$1(Ljava/util/List;)V
    .registers 2

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackagesTraced(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    .line 314
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 316
    :goto_7
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 314
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public movePackage()V
    .registers 5

    .line 487
    const-string/jumbo v0, "movePackage"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 489
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 488
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 490
    const-string/jumbo v0, "queueInstall"

    .line 491
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 490
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final overrideInstallLocation(Ljava/lang/String;II)I
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v1, :cond_19

    .line 215
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 216
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_19

    .line 218
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid stage location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    if-gez p2, :cond_20

    .line 222
    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result p0

    return p0

    .line 225
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 226
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_2e

    const/4 v0, 0x0

    goto :goto_32

    .line 227
    :cond_2e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    :goto_32
    if-eqz v0, :cond_42

    .line 230
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 232
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    .line 230
    invoke-static {p3, p2, v1, p1, v0}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result p2

    .line 235
    :cond_42
    iget p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 p3, p1, 0x10

    if-eqz p3, :cond_49

    goto :goto_55

    :cond_49
    const/4 p3, 0x2

    if-ne p2, p3, :cond_51

    and-int/lit8 p1, p1, -0x11

    .line 241
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_55

    :cond_51
    or-int/lit8 p1, p1, 0x10

    .line 244
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    :goto_55
    const/4 p0, 0x1

    return p0
.end method

.method public final processApkInstallRequests(ZLjava/util/List;)V
    .registers 6

    if-nez p1, :cond_34

    .line 558
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 559
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_6

    .line 563
    :cond_1d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 564
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_21

    :cond_33
    return-void

    .line 567
    :cond_34
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/pm/PackageManagerService;->installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    return-void
.end method

.method public final processInstallRequests(ZLjava/util/List;)V
    .registers 9

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 523
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    .line 524
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 526
    :cond_27
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 531
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_40

    .line 533
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 536
    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    if-eqz p1, :cond_58

    .line 540
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    const-string p0, "installApexPackages"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_58
    const/4 p1, 0x0

    .line 547
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 548
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 553
    :cond_65
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public final processPendingInstall(Lcom/android/server/pm/InstallRequest;)V
    .registers 5

    .line 302
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApk(Lcom/android/server/pm/InstallRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 305
    :cond_b
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-ne v0, v1, :cond_23

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 307
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 309
    :cond_23
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    if-eqz v0, :cond_30

    .line 311
    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->tryProcessInstallRequest(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 314
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setTraceCookie(I)V
    .registers 2

    .line 516
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    return-void
.end method

.method public final setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    return-object p0
.end method

.method public final start()V
    .registers 5

    .line 501
    const-string/jumbo v0, "queueInstall"

    .line 502
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 501
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 503
    const-string/jumbo v0, "startInstall"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 504
    new-instance v0, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    .line 507
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
