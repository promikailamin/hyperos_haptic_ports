.class public final Lcom/android/server/pm/FreeStorageHelper;
.super Ljava/lang/Object;
.source "FreeStorageHelper.java"


# static fields
.field public static final FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnableFreeCacheV2:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/FreeStorageHelper;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .line 76
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "fw.free_cache_v2"

    const/4 v3, 0x1

    .line 77
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 76
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/FreeStorageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/Context;Z)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 70
    iput-object p2, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 71
    iput-object p3, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mEnableFreeCacheV2:Z

    return-void
.end method


# virtual methods
.method public freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 191
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_58

    .line 194
    :try_start_18
    iget-object v4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v4
    :try_end_20
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_18 .. :try_end_20} :catch_43

    .line 195
    :try_start_20
    iget-object v5, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long/2addr v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v2, v3, v0}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V

    .line 196
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object p0

    .line 200
    iget p2, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 p3, -0x6

    if-ne p2, p3, :cond_3b

    const/4 p2, -0x1

    .line 202
    iput p2, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_46

    .line 205
    :cond_3b
    :goto_3b
    iget p0, p0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_39

    if-eqz v4, :cond_45

    .line 206
    :try_start_3f
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_42
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3f .. :try_end_42} :catch_43

    return p0

    :catch_43
    move-exception p0

    goto :goto_51

    :cond_45
    return p0

    :goto_46
    if-eqz v4, :cond_50

    .line 194
    :try_start_48
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p2

    :try_start_4d
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw p0
    :try_end_51
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4d .. :try_end_51} :catch_43

    .line 207
    :goto_51
    const-string p2, "PackageManager"

    const-string p3, "Failed to free cache"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    return p1
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .registers 15

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 87
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-ltz v0, :cond_18

    goto/16 :goto_166

    .line 90
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mEnableFreeCacheV2:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_13a

    .line 91
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x1

    and-int/2addr p4, v0

    if-eqz p4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    if-eqz v3, :cond_45

    if-nez v0, :cond_36

    .line 97
    const-string/jumbo p4, "persist.sys.preloads.file_cache_expired"

    .line 98
    invoke-static {p4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_45

    .line 99
    :cond_36
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_45

    goto/16 :goto_166

    :cond_45
    if-eqz v3, :cond_5c

    if-eqz v0, :cond_5c

    .line 105
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object p4

    invoke-static {p4}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_5c

    goto/16 :goto_166

    .line 110
    :cond_5c
    :try_start_5c
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p4
    :try_end_64
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5c .. :try_end_64} :catch_81

    .line 111
    :try_start_64
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v2, 0x100

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_73

    if-eqz p4, :cond_81

    .line 112
    :try_start_6f
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_72
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6f .. :try_end_72} :catch_81

    goto :goto_81

    :catchall_73
    move-exception v0

    move-object v2, v0

    if-eqz p4, :cond_80

    .line 110
    :try_start_77
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_80

    :catchall_7b
    move-exception v0

    move-object p4, v0

    :try_start_7d
    invoke-virtual {v2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v2
    :try_end_81
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7d .. :try_end_81} :catch_81

    .line 114
    :catch_81
    :cond_81
    :goto_81
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long p4, v4, p2

    if-ltz p4, :cond_8b

    goto/16 :goto_166

    .line 116
    :cond_8b
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 117
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v4

    if-eqz v3, :cond_b3

    .line 119
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v0, "unused_static_shared_lib_min_cache_period"

    sget-wide v6, Lcom/android/server/pm/FreeStorageHelper;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    invoke-static {p4, v0, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    move-wide v6, p2

    .line 119
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/SharedLibrariesImpl;->pruneUnusedStaticSharedLibraries(Lcom/android/server/pm/Computer;JJ)Z

    move-result p2

    if-eqz p2, :cond_b4

    goto/16 :goto_166

    :cond_b3
    move-wide v6, p2

    :cond_b4
    const-wide/32 p2, 0x240c8400

    if-eqz v3, :cond_d1

    .line 131
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p4, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string v0, "installed_instant_app_min_cache_period"

    .line 132
    invoke-static {p4, v0, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 131
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result p4

    if-eqz p4, :cond_d1

    goto/16 :goto_166

    .line 142
    :cond_d1
    :try_start_d1
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p4, p4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p4
    :try_end_d9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d1 .. :try_end_d9} :catch_f6

    .line 143
    :try_start_d9
    iget-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v2, 0x300

    invoke-virtual {v0, p1, v6, v7, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_e8

    if-eqz p4, :cond_f6

    .line 145
    :try_start_e4
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_e7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e4 .. :try_end_e7} :catch_f6

    goto :goto_f6

    :catchall_e8
    move-exception v0

    move-object v2, v0

    if-eqz p4, :cond_f5

    .line 142
    :try_start_ec
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_f5

    :catchall_f0
    move-exception v0

    move-object p4, v0

    :try_start_f2
    invoke-virtual {v2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f5
    :goto_f5
    throw v2
    :try_end_f6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f2 .. :try_end_f6} :catch_f6

    .line 147
    :catch_f6
    :cond_f6
    :goto_f6
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    cmp-long p4, v8, v6

    if-ltz p4, :cond_ff

    goto :goto_166

    :cond_ff
    if-eqz v3, :cond_119

    .line 154
    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p4, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object p4, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v0, "uninstalled_instant_app_min_cache_period"

    .line 155
    invoke-static {p4, v0, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 154
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstantAppRegistry;->pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z

    move-result p2

    if-eqz p2, :cond_119

    goto :goto_166

    .line 165
    :cond_119
    iget-object p2, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p3, Lcom/android/server/StorageManagerInternal;

    .line 166
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/StorageManagerInternal;

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p3

    sub-long p3, v6, p3

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_132

    .line 169
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/StorageManagerInternal;->freeCache(Ljava/lang/String;J)V

    .line 173
    :cond_132
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->freeStageDirs(Ljava/lang/String;)V

    goto :goto_15e

    :cond_13a
    move-wide v6, p2

    .line 175
    :try_start_13b
    iget-object p2, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p2
    :try_end_143
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_13b .. :try_end_143} :catch_15e

    .line 176
    :try_start_143
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, v6, v7, v2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_14a
    .catchall {:try_start_143 .. :try_end_14a} :catchall_150

    if-eqz p2, :cond_15e

    .line 177
    :try_start_14c
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_14f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14c .. :try_end_14f} :catch_15e

    goto :goto_15e

    :catchall_150
    move-exception v0

    move-object p0, v0

    if-eqz p2, :cond_15d

    .line 175
    :try_start_154
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_157
    .catchall {:try_start_154 .. :try_end_157} :catchall_158

    goto :goto_15d

    :catchall_158
    move-exception v0

    move-object p1, v0

    :try_start_15a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15d
    :goto_15d
    throw p0
    :try_end_15e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_15a .. :try_end_15e} :catch_15e

    .line 180
    :catch_15e
    :cond_15e
    :goto_15e
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide p0

    cmp-long p0, p0, v6

    if-ltz p0, :cond_167

    :goto_166
    return-void

    .line 182
    :cond_167
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to free "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on storage device at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performFstrimIfNeeded()V
    .registers 9

    .line 214
    const-string v0, "Only the system can request fstrim"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 218
    :try_start_5
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_52

    .line 219
    const-string v1, "PackageManager"

    if-eqz v0, :cond_4c

    .line 221
    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "fstrim_mandatory_interval"

    const-wide/32 v3, 0xf731400

    .line 221
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_52

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->lastMaintenance()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p0, v4, v2

    if-lez p0, :cond_52

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No disk maintenance in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; running immediately"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->runMaintenance()V

    return-void

    .line 237
    :cond_4c
    const-string/jumbo p0, "storageManager service unavailable!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_52} :catch_52

    :catch_52
    :cond_52
    return-void
.end method
