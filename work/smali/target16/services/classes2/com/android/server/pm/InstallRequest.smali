.class public final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# instance fields
.field public mApexInfo:Landroid/apex/ApexInfo;

.field public mApexModuleName:Ljava/lang/String;

.field public mAppId:I

.field public mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field public mClearCodeCache:Z

.field public final mDependencyInstallerEnabled:Z

.field public final mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

.field public mDexoptStatus:I

.field public mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public mExistingPackageName:Ljava/lang/String;

.field public mFirstTimeBroadcastInstantUserIds:[I

.field public mFirstTimeBroadcastUserIds:[I

.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public final mHasAppMetadataFileFromInstaller:Z

.field public final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field public mInstallerUidForInstallExisting:I

.field public mInternalErrorCode:I

.field public mIsInstallForUsers:Z

.field public mIsInstallInherit:Z

.field public mKeepArtProfile:Z

.field public mLibraryConsumers:Ljava/util/ArrayList;

.field public final mMissingSharedLibraryCount:I

.field public mName:Ljava/lang/String;

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field public mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

.field public mParseFlags:I

.field public mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field public mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPostInstallRunnable:Ljava/lang/Runnable;

.field public mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReplace:Z

.field public final mRequireUserAction:I

.field public mResponsibleInstallerTitles:Landroid/util/SparseArray;

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mScanFlags:I

.field public mScanResult:Lcom/android/server/pm/ScanResult;

.field public final mSessionId:I

.field public mSystem:Z

.field public mUpdateBroadcastInstantUserIds:[I

.field public mUpdateBroadcastUserIds:[I

.field public final mUserId:I

.field public final mWarnings:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IILcom/android/server/pm/pkg/AndroidPackage;[ILjava/lang/Runnable;IIZ)V
    .registers 11

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 154
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 156
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 158
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 160
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 168
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 206
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 208
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 209
    iput-object p3, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 210
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 211
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance p2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {p2, p0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 p2, 0x1

    .line 213
    iput-boolean p2, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    .line 214
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 215
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 216
    iput p6, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 217
    iput p7, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 218
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 219
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 221
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V
    .registers 9

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 154
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 156
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 158
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 160
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 168
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    if-eqz p4, :cond_1e

    .line 230
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_20

    .line 233
    :cond_1e
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_20
    const/4 p4, 0x0

    .line 235
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 236
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 237
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 238
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 239
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 240
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 241
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 242
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 243
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 244
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 245
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 246
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 247
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    .line 248
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 179
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 100
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 154
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 156
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 158
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 160
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 168
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v2, 0x0

    .line 172
    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 180
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 181
    new-instance v3, Lcom/android/server/pm/InstallArgs;

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget v8, v1, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 183
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v13, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v15, v1, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    move/from16 v16, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v19, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    move/from16 v20, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move/from16 v21, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    move/from16 v22, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    move/from16 v23, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move/from16 v24, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move/from16 v25, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v3 .. v26}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 190
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 191
    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 192
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    .line 193
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 194
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 195
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 196
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 197
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 198
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    .line 199
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/pm/InstallingSession;->mWarnings:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .registers 2

    .line 953
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public assertScanResultExists()V
    .registers 2

    .line 672
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    if-nez p0, :cond_1c

    .line 674
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p0, :cond_14

    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    if-nez p0, :cond_14

    .line 677
    const-string p0, "PackageManager"

    const-string v0, "ScanResult is null and it should not happen"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 675
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ScanResult cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    return-void
.end method

.method public closeFreezer()V
    .registers 1

    .line 728
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz p0, :cond_7

    .line 729
    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_7
    return-void
.end method

.method public getAbiOverride()Ljava/lang/String;
    .registers 1

    .line 295
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public getAllowlistedRestrictedPermissions()Ljava/util/List;
    .registers 1

    .line 486
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getApexInfo()Landroid/apex/ApexInfo;
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-object p0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()I
    .registers 1

    .line 471
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return p0
.end method

.method public getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object p0
.end method

.method public getAutoRevokePermissionsMode()I
    .registers 1

    .line 490
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x3

    return p0

    .line 491
    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    return p0
.end method

.method public getCodeFile()Ljava/io/File;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz p0, :cond_d

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataLoaderType()I
    .registers 1

    .line 422
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    return p0
.end method

.method public getDeveloperVerificationStatus()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    .registers 1

    .line 1099
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    return-object p0
.end method

.method public getDevelopmentInstallFlags()I
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    return p0
.end method

.method public getDexoptCompilerFilter()Ljava/lang/String;
    .registers 1

    .line 720
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getDynamicSharedLibraryInfos()Ljava/util/List;
    .registers 1

    .line 619
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 620
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    return-object p0
.end method

.method public getFirstTimeBroadcastInstantUserIds()[I
    .registers 1

    .line 702
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    return-object p0
.end method

.method public getFirstTimeBroadcastUserIds()[I
    .registers 1

    .line 698
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    return-object p0
.end method

.method public getInstallFlags()I
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    return p0
.end method

.method public getInstallReason()I
    .registers 1

    .line 356
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    return p0
.end method

.method public getInstallScenario()I
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 1

    .line 406
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz p0, :cond_b

    .line 412
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallerPackageUid()I
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz v0, :cond_b

    .line 417
    iget p0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    return p0

    .line 418
    :cond_b
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    return p0
.end method

.method public getInternalErrorCode()I
    .registers 1

    .line 303
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    return p0
.end method

.method public getLibraryConsumers()Ljava/util/ArrayList;
    .registers 1

    .line 481
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMissingSharedLibraryCount()I
    .registers 1

    .line 1091
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return p0
.end method

.method public getMoveFromCodePath()Ljava/lang/String;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_b

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMovePackageName()Ljava/lang/String;
    .registers 1

    .line 323
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_b

    .line 324
    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMoveToUuid()Ljava/lang/String;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_b

    .line 318
    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNewUsers()[I
    .registers 1

    .line 462
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    return-object p0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object p0
.end method

.method public getOldCodeFile()Ljava/io/File;
    .registers 1

    .line 335
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    if-eqz p0, :cond_d

    .line 336
    invoke-virtual {p0}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrigPackage()Ljava/lang/String;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigPermission()Ljava/lang/String;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginInfo()Lcom/android/server/pm/OriginInfo;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    return-object p0
.end method

.method public getOriginUri()Landroid/net/Uri;
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getOriginUsers()[I
    .registers 1

    .line 467
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-object p0
.end method

.method public getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 559
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getPackageLite()Landroid/content/pm/parsing/PackageLite;
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-object p0
.end method

.method public getParseFlags()I
    .registers 1

    .line 513
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    return p0
.end method

.method public getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 505
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public getPermissionStates()Landroid/util/ArrayMap;
    .registers 1

    .line 476
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getPkg()Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;
    .registers 1

    .line 949
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    return-object p0
.end method

.method public getPreviousAppId()I
    .registers 1

    .line 658
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 659
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget p0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    return p0
.end method

.method public getRealPackageName()Ljava/lang/String;
    .registers 1

    .line 593
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 594
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-object p0
.end method

.method public getRequireUserAction()I
    .registers 1

    .line 687
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return p0
.end method

.method public getResponsibleInstallerTitles()Landroid/util/SparseArray;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getReturnCode()I
    .registers 1

    .line 299
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return p0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getScanFlags()I
    .registers 1

    .line 518
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    return p0
.end method

.method public getScanRequestDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 588
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 1

    .line 528
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 529
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 569
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 570
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 575
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 576
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 581
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 582
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 639
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 640
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .registers 1

    .line 607
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 608
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getSessionId()I
    .registers 1

    .line 683
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    return p0
.end method

.method public getSignatureSchemeVersion()I
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 427
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p0

    return p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 1

    .line 432
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_7

    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .registers 1

    .line 613
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 614
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getTraceCookie()I
    .registers 1

    .line 380
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    return p0
.end method

.method public getTraceMethod()Ljava/lang/String;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateBroadcastInstantUserIds()[I
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    return-object p0
.end method

.method public getUpdateBroadcastUserIds()[I
    .registers 1

    .line 706
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 340
    new-instance v0, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getUserId()I
    .registers 1

    .line 344
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    return p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .registers 1

    .line 715
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasAppMetadataFile()Z
    .registers 1

    .line 392
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    return p0
.end method

.method public hasPostInstallRunnable()Z
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isAllNewUsers()Z
    .registers 1

    .line 695
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    if-eqz p0, :cond_a

    array-length p0, p0

    if-nez p0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method

.method public isApplicationEnabledSettingPersistent()Z
    .registers 1

    .line 598
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    return p0
.end method

.method public isArchived()Z
    .registers 1

    .line 388
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation(I)Z

    move-result p0

    return p0
.end method

.method public isClearCodeCache()Z
    .registers 1

    .line 533
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    return p0
.end method

.method public isDependencyInstallerEnabled()Z
    .registers 1

    .line 1095
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    return p0
.end method

.method public isExistingSettingCopied()Z
    .registers 1

    .line 644
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 645
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean p0, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    return p0
.end method

.method public isForceQueryableOverride()Z
    .registers 1

    .line 602
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallExistingForUser()Z
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallForUsers()Z
    .registers 1

    .line 549
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    return p0
.end method

.method public isInstallFromAdb()Z
    .registers 1

    .line 553
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_c

    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallInherit()Z
    .registers 1

    .line 545
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    return p0
.end method

.method public isInstallMove()Z
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallReplace()Z
    .registers 1

    .line 537
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    return p0
.end method

.method public isInstallSystem()Z
    .registers 1

    .line 541
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    return p0
.end method

.method public isInstantInstall()Z
    .registers 1

    .line 668
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isKeepArtProfile()Z
    .registers 1

    .line 1087
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    return p0
.end method

.method public isRollback()Z
    .registers 2

    .line 456
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_b

    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isUpdate()Z
    .registers 1

    .line 384
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public needsNewAppId()Z
    .registers 2

    .line 653
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 654
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget p0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onCommitFinished()V
    .registers 2

    .line 999
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x4

    .line 1000
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8
    return-void
.end method

.method public onCommitStarted()V
    .registers 2

    .line 993
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x4

    .line 994
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_8
    return-void
.end method

.method public onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    .registers 7

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isInstallFromAdb()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1033
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1034
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 1036
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 1037
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getExternalProfileErrors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1040
    :cond_3b
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred during dexopt when processing external profiles:\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  "

    .line 1042
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallRequest;->addWarning(Ljava/lang/String;)V

    .line 1047
    :cond_5b
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_9f

    .line 1048
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mDexoptStatus:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_9f

    .line 1051
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 1053
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 1054
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_87

    .line 1057
    :cond_99
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(IJ)V

    :cond_9f
    return-void
.end method

.method public onFreezeCompleted()V
    .registers 2

    .line 1077
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x6

    .line 1078
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8
    return-void
.end method

.method public onFreezeStarted()V
    .registers 2

    .line 1071
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x6

    .line 1072
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_8
    return-void
.end method

.method public onInstallCompleted()V
    .registers 3

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1064
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_e

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallSucceed()V

    :cond_e
    return-void
.end method

.method public onPrepareFinished()V
    .registers 2

    .line 963
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 964
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8
    return-void
.end method

.method public onPrepareStarted()V
    .registers 2

    .line 957
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 958
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_8
    return-void
.end method

.method public onReconcileFinished()V
    .registers 2

    .line 987
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x3

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8
    return-void
.end method

.method public onReconcileStarted()V
    .registers 2

    .line 981
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x3

    .line 982
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_8
    return-void
.end method

.method public onRestoreFinished()V
    .registers 2

    .line 1011
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x7

    .line 1012
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8
    return-void
.end method

.method public onRestoreStarted()V
    .registers 2

    .line 1005
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x7

    .line 1006
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_8
    return-void
.end method

.method public onScanFinished()V
    .registers 2

    .line 975
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    .line 976
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8
    return-void
.end method

.method public onScanStarted()V
    .registers 2

    .line 969
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    .line 970
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_8
    return-void
.end method

.method public onWaitDexoptFinished()V
    .registers 2

    .line 1023
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 1024
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_9
    return-void
.end method

.method public onWaitDexoptStarted()V
    .registers 2

    .line 1017
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 1018
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_9
    return-void
.end method

.method public final populateBroadcastUsers()V
    .registers 7

    .line 900
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 901
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 902
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 903
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 904
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 906
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isAllNewUsers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 909
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v2, v0

    :goto_17
    if-ge v1, v2, :cond_82

    aget v3, v0, v1

    .line 910
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v4, v4, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 911
    invoke-interface {v4, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 913
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 914
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_3a

    .line 916
    :cond_32
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 917
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 923
    :cond_3d
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v2, v0

    :goto_40
    if-ge v1, v2, :cond_82

    aget v3, v0, v1

    .line 924
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    .line 925
    iget-object v5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 926
    invoke-interface {v5, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-nez v4, :cond_6c

    if-eqz v5, :cond_63

    .line 929
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 930
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_7f

    .line 932
    :cond_63
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 933
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    goto :goto_7f

    :cond_6c
    if-eqz v5, :cond_77

    .line 937
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 938
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    goto :goto_7f

    .line 940
    :cond_77
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 941
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_82
    return-void
.end method

.method public runPostInstallRunnable()V
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    .line 743
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public setApexInfo(Landroid/apex/ApexInfo;)V
    .registers 2

    .line 785
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)V
    .registers 2

    .line 789
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-void
.end method

.method public setAppId(I)V
    .registers 2

    .line 802
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return-void
.end method

.method public setCodeFile(Ljava/io/File;)V
    .registers 2

    .line 748
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_6

    .line 749
    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    :cond_6
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .registers 3

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 755
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 756
    const-string p1, "PackageManager"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_12

    .line 758
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    :cond_12
    return-void
.end method

.method public setError(Lcom/android/server/pm/PackageManagerException;)V
    .registers 3

    const/4 v0, 0x0

    .line 763
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .registers 4

    .line 767
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    .line 768
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 769
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 770
    const-string v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_1b

    .line 772
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    :cond_1b
    return-void
.end method

.method public setFreezer(Lcom/android/server/pm/PackageFreezer;)V
    .registers 2

    .line 827
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    return-void
.end method

.method public setKeepArtProfile(Z)V
    .registers 2

    .line 1083
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    return-void
.end method

.method public setLibraryConsumers(Ljava/util/ArrayList;)V
    .registers 2

    .line 835
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 819
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNewUsers([I)V
    .registers 2

    .line 806
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 807
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->populateBroadcastUsers()V

    return-void
.end method

.method public setOriginPackage(Ljava/lang/String;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-void
.end method

.method public setOriginPermission(Ljava/lang/String;)V
    .registers 2

    .line 815
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-void
.end method

.method public setOriginUsers([I)V
    .registers 2

    .line 823
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-void
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-void
.end method

.method public setPostInstallRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 734
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setPrepareResult(ZIILcom/android/server/pm/pkg/PackageState;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    .line 843
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 844
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 845
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    if-eqz p4, :cond_d

    .line 847
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackageName:Ljava/lang/String;

    .line 848
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 849
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 850
    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    .line 851
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 852
    iput-object p9, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    .line 853
    iput-object p10, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setRemovedAppId(I)V
    .registers 2

    .line 888
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_9

    .line 889
    iput p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    const/4 p1, 0x1

    .line 890
    iput-boolean p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    :cond_9
    return-void
.end method

.method public setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-void
.end method

.method public setResponsibleInstallerTitles(Landroid/util/SparseArray;)V
    .registers 2

    .line 794
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    return-void
.end method

.method public setReturnCode(I)V
    .registers 2

    .line 777
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return-void
.end method

.method public setReturnMessage(Ljava/lang/String;)V
    .registers 2

    .line 781
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-void
.end method

.method public setScanResult(Lcom/android/server/pm/ScanResult;)V
    .registers 2

    .line 857
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    return-void
.end method

.method public setScannedPackageSettingAppId(I)V
    .registers 2

    .line 861
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 862
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setScannedPackageSettingFirstInstallTime(J)V
    .registers 7

    .line 880
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 881
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-eqz v0, :cond_28

    .line 882
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 883
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    :cond_28
    return-void
.end method

.method public setScannedPackageSettingFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)V
    .registers 3

    .line 867
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    if-nez p1, :cond_6

    return-void

    .line 871
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setScannedPackageSettingLastUpdateTime(J)V
    .registers 3

    .line 875
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 876
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public updateAllCodePaths(Ljava/util/List;)V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_9

    .line 625
    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 627
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_12

    .line 628
    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 630
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-eqz p0, :cond_2c

    .line 631
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    .line 632
    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    goto :goto_1c

    :cond_2c
    return-void
.end method
