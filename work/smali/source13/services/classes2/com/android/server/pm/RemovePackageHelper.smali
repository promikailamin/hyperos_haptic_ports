.class final Lcom/android/server/pm/RemovePackageHelper;
.super Ljava/lang/Object;
.source "RemovePackageHelper.java"


# instance fields
.field private final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field private final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 78
    new-instance v0, Lcom/android/server/pm/AppDataHelper;

    invoke-direct {v0, p1}, Lcom/android/server/pm/AppDataHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;)V
    .registers 4
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "appDataHelper"    # Lcom/android/server/pm/AppDataHelper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 69
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getIncrementalManager()Landroid/os/incremental/IncrementalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 70
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 71
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 72
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 73
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 74
    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 75
    return-void
.end method

.method private cleanPackageDataStructuresLILPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageRemoved(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackageProperty()Lcom/android/server/pm/PackageProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageProperty;->removeAllProperties(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 155
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 156
    .local v0, "instrumentationSize":I
    const/4 v1, 0x0

    .line 158
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    const/16 v3, 0x100

    const/16 v4, 0x20

    if-ge v2, v0, :cond_58

    .line 159
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 160
    .local v5, "a":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    iget-object v6, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getInstrumentation()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v6

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_55

    if-eqz p2, :cond_55

    .line 162
    if-nez v1, :cond_4b

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_4e

    .line 165
    :cond_4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    :goto_4e
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .end local v5    # "a":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 170
    :cond_58
    const-string v5, "PackageManager"

    if-eqz v1, :cond_76

    .line 171
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_76

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Instrumentation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_76
    const/4 v1, 0x0

    .line 175
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 177
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 178
    .local v6, "libraryNamesSize":I
    const/4 v2, 0x0

    :goto_86
    if-ge v2, v6, :cond_b4

    .line 179
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 180
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibraryLPw(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 181
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v8, :cond_b1

    if-eqz p2, :cond_b1

    .line 182
    if-nez v1, :cond_ab

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v8

    goto :goto_ae

    .line 185
    :cond_ab
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :goto_ae
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .end local v7    # "name":Ljava/lang/String;
    :cond_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 193
    .end local v6    # "libraryNamesSize":I
    :cond_b4
    const/4 v1, 0x0

    .line 196
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e5

    .line 197
    iget-object v6, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 198
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v8

    int-to-long v8, v8

    .line 197
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibraryLPw(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 199
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_e5

    if-eqz p2, :cond_e5

    .line 200
    if-nez v1, :cond_db

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v6

    goto :goto_de

    .line 203
    :cond_db
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :goto_de
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_e5
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_114

    .line 210
    iget-object v6, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v8

    .line 210
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibraryLPw(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 212
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_114

    if-eqz p2, :cond_114

    .line 213
    if-nez v1, :cond_10a

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    goto :goto_10d

    .line 216
    :cond_10a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :goto_10d
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_114
    if-eqz v1, :cond_130

    .line 224
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_130

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Libraries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_130
    return-void
.end method

.method private removeCachedResult(Ljava/io/File;)V
    .registers 4
    .param p1, "codePath"    # Ljava/io/File;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    .line 113
    return-void

    .line 116
    :cond_9
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    .line 118
    .local v0, "cacher":Lcom/android/server/pm/parsing/PackageCacher;
    invoke-virtual {v0, p1}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    .line 119
    return-void
.end method


# virtual methods
.method synthetic lambda$removePackageDataLIF$0$com-android-server-pm-RemovePackageHelper(I)V
    .registers 6
    .param p1, "appIdToRemove"    # I

    .line 348
    const-wide/32 v0, 0x40000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearKeystoreData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_24

    .line 352
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 353
    throw v2
.end method

.method public removeCodePathLI(Ljava/io/File;)V
    .registers 8
    .param p1, "codePath"    # Ljava/io/File;

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, "codePathParent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "~~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 87
    .local v1, "needRemoveParent":Z
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_25

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 89
    .local v2, "isIncremental":Z
    :goto_26
    if-eqz v2, :cond_35

    .line 90
    if-eqz v1, :cond_30

    .line 91
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v3, v0}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    goto :goto_35

    .line 93
    :cond_30
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v3, p1}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    .line 97
    :cond_35
    :goto_35
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz v1, :cond_50

    .line 100
    iget-object v4, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/android/server/pm/RemovePackageHelper;->removeCachedResult(Ljava/io/File;)V
    :try_end_50
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_15 .. :try_end_50} :catch_51

    .line 105
    .end local v2    # "isIncremental":Z
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_50
    goto :goto_59

    .line 103
    :catch_51
    move-exception v2

    .line 104
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "PackageManager"

    const-string v4, "Failed to remove code path"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0    # "codePathParent":Ljava/io/File;
    .end local v1    # "needRemoveParent":Z
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_59
    goto :goto_5d

    .line 107
    :cond_5a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 109
    :goto_5d
    return-void
.end method

.method public removePackageDataLIF(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/pm/PackageRemovedInfo;IZ)V
    .registers 26
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "allUserHandles"    # [I
    .param p3, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p4, "flags"    # I
    .param p5, "writeSettings"    # Z

    .line 236
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, "packageName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_29

    const-string v0, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackageDataLI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 240
    .local v12, "deletedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_5b

    .line 241
    iput-object v11, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 243
    if-eqz v12, :cond_45

    .line 244
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_45

    move v6, v5

    goto :goto_46

    :cond_45
    move v6, v0

    :goto_46
    iput-boolean v6, v4, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 245
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 246
    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    .line 245
    invoke-virtual {v2, v6, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lcom/android/server/pm/PackageRemovedInfo;->populateUsers([ILcom/android/server/pm/PackageSetting;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 250
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, -0x80000000

    and-int v7, p4, v7

    if-eqz v7, :cond_67

    move v7, v5

    goto :goto_68

    :cond_67
    move v7, v0

    :goto_68
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    .line 252
    and-int/lit8 v6, p4, 0x1

    const/4 v13, -0x1

    if-nez v6, :cond_8f

    .line 254
    if-eqz v12, :cond_74

    .line 255
    move-object v6, v12

    .local v6, "resolvedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_80

    .line 259
    .end local v6    # "resolvedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_74
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-static {v6, v7}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 262
    .restart local v6    # "resolvedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_80
    iget-object v7, v1, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    const/4 v8, 0x7

    invoke-virtual {v7, v6, v13, v8}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)V

    .line 264
    iget-object v7, v1, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 265
    if-eqz v4, :cond_8f

    .line 266
    iput-boolean v5, v4, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 270
    .end local v6    # "resolvedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_8f
    const/4 v5, -0x1

    .line 273
    .local v5, "removedAppId":I
    const/4 v14, 0x0

    .line 274
    .local v14, "installedStateChanged":Z
    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_169

    .line 275
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v15, v6

    .line 276
    .local v15, "changedUsers":Landroid/util/SparseBooleanArray;
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v10

    .line 277
    :try_start_a0
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearPackage(Ljava/lang/String;)V

    .line 278
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Lcom/android/server/pm/Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 279
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    move-object v8, v6

    .line 280
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 281
    invoke-interface {v8, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 280
    invoke-virtual {v6, v8, v7, v0}, Lcom/android/server/pm/AppsFilterImpl;->removePackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 282
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v11}, Lcom/android/server/pm/Settings;->removePackageLPw(Ljava/lang/String;)I

    move-result v6
    :try_end_d0
    .catchall {:try_start_a0 .. :try_end_d0} :catchall_162

    move v7, v6

    .line 283
    .end local v5    # "removedAppId":I
    .local v7, "removedAppId":I
    if-eqz v4, :cond_dc

    .line 284
    :try_start_d3
    iput v7, v4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I
    :try_end_d5
    .catchall {:try_start_d3 .. :try_end_d5} :catchall_d6

    goto :goto_dc

    .line 303
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    :catchall_d6
    move-exception v0

    move v5, v7

    move-object/from16 v19, v10

    goto/16 :goto_165

    .line 286
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_dc
    :goto_dc
    :try_start_dc
    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v11}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11d

    .line 289
    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5
    :try_end_ee
    .catchall {:try_start_dc .. :try_end_ee} :catchall_15a

    move-object v6, v5

    .line 291
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v6, :cond_f6

    :try_start_f1
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v5
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_d6

    goto :goto_fa

    :cond_f6
    :try_start_f6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_fa
    move-object v9, v5

    .line 292
    .local v9, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v16
    :try_end_101
    .catchall {:try_start_f6 .. :try_end_101} :catchall_15a

    const/16 v17, -0x1

    move-object v0, v6

    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .local v0, "sus":Lcom/android/server/pm/SharedUserSetting;
    move-object v6, v11

    move/from16 v18, v7

    .end local v7    # "removedAppId":I
    .local v18, "removedAppId":I
    move/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .local v16, "snapshot":Lcom/android/server/pm/Computer;
    move-object v8, v12

    move-object/from16 v19, v10

    move/from16 v10, v17

    :try_start_110
    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 295
    if-eqz v0, :cond_123

    .line 296
    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/Settings;->checkAndConvertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_123

    .line 286
    .end local v0    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v16    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v18    # "removedAppId":I
    .restart local v7    # "removedAppId":I
    .restart local v8    # "snapshot":Lcom/android/server/pm/Computer;
    :cond_11d
    move/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v19, v10

    .line 299
    .end local v7    # "removedAppId":I
    .end local v8    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v16    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v18    # "removedAppId":I
    :cond_123
    :goto_123
    iget-object v0, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {v0, v5, v15, v13}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 302
    iget-object v0, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->removeRenamedPackageLPw(Ljava/lang/String;)V

    .line 303
    .end local v16    # "snapshot":Lcom/android/server/pm/Computer;
    monitor-exit v19
    :try_end_138
    .catchall {:try_start_110 .. :try_end_138} :catchall_156

    .line 304
    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_153

    .line 305
    new-instance v0, Lcom/android/server/pm/PreferredActivityHelper;

    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v5}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 307
    .local v0, "preferredActivityHelper":Lcom/android/server/pm/PreferredActivityHelper;
    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-virtual {v0, v5, v15}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 309
    iget-object v5, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v13}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 314
    .end local v0    # "preferredActivityHelper":Lcom/android/server/pm/PreferredActivityHelper;
    .end local v15    # "changedUsers":Landroid/util/SparseBooleanArray;
    :cond_153
    move/from16 v5, v18

    goto :goto_169

    .line 303
    .restart local v15    # "changedUsers":Landroid/util/SparseBooleanArray;
    :catchall_156
    move-exception v0

    move/from16 v5, v18

    goto :goto_165

    .end local v18    # "removedAppId":I
    .restart local v7    # "removedAppId":I
    :catchall_15a
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v19, v10

    move/from16 v5, v18

    .end local v7    # "removedAppId":I
    .restart local v18    # "removedAppId":I
    goto :goto_165

    .end local v18    # "removedAppId":I
    .restart local v5    # "removedAppId":I
    :catchall_162
    move-exception v0

    move-object/from16 v19, v10

    :goto_165
    :try_start_165
    monitor-exit v19
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_167

    throw v0

    :catchall_167
    move-exception v0

    goto :goto_165

    .line 314
    .end local v15    # "changedUsers":Landroid/util/SparseBooleanArray;
    :cond_169
    :goto_169
    if-eqz v4, :cond_1c1

    iget-object v0, v4, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    if-eqz v0, :cond_1c1

    .line 315
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v0, :cond_17a

    .line 316
    const-string v0, "PackageManager"

    const-string v6, "Propagating install state across downgrade"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_17a
    array-length v0, v3

    const/4 v6, 0x0

    :goto_17c
    if-ge v6, v0, :cond_1c1

    aget v7, v3, v6

    .line 319
    .local v7, "userId":I
    iget-object v8, v4, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    invoke-static {v8, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    .line 320
    .local v8, "installed":Z
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v9, :cond_1ac

    .line 321
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    user "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, " => "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1ac
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eq v8, v9, :cond_1b3

    .line 324
    const/4 v14, 0x1

    .line 326
    :cond_1b3
    invoke-virtual {v2, v8, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 327
    if-eqz v8, :cond_1bd

    .line 328
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v7}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_1be

    .line 327
    :cond_1bd
    const/4 v9, 0x0

    .line 318
    .end local v7    # "userId":I
    .end local v8    # "installed":Z
    :goto_1be
    add-int/lit8 v6, v6, 0x1

    goto :goto_17c

    .line 332
    :cond_1c1
    iget-object v0, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    .line 334
    if-eqz p5, :cond_1d0

    .line 336
    :try_start_1c8
    iget-object v0, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP()V

    goto :goto_1d0

    .line 341
    :catchall_1ce
    move-exception v0

    goto :goto_1ee

    .line 338
    :cond_1d0
    :goto_1d0
    if-eqz v14, :cond_1d9

    .line 339
    iget-object v0, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 341
    :cond_1d9
    monitor-exit v6
    :try_end_1da
    .catchall {:try_start_1c8 .. :try_end_1da} :catchall_1ce

    .line 343
    if-eq v5, v13, :cond_1ed

    .line 345
    move v0, v5

    .line 346
    .local v0, "appIdToRemove":I
    iget-object v6, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v0}, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/RemovePackageHelper;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    .end local v0    # "appIdToRemove":I
    :cond_1ed
    return-void

    .line 341
    :goto_1ee
    :try_start_1ee
    monitor-exit v6
    :try_end_1ef
    .catchall {:try_start_1ee .. :try_end_1ef} :catchall_1ce

    throw v0
.end method

.method public removePackageLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 124
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 125
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_18

    .line 126
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    goto :goto_40

    .line 127
    :cond_18
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v1, :cond_40

    if-eqz p2, :cond_40

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mExtras == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_40
    :goto_40
    return-void
.end method

.method removePackageLI(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "chatty"    # Z

    .line 135
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_1e

    .line 136
    if-eqz p2, :cond_1e

    .line 137
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1e
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 143
    :try_start_23
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 144
    .local v1, "removedPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v1, :cond_32

    .line 145
    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanPackageDataStructuresLILPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 147
    .end local v1    # "removedPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_32
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_34

    throw v1
.end method
