.class public final Lcom/android/server/pm/StorageEventHelper;
.super Landroid/os/storage/StorageEventListener;
.source "StorageEventHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mLoadedVolumes:Landroid/util/ArraySet;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;


# direct methods
.method public static synthetic $r8$lambda$OKPqQvReXscBtU8R4ZUOKIra7y8(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->lambda$unloadPrivatePackages$1(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGQTujXkyf6hAr1JQHoYLq02Ge0(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->lambda$loadPrivatePackages$0(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 75
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    return-void
.end method


# virtual methods
.method public final collectAbsoluteCodePaths(Lcom/android/server/pm/Computer;)Ljava/util/List;
    .registers 5

    .line 351
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_24

    .line 356
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 357
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-object p0
.end method

.method public dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 5

    .line 363
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 364
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 366
    :cond_9
    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    const/16 v1, 0x78

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 367
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 368
    const-string p1, "Loaded volumes:"

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 370
    iget-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter p1

    .line 371
    :try_start_20
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 372
    const-string p0, "(none)"

    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_47

    :catchall_2e
    move-exception p0

    goto :goto_4c

    :cond_30
    const/4 v0, 0x0

    .line 374
    :goto_31
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 375
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 378
    :cond_47
    :goto_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_2e

    .line 379
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    .line 378
    :goto_4c
    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_2e

    throw p0
.end method

.method public final synthetic lambda$loadPrivatePackages$0(Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->loadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public final synthetic lambda$unloadPrivatePackages$1(Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public final loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 138
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 139
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 140
    const-string v0, "PackageManager"

    const-string v1, "Loading internal storage is probably a mistake; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_14
    new-instance v4, Lcom/android/server/pm/AppDataHelper;

    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v4, v0}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    or-int/lit8 v7, v0, 0x8

    .line 151
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 152
    :try_start_35
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v9

    .line 153
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    monitor-exit v8
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_1fb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4d
    :goto_4d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 157
    iget-object v11, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "loadPrivatePackagesInner"

    const/16 v15, 0xd

    const/16 v16, 0x0

    const/4 v13, -0x1

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v11

    .line 163
    :try_start_76
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 164
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v12

    const/16 v13, 0x200

    .line 163
    invoke-virtual {v0, v12, v7, v13}, Lcom/android/server/pm/PackageManagerService;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 165
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_76 .. :try_end_85} :catch_89
    .catchall {:try_start_76 .. :try_end_85} :catchall_86

    goto :goto_b0

    :catchall_86
    move-exception v0

    move-object v1, v0

    goto :goto_cb

    :catch_89
    move-exception v0

    .line 168
    :try_start_8a
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to scan "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_b0
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 173
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    const/4 v10, -0x1

    const v12, 0x20027

    .line 172
    invoke-virtual {v4, v0, v10, v12}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_c5
    .catchall {:try_start_8a .. :try_end_c5} :catchall_86

    :cond_c5
    if-eqz v11, :cond_4d

    .line 177
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    goto :goto_4d

    :goto_cb
    if-eqz v11, :cond_d5

    .line 160
    :try_start_cd
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    goto :goto_d5

    :catchall_d1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    throw v1

    .line 181
    :cond_d6
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 182
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v7

    .line 183
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v8, Lcom/android/server/StorageManagerInternal;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/StorageManagerInternal;

    .line 185
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_104
    :goto_104
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_16a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 187
    iget v13, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v13

    if-eqz v13, :cond_123

    iget v13, v0, Landroid/content/pm/UserInfo;->id:I

    .line 188
    invoke-virtual {v8, v13}, Lcom/android/server/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v13

    if-eqz v13, :cond_123

    const/4 v13, 0x3

    goto :goto_12c

    .line 190
    :cond_123
    iget v13, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v13}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v13

    if-eqz v13, :cond_104

    move v13, v12

    .line 197
    :goto_12c
    :try_start_12c
    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v3, v14, v13}, Lcom/android/server/StorageManagerInternal;->prepareUserStorage(Ljava/lang/String;II)V

    .line 198
    iget-object v14, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v14
    :try_end_139
    .catch Ljava/lang/RuntimeException; {:try_start_12c .. :try_end_139} :catch_144

    .line 199
    :try_start_139
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3, v0, v13, v12}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    :try_end_13e
    .catchall {:try_start_139 .. :try_end_13e} :catchall_146

    if-eqz v14, :cond_104

    .line 201
    :try_start_140
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_143
    .catch Ljava/lang/RuntimeException; {:try_start_140 .. :try_end_143} :catch_144

    goto :goto_104

    :catch_144
    move-exception v0

    goto :goto_153

    :catchall_146
    move-exception v0

    move-object v12, v0

    if-eqz v14, :cond_152

    .line 198
    :try_start_14a
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_152

    :catchall_14e
    move-exception v0

    :try_start_14f
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_152
    :goto_152
    throw v12
    :try_end_153
    .catch Ljava/lang/RuntimeException; {:try_start_14f .. :try_end_153} :catch_144

    .line 207
    :goto_153
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to prepare storage: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 211
    :cond_16a
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 212
    iget-object v4, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 213
    :try_start_17a
    sget-object v7, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v8, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v11, v8, 0x1

    if-nez v8, :cond_1b0

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Partitions fingerprint changed from "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; regranting permissions for "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_1b0

    :catchall_1ae
    move-exception v0

    goto :goto_1f6

    .line 219
    :cond_1b0
    :goto_1b0
    iget-object v7, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 222
    invoke-virtual {v9}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 224
    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 225
    monitor-exit v4
    :try_end_1c0
    .catchall {:try_start_17a .. :try_end_1c0} :catchall_1ae

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 227
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v10

    :goto_1c8
    if-ge v3, v0, :cond_1d6

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/pm/PackageFreezer;

    .line 228
    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto :goto_1c8

    .line 232
    :cond_1d6
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v0, v4, v12, v10, v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;)V

    .line 234
    iget-object v3, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v3

    .line 235
    :try_start_1e8
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v3

    return-void

    :catchall_1f3
    move-exception v0

    monitor-exit v3
    :try_end_1f5
    .catchall {:try_start_1e8 .. :try_end_1f5} :catchall_1f3

    throw v0

    .line 225
    :goto_1f6
    :try_start_1f6
    monitor-exit v4
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1ae

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_1fb
    move-exception v0

    .line 154
    :try_start_1fc
    monitor-exit v8
    :try_end_1fd
    .catchall {:try_start_1fc .. :try_end_1fd} :catchall_1fb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 11

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    const-string p0, "PackageManager"

    const-string p1, "Forgetting internal storage is probably a mistake; ignoring"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 113
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 114
    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 116
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because volume was forgotten"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v5, Landroid/content/pm/VersionedPackage;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v6, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 120
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 118
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 125
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    goto :goto_2a

    :catchall_7c
    move-exception p0

    goto :goto_8f

    .line 128
    :cond_7e
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 130
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_1e .. :try_end_8b} :catchall_7c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_8f
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_7c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    .line 82
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2f

    .line 83
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_29

    .line 84
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p2

    .line 88
    iget-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 89
    iget-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 93
    iget-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V

    return-void

    :cond_29
    const/4 p3, 0x5

    if-ne p2, p3, :cond_2f

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V

    :cond_2f
    return-void
.end method

.method public reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 12

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->collectAbsoluteCodePaths(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object p1

    .line 311
    invoke-static {p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 310
    invoke-static {p2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object p2

    .line 312
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v0, :cond_52

    aget-object v4, p2, v3

    .line 313
    invoke-static {v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 314
    :cond_20
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 320
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_33
    if-ge v7, v6, :cond_45

    .line 325
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 326
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_42

    goto :goto_4f

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_45
    if-nez v1, :cond_4c

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    :cond_4c
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_52
    if-eqz v1, :cond_7d

    .line 341
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    :goto_58
    if-ge v2, p1, :cond_7d

    .line 343
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying orphaned at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_7d
    return-void
.end method

.method public final unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 244
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 245
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 246
    const-string v0, "PackageManager"

    const-string v1, "Unloading internal storage is probably a mistake; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_14
    iget-object v3, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v8

    .line 251
    iget-object v3, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    .line 252
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v13

    .line 254
    :try_start_31
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v14
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_11b

    .line 255
    :try_start_39
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 256
    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 257
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 258
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-nez v4, :cond_59

    goto :goto_45

    .line 260
    :cond_59
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    .line 263
    iget-object v5, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "unloadPrivatePackagesInner"

    const/16 v21, 0xd

    const/16 v18, -0x1

    const/16 v19, 0x1

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;I)Lcom/android/server/pm/PackageFreezer;

    move-result-object v16
    :try_end_72
    .catchall {:try_start_39 .. :try_end_72} :catchall_b6

    move-object v5, v4

    .line 266
    :try_start_73
    iget-object v4, v0, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    move-object v6, v5

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v10}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/4 v11, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x1

    move-object/from16 v1, v17

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 268
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :catchall_93
    move-exception v0

    move-object v1, v0

    goto :goto_c6

    .line 270
    :cond_96
    const-string v1, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_73 .. :try_end_b0} :catchall_93

    :goto_b0
    if-eqz v16, :cond_b8

    .line 272
    :try_start_b2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto :goto_b8

    :catchall_b6
    move-exception v0

    goto :goto_11e

    .line 277
    :cond_b8
    :goto_b8
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v1

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b2 .. :try_end_c3} :catchall_b6

    move-object/from16 v1, p1

    goto :goto_45

    :goto_c6
    if-eqz v16, :cond_d0

    .line 263
    :try_start_c8
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v0

    :try_start_cd
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw v1

    .line 280
    :cond_d1
    iget-object v1, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;)V

    .line 281
    monitor-exit v14
    :try_end_d7
    .catchall {:try_start_cd .. :try_end_d7} :catchall_b6

    :try_start_d7
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_11b

    if-eqz v13, :cond_df

    .line 282
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 285
    :cond_df
    iget-object v1, v0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v2, v12}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;)V

    .line 287
    iget-object v1, v0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v1

    .line 288
    :try_start_f2
    iget-object v0, v0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 289
    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_118

    .line 293
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    :goto_10b
    const/4 v0, 0x3

    if-ge v2, v0, :cond_117

    .line 296
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 297
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    :cond_117
    return-void

    :catchall_118
    move-exception v0

    .line 289
    :try_start_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v0

    :catchall_11b
    move-exception v0

    move-object v1, v0

    goto :goto_123

    .line 281
    :goto_11e
    :try_start_11e
    monitor-exit v14
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_b6

    :try_start_11f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_11b

    :goto_123
    if-eqz v13, :cond_12d

    .line 253
    :try_start_125
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_129

    goto :goto_12d

    :catchall_129
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12d
    :goto_12d
    throw v1
.end method
