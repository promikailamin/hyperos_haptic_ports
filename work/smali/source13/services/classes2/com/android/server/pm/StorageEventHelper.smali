.class public final Lcom/android/server/pm/StorageEventHelper;
.super Landroid/os/storage/StorageEventListener;
.source "StorageEventHelper.java"


# instance fields
.field private final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field final mLoadedVolumes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V
    .registers 6
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "deletePackageHelper"    # Lcom/android/server/pm/DeletePackageHelper;
    .param p3, "removePackageHelper"    # Lcom/android/server/pm/RemovePackageHelper;

    .line 74
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 76
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, v1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 77
    iput-object p2, p0, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 78
    iput-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 79
    return-void
.end method

.method private collectAbsoluteCodePaths(Lcom/android/server/pm/Computer;)Ljava/util/List;
    .registers 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 371
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    .line 372
    .local v1, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 373
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 374
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 375
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 377
    .end local v3    # "i":I
    :cond_25
    return-object v0
.end method

.method private loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method private loadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    .registers 22
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 142
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 143
    .local v3, "volumeUuid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 144
    const-string v0, "PackageManager"

    const-string v4, "Loading internal storage is probably a mistake; ignoring"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 148
    :cond_14
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    iget-object v4, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object v4, v0

    .line 149
    .local v4, "appDataHelper":Lcom/android/server/pm/AppDataHelper;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 150
    .local v5, "freezers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageFreezer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 151
    .local v6, "loaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v0

    or-int/lit8 v7, v0, 0x8

    .line 155
    .local v7, "parseFlags":I
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v8, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v8}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    move-object v8, v0

    .line 156
    .local v8, "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    .line 157
    :try_start_3d
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    move-object v10, v0

    .line 158
    .local v10, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    .line 159
    .local v11, "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    monitor-exit v9
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_237

    .line 161
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_54
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_d9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 162
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "loadPrivatePackagesInner"

    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v14

    .line 166
    nop

    .line 167
    :try_start_77
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPath()Ljava/io/File;

    move-result-object v0

    const/16 v15, 0x200

    .line 166
    invoke-virtual {v8, v0, v7, v15, v12}, Lcom/android/server/pm/InstallPackageHelper;->scanSystemPackageTracedLI(Ljava/io/File;IILandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 168
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_77 .. :try_end_84} :catch_8b
    .catchall {:try_start_77 .. :try_end_84} :catchall_87

    .line 172
    move/from16 v16, v7

    goto :goto_b8

    .line 180
    .end local v0    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_87
    move-exception v0

    move/from16 v16, v7

    goto :goto_d5

    .line 170
    :catch_8b
    move-exception v0

    .line 171
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_8c
    const-string v12, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_d2

    move/from16 v16, v7

    .end local v7    # "parseFlags":I
    .local v16, "parseFlags":I
    :try_start_95
    const-string v7, "Failed to scan "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPath()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ": "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_b8
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 175
    nop

    .line 176
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    const/4 v7, -0x1

    const v12, 0x20027

    .line 175
    invoke-virtual {v4, v0, v7, v12}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 180
    :cond_ce
    monitor-exit v14

    .line 181
    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v7, v16

    goto :goto_54

    .line 180
    .end local v16    # "parseFlags":I
    .restart local v7    # "parseFlags":I
    .restart local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_d2
    move-exception v0

    move/from16 v16, v7

    .end local v7    # "parseFlags":I
    .restart local v16    # "parseFlags":I
    :goto_d5
    monitor-exit v14
    :try_end_d6
    .catchall {:try_start_95 .. :try_end_d6} :catchall_d7

    throw v0

    :catchall_d7
    move-exception v0

    goto :goto_d5

    .line 184
    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "parseFlags":I
    .restart local v7    # "parseFlags":I
    :cond_d9
    move/from16 v16, v7

    .end local v7    # "parseFlags":I
    .restart local v16    # "parseFlags":I
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 185
    .local v7, "sm":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v13

    .line 186
    .local v13, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v9, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/storage/StorageManagerInternal;

    .line 188
    .local v14, "smInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_199

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 190
    .local v12, "user":Landroid/content/pm/UserInfo;
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_129

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    .line 191
    invoke-virtual {v14, v0}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 192
    const/4 v0, 0x3

    .local v0, "flags":I
    goto :goto_132

    .line 193
    .end local v0    # "flags":I
    :cond_129
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v0}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 194
    const/4 v0, 0x1

    .line 198
    .restart local v0    # "flags":I
    :goto_132
    iget-object v9, v2, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v9, v9, Landroid/os/storage/DiskInfo;->flags:I

    const/16 v2, 0x20

    and-int/2addr v9, v2

    if-ne v9, v2, :cond_13f

    .line 199
    or-int/lit8 v0, v0, 0x20

    move v2, v0

    goto :goto_140

    .line 198
    :cond_13f
    move v2, v0

    .line 201
    .end local v0    # "flags":I
    .local v2, "flags":I
    :goto_140
    move v9, v2

    .line 203
    .local v9, "pflags":I
    :try_start_141
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I
    :try_end_143
    .catch Ljava/lang/RuntimeException; {:try_start_141 .. :try_end_143} :catch_166

    move-object/from16 v18, v8

    .end local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .local v18, "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    :try_start_145
    iget v8, v12, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v7, v3, v0, v8, v9}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;III)V

    .line 204
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_14f
    .catch Ljava/lang/RuntimeException; {:try_start_145 .. :try_end_14f} :catch_162

    .line 205
    :try_start_14f
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I
    :try_end_151
    .catchall {:try_start_14f .. :try_end_151} :catchall_15b

    move-object/from16 v19, v7

    const/4 v7, 0x1

    .end local v7    # "sm":Landroid/os/storage/StorageManager;
    .local v19, "sm":Landroid/os/storage/StorageManager;
    :try_start_154
    invoke-virtual {v4, v3, v0, v2, v7}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V

    .line 207
    monitor-exit v8

    .line 214
    goto :goto_185

    .line 207
    :catchall_159
    move-exception v0

    goto :goto_15e

    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .restart local v7    # "sm":Landroid/os/storage/StorageManager;
    :catchall_15b
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "sm":Landroid/os/storage/StorageManager;
    .restart local v19    # "sm":Landroid/os/storage/StorageManager;
    :goto_15e
    monitor-exit v8
    :try_end_15f
    .catchall {:try_start_154 .. :try_end_15f} :catchall_159

    .end local v2    # "flags":I
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v4    # "appDataHelper":Lcom/android/server/pm/AppDataHelper;
    .end local v5    # "freezers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageFreezer;>;"
    .end local v6    # "loaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v9    # "pflags":I
    .end local v10    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    .end local v13    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v14    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v16    # "parseFlags":I
    .end local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .end local p0    # "this":Lcom/android/server/pm/StorageEventHelper;
    .end local p1    # "vol":Landroid/os/storage/VolumeInfo;
    :try_start_15f
    throw v0
    :try_end_160
    .catch Ljava/lang/RuntimeException; {:try_start_15f .. :try_end_160} :catch_160

    .line 208
    .restart local v2    # "flags":I
    .restart local v3    # "volumeUuid":Ljava/lang/String;
    .restart local v4    # "appDataHelper":Lcom/android/server/pm/AppDataHelper;
    .restart local v5    # "freezers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageFreezer;>;"
    .restart local v6    # "loaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v9    # "pflags":I
    .restart local v10    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v11    # "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v12    # "user":Landroid/content/pm/UserInfo;
    .restart local v13    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .restart local v14    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v16    # "parseFlags":I
    .restart local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v19    # "sm":Landroid/os/storage/StorageManager;
    .restart local p0    # "this":Lcom/android/server/pm/StorageEventHelper;
    .restart local p1    # "vol":Landroid/os/storage/VolumeInfo;
    :catch_160
    move-exception v0

    goto :goto_16b

    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .restart local v7    # "sm":Landroid/os/storage/StorageManager;
    :catch_162
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "sm":Landroid/os/storage/StorageManager;
    .restart local v19    # "sm":Landroid/os/storage/StorageManager;
    goto :goto_16b

    .end local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .restart local v7    # "sm":Landroid/os/storage/StorageManager;
    .restart local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    :catch_166
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .line 213
    .end local v7    # "sm":Landroid/os/storage/StorageManager;
    .end local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v19    # "sm":Landroid/os/storage/StorageManager;
    :goto_16b
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "flags":I
    .local v17, "flags":I
    const-string v2, "Failed to prepare storage: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "pflags":I
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    .end local v17    # "flags":I
    :goto_185
    move-object/from16 v2, p1

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto/16 :goto_10a

    .line 193
    .end local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .restart local v7    # "sm":Landroid/os/storage/StorageManager;
    .restart local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v12    # "user":Landroid/content/pm/UserInfo;
    :cond_18f
    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .end local v7    # "sm":Landroid/os/storage/StorageManager;
    .end local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v19    # "sm":Landroid/os/storage/StorageManager;
    move-object/from16 v2, p1

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto/16 :goto_10a

    .line 217
    .end local v12    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .restart local v7    # "sm":Landroid/os/storage/StorageManager;
    .restart local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    :cond_199
    move-object/from16 v19, v7

    move-object/from16 v18, v8

    .end local v7    # "sm":Landroid/os/storage/StorageManager;
    .end local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v19    # "sm":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 218
    :try_start_1a2
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    .line 219
    .local v0, "isUpgrade":Z
    if-eqz v0, :cond_1dd

    .line 220
    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build fingerprint changed from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v10, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; regranting permissions for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 224
    :cond_1dd
    iget-object v7, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7, v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {v10}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 229
    iget-object v7, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 230
    .end local v0    # "isUpgrade":Z
    monitor-exit v2
    :try_end_1ed
    .catchall {:try_start_1a2 .. :try_end_1ed} :catchall_234

    .line 232
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_201

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageFreezer;

    .line 233
    .local v2, "freezer":Lcom/android/server/pm/PackageFreezer;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 234
    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    goto :goto_1f1

    .line 236
    :cond_201
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_21d

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded packages "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_21d
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v0, v7, v6, v2}, Lcom/android/server/pm/StorageEventHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;Landroid/content/IIntentReceiver;)V

    .line 238
    iget-object v7, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v7

    .line 239
    :try_start_226
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit v7

    .line 241
    return-void

    .line 240
    :catchall_231
    move-exception v0

    monitor-exit v7
    :try_end_233
    .catchall {:try_start_226 .. :try_end_233} :catchall_231

    throw v0

    .line 230
    :catchall_234
    move-exception v0

    :try_start_235
    monitor-exit v2
    :try_end_236
    .catchall {:try_start_235 .. :try_end_236} :catchall_234

    throw v0

    .line 159
    .end local v10    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v13    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v14    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v16    # "parseFlags":I
    .end local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .end local v19    # "sm":Landroid/os/storage/StorageManager;
    .local v7, "parseFlags":I
    .restart local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    :catchall_237
    move-exception v0

    move/from16 v16, v7

    move-object/from16 v18, v8

    .end local v7    # "parseFlags":I
    .end local v8    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    .restart local v16    # "parseFlags":I
    .restart local v18    # "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    :goto_23c
    :try_start_23c
    monitor-exit v9
    :try_end_23d
    .catchall {:try_start_23c .. :try_end_23d} :catchall_23e

    throw v0

    :catchall_23e
    move-exception v0

    goto :goto_23c
.end method

.method private sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;Landroid/content/IIntentReceiver;)V
    .registers 14
    .param p1, "mediaStatus"    # Z
    .param p2, "replacing"    # Z
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .line 305
    .local p3, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 306
    .local v0, "size":I
    new-array v7, v0, [Ljava/lang/String;

    .line 307
    .local v7, "packageNames":[Ljava/lang/String;
    new-array v8, v0, [I

    .line 308
    .local v8, "packageUids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_20

    .line 309
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 310
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 311
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    aput v3, v8, v1

    .line 308
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 313
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    move v2, p1

    move v3, p2

    move-object v4, v7

    move-object v5, v8

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZ[Ljava/lang/String;[ILandroid/content/IIntentReceiver;)V

    .line 315
    return-void
.end method

.method private unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method private unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V
    .registers 23
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 248
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 249
    .local v3, "volumeUuid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 250
    const-string v0, "PackageManager"

    const-string v4, "Unloading internal storage is probably a mistake; ignoring"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_14
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v12

    .line 255
    .local v12, "userIds":[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 256
    .local v13, "unloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v14

    .line 257
    :try_start_27
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v15
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11f

    .line 258
    :try_start_2c
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 259
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v16, v0

    .line 260
    .local v16, "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    move-object/from16 v17, v4

    .line 261
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_4f

    goto :goto_3a

    .line 263
    :cond_4f
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    move-object v11, v4

    .line 264
    .local v11, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/16 v18, 0x1

    .line 265
    .local v18, "deleteFlags":I
    new-instance v10, Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v4, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v10, v4}, Lcom/android/server/pm/PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageSender;)V

    .line 267
    .local v10, "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    iget-object v4, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unloadPrivatePackagesInner"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v4
    :try_end_6b
    .catchall {:try_start_2c .. :try_end_6b} :catchall_11c

    move-object/from16 v19, v4

    .line 269
    .local v19, "freezer":Lcom/android/server/pm/PackageFreezer;
    :try_start_6d
    iget-object v4, v1, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_b8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/16 v20, 0x0

    move-object v8, v12

    move-object v2, v11

    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move/from16 v11, v20

    :try_start_7c
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 271
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 273
    :cond_86
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_7c .. :try_end_a2} :catchall_b5

    .line 275
    :goto_a2
    if-eqz v19, :cond_a7

    :try_start_a4
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 280
    .end local v19    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :cond_a7
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_a4 .. :try_end_b2} :catchall_11c

    .line 281
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v10    # "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "deleteFlags":I
    move-object/from16 v2, p1

    goto :goto_3a

    .line 267
    .restart local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v10    # "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v18    # "deleteFlags":I
    .restart local v19    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :catchall_b5
    move-exception v0

    move-object v4, v0

    goto :goto_bb

    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_b8
    move-exception v0

    move-object v2, v11

    move-object v4, v0

    .end local v11    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_bb
    if-eqz v19, :cond_c6

    :try_start_bd
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_c6

    :catchall_c1
    move-exception v0

    move-object v5, v0

    :try_start_c3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v12    # "userIds":[I
    .end local v13    # "unloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local p0    # "this":Lcom/android/server/pm/StorageEventHelper;
    .end local p1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_c6
    :goto_c6
    throw v4

    .line 283
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v10    # "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "deleteFlags":I
    .end local v19    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v3    # "volumeUuid":Ljava/lang/String;
    .restart local v12    # "userIds":[I
    .restart local v13    # "unloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local p0    # "this":Lcom/android/server/pm/StorageEventHelper;
    .restart local p1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_c7
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 284
    .end local v16    # "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    monitor-exit v15
    :try_end_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_11c

    .line 285
    :try_start_cd
    monitor-exit v14
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_11f

    .line 287
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_ea

    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unloaded packages "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_ea
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v13, v0}, Lcom/android/server/pm/StorageEventHelper;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;Landroid/content/IIntentReceiver;)V

    .line 289
    iget-object v2, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v2

    .line 290
    :try_start_f2
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_119

    .line 295
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10c
    const/4 v2, 0x3

    if-ge v0, v2, :cond_118

    .line 298
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 299
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_10c

    .line 301
    .end local v0    # "i":I
    :cond_118
    return-void

    .line 291
    :catchall_119
    move-exception v0

    :try_start_11a
    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v0

    .line 284
    :catchall_11c
    move-exception v0

    :try_start_11d
    monitor-exit v15
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v12    # "userIds":[I
    .end local v13    # "unloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local p0    # "this":Lcom/android/server/pm/StorageEventHelper;
    .end local p1    # "vol":Landroid/os/storage/VolumeInfo;
    :try_start_11e
    throw v0

    .line 285
    .restart local v3    # "volumeUuid":Ljava/lang/String;
    .restart local v12    # "userIds":[I
    .restart local v13    # "unloaded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local p0    # "this":Lcom/android/server/pm/StorageEventHelper;
    .restart local p1    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_11f
    move-exception v0

    monitor-exit v14
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_11f

    throw v0
.end method


# virtual methods
.method public dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 381
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 382
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 384
    :cond_9
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 385
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 386
    const-string v1, "Loaded volumes:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v1

    .line 389
    :try_start_20
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_2e

    .line 390
    const-string v2, "(none)"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45

    .line 392
    :cond_2e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget-object v3, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 393
    iget-object v3, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 396
    .end local v2    # "i":I
    :cond_45
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_4a

    .line 397
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 398
    return-void

    .line 396
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method synthetic lambda$loadPrivatePackages$0$com-android-server-pm-StorageEventHelper(Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->loadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method synthetic lambda$unloadPrivatePackages$1$com-android-server-pm-StorageEventHelper(Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->unloadPrivatePackagesInner(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 11
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 111
    const-string v0, "PackageManager"

    const-string v1, "Forgetting internal storage is probably a mistake; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 117
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 118
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 120
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because volume was forgotten"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v4, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v5, Landroid/content/pm/VersionedPackage;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v6, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 124
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 122
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 129
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 130
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_1f

    .line 132
    :cond_74
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    .line 134
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_13 .. :try_end_84} :catchall_82

    throw v1
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 83
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    .line 84
    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v0, v1, :cond_29

    .line 85
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "volumeUuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->loadPrivatePackages(Landroid/os/storage/VolumeInfo;)V

    .end local v0    # "volumeUuid":Ljava/lang/String;
    goto :goto_32

    .line 98
    :cond_29
    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_32

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/pm/StorageEventHelper;->unloadPrivatePackages(Landroid/os/storage/VolumeInfo;)V

    goto :goto_42

    .line 98
    :cond_32
    :goto_32
    goto :goto_42

    .line 101
    :cond_33
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v0, v1, :cond_42

    .line 102
    if-ne p3, v1, :cond_42

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerService;->onEmulatedVolumeMounted(I)V

    .line 106
    :cond_42
    :goto_42
    return-void
.end method

.method public reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 18
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "volumeUuid"    # Ljava/lang/String;

    .line 323
    move-object v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/StorageEventHelper;->collectAbsoluteCodePaths(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v2

    .line 324
    .local v2, "absoluteCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 326
    .local v0, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    nop

    .line 327
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 326
    invoke-static {v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 328
    .local v3, "files":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    move v0, v5

    .end local v0    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v6, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_13
    if-ge v0, v4, :cond_60

    aget-object v7, v3, v0

    .line 329
    .local v7, "file":Ljava/io/File;
    invoke-static {v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_23

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 330
    :cond_23
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2f

    const/4 v8, 0x1

    goto :goto_30

    :cond_2f
    move v8, v5

    .line 331
    .local v8, "isPackage":Z
    :goto_30
    if-nez v8, :cond_33

    .line 333
    goto :goto_5d

    .line 336
    :cond_33
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, "absolutePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 339
    .local v10, "pathValid":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 340
    .local v11, "absoluteCodePathCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3d
    if-ge v12, v11, :cond_50

    .line 341
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 342
    .local v13, "absoluteCodePath":Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 343
    const/4 v10, 0x1

    .line 344
    goto :goto_50

    .line 340
    .end local v13    # "absoluteCodePath":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    .line 348
    .end local v12    # "i":I
    :cond_50
    :goto_50
    if-nez v10, :cond_5d

    .line 349
    if-nez v6, :cond_5a

    .line 350
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 352
    :cond_5a
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "isPackage":Z
    .end local v9    # "absolutePath":Ljava/lang/String;
    .end local v10    # "pathValid":Z
    .end local v11    # "absoluteCodePathCount":I
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 356
    :cond_60
    if-eqz v6, :cond_99

    .line 357
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 358
    .local v4, "fileToDeleteCount":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_68
    if-ge v5, v4, :cond_99

    .line 359
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/io/File;

    .line 360
    .local v7, "fileToDelete":Ljava/io/File;
    const/4 v0, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying orphaned at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 361
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 362
    :try_start_8d
    iget-object v0, v1, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 363
    monitor-exit v8

    .line 358
    .end local v7    # "fileToDelete":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 363
    .restart local v7    # "fileToDelete":Ljava/io/File;
    :catchall_96
    move-exception v0

    monitor-exit v8
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_96

    throw v0

    .line 366
    .end local v4    # "fileToDeleteCount":I
    .end local v5    # "i":I
    .end local v7    # "fileToDelete":Ljava/io/File;
    :cond_99
    return-void
.end method
