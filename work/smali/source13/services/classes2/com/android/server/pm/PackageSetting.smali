.class public Lcom/android/server/pm/PackageSetting;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSetting.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageStateInternal;


# instance fields
.field private categoryOverride:I

.field private forceQueryableOverride:Z

.field private installPermissionsFixed:Z

.field private installSource:Lcom/android/server/pm/InstallSource;

.field private keySetData:Lcom/android/server/pm/PackageKeySetData;

.field private lastUpdateTime:J

.field private legacyNativeLibraryPath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAppId:I

.field private mCpuAbiOverride:Ljava/lang/String;

.field private mDomainSetId:Ljava/util/UUID;

.field private mLastModifiedTime:J

.field private mLoadingProgress:F

.field private mName:Ljava/lang/String;

.field private mOldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mPath:Ljava/io/File;

.field private mPathString:Ljava/lang/String;

.field private mPrimaryCpuAbi:Ljava/lang/String;

.field private mRealName:Ljava/lang/String;

.field private mSecondaryCpuAbi:Ljava/lang/String;

.field private mSharedUserAppId:I

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mimeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field private final pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

.field private signatures:Lcom/android/server/pm/PackageSignatures;

.field private updateAvailable:Z

.field private usesSdkLibraries:[Ljava/lang/String;

.field private usesSdkLibrariesVersionsMajor:[J

.field private usesStaticLibraries:[Ljava/lang/String;

.field private usesStaticLibrariesVersions:[J

.field private versionCode:J

.field private volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3
    .param p1, "orig"    # Lcom/android/server/pm/PackageSetting;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 237
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .registers 4
    .param p1, "base"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "realPkgName"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    .line 248
    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 249
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 4
    .param p1, "original"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sealedSnapshot"    # Z

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 157
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 179
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 254
    if-eqz p2, :cond_28

    .line 255
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    goto :goto_2e

    .line 257
    :cond_28
    invoke-direct {p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 259
    :goto_2e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Map;Ljava/util/UUID;)V
    .registers 35
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/io/File;
    .param p4, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p5, "primaryCpuAbi"    # Ljava/lang/String;
    .param p6, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p7, "cpuAbiOverride"    # Ljava/lang/String;
    .param p8, "longVersionCode"    # J
    .param p10, "pkgFlags"    # I
    .param p11, "pkgPrivateFlags"    # I
    .param p12, "sharedUserAppId"    # I
    .param p13, "usesSdkLibraries"    # [Ljava/lang/String;
    .param p14, "usesSdkLibrariesVersionsMajor"    # [J
    .param p15, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p16, "usesStaticLibrariesVersions"    # [J
    .param p18, "domainSetId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIII[",
            "Ljava/lang/String;",
            "[J[",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 209
    .local p17, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 157
    new-instance v3, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v3}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 161
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    .line 172
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 179
    new-instance v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-direct {v3, v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;-><init>(Lcom/android/server/pm/PackageSetting;)V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 210
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 211
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 212
    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 213
    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 214
    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 215
    move-object/from16 v8, p16

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 216
    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 217
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 218
    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 219
    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 220
    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 221
    move-object/from16 v13, p7

    iput-object v13, v0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 222
    move-wide/from16 v14, p8

    iput-wide v14, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 223
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 224
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 225
    move/from16 v1, p12

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 226
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 227
    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 229
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1486
    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/android/server/pm/PackageSetting$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PackageSetting$1;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 954
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 957
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 960
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 963
    return-void
.end method

.method public addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 5
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1307
    .local p2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1308
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1311
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1312
    .local v0, "existingMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_20

    .line 1313
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1314
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_20
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1317
    return-object p0
.end method

.method protected copyMimeGroups(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 501
    .local p1, "newMimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez p1, :cond_6

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 503
    return-void

    .line 506
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 507
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

    .line 508
    .local v1, "mimeGroup":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 510
    .local v2, "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_38

    .line 511
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 513
    :cond_38
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v1    # "mimeGroup":Ljava/lang/String;
    .end local v2    # "mimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_42
    goto :goto_19

    .line 516
    :cond_43
    return-void
.end method

.method public copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V
    .registers 8
    .param p1, "other"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sealedSnapshot"    # Z

    .line 614
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copySettingBase(Lcom/android/server/pm/SettingBase;)V

    .line 615
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 616
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 617
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 618
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 619
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 620
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 621
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 622
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 623
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 624
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 625
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 626
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 627
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 628
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 629
    iget-wide v0, p1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 630
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 631
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 632
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 633
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 634
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 635
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 636
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 637
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 638
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 640
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_75

    .line 641
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_76

    .line 642
    :cond_75
    move-object v0, v1

    :goto_76
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 643
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-eqz v0, :cond_82

    .line 644
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_83

    .line 645
    :cond_82
    move-object v0, v1

    :goto_83
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 647
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 648
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_92

    .line 649
    :cond_91
    move-object v0, v1

    :goto_92
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 650
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_9e

    .line 651
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    goto :goto_9f

    .line 652
    :cond_9e
    move-object v0, v1

    :goto_9f
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 653
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a7
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_d7

    .line 663
    if-eqz p2, :cond_be

    .line 664
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->snapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    .local v2, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    goto :goto_c6

    .line 666
    .end local v2    # "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    :cond_be
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 668
    .restart local v2    # "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    :goto_c6
    invoke-virtual {v2, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setWatchable(Lcom/android/server/utils/Watchable;)V

    .line 669
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    .end local v2    # "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 673
    .end local v0    # "i":I
    :cond_d7
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    if-eqz v0, :cond_ec

    .line 674
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    if-eqz v2, :cond_ea

    .line 675
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 676
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_ec

    .line 678
    :cond_ea
    iput-object v1, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    .line 682
    :cond_ec
    :goto_ec
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    .line 683
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V

    .line 684
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 685
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 977
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 978
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 979
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_16

    :cond_15
    nop

    .line 980
    .local v1, "changed":Z
    :goto_16
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 981
    if-eqz v1, :cond_24

    .line 982
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 984
    :cond_24
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .registers 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p5, "dataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            ")V"
        }
    .end annotation

    .line 270
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 271
    .local v8, "packageToken":J
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    :goto_d
    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 272
    iget v0, v6, Lcom/android/server/pm/PackageSetting;->mAppId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 273
    const-wide v10, 0x10500000003L

    iget-wide v12, v6, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 274
    const-wide v10, 0x10300000006L

    iget-wide v12, v6, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 275
    const-wide v10, 0x10900000007L

    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 277
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_b2

    .line 278
    const-wide v10, 0x10900000004L

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 280
    const-wide v10, 0x20b00000008L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 281
    .local v12, "splitToken":J
    const-string v0, "base"

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 282
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 283
    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6a
    iget-object v5, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_93

    .line 286
    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 287
    iget-object v5, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {p1, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 288
    iget-object v5, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 289
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v5

    aget v5, v5, v0

    .line 288
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 290
    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 293
    .end local v0    # "i":I
    :cond_93
    const-wide v3, 0x10b0000000aL

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 294
    .local v3, "sourceToken":J
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 296
    const-wide v0, 0x10900000002L

    iget-object v2, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 298
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 300
    .end local v3    # "sourceToken":J
    .end local v12    # "splitToken":J
    :cond_b2
    const-wide v0, 0x10800000002L

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 301
    const-wide v0, 0x20b00000009L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageSetting;->writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 302
    const-wide v2, 0x20b0000000cL

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageSetting;->writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    .line 303
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 304
    return-void
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 966
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v1

    .line 967
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 968
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16

    :cond_15
    nop

    .line 969
    .local v0, "changed":Z
    :goto_16
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 970
    if-eqz v0, :cond_24

    .line 971
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 973
    :cond_24
    return v0
.end method

.method public getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackageApi;
    .registers 2

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()I
    .registers 2

    .line 1362
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    return v0
.end method

.method public getCategoryOverride()I
    .registers 2

    .line 1454
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    return v0
.end method

.method getCeDataInode(I)J
    .registers 4
    .param p1, "userId"    # I

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getCeDataInode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuAbiOverride()Ljava/lang/String;
    .registers 2

    .line 1408
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1000
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 1001
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1002
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1003
    const/4 v1, 0x1

    return v1

    .line 1004
    :cond_16
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 1005
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1006
    const/4 v1, 0x2

    return v1

    .line 1008
    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 908
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    return-object v0
.end method

.method getDistractionFlags(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDistractionFlags()I

    move-result v0

    return v0
.end method

.method public getDomainSetId()Ljava/util/UUID;
    .registers 2

    .line 1477
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    return-object v0
.end method

.method getEnabled(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledState()I

    move-result v0

    return v0
.end method

.method getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    return-object v0
.end method

.method getHidden(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v0

    return v0
.end method

.method getInstallReason(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v0

    return v0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 2

    .line 1438
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    return-object v0
.end method

.method getInstalled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v0

    return v0
.end method

.method public getInstantApp(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 839
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public getKeySetData()Lcom/android/server/pm/PackageKeySetData;
    .registers 2

    .line 1433
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .registers 3

    .line 1413
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    return-wide v0
.end method

.method public getLastPackageUsageTime()[J
    .registers 2

    .line 1232
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 1418
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLegacyNativeLibraryPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1347
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingProgress()F
    .registers 2

    .line 1393
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    return v0
.end method

.method public getMimeGroups()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_13

    .line 1167
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1166
    :goto_13
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1352
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .registers 8

    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1020
    .local v1, "userStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1d

    .line 1021
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1022
    add-int/lit8 v0, v0, 0x1

    .line 1020
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1025
    .end local v2    # "i":I
    :cond_1d
    if-nez v0, :cond_22

    .line 1026
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    return-object v2

    .line 1029
    :cond_22
    new-array v2, v0, [I

    .line 1030
    .local v2, "excludedUserIds":[I
    const/4 v3, 0x0

    .line 1031
    .local v3, "idx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v1, :cond_44

    .line 1032
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1033
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "idx":I
    .local v5, "idx":I
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v3

    move v3, v5

    .line 1031
    .end local v5    # "idx":I
    .restart local v3    # "idx":I
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1036
    .end local v4    # "i":I
    :cond_44
    return-object v2
.end method

.method getNotLaunched(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 812
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isNotLaunched()Z

    move-result v0

    return v0
.end method

.method public getOldCodePaths()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    return-object v0
.end method

.method public getOrCreateUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .param p1, "userId"    # I

    .line 699
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 700
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    if-nez v0, :cond_15

    .line 701
    new-instance v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    move-object v0, v1

    .line 702
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 704
    :cond_15
    return-object v0
.end method

.method getOverlayPaths(I)Landroid/content/pm/overlay/OverlayPaths;
    .registers 3
    .param p1, "userId"    # I

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1173
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .registers 2

    .line 1383
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getPathString()Ljava/lang/String;
    .registers 2

    .line 1388
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 2

    .line 1375
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    return-object v0
.end method

.method public getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 1472
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object v0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 1398
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 2

    .line 1357
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 1403
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserAppId()I
    .registers 2

    .line 485
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    return v0
.end method

.method public getSignatures()Lcom/android/server/pm/PackageSignatures;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 3

    .line 1184
    new-instance v0, Landroid/content/pm/SigningInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    return-object v0
.end method

.method public getSplashScreenTheme(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStopped(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isStopped()Z

    move-result v0

    return v0
.end method

.method public getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 1298
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    return-object v0
.end method

.method getUninstallReason(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 746
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getUninstallReason()I

    move-result v0

    return v0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/pm/pkg/PackageUserStateInternal;",
            ">;"
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsesSdkLibraries()[Ljava/lang/String;
    .registers 2

    .line 1190
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .registers 2

    .line 1196
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    if-nez v0, :cond_7

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    goto :goto_8

    .line 1197
    :cond_7
    nop

    .line 1196
    :goto_8
    return-object v0
.end method

.method public getUsesStaticLibraries()[Ljava/lang/String;
    .registers 2

    .line 1203
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 2

    .line 1209
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_6
    return-object v0
.end method

.method public getVersionCode()J
    .registers 3

    .line 1157
    iget-wide v0, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    return-wide v0
.end method

.method getVirtualPreload(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isVirtualPreload()Z

    move-result v0

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 1446
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hasSharedUser()Z
    .registers 2

    .line 490
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isAnyInstalled([I)Z
    .registers 7
    .param p1, "users"    # [I

    .line 767
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget v3, p1, v2

    .line 768
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 769
    const/4 v0, 0x1

    return v0

    .line 767
    .end local v3    # "user":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 772
    :cond_16
    return v1
.end method

.method public isExternalStorage()Z
    .registers 3

    .line 469
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isForceQueryableOverride()Z
    .registers 2

    .line 1467
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    return v0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 2

    .line 1226
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v0

    return v0
.end method

.method public isInstallPermissionsFixed()Z
    .registers 2

    .line 1428
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    return v0
.end method

.method public isLoading()Z
    .registers 3

    .line 1145
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isOdm()Z
    .registers 3

    .line 595
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isOem()Z
    .registers 3

    .line 574
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 570
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isProduct()Z
    .registers 3

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRequiredForSystemUser()Z
    .registers 2

    .line 587
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isSystem()Z
    .registers 3

    .line 599
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isSystemExt()Z
    .registers 3

    .line 591
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    .line 1462
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    return v0
.end method

.method public isUpdatedSystemApp()Z
    .registers 2

    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    return v0
.end method

.method public isVendor()Z
    .registers 3

    .line 578
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v0

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 4
    .param p1, "userId"    # I

    .line 689
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 690
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    if-nez v0, :cond_18

    .line 691
    new-instance v1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;)V

    move-object v0, v1

    .line 692
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 695
    :cond_18
    return-object v0
.end method

.method modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .line 937
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 938
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    const/4 v1, 0x0

    .line 939
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_17

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-nez v3, :cond_17

    .line 940
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 941
    const/4 v1, 0x1

    .line 943
    :cond_17
    if-eqz p3, :cond_28

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-nez v3, :cond_28

    .line 944
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 945
    const/4 v1, 0x1

    .line 947
    :cond_28
    if-eqz v1, :cond_2d

    .line 948
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 950
    :cond_2d
    return-object v0
.end method

.method public overrideNonLocalizedLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)Z
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/Integer;
    .param p4, "userId"    # I

    .line 1116
    invoke-virtual {p0, p4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    .line 1117
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1118
    return v0
.end method

.method queryInstalledUsers([IZ)[I
    .registers 9
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "num":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_13

    aget v4, p1, v3

    .line 778
    .local v4, "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_10

    .line 779
    add-int/lit8 v0, v0, 0x1

    .line 777
    .end local v4    # "user":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 782
    :cond_13
    new-array v1, v0, [I

    .line 783
    .local v1, "res":[I
    const/4 v0, 0x0

    .line 784
    array-length v3, p1

    :goto_17
    if-ge v2, v3, :cond_28

    aget v4, p1, v2

    .line 785
    .restart local v4    # "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_25

    .line 786
    aput v4, v1, v0

    .line 787
    add-int/lit8 v0, v0, 0x1

    .line 784
    .end local v4    # "user":I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 790
    :cond_28
    return-object v1
.end method

.method public readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 4
    .param p1, "userId"    # I

    .line 709
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 710
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-nez v0, :cond_d

    .line 711
    sget-object v1, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    return-object v1

    .line 713
    :cond_d
    return-object v0
.end method

.method removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 373
    return-object p0
.end method

.method removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1013
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1015
    return-void
.end method

.method public resetOverrideComponentLabelIcon(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->resetOverrideComponentLabelIcon()V

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1128
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 988
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserStateComponents(IZZ)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 989
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateImpl;
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 990
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_16

    :cond_15
    move v1, v2

    .line 991
    .local v1, "changed":Z
    :goto_16
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 992
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_26

    :cond_25
    nop

    :goto_26
    or-int/2addr v1, v2

    .line 993
    if-eqz v1, :cond_2c

    .line 994
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 996
    :cond_2c
    return v1
.end method

.method public setAppId(I)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "appId"    # I

    .line 307
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 309
    return-object p0
.end method

.method public setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "categoryHint"    # I

    .line 1247
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1249
    return-object p0
.end method

.method setCeDataInode(JI)V
    .registers 5
    .param p1, "ceDataInode"    # J
    .param p3, "userId"    # I

    .line 798
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 799
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 800
    return-void
.end method

.method public setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "cpuAbiOverrideString"    # Ljava/lang/String;

    .line 313
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 315
    return-object p0
.end method

.method setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 919
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 920
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 921
    return-void
.end method

.method setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 930
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    if-eqz p1, :cond_b

    .line 931
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 930
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 932
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 933
    return-void
.end method

.method setDistractionFlags(II)V
    .registers 4
    .param p1, "distractionFlags"    # I
    .param p2, "userId"    # I

    .line 834
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 835
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 836
    return-void
.end method

.method public setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "domainSetId"    # Ljava/util/UUID;

    .line 1241
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1243
    return-object p0
.end method

.method setEnabled(IILjava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 717
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 718
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 719
    invoke-virtual {v0, p3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 720
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 721
    return-void
.end method

.method setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 913
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Lcom/android/server/utils/WatchedArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 914
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 915
    return-void
.end method

.method setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 924
    .local p1, "components":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    if-eqz p1, :cond_b

    .line 925
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 924
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 926
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 927
    return-void
.end method

.method public setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;
    .registers 7
    .param p1, "firstInstallTime"    # J
    .param p3, "userId"    # I

    .line 340
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1b

    .line 341
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 342
    .local v0, "userStateCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 343
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 345
    .end local v0    # "userStateCount":I
    .end local v1    # "i":I
    :cond_1a
    goto :goto_22

    .line 346
    :cond_1b
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 348
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 349
    return-object p0
.end method

.method public setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;
    .registers 8
    .param p1, "replacedPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userIds"    # [I

    .line 324
    const/4 v0, 0x0

    .local v0, "userId":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1d

    .line 325
    nop

    .line 326
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v1

    .line 327
    .local v1, "previousFirstInstallTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1a

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 324
    .end local v1    # "previousFirstInstallTime":J
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "userId":I
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 332
    return-object p0
.end method

.method public setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "forceQueryableOverride"    # Z

    .line 353
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 355
    return-object p0
.end method

.method setHidden(ZI)V
    .registers 4
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .line 825
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 826
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 827
    return-void
.end method

.method public setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "installPermissionsFixed"    # Z

    .line 565
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 566
    return-object p0
.end method

.method setInstallReason(II)V
    .registers 4
    .param p1, "installReason"    # I
    .param p2, "userId"    # I

    .line 741
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 743
    return-void
.end method

.method public setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "installSource"    # Lcom/android/server/pm/InstallSource;

    .line 365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 367
    return-object p0
.end method

.method setInstalled(ZI)V
    .registers 4
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .line 728
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 729
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 730
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 361
    return-object p0
.end method

.method setInstantApp(ZI)V
    .registers 4
    .param p1, "instantApp"    # Z
    .param p2, "userId"    # I

    .line 843
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 844
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 845
    return-void
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "isOrphaned"    # Z

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallSource;->setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 378
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 379
    return-object p0
.end method

.method public setKeySetData(Lcom/android/server/pm/PackageKeySetData;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "keySetData"    # Lcom/android/server/pm/PackageKeySetData;

    .line 383
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 384
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 385
    return-object p0
.end method

.method public setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "timeStamp"    # J

    .line 389
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    .line 390
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 391
    return-object p0
.end method

.method public setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "lastUpdateTime"    # J

    .line 395
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    .line 396
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 397
    return-object p0
.end method

.method public setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "legacyNativeLibraryPathString"    # Ljava/lang/String;

    .line 1254
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1256
    return-object p0
.end method

.method public setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "progress"    # F

    .line 1149
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1151
    return-object p0
.end method

.method public setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "versionCode"    # J

    .line 401
    iput-wide p1, p0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 402
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 403
    return-object p0
.end method

.method public setMimeGroup(Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 7
    .param p1, "mimeGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 407
    .local p2, "newMimeTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 408
    .local v0, "oldMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_c
    if-eqz v0, :cond_1f

    .line 413
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 414
    .local v1, "hasChanges":Z
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    if-eqz v1, :cond_1e

    .line 416
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 418
    :cond_1e
    return v1

    .line 409
    .end local v1    # "hasChanges":Z
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown MIME group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1260
    .local p1, "mimeGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1262
    return-object p0
.end method

.method setNotLaunched(ZI)V
    .registers 4
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 816
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 817
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 818
    return-void
.end method

.method public setOldCodePaths(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 1266
    .local p1, "oldCodePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mOldCodePaths:Ljava/util/Set;

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1268
    return-object p0
.end method

.method setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;I)Z
    .registers 5
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "overlayPaths"    # Landroid/content/pm/overlay/OverlayPaths;
    .param p3, "userId"    # I

    .line 760
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 761
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    move-result v0

    .line 762
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 763
    return v0
.end method

.method setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "path"    # Ljava/io/File;

    .line 1103
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 1104
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1106
    return-object p0
.end method

.method public setPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 422
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 423
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 424
    return-object p0
.end method

.method public setPkgStateLibraryFiles(Ljava/util/Collection;)Lcom/android/server/pm/PackageSetting;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 434
    .local p1, "usesLibraryFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v0

    .line 435
    .local v0, "oldUsesLibraryFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 436
    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 437
    :cond_14
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 440
    :cond_21
    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "primaryCpuAbiString"    # Ljava/lang/String;

    .line 444
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 446
    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "secondaryCpuAbiString"    # Ljava/lang/String;

    .line 450
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 452
    return-object p0
.end method

.method public setSharedUserAppId(I)V
    .registers 2
    .param p1, "sharedUserAppId"    # I

    .line 479
    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mSharedUserAppId:I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 481
    return-void
.end method

.method public setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "signatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 456
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 457
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 458
    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 609
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 610
    return-object p0
.end method

.method setStopped(ZI)V
    .registers 4
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .line 807
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 808
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 809
    return-void
.end method

.method setUninstallReason(II)V
    .registers 4
    .param p1, "uninstallReason"    # I
    .param p2, "userId"    # I

    .line 750
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 751
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 752
    return-void
.end method

.method public setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "updateAvailable"    # Z

    .line 473
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 475
    return-object p0
.end method

.method setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V
    .registers 38
    .param p1, "userId"    # I
    .param p2, "ceDataInode"    # J
    .param p4, "enabled"    # I
    .param p5, "installed"    # Z
    .param p6, "stopped"    # Z
    .param p7, "notLaunched"    # Z
    .param p8, "hidden"    # Z
    .param p9, "distractionFlags"    # I
    .param p11, "instantApp"    # Z
    .param p12, "virtualPreload"    # Z
    .param p13, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p16, "installReason"    # I
    .param p17, "uninstallReason"    # I
    .param p18, "harmfulAppWarning"    # Ljava/lang/String;
    .param p19, "splashScreenTheme"    # Ljava/lang/String;
    .param p20, "firstInstallTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZI",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 864
    .local p10, "suspendParams":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .local p14, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p15, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 865
    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSuspendParams(Landroid/util/ArrayMap;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 866
    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setCeDataInode(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 867
    move/from16 v4, p4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 868
    move/from16 v5, p5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstalled(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 869
    move/from16 v6, p6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setStopped(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 870
    move/from16 v7, p7

    invoke-virtual {v0, v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setNotLaunched(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 871
    move/from16 v8, p8

    invoke-virtual {v0, v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHidden(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 872
    move/from16 v9, p9

    invoke-virtual {v0, v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDistractionFlags(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 873
    move-object/from16 v10, p13

    invoke-virtual {v0, v10}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setLastDisableAppCaller(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 874
    move-object/from16 v11, p14

    invoke-virtual {v0, v11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 875
    move-object/from16 v12, p15

    invoke-virtual {v0, v12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 876
    move/from16 v13, p16

    invoke-virtual {v0, v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 877
    move/from16 v14, p17

    invoke-virtual {v0, v14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setUninstallReason(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 878
    move/from16 v15, p11

    invoke-virtual {v0, v15}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setInstantApp(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 879
    move/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 880
    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 881
    move-object/from16 v1, p19

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    .line 882
    move-wide/from16 v1, p20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setFirstInstallTime(J)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 884
    return-void
.end method

.method setUserState(ILcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .registers 25
    .param p1, "userId"    # I
    .param p2, "otherState"    # Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 887
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getCeDataInode()J

    move-result-wide v2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledState()I

    move-result v4

    .line 888
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v5

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isStopped()Z

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isNotLaunched()Z

    move-result v7

    .line 889
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v8

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDistractionFlags()I

    move-result v9

    .line 890
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 891
    move-object v10, v1

    goto :goto_2e

    :cond_25
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    move-object v10, v0

    .line 892
    :goto_2e
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v11

    .line 893
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isVirtualPreload()Z

    move-result v12

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v13

    .line 894
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-nez v0, :cond_42

    .line 895
    move-object v14, v1

    goto :goto_4b

    :cond_42
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    move-object v14, v0

    .line 896
    :goto_4b
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-nez v0, :cond_53

    .line 897
    move-object v15, v1

    goto :goto_5c

    :cond_53
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v0

    move-object v15, v0

    .line 898
    :goto_5c
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v16

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getUninstallReason()I

    move-result v17

    .line 899
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v19

    .line 900
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v20

    .line 887
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v21}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;J)V

    .line 901
    return-void
.end method

.method public setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "usesSdkLibraries"    # [Ljava/lang/String;

    .line 1272
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1274
    return-object p0
.end method

.method public setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "usesSdkLibrariesVersions"    # [J

    .line 1278
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1280
    return-object p0
.end method

.method public setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "usesStaticLibraries"    # [Ljava/lang/String;

    .line 1284
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1286
    return-object p0
.end method

.method public setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "usesStaticLibrariesVersions"    # [J

    .line 1290
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 1292
    return-object p0
.end method

.method setVirtualPreload(ZI)V
    .registers 4
    .param p1, "virtualPreload"    # Z
    .param p2, "userId"    # I

    .line 852
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setVirtualPreload(Z)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 853
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 854
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 462
    iput-object p1, p0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 464
    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->snapshot()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    return-object v0
.end method

.method public updateFrom(Lcom/android/server/pm/PackageSetting;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/PackageSetting;

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    .line 522
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 523
    .local v0, "mimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    .line 525
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 526
    return-void
.end method

.method updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 533
    .local p1, "newMimeGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_6

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 535
    return-object p0

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 540
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 543
    :cond_10
    new-instance v0, Landroid/util/ArrayMap;

    .line 544
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 546
    .local v0, "updatedMimeGroups":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 547
    .local v2, "mimeGroup":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 548
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 550
    :cond_3d
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v2    # "mimeGroup":Ljava/lang/String;
    :goto_45
    goto :goto_1d

    .line 553
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 554
    iput-object v0, p0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    .line 555
    return-object p0
.end method

.method writePackageUserPermissionsProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p5, "dataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            ")V"
        }
    .end annotation

    .line 1046
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1047
    .local v1, "user":Landroid/content/pm/UserInfo;
    const-wide v2, 0x20b0000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1048
    .local v2, "permissionsToken":J
    const-wide v4, 0x10500000001L

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1050
    iget v4, p0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {p5, v4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1051
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    .line 1052
    .local v4, "runtimePermissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 1053
    .local v6, "permission":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1054
    const-wide v7, 0x20900000002L

    .line 1055
    invoke-virtual {v6}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1054
    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1057
    .end local v6    # "permission":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :cond_51
    goto :goto_33

    .line 1058
    :cond_52
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1059
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "permissionsToken":J
    goto :goto_4

    .line 1060
    .end local v4    # "runtimePermissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    :cond_56
    return-void
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1063
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1064
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_cb

    .line 1065
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1066
    .local v2, "userToken":J
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1067
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 1068
    .local v5, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1070
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1071
    const/4 v6, 0x2

    .local v6, "installType":I
    goto :goto_34

    .line 1072
    .end local v6    # "installType":I
    :cond_2b
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1073
    const/4 v6, 0x1

    .restart local v6    # "installType":I
    goto :goto_34

    .line 1075
    .end local v6    # "installType":I
    :cond_33
    const/4 v6, 0x0

    .line 1077
    .restart local v6    # "installType":I
    :goto_34
    const-wide v7, 0x10e00000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1078
    const-wide v7, 0x10800000003L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1079
    const-wide v7, 0x1050000000aL

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDistractionFlags()I

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1080
    const-wide v7, 0x10800000004L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1081
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 1082
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_67
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_86

    .line 1083
    const-wide v8, 0x20900000009L

    .line 1084
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1083
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1082
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 1087
    .end local v7    # "j":I
    :cond_86
    const-wide v7, 0x10800000005L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isStopped()Z

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1088
    const-wide v7, 0x10800000006L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isNotLaunched()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1089
    const-wide v7, 0x10e00000007L

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledState()I

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1090
    const-wide v7, 0x10900000008L

    .line 1092
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v9

    .line 1090
    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1093
    const-wide v7, 0x1050000000bL

    .line 1094
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v9

    .line 1093
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1095
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1064
    .end local v2    # "userToken":J
    .end local v4    # "userId":I
    .end local v5    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v6    # "installType":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 1097
    .end local v1    # "i":I
    :cond_cb
    return-void
.end method
