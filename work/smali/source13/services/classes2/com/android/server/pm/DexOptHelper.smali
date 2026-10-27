.class final Lcom/android/server/pm/DexOptHelper;
.super Ljava/lang/Object;
.source "DexOptHelper.java"


# static fields
.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# instance fields
.field private mDexOptDialogShown:Z

.field private mEnableAsyncDexopt:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 106
    return-void
.end method

.method private static applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 10
    .param p0, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p5, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 735
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p3, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p4, "sortTemp":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 736
    .local v1, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 737
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    .end local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_19
    goto :goto_4

    .line 741
    :cond_1a
    invoke-static {p4, p5}, Lcom/android/server/pm/DexOptHelper;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 742
    invoke-interface {p3, p4}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 744
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 745
    .restart local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-interface {p0, v1}, Lcom/android/server/pm/Computer;->findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object v2

    .line 748
    .local v2, "deps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_46

    .line 749
    invoke-interface {v2, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 750
    invoke-interface {p2, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 751
    invoke-interface {p3, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 753
    .end local v1    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "deps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_46
    goto :goto_24

    .line 755
    :cond_47
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 756
    return-void
.end method

.method private checkAndDexOptSystemUi()V
    .registers 15

    .line 308
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 309
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 310
    const v2, 0x104003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "sysUiPackageName":Ljava/lang/String;
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 312
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_36

    .line 313
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System UI package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not found for dexopting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 319
    :cond_36
    const/4 v3, 0x1

    .line 321
    .local v3, "reason":I
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "defaultCompilerFilter":Ljava/lang/String;
    const-string v5, "dalvik.vm.systemuicompilerfilter"

    .line 323
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "targetCompilerFilter":Ljava/lang/String;
    invoke-static {v5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 327
    move-object v6, v4

    .line 328
    .local v6, "compilerFilter":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/pm/DexOptHelper;->getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v7, "profileFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 334
    :try_start_57
    iget-object v8, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_9a

    .line 335
    :try_start_5c
    iget-object v9, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 336
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v11

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 337
    invoke-static {v13}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 335
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/pm/Installer;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 338
    move-object v6, v5

    goto :goto_95

    .line 340
    :cond_79
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to copy profile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_95
    monitor-exit v8

    .line 345
    goto :goto_b7

    .line 342
    :catchall_97
    move-exception v9

    monitor-exit v8
    :try_end_99
    .catchall {:try_start_5c .. :try_end_99} :catchall_97

    .end local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v1    # "sysUiPackageName":Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "reason":I
    .end local v4    # "defaultCompilerFilter":Ljava/lang/String;
    .end local v5    # "targetCompilerFilter":Ljava/lang/String;
    .end local v6    # "compilerFilter":Ljava/lang/String;
    .end local v7    # "profileFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/pm/DexOptHelper;
    :try_start_99
    throw v9
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 343
    .restart local v0    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v1    # "sysUiPackageName":Ljava/lang/String;
    .restart local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v3    # "reason":I
    .restart local v4    # "defaultCompilerFilter":Ljava/lang/String;
    .restart local v5    # "targetCompilerFilter":Ljava/lang/String;
    .restart local v6    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "profileFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/pm/DexOptHelper;
    :catch_9a
    move-exception v8

    .line 344
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to copy profile "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v7    # "profileFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b7
    :goto_b7
    goto :goto_b9

    .line 348
    .end local v6    # "compilerFilter":Ljava/lang/String;
    :cond_b8
    move-object v6, v5

    .line 351
    .restart local v6    # "compilerFilter":Ljava/lang/String;
    :goto_b9
    new-instance v13, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v13

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v13}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    .line 353
    return-void
.end method

.method private static getBcpApexes()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    const-string v0, "BOOTCLASSPATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "bcp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 859
    const-string v1, "PackageManager"

    const-string v2, "Unable to get BOOTCLASSPATH"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 863
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v1, "bcpApexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_26
    if-ge v5, v3, :cond_56

    aget-object v6, v2, v5

    .line 865
    .local v6, "pathStr":Ljava/lang/String;
    new-array v7, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    .line 868
    .local v7, "path":Ljava/nio/file/Path;
    invoke-interface {v7}, Ljava/nio/file/Path;->getNameCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_53

    invoke-interface {v7, v4}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "apex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 869
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v6    # "pathStr":Ljava/lang/String;
    .end local v7    # "path":Ljava/nio/file/Path;
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 873
    :cond_56
    return-object v1
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 775
    const/4 v0, 0x0

    .line 777
    .local v0, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p0

    move v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 780
    goto :goto_15

    .line 779
    :catch_14
    move-exception v1

    .line 781
    :goto_15
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 782
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_34

    .line 783
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 784
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_20

    .line 787
    :cond_34
    return-object v1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 3
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 647
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;
    .registers 19
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 654
    .local p0, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 655
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v12, p0

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v1

    .line 658
    .local v13, "remainingPkgSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 660
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    .local v5, "sortTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    .line 665
    .local v14, "snapshot":Lcom/android/server/pm/Computer;
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda1;-><init>()V

    move-object v1, v14

    move-object v3, v0

    move-object v4, v13

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/pm/DexOptHelper;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 671
    .local v2, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;

    invoke-direct {v7, v2}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArraySet;)V

    move-object v6, v14

    move-object v8, v0

    move-object v9, v13

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 675
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    .line 676
    .local v3, "dexManager":Lcom/android/server/pm/dex/DexManager;
    new-instance v7, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7, v3}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 684
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v15, "PackageManager"

    if-nez v4, :cond_c1

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v4

    if-eqz v4, :cond_be

    .line 686
    if-eqz p2, :cond_67

    .line 687
    const-string v4, "Looking at historical package use"

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_67
    new-instance v4, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 691
    invoke-static {v4}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v4

    .line 690
    invoke-static {v13, v4}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 694
    .local v4, "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_98

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Taking package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as reference in time use"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_98
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v6

    .line 699
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v6

    .line 701
    .local v6, "estimatedPreviousSystemUseTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_b2

    .line 702
    const-wide/32 v8, 0x240c8400

    sub-long v8, v6, v8

    .line 703
    .local v8, "cutoffTime":J
    new-instance v10, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;

    invoke-direct {v10, v8, v9}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;-><init>(J)V

    move-object v8, v10

    .line 705
    .local v8, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_b7

    .line 707
    .end local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_b2
    new-instance v8, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 709
    .restart local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_b7
    move-object/from16 v11, p1

    invoke-static {v13, v11}, Lcom/android/server/pm/DexOptHelper;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 710
    .end local v4    # "lastUsed":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "estimatedPreviousSystemUseTime":J
    move-object v4, v8

    goto :goto_c9

    .line 685
    .end local v8    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_be
    move-object/from16 v11, p1

    goto :goto_c3

    .line 684
    :cond_c1
    move-object/from16 v11, p1

    .line 712
    :goto_c3
    new-instance v4, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda7;-><init>()V

    move-object v8, v4

    .line 714
    .local v4, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_c9
    move-object v6, v14

    move-object v7, v4

    move-object v8, v0

    move-object v9, v13

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 717
    if-eqz p2, :cond_109

    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packages to be dexopted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packages skipped from dexopt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v13}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_109
    return-object v0
.end method

.method private static getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".prof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasBcpApexesChanged()Z
    .registers 5

    .line 881
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getBcpApexes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 882
    .local v0, "bcpApexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    .line 883
    .local v1, "apexManager":Lcom/android/server/pm/ApexManager;
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 884
    .local v3, "apexInfo":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v4, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-boolean v4, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz v4, :cond_2f

    .line 885
    const/4 v2, 0x1

    return v2

    .line 887
    .end local v3    # "apexInfo":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    :cond_2f
    goto :goto_15

    .line 888
    :cond_30
    const/4 v2, 0x0

    return v2
.end method

.method private isCallerInstallerForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .registers 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 617
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 618
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 619
    return v1

    .line 621
    :cond_8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    .line 623
    .local v2, "installSource":Lcom/android/server/pm/InstallSource;
    iget-object v3, v2, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 624
    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 625
    .local v3, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_15

    .line 626
    return v1

    .line 628
    :cond_15
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 629
    .local v4, "installerPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-ne v5, v6, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method static synthetic lambda$getPackagesForDexopt$1(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 665
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$2(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3
    .param p0, "pkgNames"    # Landroid/util/ArraySet;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 671
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$3(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3
    .param p0, "dexManager"    # Lcom/android/server/pm/dex/DexManager;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 677
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v0

    .line 677
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$4(Lcom/android/server/pm/pkg/PackageStateInternal;)J
    .registers 3
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 692
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 692
    return-wide v0
.end method

.method static synthetic lambda$getPackagesForDexopt$5(JLcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 5
    .param p0, "cutoffTime"    # J
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 703
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 703
    :goto_f
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$6(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$7(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 712
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$sortPackagesByUsageDate$8(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 6
    .param p0, "pkgSetting1"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "pkgSetting2"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 768
    nop

    .line 769
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 770
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 768
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static packagesToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 791
    .local p0, "pkgSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 794
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 798
    .end local v1    # "index":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private performDexOptInternal(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 7
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 505
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 506
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 507
    .local v1, "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 508
    .local v2, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_4e

    if-nez v2, :cond_24

    goto :goto_4e

    .line 512
    :cond_24
    iget-object v3, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUsage()Lcom/android/server/pm/PackageUsage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageUsage;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 513
    iget-object v3, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v3}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync()Z

    .line 514
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_51

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 517
    .local v3, "callingId":J
    :try_start_41
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptInternalWithDependenciesLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_49

    .line 519
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    return v0

    .line 519
    :catchall_49
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    throw v0

    .line 510
    .end local v3    # "callingId":J
    :cond_4e
    :goto_4e
    const/4 v3, -0x1

    :try_start_4f
    monitor-exit v0

    return v3

    .line 514
    .end local v1    # "p":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v1
.end method

.method private performDexOptInternalWithDependenciesLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 23
    .param p1, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 526
    move-object/from16 v1, p0

    const-string v0, "android"

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 527
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    move-object/from16 v9, p3

    invoke-virtual {v0, v9}, Lcom/android/server/pm/dex/DexManager;->dexoptSystemServer(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0

    .line 533
    :cond_1b
    move-object/from16 v9, p3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 534
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v2, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v0, v2}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    move-object v10, v0

    goto :goto_33

    .line 535
    :cond_2e
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    move-object v10, v0

    :goto_33
    nop

    .line 544
    .local v10, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object v17

    .line 545
    .local v17, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/SharedLibraryInfo;>;"
    nop

    .line 546
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {v0, v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 548
    .local v18, "instructionSets":[Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 549
    new-instance v16, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v5

    .line 551
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v6

    .line 552
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getFlags()I

    move-result v0

    or-int/lit8 v7, v0, 0x40

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 553
    .local v16, "libraryOptions":Lcom/android/server/pm/dex/DexoptOptions;
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 554
    .local v2, "info":Landroid/content/pm/SharedLibraryInfo;
    const/4 v3, 0x0

    .line 555
    .local v3, "depPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v4, 0x0

    .line 556
    .local v4, "depPackageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5

    .line 557
    :try_start_7f
    iget-object v6, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-object v3, v6

    .line 558
    iget-object v6, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    move-object v4, v6

    .line 559
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_7f .. :try_end_9c} :catchall_bc

    .line 560
    if-eqz v3, :cond_bb

    if-eqz v4, :cond_bb

    .line 562
    iget-object v5, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 563
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v14

    iget-object v5, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 564
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v5

    .line 565
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 564
    invoke-virtual {v5, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v15

    .line 562
    move-object v11, v3

    move-object v12, v4

    move-object/from16 v13, v18

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    .line 569
    .end local v2    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "depPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "depPackageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_bb
    goto :goto_6c

    .line 559
    .restart local v2    # "info":Landroid/content/pm/SharedLibraryInfo;
    .restart local v3    # "depPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "depPackageSetting":Lcom/android/server/pm/PackageSetting;
    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v5
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v0

    .line 572
    .end local v2    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "depPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "depPackageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "libraryOptions":Lcom/android/server/pm/dex/DexoptOptions;
    :cond_bf
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 573
    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService;->getOrCreateCompilerPackageStats(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v6

    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 574
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    .line 572
    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 13
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 458
    const-string v0, "dexopt"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 461
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 462
    .local v0, "callingUid":I
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_17

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    move v3, v4

    goto :goto_18

    :cond_17
    :goto_17
    move v3, v5

    .line 464
    .local v3, "isCallerShell":Z
    :goto_18
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "performDexOptTraced: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCallerShell: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 465
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-nez v3, :cond_78

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_78

    .line 467
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped dexOpt for start by shell: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_10d

    .line 468
    nop

    .line 496
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 468
    return v4

    .line 473
    :cond_78
    const/4 v6, 0x0

    .line 474
    .local v6, "isUseEmbeddedDex":Z
    :try_start_79
    iget-object v7, p0, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_10d

    .line 475
    :try_start_7c
    iget-object v8, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 476
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v8, :cond_a3

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v9

    if-nez v9, :cond_a2

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 477
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 478
    :cond_a2
    const/4 v6, 0x1

    .line 480
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_a3
    monitor-exit v7
    :try_end_a4
    .catchall {:try_start_7c .. :try_end_a4} :catchall_10a

    .line 482
    :try_start_a4
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "compilerFilter":Ljava/lang/String;
    const-string/jumbo v8, "pm.dexopt.async.enabled"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/pm/DexOptHelper;->mEnableAsyncDexopt:Z

    .line 484
    if-eqz v8, :cond_c9

    if-nez v6, :cond_c9

    const-string/jumbo v8, "speed"

    .line 485
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    const-string/jumbo v8, "speed-profile"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c9

    :cond_c7
    move v4, v5

    goto :goto_ca

    :cond_c9
    nop

    .line 486
    .local v4, "useAsyncDexopt":Z
    :goto_ca
    if-eqz v4, :cond_102

    .line 487
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/pm/PackageManagerServiceStub;->performDexOptAsyncTask(Lcom/android/server/pm/dex/DexoptOptions;)V

    .line 488
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getDexOptResult()I

    move-result v5

    .line 489
    .local v5, "dexoptResult":I
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dexopt with async: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", finished."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_a4 .. :try_end_fd} :catchall_10d

    .line 490
    nop

    .line 496
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 490
    return v5

    .line 492
    .end local v5    # "dexoptResult":I
    :cond_102
    :try_start_102
    invoke-direct {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptInternal(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v5
    :try_end_106
    .catchall {:try_start_102 .. :try_end_106} :catchall_10d

    .line 496
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 492
    return v5

    .line 480
    .end local v4    # "useAsyncDexopt":Z
    .end local v7    # "compilerFilter":Ljava/lang/String;
    :catchall_10a
    move-exception v4

    :try_start_10b
    monitor-exit v7
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    .end local p0    # "this":Lcom/android/server/pm/DexOptHelper;
    .end local p1    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :try_start_10c
    throw v4
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10d

    .line 496
    .end local v0    # "callingUid":I
    .end local v3    # "isCallerShell":Z
    .end local v6    # "isUseEmbeddedDex":Z
    .restart local p0    # "this":Lcom/android/server/pm/DexOptHelper;
    .restart local p1    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_10d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    throw v0
.end method

.method public static requestCopyPreoptedFiles()V
    .registers 13

    .line 808
    const/16 v0, 0x64

    .line 809
    .local v0, "WAIT_TIME_MS":I
    const-string/jumbo v1, "sys.cppreopt"

    .line 810
    .local v1, "CP_PREOPT_PROPERTY":Ljava/lang/String;
    const-string/jumbo v2, "ro.cp_system_other_odex"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    .line 811
    const-string/jumbo v2, "sys.cppreopt"

    const-string/jumbo v3, "requested"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 814
    .local v3, "timeStart":J
    const-wide/32 v5, 0x186a0

    add-long/2addr v5, v3

    .line 815
    .local v5, "timeEnd":J
    move-wide v7, v3

    .line 816
    .local v7, "timeNow":J
    :cond_22
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "finished"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "PackageManager"

    if-nez v9, :cond_4a

    .line 818
    const-wide/16 v11, 0x64

    :try_start_32
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    .line 821
    goto :goto_37

    .line 819
    :catch_36
    move-exception v9

    .line 822
    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 823
    cmp-long v9, v7, v5

    if-lez v9, :cond_22

    .line 824
    const-string/jumbo v9, "timed-out"

    invoke-static {v2, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v2, "cppreopt did not finish!"

    invoke-static {v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cppreopts took "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v11, v7, v3

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " ms"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v3    # "timeStart":J
    .end local v5    # "timeEnd":J
    .end local v7    # "timeNow":J
    :cond_68
    return-void
.end method

.method private static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 763
    .local p0, "pkgSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 764
    return-void

    .line 767
    :cond_7
    new-instance v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 772
    return-void
.end method


# virtual methods
.method public checkIfKilledAndRemoveDexoptPid(I)Z
    .registers 3
    .param p1, "pid"    # I

    .line 836
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->checkIfKilledAndRemoveDexoptPid(I)Z

    move-result v0

    return v0
.end method

.method controlDexOptBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z

    .line 850
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->controlDexOptBlocking(Z)V

    .line 851
    return-void
.end method

.method public forceDexOpt(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 578
    const-string v0, "forceDexOpt"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 580
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 581
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 582
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_11
    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    .line 586
    const-wide/32 v2, 0x40000

    const-string v4, "dexopt"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 590
    new-instance v4, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v7, 0xc

    .line 592
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getDefaultCompilerFilter()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x6

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 590
    invoke-direct {p0, v1, v0, v4}, Lcom/android/server/pm/DexOptHelper;->performDexOptInternalWithDependenciesLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 595
    .local v4, "res":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 596
    const/4 v2, 0x1

    if-ne v4, v2, :cond_37

    .line 599
    return-void

    .line 597
    :cond_37
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to dexopt: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    .end local v4    # "res":I
    :cond_50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;
    .registers 5
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

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 416
    return-object v0
.end method

.method public isDexOptDialogShown()Z
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/DexOptHelper;->mDexOptDialogShown:Z

    monitor-exit v0

    return v1

    .line 93
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$getOptimizablePackages$0$com-android-server-pm-DexOptHelper(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 5
    .param p1, "pkgs"    # Ljava/util/ArrayList;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 411
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 412
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 413
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_17
    return-void
.end method

.method performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 6
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 431
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 432
    return v2

    .line 433
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 434
    return v2

    .line 437
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySecondaryDex()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 438
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/dex/DexManager;->dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v1

    return v1

    .line 440
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v1

    .line 441
    .local v1, "dexoptStatus":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    return v2
.end method

.method public performDexOptMode(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .registers 16
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "checkProfiles"    # Z
    .param p4, "targetCompilerFilter"    # Ljava/lang/String;
    .param p5, "force"    # Z
    .param p6, "bootComplete"    # Z
    .param p7, "splitName"    # Ljava/lang/String;

    .line 604
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell()Z

    move-result v0

    if-nez v0, :cond_16

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/DexOptHelper;->isCallerInstallerForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 606
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "performDexOptMode"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_16
    :goto_16
    nop

    .line 610
    const/4 v0, 0x0

    if-eqz p5, :cond_1c

    const/4 v1, 0x2

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    or-int/2addr v1, p3

    .line 611
    if-eqz p6, :cond_21

    const/4 v0, 0x4

    :cond_21
    or-int/2addr v0, v1

    .line 612
    .local v0, "flags":I
    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v4, 0xc

    move-object v2, v1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p7

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v1

    return v1
.end method

.method public performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .line 634
    nop

    .line 637
    if-eqz p3, :cond_5

    const/4 v0, 0x2

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    or-int/lit8 v0, v0, 0xd

    .line 638
    .local v0, "flags":I
    new-instance v7, Lcom/android/server/pm/dex/DexoptOptions;

    const/16 v3, 0xc

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v4, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v1

    return v1
.end method

.method public performDexOptUpgrade(Ljava/util/List;ZIZ)[I
    .registers 23
    .param p2, "showDialog"    # Z
    .param p3, "compilationReason"    # I
    .param p4, "bootComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;ZIZ)[I"
        }
    .end annotation

    .line 124
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 125
    .local v0, "numberOfPackagesVisited":I
    const/4 v2, 0x0

    .line 126
    .local v2, "numberOfPackagesOptimized":I
    const/4 v3, 0x0

    .line 127
    .local v3, "numberOfPackagesSkipped":I
    const/4 v4, 0x0

    .line 128
    .local v4, "numberOfPackagesFailed":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 130
    .local v5, "numberOfPackagesToDexopt":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 131
    .local v7, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v11, v0, 0x1

    .line 133
    .end local v0    # "numberOfPackagesVisited":I
    .local v11, "numberOfPackagesVisited":I
    const/4 v12, 0x0

    .line 135
    .local v12, "useProfileForDexopt":Z
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_32

    :cond_2e
    move-object/from16 v17, v6

    goto/16 :goto_11f

    :cond_32
    :goto_32
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 138
    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/pm/DexOptHelper;->getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 140
    .local v13, "profileFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_92

    .line 145
    :try_start_49
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 146
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v10

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 147
    invoke-static {v14}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 145
    invoke-virtual {v0, v15, v10, v9, v14}, Lcom/android/server/pm/Installer;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 148
    const-string v0, "PackageManager"

    const-string v9, "Installer failed to copy system profile!"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6a} :catch_6b

    goto :goto_8e

    .line 154
    :catch_6b
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to copy profile "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8e
    :goto_8e
    move-object/from16 v17, v6

    goto/16 :goto_11f

    .line 159
    :cond_92
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 160
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 159
    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    .line 164
    .local v9, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_11a

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 167
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/DexOptHelper;->getPrebuildProfilePath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "-Stub"

    const-string v15, ""

    .line 168
    invoke-virtual {v0, v10, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "systemProfilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 176
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 182
    :try_start_c6
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 183
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d6} :catch_f1

    .line 184
    move-object/from16 v17, v6

    const/16 v16, 0x0

    :try_start_da
    invoke-static/range {v16 .. v16}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v0, v15, v8, v14, v6}, Lcom/android/server/pm/Installer;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 185
    const-string v0, "PackageManager"

    const-string v6, "Failed to copy system profile for stub package!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_eb} :catch_ef

    goto :goto_ee

    .line 187
    :cond_ec
    const/4 v0, 0x1

    move v12, v0

    .line 192
    :goto_ee
    goto :goto_11f

    .line 189
    :catch_ef
    move-exception v0

    goto :goto_f4

    :catch_f1
    move-exception v0

    move-object/from16 v17, v6

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_f4
    const-string v6, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to copy profile "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 191
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11f

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_117
    move-object/from16 v17, v6

    goto :goto_11f

    .line 164
    .end local v10    # "systemProfilePath":Ljava/lang/String;
    :cond_11a
    move-object/from16 v17, v6

    goto :goto_11f

    .line 135
    .end local v9    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "profileFile":Ljava/io/File;
    :cond_11d
    move-object/from16 v17, v6

    .line 198
    :goto_11f
    iget-object v0, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_130

    .line 202
    add-int/lit8 v3, v3, 0x1

    .line 203
    move v0, v11

    move-object/from16 v6, v17

    goto/16 :goto_e

    .line 211
    :cond_130
    if-eqz p2, :cond_166

    .line 213
    :try_start_132
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1040140

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 215
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 214
    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-interface {v0, v6, v13}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_159} :catch_15a

    .line 217
    goto :goto_15b

    .line 216
    :catch_15a
    move-exception v0

    .line 218
    :goto_15b
    iget-object v6, v1, Lcom/android/server/pm/DexOptHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 219
    const/4 v8, 0x1

    :try_start_15f
    iput-boolean v8, v1, Lcom/android/server/pm/DexOptHelper;->mDexOptDialogShown:Z

    .line 220
    monitor-exit v6

    goto :goto_166

    :catchall_163
    move-exception v0

    monitor-exit v6
    :try_end_165
    .catchall {:try_start_15f .. :try_end_165} :catchall_163

    throw v0

    .line 223
    :cond_166
    :goto_166
    move/from16 v0, p3

    .line 224
    .local v0, "pkgCompilationReason":I
    if-eqz v12, :cond_16c

    .line 227
    const/16 v0, 0x9

    .line 230
    :cond_16c
    const-string/jumbo v6, "pm.precompile_layouts"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 231
    iget-object v6, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    .line 239
    :cond_17d
    if-eqz p4, :cond_181

    const/4 v9, 0x4

    goto :goto_182

    :cond_181
    const/4 v9, 0x0

    :goto_182
    move v6, v9

    .line 240
    .local v6, "dexoptFlags":I
    if-nez p3, :cond_187

    .line 242
    or-int/lit16 v6, v6, 0x400

    .line 270
    :cond_187
    iget-object v8, v1, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v8

    if-eqz v8, :cond_1a0

    const-string/jumbo v8, "ro.miui.odm.factory.version"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1da

    .line 271
    :cond_1a0
    new-instance v8, Lcom/android/server/pm/dex/DexoptOptions;

    .line 272
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0, v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 271
    invoke-direct {v1, v8}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v8

    .line 276
    .local v8, "primaryDexOptStatus":I
    packed-switch v8, :pswitch_data_1ec

    .line 292
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected dexopt return code "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1da

    .line 287
    :pswitch_1c9
    goto :goto_1da

    .line 278
    :pswitch_1ca
    add-int/lit8 v2, v2, 0x1

    .line 280
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/pm/PackageManagerServiceStub;->markPackageOptimized(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 281
    goto :goto_1da

    .line 283
    :pswitch_1d4
    add-int/lit8 v3, v3, 0x1

    .line 284
    goto :goto_1da

    .line 289
    :pswitch_1d7
    add-int/lit8 v4, v4, 0x1

    .line 290
    nop

    .line 297
    .end local v0    # "pkgCompilationReason":I
    .end local v6    # "dexoptFlags":I
    .end local v7    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "primaryDexOptStatus":I
    .end local v12    # "useProfileForDexopt":Z
    :cond_1da
    :goto_1da
    move v0, v11

    move-object/from16 v6, v17

    goto/16 :goto_e

    .line 299
    .end local v11    # "numberOfPackagesVisited":I
    .local v0, "numberOfPackagesVisited":I
    :cond_1df
    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    const/4 v7, 0x2

    aput v4, v6, v7

    return-object v6

    :pswitch_data_1ec
    .packed-switch -0x1
        :pswitch_1d7
        :pswitch_1d4
        :pswitch_1ca
        :pswitch_1c9
    .end packed-switch
.end method

.method performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 3
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptTraced(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method public performPackageDexOptUpgradeIfNeeded()V
    .registers 15

    .line 357
    const-string v0, "Only the system can request package update"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "runtime"

    const-string v1, "dexopt_system_ui_on_boot"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 364
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->hasBcpApexesChanged()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 365
    :cond_24
    invoke-direct {p0}, Lcom/android/server/pm/DexOptHelper;->checkAndDexOptSystemUi()V

    .line 370
    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    .line 375
    .local v0, "causeUpgrade":Z
    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isPreNUpgrade()Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v3

    .line 377
    .local v1, "causeFirstBoot":Z
    :goto_43
    if-nez v0, :cond_48

    if-nez v1, :cond_48

    .line 378
    return-void

    .line 381
    :cond_48
    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 382
    .local v4, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 383
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v5

    .line 385
    .local v5, "pkgSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v6, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_67
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7d

    .line 387
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 390
    .end local v7    # "index":I
    :cond_7d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 391
    .local v7, "startTime":J
    iget-object v9, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->isPreNUpgrade()Z

    move-result v9

    .line 392
    if-eqz v1, :cond_8b

    move v10, v2

    goto :goto_8c

    :cond_8b
    move v10, v3

    .line 391
    :goto_8c
    invoke-virtual {p0, v6, v9, v10, v2}, Lcom/android/server/pm/DexOptHelper;->performDexOptUpgrade(Ljava/util/List;ZIZ)[I

    move-result-object v9

    .line 395
    .local v9, "stats":[I
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 396
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    long-to-int v10, v10

    .line 398
    .local v10, "elapsedTimeSeconds":I
    iget-object v11, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    .line 400
    .local v11, "newSnapshot":Lcom/android/server/pm/Computer;
    iget-object v12, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    aget v2, v9, v2

    const-string/jumbo v13, "opt_dialog_num_dexopted"

    invoke-static {v12, v13, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 401
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    aget v3, v9, v3

    const-string/jumbo v12, "opt_dialog_num_skipped"

    invoke-static {v2, v12, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 402
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    aget v3, v9, v3

    const-string/jumbo v12, "opt_dialog_num_failed"

    invoke-static {v2, v12, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 403
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {p0, v11}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 403
    const-string/jumbo v12, "opt_dialog_num_total"

    invoke-static {v2, v12, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 405
    iget-object v2, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "opt_dialog_time_s"

    invoke-static {v2, v3, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 406
    return-void
.end method

.method public recoverOldFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "oatPath"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->recoverOldFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rmBackupOat(Ljava/lang/String;)V
    .registers 3
    .param p1, "oatPath"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->rmBackupOat(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setPackageDexoptFinished(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 842
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getCompilerPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v0

    .line 843
    .local v0, "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-eqz v0, :cond_c

    .line 844
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CompilerStats$PackageStats;->setDexoptEnded(Z)V

    .line 846
    :cond_c
    return-void
.end method
