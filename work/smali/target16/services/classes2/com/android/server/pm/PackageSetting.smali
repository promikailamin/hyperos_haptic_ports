.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# instance fields
.field public categoryOverride:I

.field public installSource:Lcom/android/server/pm/InstallSource;

.field public keySetData:Lcom/android/server/pm/PackageKeySetData;

.field public lastUpdateTime:J

.field public legacyNativeLibraryPath:Ljava/lang/String;

.field public mAppId:I

.field public mAppMetadataFilePath:Ljava/lang/String;

.field public mAppMetadataSource:I

.field public mBaseRevisionCode:I

.field public mBooleans:I

.field public mCpuAbiOverride:Ljava/lang/String;

.field public mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

.field public mDomainSetId:Ljava/util/UUID;

.field public mLastModifiedTime:J

.field public mLoadingCompletedTime:J

.field public mLoadingProgress:F

.field public mName:Ljava/lang/String;

.field public mOldPaths:Ljava/util/LinkedHashSet;

.field public mPageSizeAppCompatFlags:I

.field public mPath:Ljava/io/File;

.field public mPathString:Ljava/lang/String;

.field public mPrimaryCpuAbi:Ljava/lang/String;

.field public mRealName:Ljava/lang/String;

.field public mRestrictUpdateHash:[B

.field public mSecondaryCpuAbi:Ljava/lang/String;

.field public mSharedUserAppId:I

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplitNames:[Ljava/lang/String;

.field public mSplitRevisionCodes:[I

.field public mTargetSdkVersion:I

.field public mUnalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

.field public final mUserStates:Landroid/util/SparseArray;

.field public mimeGroups:Ljava/util/Map;

.field public pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

.field public final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field public signatures:Lcom/android/server/pm/PackageSignatures;

.field public usesSdkLibraries:[Ljava/lang/String;

.field public usesSdkLibrariesOptional:[Z

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 326
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 5

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 214
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 229
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 242
    new-instance v1, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 251
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    if-eqz p2, :cond_2d

    .line 334
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void

    .line 336
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V
    .registers 7

    .line 298
    invoke-direct {p0, p4, p5}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 214
    new-instance p4, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {p4}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 218
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    const/4 p4, -0x1

    .line 229
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    const/4 p4, 0x0

    .line 231
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 242
    new-instance p5, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {p5, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object p5, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 251
    iput p4, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 299
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 300
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 302
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 303
    new-instance p1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 304
    sget-object p1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 305
    iput-object p6, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 306
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 288
    new-instance v0, Lcom/android/server/pm/PackageSetting$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PackageSetting$1;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public static writeArchiveState(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/pm/pkg/ArchiveState;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-wide v0, 0x10b0000000cL

    .line 1396
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1397
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v4, 0x10900000002L

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    const-wide v6, 0x20b00000001L

    .line 1398
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10900000001L

    .line 1400
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1403
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x10900000004L

    .line 1401
    invoke-virtual {p0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1404
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_5f

    .line 1406
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1405
    invoke-virtual {p0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1408
    :cond_5f
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 1410
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    .line 1409
    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1412
    :cond_79
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_14

    .line 1416
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object p1

    .line 1415
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1417
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public addDisabledComponent(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1230
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1231
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public addEnabledComponent(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1236
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1237
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 5

    .line 1762
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1763
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1766
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1f

    .line 1768
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1769
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 1433
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_b

    .line 1434
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 1436
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public clearPageSizeAppCompatFlags()Lcom/android/server/pm/PackageSetting;
    .registers 2

    const/4 v0, 0x0

    .line 1653
    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public final copyMimeGroups(Ljava/util/Map;)V
    .registers 7

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 704
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-void

    .line 708
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 709
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 710
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_38

    .line 713
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 715
    :cond_38
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_43
    return-void
.end method

.method public copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 8

    .line 830
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 831
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    .line 832
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 833
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 834
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 835
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 836
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 837
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 838
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 839
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 840
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 841
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 842
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_36

    move-object v0, v1

    goto :goto_3d

    :cond_36
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_3d
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    .line 843
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 844
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 845
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 846
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 847
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 848
    iget-wide v2, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 849
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 850
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 851
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 852
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 853
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 854
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 855
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 856
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 857
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 858
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    if-nez v0, :cond_86

    move-object v0, v1

    goto :goto_8c

    .line 859
    :cond_86
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_8c
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 860
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 861
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-eqz v0, :cond_9e

    .line 862
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_9f

    :cond_9e
    move-object v0, v1

    :goto_9f
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 863
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-eqz v0, :cond_ab

    .line 864
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_ac

    :cond_ab
    move-object v0, v1

    :goto_ac
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 866
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_ba

    .line 867
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_bb

    :cond_ba
    move-object v0, v1

    .line 868
    :goto_bb
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 869
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-eqz v0, :cond_c7

    .line 870
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_c8

    :cond_c7
    move-object v0, v1

    .line 871
    :goto_c8
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 872
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-eqz v0, :cond_d4

    .line 873
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    goto :goto_d5

    :cond_d4
    move-object v0, v1

    .line 874
    :goto_d5
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 876
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_e3

    .line 877
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_e4

    :cond_e3
    move-object v0, v1

    .line 878
    :goto_e4
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 879
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_f0

    .line 880
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_f1

    :cond_f0
    move-object v0, v1

    .line 881
    :goto_f1
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    const/4 v0, 0x0

    .line 883
    :goto_f4
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_12f

    if-eqz p2, :cond_116

    .line 885
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 886
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    .line 885
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12c

    .line 888
    :cond_116
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 889
    invoke-virtual {v2, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setWatchable(Lcom/android/server/utils/Watchable;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 890
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_12c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    .line 894
    :cond_12f
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 895
    iget p2, p1, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    iput p2, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 896
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->mUnalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    if-eqz p2, :cond_144

    .line 897
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, [Lcom/android/internal/content/LibraryAlignmentInfo;

    .line 898
    :cond_144
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUnalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    .line 900
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public disableComponentLPw(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1253
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1254
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1255
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1256
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_22

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_22
    return p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .registers 16

    .line 349
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_b
    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 351
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000003L

    .line 352
    iget-wide v7, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000006L

    .line 353
    iget-wide v7, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-wide v5, 0x10900000007L

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_bc

    const-wide v5, 0x10900000004L

    .line 357
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v5, 0x20b00000008L

    .line 359
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 360
    const-string v0, "base"

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 362
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const/4 v0, 0x0

    .line 364
    :goto_68
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_91

    .line 365
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 366
    iget-object v9, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {p1, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 367
    iget-object v9, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 368
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object v9

    aget v9, v9, v0

    .line 367
    invoke-virtual {p1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 369
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_91
    const-wide v3, 0x10b0000000aL

    .line 372
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 373
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 379
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_bc
    const-wide v0, 0x10800000002L

    .line 381
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x20b00000009L

    .line 382
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x20b0000000cL

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    .line 383
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageSetting;->writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    .line 384
    invoke-virtual {v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableComponentLPw(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1242
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1243
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1244
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1245
    :cond_14
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_22

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_22
    return p1
.end method

.method public getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 1

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    return-object p0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .registers 1

    .line 1633
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getApexModuleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppId()I
    .registers 1

    .line 2015
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    return p0
.end method

.method public getAppMetadataFilePath()Ljava/lang/String;
    .registers 1

    .line 2117
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAppMetadataSource()I
    .registers 1

    .line 2122
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    return p0
.end method

.method public getBaseRevisionCode()I
    .registers 1

    .line 652
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    return p0
.end method

.method public final getBoolean(I)Z
    .registers 2

    .line 132
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public getCategoryOverride()I
    .registers 1

    .line 2102
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    return p0
.end method

.method public getCeDataInode(I)J
    .registers 2

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getCpuAbiOverride()Ljava/lang/String;
    .registers 1

    .line 2061
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 3

    .line 1299
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 1300
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 1301
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    const/4 p0, 0x1

    return p0

    .line 1303
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 1304
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x2

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public getDeDataInode(I)J
    .registers 2

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide p0

    return-wide p0
.end method

.method public getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    .registers 1

    .line 2137
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    return-object p0
.end method

.method public getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .registers 2

    .line 1184
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getDomainSetId()Ljava/util/UUID;
    .registers 1

    .line 2112
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    return-object p0
.end method

.method public getEnabled(I)I
    .registers 2

    .line 941
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    return p0
.end method

.method public getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .registers 2

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getErrorMessageForLib(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    and-int/lit8 p0, p3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_8

    move p0, v1

    goto :goto_9

    :cond_8
    move p0, v0

    :goto_9
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_e

    move v0, v1

    :cond_e
    if-eqz p0, :cond_1e

    if-eqz v0, :cond_1e

    const p0, 0x1040741

    .line 1958
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    if-eqz p0, :cond_2c

    const p0, 0x1040744

    .line 1963
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    if-eqz v0, :cond_3a

    const p0, 0x1040747

    .line 1968
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    const p0, 0x104074c

    .line 1971
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHiddenApiEnforcementPolicy()I
    .registers 2

    .line 1824
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result p0

    return p0
.end method

.method public getInstallReason(I)I
    .registers 2

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result p0

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 1

    .line 2086
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public getInstalled(I)Z
    .registers 2

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    return p0
.end method

.method public getInstantApp(I)Z
    .registers 2

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    return p0
.end method

.method public getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .registers 1

    .line 2081
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    return-object p0
.end method

.method public getLastModifiedTime()J
    .registers 3

    .line 2066
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 2071
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLegacyNativeLibraryPath()Ljava/lang/String;
    .registers 1

    .line 2000
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 1

    .line 763
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingCompletedTime()J
    .registers 3

    .line 2056
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    return-wide v0
.end method

.method public getLoadingProgress()F
    .registers 1

    .line 2051
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    return p0
.end method

.method public getMimeGroups()Ljava/util/Map;
    .registers 2

    .line 1539
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 1540
    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 2005
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNotInstalledUserIds()[I
    .registers 5

    .line 1317
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1318
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1, v0}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_28

    .line 1320
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1321
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1324
    :cond_28
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getOldPaths()Ljava/util/LinkedHashSet;
    .registers 1

    .line 2046
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public bridge synthetic getOldPaths()Ljava/util/Set;
    .registers 1

    .line 97
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 3

    .line 916
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_14

    .line 918
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 919
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 1546
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPageSizeAppCompatFlags()I
    .registers 1

    .line 1684
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    return p0
.end method

.method public getPageSizeCompatWarningMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    .line 1895
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v2

    :goto_12
    const/4 v5, 0x0

    if-nez v1, :cond_5f

    if-eqz v4, :cond_18

    goto :goto_5f

    :cond_18
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_25

    move v0, v3

    goto :goto_26

    :cond_25
    move v0, v2

    .line 1909
    :goto_26
    sget v4, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v4}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    cmp-long v4, v6, v8

    if-nez v4, :cond_33

    goto :goto_34

    :cond_33
    move v3, v2

    .line 1910
    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1912
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/android/server/pm/PackageSetting;->getWarningMessage(Landroid/content/Context;ZZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    return-object v5

    .line 1917
    :cond_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUnalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    if-eqz v0, :cond_5a

    .line 1920
    array-length v1, v0

    :goto_48
    if-ge v2, v1, :cond_5a

    aget-object v3, v0, v2

    .line 1921
    iget-object v5, v3, Lcom/android/internal/content/LibraryAlignmentInfo;->libraryName:Ljava/lang/String;

    iget v3, v3, Lcom/android/internal/content/LibraryAlignmentInfo;->errorCode:I

    invoke-virtual {p0, p1, v5, v3}, Lcom/android/server/pm/PackageSetting;->getErrorMessageForLib(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1922
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1926
    :cond_5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    :goto_5f
    return-object v5
.end method

.method public getPath()Ljava/io/File;
    .registers 1

    .line 2036
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    return-object p0
.end method

.method public getPathString()Ljava/lang/String;
    .registers 1

    .line 2041
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    return-object p0
.end method

.method public getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    .registers 1

    .line 2028
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object p0
.end method

.method public getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 1

    .line 2107
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 1784
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_11

    .line 1785
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1788
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryCpuAbiLegacy()Ljava/lang/String;
    .registers 1

    .line 1813
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 1

    .line 2010
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-object p0
.end method

.method public getRestrictUpdateHash()[B
    .registers 1

    .line 2132
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    return-object p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .registers 3

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getOverrideSeInfo()Ljava/lang/String;

    move-result-object v0

    .line 1804
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 1808
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getSeInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 1793
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_11

    .line 1794
    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1797
    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryCpuAbiLegacy()Ljava/lang/String;
    .registers 1

    .line 1818
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedLibraryDependencies()Ljava/util/List;
    .registers 1

    .line 1594
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUserAppId()I
    .registers 1

    .line 589
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    return p0
.end method

.method public getSignatures()Lcom/android/server/pm/PackageSignatures;
    .registers 1

    .line 2076
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    return-object p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 1

    .line 819
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 1557
    new-instance v0, Landroid/content/pm/SigningInfo;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p0}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_9

    .line 670
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    if-nez p0, :cond_f

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_f
    return-object p0
.end method

.method public getSplitRevisionCodes()[I
    .registers 2

    .line 689
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_9

    .line 690
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSplitRevisionCodes()[I

    move-result-object p0

    return-object p0

    .line 692
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    if-nez p0, :cond_f

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_f
    return-object p0
.end method

.method public getStateForUser(Landroid/os/UserHandle;)Lcom/android/server/pm/pkg/PackageUserState;
    .registers 2

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserState;

    if-nez p0, :cond_12

    .line 1779
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    :cond_12
    return-object p0
.end method

.method public getTargetSdkVersion()I
    .registers 1

    .line 2127
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    return p0
.end method

.method public getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 1

    .line 1753
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public getUninstallReason(I)I
    .registers 2

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result p0

    return p0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .registers 1

    .line 1758
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .registers 1

    .line 1606
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUsesSdkLibraries()[Ljava/lang/String;
    .registers 1

    .line 1563
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getUsesSdkLibrariesOptional()[Z
    .registers 1

    .line 1576
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    :cond_6
    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .registers 1

    .line 1569
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object p0
.end method

.method public getUsesStaticLibraries()[Ljava/lang/String;
    .registers 1

    .line 1582
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 1

    .line 1588
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-nez p0, :cond_6

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object p0
.end method

.method public getVersionCode()J
    .registers 3

    .line 1530
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    return-wide v0
.end method

.method public getVirtualPreload(I)Z
    .registers 2

    .line 1120
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result p0

    return p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 1

    .line 2094
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final getWarningMessage(Landroid/content/Context;ZZZ)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    if-eqz p4, :cond_a

    const p0, 0x1040743

    goto :goto_d

    :cond_a
    const p0, 0x1040742

    .line 1932
    :goto_d
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    if-eqz p2, :cond_22

    if-eqz p4, :cond_1a

    const p0, 0x1040746

    goto :goto_1d

    :cond_1a
    const p0, 0x1040745

    .line 1938
    :goto_1d
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    if-eqz p3, :cond_32

    if-eqz p4, :cond_2a

    const p0, 0x1040749

    goto :goto_2d

    :cond_2a
    const p0, 0x1040748

    .line 1944
    :goto_2d
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDataOnAnyOtherUser([II)Z
    .registers 7

    .line 1018
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_19

    aget v3, p1, v2

    if-ne v3, p2, :cond_a

    goto :goto_16

    .line 1022
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 1023
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_19
    return v1
.end method

.method public hasSharedUser()Z
    .registers 1

    .line 594
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isApex()Z
    .registers 2

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isApkInUpdatedApex()Z
    .registers 1

    .line 1627
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isApkInUpdatedApex()Z

    move-result p0

    return p0
.end method

.method public isArchived(I)Z
    .registers 2

    .line 959
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p0

    return p0
.end method

.method public isArchivedOnAnyUser([I)Z
    .registers 6

    .line 966
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p1, v2

    .line 967
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->isArchived(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public isAudioPlaybackCaptureAllowed()Z
    .registers 2

    .line 815
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isDebuggable()Z
    .registers 2

    const/16 v0, 0x20

    .line 622
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .registers 1

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isExternalStorage()Z
    .registers 2

    .line 560
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isForceQueryableOverride()Z
    .registers 2

    const/4 v0, 0x4

    .line 1836
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 1

    .line 1617
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result p0

    return p0
.end method

.method public isIncremental()Z
    .registers 1

    .line 1485
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInstallPermissionsFixed()Z
    .registers 2

    const/4 v0, 0x1

    .line 1849
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstalledOnAnyOtherUser([II)Z
    .registers 7

    .line 1005
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_19

    aget v3, p1, v2

    if-ne v3, p2, :cond_a

    goto :goto_16

    .line 1009
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 1010
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_19
    return v1
.end method

.method public isLeavingSharedUser()Z
    .registers 2

    const/16 v0, 0x40

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1491
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x322bcc77    # 1.0E-8f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isOdm()Z
    .registers 2

    .line 797
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isOem()Z
    .registers 2

    .line 776
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isPageSizeAppCompatEnabled()Z
    .registers 5

    .line 1874
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    and-int/lit8 v0, p0, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_11

    move v3, v1

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    if-nez v0, :cond_1c

    if-eqz v3, :cond_17

    goto :goto_1c

    :cond_17
    and-int/lit8 p0, p0, 0x2c

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    :goto_1c
    return v2
.end method

.method public isPendingRestore()Z
    .registers 2

    const/16 v0, 0x10

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isPersistent()Z
    .registers 1

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPrivileged()Z
    .registers 1

    .line 772
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isProduct()Z
    .registers 2

    .line 784
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isRequestLegacyExternalStorage()Z
    .registers 2

    .line 805
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isRequiredForSystemUser()Z
    .registers 1

    .line 789
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isScannedAsStoppedSystemApp()Z
    .registers 2

    const/16 v0, 0x8

    .line 1867
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSystem()Z
    .registers 2

    .line 801
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSystemExt()Z
    .registers 2

    .line 793
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    const/4 v0, 0x2

    .line 1844
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isUpdatedSystemApp()Z
    .registers 1

    .line 1622
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p0

    return p0
.end method

.method public isUserDataFragile()Z
    .registers 2

    .line 810
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isVendor()Z
    .registers 2

    .line 780
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4

    .line 906
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-nez v0, :cond_17

    .line 908
    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    .line 909
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_17
    return-object v0
.end method

.method public modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 5

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_17

    .line 1215
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    if-nez p2, :cond_17

    .line 1216
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move p2, v0

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    if-eqz p3, :cond_29

    .line 1219
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p3

    if-nez p3, :cond_29

    .line 1220
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    goto :goto_2a

    :cond_29
    move v0, p2

    :goto_2a
    if-eqz v0, :cond_2f

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_2f
    return-object p1
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .registers 5

    .line 1459
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p1

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return p1
.end method

.method public queryInstalledUsers([IZ)[I
    .registers 8

    .line 1031
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1032
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget v3, p1, v2

    .line 1033
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_15

    .line 1034
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1037
    :cond_18
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public queryUsersInstalledOrHasData([I)[I
    .registers 7

    .line 1041
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1042
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_22

    aget v3, p1, v2

    .line 1043
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1044
    :cond_1c
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1047
    :cond_22
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 2

    .line 926
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez p0, :cond_c

    .line 928
    sget-object p0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    :cond_c
    return-object p0
.end method

.method public removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 461
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    if-eqz p1, :cond_10

    .line 1443
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldPaths:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_7

    goto :goto_10

    .line 1446
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_10
    :goto_10
    return-object p0
.end method

.method public removeUser(I)V
    .registers 3

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public resetOverrideComponentLabelIcon(I)V
    .registers 2

    .line 1469
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->resetOverrideComponentLabelIcon()V

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    .line 1264
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 1265
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1266
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 1267
    :goto_16
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1268
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    :cond_24
    or-int p1, v0, v1

    if-eqz p1, :cond_2b

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_2b
    return p1
.end method

.method public restoreComponentSettings(I)V
    .registers 8

    const/4 v0, 0x1

    .line 1276
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1277
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    .line 1278
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    .line 1281
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ltz v2, :cond_2a

    .line 1282
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1283
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v0

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1287
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_2f
    if-ltz v1, :cond_46

    .line 1288
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->hasComponentClassName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1289
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v3, v0

    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    :cond_46
    if-eqz v3, :cond_4b

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_4b
    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 1746
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setApexModuleName(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object p0
.end method

.method public setAppId(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 388
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 389
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1513
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1522
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;I)V
    .registers 3

    .line 950
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 951
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 643
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    .line 644
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public final setBoolean(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    .line 125
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    return-void

    .line 127
    :cond_8
    iget p2, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mBooleans:I

    return-void
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1643
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setCeDataInode(JI)V
    .registers 4

    .line 1059
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setDeDataInode(JI)V
    .registers 4

    .line 1064
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/16 v0, 0x20

    .line 615
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 616
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setDeveloperVerificationStatusInternal(Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;)V
    .registers 2

    .line 1976
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    return-void
.end method

.method public setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 3

    .line 1206
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 1207
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1206
    :goto_c
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1637
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setEnabled(IILjava/lang/String;)V
    .registers 4

    .line 934
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    .line 935
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 936
    invoke-virtual {p1, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 937
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 3

    .line 1200
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 1201
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1200
    :goto_c
    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1a

    .line 422
    iget-object p3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p3, :cond_21

    .line 424
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 427
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 429
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;
    .registers 8

    const/4 v0, 0x0

    .line 405
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 407
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_19

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/4 v0, 0x4

    .line 434
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 435
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setHidden(ZI)V
    .registers 3

    .line 1097
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/4 v0, 0x1

    .line 767
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    return-object p0
.end method

.method public setInstallReason(II)V
    .registers 3

    .line 979
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 980
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 454
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 455
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setInstalled(ZI)V
    .registers 3

    .line 945
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 946
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstallSource;->setInstallerPackage(Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setInstantApp(ZI)V
    .registers 3

    .line 1115
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 467
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 478
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 479
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 484
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 485
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLeavingSharedUser(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/16 v0, 0x40

    .line 629
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 630
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1702
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLibraryAlignmentInfo([Lcom/android/internal/content/LibraryAlignmentInfo;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    if-nez p1, :cond_a

    .line 1692
    const-string p1, "PackageManager"

    const-string v0, "Invalid LibraryAlignmentInfo specified"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1695
    :cond_a
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mUnalignedNativeLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLoadingCompletedTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 1504
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 1496
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_b

    .line 1497
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_b
    return-object p0
.end method

.method public setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 490
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 491
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 6

    .line 496
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_c
    if-eqz v0, :cond_1f

    .line 502
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 503
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1e

    .line 505
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_1e
    return v1

    .line 498
    :cond_1f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown MIME group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for package "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    if-eqz p1, :cond_8

    .line 1709
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 1710
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    :cond_8
    return-object p0
.end method

.method public setNotLaunched(ZI)V
    .registers 3

    .line 1088
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z
    .registers 4

    .line 998
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p3

    .line 999
    invoke-virtual {p3, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result p1

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return p1
.end method

.method public setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;
    .registers 4

    if-ltz p1, :cond_21

    const/16 v0, 0x80

    if-lt p1, v0, :cond_7

    goto :goto_21

    .line 1668
    :cond_7
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    const/16 v1, 0x8

    if-ne v1, p1, :cond_15

    and-int/lit8 p1, v0, -0x11

    .line 1673
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    goto :goto_1d

    :cond_15
    const/16 v1, 0x10

    if-ne v1, p1, :cond_1d

    and-int/lit8 p1, v0, -0x9

    .line 1676
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mPageSizeAppCompatFlags:I

    .line 1679
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0

    .line 1663
    :cond_21
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid page size compat mode specified. mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1425
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1426
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1427
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/16 v0, 0x10

    .line 601
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 602
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 512
    check-cast p1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 513
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;
    .registers 5

    .line 525
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 527
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    return-object p0

    .line 528
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 529
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 535
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 536
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    .line 583
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/16 v0, 0x8

    .line 1078
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 570
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 571
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 547
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 548
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 825
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 659
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 660
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 680
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setStopped(ZI)V
    .registers 3

    .line 1073
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 576
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 577
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUninstallReason(II)V
    .registers 3

    .line 988
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 989
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3

    const/4 v0, 0x2

    .line 564
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 565
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUpdateOwnerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 449
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V
    .registers 26

    .line 1136
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1137
    invoke-virtual {p1, p12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1138
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1139
    invoke-virtual {p1, p4, p5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1140
    invoke-virtual {p1, p6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1141
    invoke-virtual {p1, p7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1142
    invoke-virtual {p1, p8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1143
    invoke-virtual {p1, p9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1144
    invoke-virtual {p1, p10}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1145
    invoke-virtual {p1, p11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1146
    invoke-virtual {p1, p15}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p16

    .line 1147
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p17

    .line 1148
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move/from16 p2, p18

    .line 1149
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move/from16 p2, p19

    .line 1150
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1151
    invoke-virtual {p1, p13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    .line 1152
    invoke-virtual {p1, p14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p20

    .line 1153
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p21

    .line 1154
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-wide/from16 p2, p22

    .line 1155
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTimeMillis(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move/from16 p2, p24

    .line 1156
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setMinAspectRatio(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p1

    move-object/from16 p2, p25

    .line 1157
    invoke-virtual {p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setArchiveState(Lcom/android/server/pm/pkg/ArchiveState;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1716
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1728
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1722
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1734
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 1740
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 553
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 554
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 97
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->snapshot()Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 724
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 725
    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    .line 727
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 5

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 736
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-object p0

    .line 740
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_e

    .line 742
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 745
    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    .line 746
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 748
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 749
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 750
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 752
    :cond_3b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 755
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 756
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    return-object p0
.end method

.method public writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .registers 10

    .line 1334
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    const-wide v0, 0x20b0000000cL

    .line 1335
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 1336
    iget p4, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1338
    iget p4, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {p5, p4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p4

    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 1339
    invoke-virtual {p4, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object p3

    .line 1340
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_33
    :goto_33
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_52

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 1341
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v2

    if-eqz v2, :cond_33

    const-wide v2, 0x20900000002L

    .line 1343
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p4

    .line 1342
    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_33

    .line 1346
    :cond_52
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4

    :cond_56
    return-void
.end method

.method public writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15

    .line 1351
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_d5

    .line 1353
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1354
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1355
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    const-wide v7, 0x10500000001L

    .line 1356
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1358
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2d

    const/4 v5, 0x2

    goto :goto_36

    .line 1360
    :cond_2d
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_35

    move v5, v7

    goto :goto_36

    :cond_35
    move v5, v1

    :goto_36
    const-wide v8, 0x10e00000002L

    .line 1365
    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000003L

    .line 1366
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x1050000000aL

    .line 1367
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10800000004L

    .line 1368
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1369
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v5

    if-eqz v5, :cond_8a

    move v5, v1

    .line 1370
    :goto_69
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_8a

    .line 1372
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserPackage;

    iget-object v8, v8, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    const-wide v9, 0x20900000009L

    .line 1371
    invoke-virtual {p1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_8a
    const-wide v8, 0x10800000005L

    .line 1379
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1380
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v5

    xor-int/2addr v5, v7

    const-wide v7, 0x10800000006L

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10e00000007L

    .line 1381
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v5

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10900000008L

    .line 1384
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v5

    .line 1382
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x1050000000bL

    .line 1386
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v9

    .line 1385
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1387
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/pm/PackageSetting;->writeArchiveState(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/pm/pkg/ArchiveState;)V

    .line 1388
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_d5
    return-void
.end method
