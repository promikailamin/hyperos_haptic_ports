.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$Injector;,
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;,
        Lcom/android/server/pm/PackageDexOptimizer$DexOptResult;
    }
.end annotation


# static fields
.field public static final DEX_OPT_CANCELLED:I = 0x2

.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageDexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private final mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

.field private final mContext:Landroid/content/Context;

.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageDexOptimizer;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .line 155
    new-instance v1, Lcom/android/server/pm/PackageDexOptimizer$1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageDexOptimizer$1;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageDexOptimizer$Injector;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "injector"    # Lcom/android/server/pm/PackageDexOptimizer$Injector;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "wakeLockTag"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 180
    iput-object p4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 182
    iput-object p3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 184
    invoke-interface {p1, p4}, Lcom/android/server/pm/PackageDexOptimizer$Injector;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    .line 185
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    .line 187
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .registers 3
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    invoke-direct {v0}, Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 169
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 171
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 172
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 173
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 174
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    .line 175
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .registers 5
    .param p1, "uid"    # I

    .line 698
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 699
    const-wide/16 v0, -0x1

    return-wide v0

    .line 701
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 703
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private analyseProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;

    .line 1125
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_8

    .line 1126
    return v1

    .line 1130
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_b} :catch_1c

    .line 1131
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 1132
    :catchall_19
    move-exception v2

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "uid":I
    .end local p3    # "profileName":Ljava/lang/String;
    .end local p4    # "compilerFilter":Ljava/lang/String;
    :try_start_1b
    throw v2
    :try_end_1c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 1133
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "uid":I
    .restart local p3    # "profileName":Ljava/lang/String;
    .restart local p4    # "compilerFilter":Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 1134
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    return v1
.end method

.method private compilerFilterDependsOnProfiles(Ljava/lang/String;)Z
    .registers 3
    .param p1, "compilerFilter"    # Ljava/lang/String;

    .line 1098
    const-string v0, "-profile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .registers 46
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "isa"    # Ljava/lang/String;
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "profileAnalysisResult"    # I
    .param p7, "classLoaderContext"    # Ljava/lang/String;
    .param p8, "dexoptFlags"    # I
    .param p9, "uid"    # I
    .param p10, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p11, "downgrade"    # Z
    .param p12, "profileName"    # Ljava/lang/String;
    .param p13, "dexMetadataPath"    # Ljava/lang/String;
    .param p14, "compilationReason"    # I

    .line 518
    move-object/from16 v11, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p10

    move/from16 v13, p14

    .line 519
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    .line 518
    move-object/from16 v12, p1

    invoke-direct {v11, v12, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v10

    .line 521
    .local v10, "oatDir":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p11

    move/from16 v9, p8

    move-object/from16 v29, v10

    .end local v10    # "oatDir":Ljava/lang/String;
    .local v29, "oatDir":Ljava/lang/String;
    invoke-direct/range {v1 .. v10}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I

    move-result v1

    .line 523
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_38

    .line 524
    return v2

    .line 528
    :cond_38
    const-string v0, "debug.dexopt.enabled"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 529
    .local v4, "isEnable":Z
    const-string v5, "PackageDexOptimizer"

    if-nez v4, :cond_65

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packagename = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ,  dex2oat is disabled!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return v2

    .line 535
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running dexopt (dexoptNeeded="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") on: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " pkg="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " isa="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " dexoptFlags="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    move/from16 v7, p8

    invoke-direct {v11, v7}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " targetFilter="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " oatDir="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v29

    .end local v29    # "oatDir":Ljava/lang/String;
    .local v9, "oatDir":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " classLoaderContext="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, p7

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :try_start_d3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_d7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d3 .. :try_end_d7} :catch_157

    move-wide/from16 v29, v16

    .line 545
    .local v29, "startTime":J
    if-eqz v14, :cond_ec

    const/16 v0, 0xd

    if-ne v13, v0, :cond_ec

    .line 547
    :try_start_df
    invoke-virtual {v14, v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->setDexoptStarted(Z)V

    .line 548
    invoke-virtual {v14, v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->setDexoptEnded(Z)V
    :try_end_e5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_df .. :try_end_e5} :catch_e6

    goto :goto_ec

    .line 582
    .end local v29    # "startTime":J
    :catch_e6
    move-exception v0

    move-object v2, v14

    move-object v3, v15

    move v15, v1

    goto/16 :goto_15b

    .line 555
    .restart local v29    # "startTime":J
    :cond_ec
    :goto_ec
    :try_start_ec
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v23

    .line 556
    .local v23, "seInfo":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 557
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    .line 559
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v25

    if-eqz p13, :cond_105

    move v2, v3

    .line 560
    :cond_105
    invoke-direct {v11, v13, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v28
    :try_end_109
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ec .. :try_end_109} :catch_157

    .line 556
    move-object v12, v0

    move-object/from16 v13, p3

    move-object v2, v14

    move/from16 v14, p9

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, p4

    move/from16 v17, v1

    move-object/from16 v18, v9

    move/from16 v19, p8

    move-object/from16 v20, p5

    move-object/from16 v22, p7

    move-object/from16 v26, p12

    move-object/from16 v27, p13

    :try_start_122
    invoke-virtual/range {v12 .. v28}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 561
    .local v12, "completed":Z
    if-nez v12, :cond_12a

    .line 562
    const/4 v0, 0x2

    return v0

    .line 564
    :cond_12a
    if-eqz v2, :cond_139

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_130
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_122 .. :try_end_130} :catch_155

    .line 566
    .local v13, "endTime":J
    move v15, v1

    .end local v1    # "dexoptNeeded":I
    .local v15, "dexoptNeeded":I
    sub-long v0, v13, v29

    long-to-int v0, v0

    int-to-long v0, v0

    :try_start_135
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    goto :goto_13a

    .line 564
    .end local v13    # "endTime":J
    .end local v15    # "dexoptNeeded":I
    .restart local v1    # "dexoptNeeded":I
    :cond_139
    move v15, v1

    .line 568
    .end local v1    # "dexoptNeeded":I
    .restart local v15    # "dexoptNeeded":I
    :goto_13a
    if-eqz v9, :cond_153

    .line 575
    invoke-static {}, Lcom/android/internal/content/F2fsUtils;->isCompressModeUserForData()Z

    move-result v0

    if-nez v0, :cond_153

    .line 576
    iget-object v0, v11, Lcom/android/server/pm/PackageDexOptimizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 577
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V
    :try_end_150
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_135 .. :try_end_150} :catch_151

    goto :goto_153

    .line 582
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "completed":Z
    .end local v23    # "seInfo":Ljava/lang/String;
    .end local v29    # "startTime":J
    :catch_151
    move-exception v0

    goto :goto_15b

    .line 581
    .restart local v12    # "completed":Z
    .restart local v23    # "seInfo":Ljava/lang/String;
    .restart local v29    # "startTime":J
    :cond_153
    :goto_153
    const/4 v0, 0x1

    return v0

    .line 582
    .end local v12    # "completed":Z
    .end local v15    # "dexoptNeeded":I
    .end local v23    # "seInfo":Ljava/lang/String;
    .end local v29    # "startTime":J
    .restart local v1    # "dexoptNeeded":I
    :catch_155
    move-exception v0

    goto :goto_15a

    :catch_157
    move-exception v0

    move-object v2, v14

    move-object v3, v15

    :goto_15a
    move v15, v1

    .line 583
    .end local v1    # "dexoptNeeded":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v15    # "dexoptNeeded":I
    :goto_15b
    const-string v1, "Failed to dexopt"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const/4 v1, -0x1

    return v1
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 39
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "secondaryId"    # I
    .param p4, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p5, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 732
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    const/16 v20, 0x0

    if-eqz v0, :cond_17

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_17

    .line 735
    return v20

    .line 738
    :cond_17
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 738
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "compilerFilter":Ljava/lang/String;
    move-object/from16 v13, p5

    invoke-direct {v1, v2, v0, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 744
    .local v3, "dexoptFlags":I
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v21, -0x1

    const-string v12, "PackageDexOptimizer"

    if-eqz v4, :cond_3e

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 745
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 746
    or-int/lit16 v3, v3, 0x100

    goto :goto_4c

    .line 747
    :cond_3e
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_1ac

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 748
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 749
    or-int/lit16 v3, v3, 0x80

    .line 754
    :goto_4c
    const/4 v4, 0x0

    .line 755
    .local v4, "classLoaderContext":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v5

    if-nez v5, :cond_61

    .line 756
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v5

    if-eqz v5, :cond_5a

    goto :goto_61

    .line 761
    :cond_5a
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v4

    move-object v11, v0

    move-object v10, v4

    goto :goto_66

    .line 759
    :cond_61
    :goto_61
    const-string/jumbo v0, "verify"

    move-object v11, v0

    move-object v10, v4

    .line 764
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .end local v4    # "classLoaderContext":Ljava/lang/String;
    .local v10, "classLoaderContext":Ljava/lang/String;
    .local v11, "compilerFilter":Ljava/lang/String;
    :goto_66
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v22

    .line 765
    .local v22, "reason":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt on: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " pkg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isa="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 766
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " reason="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 767
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " dexoptFlags="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " target-filter="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " class-loader-context="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v9, 0x2

    if-lt v0, v9, :cond_db

    .line 773
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v3, v0

    move/from16 v23, v3

    goto :goto_dd

    .line 772
    :cond_db
    move/from16 v23, v3

    .line 777
    .end local v3    # "dexoptFlags":I
    .local v23, "dexoptFlags":I
    :goto_dd
    :try_start_dd
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_19a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 784
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_f5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_dd .. :try_end_f5} :catch_19b

    .line 785
    .local v3, "pkgName":Ljava/lang/String;
    if-lez v14, :cond_13e

    .line 786
    :try_start_f7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 787
    .local v5, "len":I
    const-string v6, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v20

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "temp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, "id":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_131
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_f7 .. :try_end_131} :catch_135

    move-object v3, v8

    move-object/from16 v24, v3

    goto :goto_140

    .line 804
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "temp":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "isa":Ljava/lang/String;
    :catch_135
    move-exception v0

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    goto/16 :goto_1a2

    .line 785
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v7    # "isa":Ljava/lang/String;
    :cond_13e
    move-object/from16 v24, v3

    .line 791
    .end local v3    # "pkgName":Ljava/lang/String;
    .local v24, "pkgName":Ljava/lang/String;
    :goto_140
    :try_start_140
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v3

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    const/16 v16, 0x0

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 796
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v17

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x0

    const/16 v25, 0x0

    .line 797
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v26
    :try_end_15b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_140 .. :try_end_15b} :catch_19b

    .line 791
    move-object/from16 v27, v4

    move-object/from16 v4, p2

    move-object/from16 v28, v6

    move-object/from16 v6, v24

    move/from16 v18, v9

    const/16 v29, 0x2

    move-object/from16 v9, v16

    move-object/from16 v30, v10

    .end local v10    # "classLoaderContext":Ljava/lang/String;
    .local v30, "classLoaderContext":Ljava/lang/String;
    move/from16 v10, v23

    move-object/from16 v31, v11

    .end local v11    # "compilerFilter":Ljava/lang/String;
    .local v31, "compilerFilter":Ljava/lang/String;
    move-object/from16 v32, v12

    move-object/from16 v12, v28

    move-object/from16 v13, v30

    move-object/from16 v14, v27

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v25

    move-object/from16 v19, v26

    :try_start_181
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_185
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_181 .. :try_end_185} :catch_198

    .line 798
    .local v3, "completed":Z
    if-nez v3, :cond_188

    .line 799
    return v29

    .line 801
    .end local v3    # "completed":Z
    .end local v7    # "isa":Ljava/lang/String;
    .end local v24    # "pkgName":Ljava/lang/String;
    :cond_188
    move-object/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p5

    move/from16 v9, v29

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    goto/16 :goto_e5

    .line 804
    :catch_198
    move-exception v0

    goto :goto_1a2

    .line 803
    .end local v30    # "classLoaderContext":Ljava/lang/String;
    .end local v31    # "compilerFilter":Ljava/lang/String;
    .restart local v10    # "classLoaderContext":Ljava/lang/String;
    .restart local v11    # "compilerFilter":Ljava/lang/String;
    :cond_19a
    return v4

    .line 804
    :catch_19b
    move-exception v0

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    .line 805
    .end local v10    # "classLoaderContext":Ljava/lang/String;
    .end local v11    # "compilerFilter":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v30    # "classLoaderContext":Ljava/lang/String;
    .restart local v31    # "compilerFilter":Ljava/lang/String;
    :goto_1a2
    const-string v3, "Failed to dexopt"

    move-object/from16 v4, v32

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    return v21

    .line 748
    .end local v22    # "reason":I
    .end local v23    # "dexoptFlags":I
    .end local v30    # "classLoaderContext":Ljava/lang/String;
    .end local v31    # "compilerFilter":Ljava/lang/String;
    .local v0, "compilerFilter":Ljava/lang/String;
    .local v3, "dexoptFlags":I
    :cond_1aa
    move-object v4, v12

    goto :goto_1ad

    .line 747
    :cond_1ac
    move-object v4, v12

    .line 751
    :goto_1ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not infer CE/DE storage for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v21
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "compilationReason"    # I
    .param p2, "useDexMetadata"    # Z

    .line 648
    if-eqz p2, :cond_5

    .line 649
    const-string v0, "-dm"

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 650
    .local v0, "annotation":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 13
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 974
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v2, v0

    .line 975
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 976
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v5

    const/4 v7, 0x0

    .line 974
    move-object v1, p0

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "useCloudProfile"    # Z
    .param p5, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 982
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    .line 983
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    .line 984
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v4

    .line 982
    move-object v0, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I
    .registers 18
    .param p1, "debuggable"    # Z
    .param p2, "hiddenApiEnforcementPolicy"    # I
    .param p4, "requestsIsolatedSplitLoading"    # Z
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "useCloudProfile"    # Z
    .param p7, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "[I>;Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/server/pm/dex/DexoptOptions;",
            ")I"
        }
    .end annotation

    .line 1000
    .local p3, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-static {p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    .line 1001
    .local v0, "isProfileGuidedFilter":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v3

    if-nez v3, :cond_13

    if-eqz p6, :cond_11

    goto :goto_13

    :cond_11
    move v3, v2

    goto :goto_14

    :cond_13
    :goto_13
    move v3, v1

    .line 1003
    .local v3, "isPublic":Z
    :goto_14
    if-eqz v0, :cond_19

    const/16 v4, 0x10

    goto :goto_1a

    :cond_19
    move v4, v2

    .line 1009
    .local v4, "profileFlag":I
    :goto_1a
    if-nez p2, :cond_1e

    .line 1010
    move v5, v2

    goto :goto_20

    .line 1011
    :cond_1e
    const/16 v5, 0x400

    :goto_20
    nop

    .line 1013
    .local v5, "hiddenApiFlag":I
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v6

    .line 1014
    .local v6, "compilationReason":I
    const/4 v7, 0x1

    .line 1015
    .local v7, "generateCompactDex":Z
    sparse-switch v6, :sswitch_data_7e

    goto :goto_30

    .line 1019
    :sswitch_2a
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/dex/DexoptOptions;->isAutoUpdate()Z

    move-result v7

    .line 1020
    goto :goto_30

    .line 1026
    :sswitch_2f
    const/4 v7, 0x0

    .line 1034
    :goto_30
    if-eqz v0, :cond_3d

    if-eqz p3, :cond_36

    if-nez p4, :cond_3d

    .line 1035
    :cond_36
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v8

    if-eqz v8, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    .line 1037
    .local v1, "generateAppImage":Z
    :goto_3e
    if-eqz v3, :cond_42

    const/4 v8, 0x2

    goto :goto_43

    :cond_42
    move v8, v2

    .line 1038
    :goto_43
    if-eqz p1, :cond_47

    const/4 v9, 0x4

    goto :goto_48

    :cond_47
    move v9, v2

    :goto_48
    or-int/2addr v8, v9

    or-int/2addr v8, v4

    .line 1040
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v9

    if-eqz v9, :cond_53

    const/16 v9, 0x8

    goto :goto_54

    :cond_53
    move v9, v2

    :goto_54
    or-int/2addr v8, v9

    .line 1041
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v9

    if-eqz v9, :cond_5e

    const/16 v9, 0x200

    goto :goto_5f

    :cond_5e
    move v9, v2

    :goto_5f
    or-int/2addr v8, v9

    .line 1042
    if-eqz v7, :cond_65

    const/16 v9, 0x800

    goto :goto_66

    :cond_65
    move v9, v2

    :goto_66
    or-int/2addr v8, v9

    .line 1043
    if-eqz v1, :cond_6c

    const/16 v9, 0x1000

    goto :goto_6d

    :cond_6c
    move v9, v2

    :goto_6d
    or-int/2addr v8, v9

    .line 1044
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallForRestore()Z

    move-result v9

    if-eqz v9, :cond_76

    const/16 v2, 0x2000

    :cond_76
    or-int/2addr v2, v8

    or-int/2addr v2, v5

    .line 1046
    .local v2, "dexFlags":I
    move-object v8, p0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v9

    return v9

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_2f
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_2f
        0x10 -> :sswitch_2a
    .end sparse-switch
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isa"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;
    .param p5, "classLoaderContext"    # Ljava/lang/String;
    .param p6, "profileAnalysisResult"    # I
    .param p7, "downgrade"    # Z
    .param p8, "dexoptFlags"    # I
    .param p9, "oatDir"    # Ljava/lang/String;

    .line 1057
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p6

    const-string v10, "PackageDexOptimizer"

    and-int/lit8 v0, p8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    move v11, v0

    .line 1058
    .local v11, "shouldBePublic":Z
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    move v12, v0

    .line 1059
    .local v12, "isProfileGuidedFilter":Z
    if-ne v9, v3, :cond_1d

    move v2, v3

    :cond_1d
    move v0, v2

    .line 1061
    .local v0, "newProfile":Z
    if-nez v0, :cond_34

    if-eqz v12, :cond_34

    if-eqz v11, :cond_34

    .line 1062
    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p9

    invoke-direct {v1, v13, v8, v14, v15}, Lcom/android/server/pm/PackageDexOptimizer;->isOdexPrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1066
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_3c

    .line 1061
    :cond_34
    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p9

    .line 1079
    :cond_3a
    move/from16 v16, v0

    .end local v0    # "newProfile":Z
    .local v16, "newProfile":Z
    :goto_3c
    move-object/from16 v0, p4

    .line 1080
    .local v0, "actualCompilerFilter":Ljava/lang/String;
    const/16 v17, -0x1

    move-object/from16 v7, p4

    :try_start_42
    invoke-direct {v1, v7}, Lcom/android/server/pm/PackageDexOptimizer;->compilerFilterDependsOnProfiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x3

    if-ne v9, v2, :cond_4f

    .line 1082
    const-string/jumbo v2, "verify"

    move-object v0, v2

    .line 1084
    :cond_4f
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v0

    move-object/from16 v5, p5

    move/from16 v6, v16

    move/from16 v7, p7

    invoke-static/range {v2 .. v7}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v2
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5e} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5e} :catch_65

    move v0, v2

    .line 1092
    .local v0, "dexoptNeeded":I
    nop

    .line 1093
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v2

    return v2

    .line 1089
    .end local v0    # "dexoptNeeded":I
    :catch_65
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception when calling dexoptNeeded on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    return v17

    .line 1086
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7d
    move-exception v0

    .line 1087
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading apk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    return v17
.end method

.method private getInstallerLI()Lcom/android/server/pm/Installer;
    .registers 2

    .line 1250
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method private getInstallerWithoutLock()Lcom/android/server/pm/Installer;
    .registers 2

    .line 1258
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method public static getOatDir(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "codePath"    # Ljava/io/File;

    .line 1166
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 1154
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1155
    return-object v1

    .line 1157
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1159
    return-object v1

    .line 1161
    :cond_18
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 904
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 905
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 906
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3c

    .line 920
    :cond_15
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_24

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    .line 923
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_25
    if-eqz v0, :cond_2c

    .line 924
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 927
    :cond_2c
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz p3, :cond_3b

    .line 929
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 933
    :cond_3b
    return-object p2

    .line 907
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_3c
    :goto_3c
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;

    .line 944
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 945
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 946
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2f

    .line 960
    :cond_17
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    .line 962
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_27
    if-eqz v0, :cond_2e

    .line 963
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 966
    :cond_2e
    return-object p2

    .line 947
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_2f
    :goto_2f
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private isAppImageEnabled()Z
    .registers 3

    .line 970
    const-string v0, "dalvik.vm.appimageformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isOdexPrivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isa"    # Ljava/lang/String;
    .param p4, "oatDir"    # Ljava/lang/String;

    .line 1105
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_c

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 1107
    :catch_c
    move-exception v1

    .line 1108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get odex visibility for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageDexOptimizer"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    return v0
.end method

.method private performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 63
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 269
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getNonNativeUsesLibraryInfos()Ljava/util/List;

    move-result-object v12

    .line 271
    .local v12, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p3, :cond_13

    .line 272
    move-object/from16 v0, p3

    goto :goto_1f

    .line 273
    :cond_13
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1f
    move-object/from16 v16, v0

    .line 275
    .local v16, "instructionSets":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v10

    .line 278
    .local v10, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 279
    .local v0, "sharedGid":I
    const/4 v9, -0x1

    const-string v8, "PackageDexOptimizer"

    if-ne v0, v9, :cond_67

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Well this is awkward; package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " had UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 280
    invoke-static {v8, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/16 v0, 0x270f

    move v7, v0

    goto :goto_68

    .line 279
    :cond_67
    move v7, v0

    .line 288
    .end local v0    # "sharedGid":I
    .local v7, "sharedGid":I
    :goto_68
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Z

    .line 289
    .local v6, "pathsWithCode":[Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    const/4 v5, 0x0

    aput-boolean v0, v6, v5

    .line 290
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_76
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/16 v17, 0x1

    if-ge v0, v1, :cond_92

    .line 291
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8b

    goto :goto_8d

    :cond_8b
    move/from16 v17, v5

    :goto_8d
    aput-boolean v17, v6, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 293
    .end local v0    # "i":I
    :cond_92
    invoke-static {v14, v12, v6}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v4

    if-eq v0, v1, :cond_dc

    .line 298
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between AndroidPackage and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkg.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    if-nez v0, :cond_cc

    const-string/jumbo v3, "null"

    goto :goto_d0

    :cond_cc
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_d0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    .end local v0    # "splitCodePaths":[Ljava/lang/String;
    :cond_dc
    const/4 v0, 0x0

    .line 308
    .local v0, "result":I
    const/4 v1, 0x0

    move/from16 v18, v0

    move v3, v1

    .end local v0    # "result":I
    .local v3, "i":I
    .local v18, "result":I
    :goto_e1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_487

    .line 310
    aget-boolean v0, v6, v3

    if-nez v0, :cond_ec

    .line 311
    goto :goto_111

    .line 313
    :cond_ec
    aget-object v0, v4, v3

    if-eqz v0, :cond_455

    .line 320
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 321
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 324
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 325
    nop

    .line 308
    .end local v2    # "path":Ljava/lang/String;
    :goto_111
    move/from16 v55, v3

    move-object/from16 v40, v4

    move/from16 v41, v5

    move-object/from16 v43, v6

    move/from16 v48, v7

    move v6, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v2, v13

    move-object v3, v15

    move-object v10, v8

    goto/16 :goto_415

    .line 330
    .restart local v2    # "path":Ljava/lang/String;
    :cond_127
    if-nez v3, :cond_12b

    const/4 v1, 0x0

    goto :goto_133

    :cond_12b
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v19, v3, -0x1

    aget-object v1, v1, v19

    .line 329
    :goto_133
    invoke-static {v1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "profileName":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v19

    if-nez v19, :cond_149

    .line 332
    move-object/from16 v5, p5

    invoke-virtual {v5, v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_146

    goto :goto_14b

    :cond_146
    const/16 v20, 0x0

    goto :goto_14d

    .line 331
    :cond_149
    move-object/from16 v5, p5

    .line 332
    :goto_14b
    move/from16 v20, v17

    :goto_14d
    move/from16 v32, v20

    .line 333
    .local v32, "isUsedByOtherApps":Z
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v14, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, "compilerFilter":Ljava/lang/String;
    invoke-static {v9}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    if-eqz v32, :cond_16b

    .line 338
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v0

    move/from16 v22, v3

    .end local v3    # "i":I
    .local v22, "i":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_16d

    move/from16 v0, v17

    goto :goto_16e

    .line 336
    .end local v22    # "i":I
    .restart local v3    # "i":I
    :cond_16b
    move/from16 v22, v3

    .line 338
    .end local v3    # "i":I
    .restart local v22    # "i":I
    :cond_16d
    const/4 v0, 0x0

    :goto_16e
    move/from16 v33, v0

    .line 340
    .local v33, "useCloudProfile":Z
    const/4 v0, 0x0

    .line 343
    .local v0, "dexMetadataPath":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.hybrid_verify.enabled"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 345
    .local v34, "isHybridVerifyEnable":Z
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v3

    if-nez v3, :cond_18e

    if-nez v33, :cond_18e

    .line 346
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_18c

    if-eqz v34, :cond_18c

    goto :goto_18e

    .line 357
    :cond_18c
    move-object v5, v0

    goto :goto_1a5

    .line 349
    :cond_18e
    :goto_18e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 350
    .local v3, "dexMetadataFile":Ljava/io/File;
    if-nez v3, :cond_19c

    .line 351
    const/16 v20, 0x0

    goto :goto_1a2

    :cond_19c
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    :goto_1a2
    move-object/from16 v0, v20

    move-object v5, v0

    .line 357
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .end local v3    # "dexMetadataFile":Ljava/io/File;
    .local v5, "dexMetadataPath":Ljava/lang/String;
    :goto_1a5
    const/4 v0, 0x2

    .line 358
    .local v0, "profileAnalysisResult":I
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 359
    nop

    .line 360
    invoke-direct {v15, v14, v7, v1, v9}, Lcom/android/server/pm/PackageDexOptimizer;->analyseProfiles(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v3, v0

    goto :goto_1b4

    .line 358
    :cond_1b3
    move v3, v0

    .line 362
    .end local v0    # "profileAnalysisResult":I
    .local v3, "profileAnalysisResult":I
    :goto_1b4
    const/16 v20, 0x0

    .line 365
    .local v20, "cloudProfileName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 366
    .local v0, "exist":Z
    const-string v13, "Failed to cleanup cloud profile"

    if-eqz v33, :cond_260

    .line 367
    move/from16 v23, v0

    .end local v0    # "exist":Z
    .local v23, "exist":Z
    :try_start_1bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c2
    .catchall {:try_start_1bd .. :try_end_1c2} :catchall_23c

    move/from16 v24, v3

    .end local v3    # "profileAnalysisResult":I
    .local v24, "profileAnalysisResult":I
    :try_start_1c4
    const-string v3, "cloud-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1d2
    .catchall {:try_start_1c4 .. :try_end_1d2} :catchall_21a

    move-object v3, v0

    .line 371
    .end local v20    # "cloudProfileName":Ljava/lang/String;
    .local v3, "cloudProfileName":Ljava/lang/String;
    :try_start_1d3
    iget-object v0, v15, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Installer;->checkCloudProfile(Ljava/lang/String;)Z

    move-result v0

    .line 372
    .end local v23    # "exist":Z
    .restart local v0    # "exist":Z
    invoke-direct {v15, v14, v3, v2, v5}, Lcom/android/server/pm/PackageDexOptimizer;->prepareCloudProfile(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1e3

    if-eqz v0, :cond_1e3

    .line 375
    move-object v1, v3

    goto :goto_1ec

    .line 378
    :cond_1e3
    const/16 v20, 0x11

    .line 379
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v20
    :try_end_1e9
    .catchall {:try_start_1d3 .. :try_end_1e9} :catchall_1f9

    move-object/from16 v9, v20

    .line 381
    const/4 v1, 0x0

    .line 388
    :goto_1ec
    const/16 v20, 0x2

    move/from16 v35, v0

    move-object/from16 v36, v1

    move-object/from16 v38, v9

    move/from16 v37, v20

    move-object v9, v3

    .end local v24    # "profileAnalysisResult":I
    .local v20, "profileAnalysisResult":I
    goto/16 :goto_26e

    .line 454
    .end local v0    # "exist":Z
    .end local v20    # "profileAnalysisResult":I
    .restart local v24    # "profileAnalysisResult":I
    :catchall_1f9
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v40, v4

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v48, v7

    move-object/from16 v38, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v9, v13

    move/from16 v1, v22

    move/from16 v37, v24

    move-object v4, v0

    move-object v7, v3

    move-object v10, v8

    move-object v3, v15

    move-object v8, v2

    move-object/from16 v2, p4

    goto/16 :goto_444

    .end local v3    # "cloudProfileName":Ljava/lang/String;
    .local v20, "cloudProfileName":Ljava/lang/String;
    :catchall_21a
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v40, v4

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v48, v7

    move-object/from16 v38, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v9, v13

    move-object v3, v15

    move-object/from16 v7, v20

    move/from16 v1, v22

    move/from16 v37, v24

    move-object v4, v0

    move-object v10, v8

    move-object v8, v2

    move-object/from16 v2, p4

    goto/16 :goto_444

    .end local v24    # "profileAnalysisResult":I
    .local v3, "profileAnalysisResult":I
    :catchall_23c
    move-exception v0

    move/from16 v24, v3

    move-object/from16 v36, v1

    move-object/from16 v40, v4

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v48, v7

    move-object/from16 v38, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v9, v13

    move-object v3, v15

    move-object/from16 v7, v20

    move/from16 v1, v22

    move/from16 v37, v24

    move-object v4, v0

    move-object v10, v8

    move-object v8, v2

    move-object/from16 v2, p4

    .end local v3    # "profileAnalysisResult":I
    .restart local v24    # "profileAnalysisResult":I
    goto/16 :goto_444

    .line 366
    .end local v24    # "profileAnalysisResult":I
    .restart local v0    # "exist":Z
    .restart local v3    # "profileAnalysisResult":I
    :cond_260
    move/from16 v23, v0

    move/from16 v24, v3

    .end local v0    # "exist":Z
    .end local v3    # "profileAnalysisResult":I
    .restart local v23    # "exist":Z
    .restart local v24    # "profileAnalysisResult":I
    move-object/from16 v36, v1

    move-object/from16 v38, v9

    move-object/from16 v9, v20

    move/from16 v35, v23

    move/from16 v37, v24

    .line 396
    .end local v1    # "profileName":Ljava/lang/String;
    .end local v20    # "cloudProfileName":Ljava/lang/String;
    .end local v23    # "exist":Z
    .end local v24    # "profileAnalysisResult":I
    .local v9, "cloudProfileName":Ljava/lang/String;
    .local v35, "exist":Z
    .local v36, "profileName":Ljava/lang/String;
    .local v37, "profileAnalysisResult":I
    .local v38, "compilerFilter":Ljava/lang/String;
    :goto_26e
    move-object/from16 v1, p0

    move-object v3, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    move-object/from16 v2, p1

    move-object/from16 v39, v3

    move/from16 v15, v22

    .end local v3    # "path":Ljava/lang/String;
    .end local v22    # "i":I
    .local v15, "i":I
    .local v39, "path":Ljava/lang/String;
    move-object/from16 v3, p2

    move-object/from16 v40, v4

    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .local v40, "classLoaderContexts":[Ljava/lang/String;
    move-object/from16 v4, v38

    move-object/from16 v42, v5

    const/16 v41, 0x0

    .end local v5    # "dexMetadataPath":Ljava/lang/String;
    .local v42, "dexMetadataPath":Ljava/lang/String;
    move/from16 v5, v33

    move-object/from16 v43, v6

    .end local v6    # "pathsWithCode":[Z
    .local v43, "pathsWithCode":[Z
    move-object/from16 v6, p6

    :try_start_287
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZLcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    .line 397
    .local v0, "dexoptFlags":I
    array-length v1, v11

    const/4 v6, 0x2

    if-lt v1, v6, :cond_295

    .line 398
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    move/from16 v44, v0

    goto :goto_297

    .line 397
    :cond_295
    move/from16 v44, v0

    .line 405
    .end local v0    # "dexoptFlags":I
    .local v44, "dexoptFlags":I
    :goto_297
    array-length v0, v11
    :try_end_298
    .catchall {:try_start_287 .. :try_end_298} :catchall_430

    move/from16 v3, v18

    move/from16 v4, v41

    .end local v18    # "result":I
    .local v3, "result":I
    :goto_29c
    if-ge v4, v0, :cond_3ee

    :try_start_29e
    aget-object v5, v11, v4

    .line 406
    .local v5, "dexCodeIsa":Ljava/lang/String;
    aget-object v18, v40, v15

    .line 408
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v19

    .line 409
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v20
    :try_end_2aa
    .catchall {:try_start_29e .. :try_end_2aa} :catchall_3d5

    .line 406
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v45, v3

    .end local v3    # "result":I
    .local v45, "result":I
    move-object/from16 v3, p2

    move/from16 v46, v4

    move-object/from16 v4, v39

    move/from16 v47, v0

    move v0, v6

    move-object/from16 v6, v38

    move/from16 v48, v7

    .end local v7    # "sharedGid":I
    .local v48, "sharedGid":I
    move/from16 v7, v37

    move-object/from16 v49, v8

    move-object/from16 v8, v18

    move-object/from16 v50, v9

    .end local v9    # "cloudProfileName":Ljava/lang/String;
    .local v50, "cloudProfileName":Ljava/lang/String;
    move/from16 v9, v44

    move-object/from16 v51, v10

    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v51, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v10, v48

    move-object/from16 v52, v11

    .end local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v52, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v11, p4

    move-object/from16 v53, v12

    .end local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v53, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move/from16 v12, v19

    move-object/from16 v54, v13

    move-object/from16 v13, v36

    move-object/from16 v14, v42

    move/from16 v55, v15

    .end local v15    # "i":I
    .local v55, "i":I
    move/from16 v15, v20

    :try_start_2dd
    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 412
    .local v1, "newResult":I
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_ART_STATSLOG:Z
    :try_end_2e3
    .catchall {:try_start_2dd .. :try_end_2e3} :catchall_3bf

    if-eqz v2, :cond_35b

    .line 414
    move-object/from16 v2, p4

    if-eqz v2, :cond_356

    .line 415
    :try_start_2e9
    const-string v3, "dex2oat-metrics"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2f1
    .catchall {:try_start_2e9 .. :try_end_2f1} :catchall_344

    .line 417
    :try_start_2f1
    sget-object v3, Lcom/android/server/pm/PackageDexOptimizer;->sRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v20
    :try_end_2f7
    .catchall {:try_start_2f1 .. :try_end_2f7} :catchall_32c

    .line 418
    .local v20, "sessionId":J
    move-object/from16 v3, p0

    :try_start_2f9
    iget-object v4, v3, Lcom/android/server/pm/PackageDexOptimizer;->mArtStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;

    .line 422
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v23
    :try_end_2ff
    .catchall {:try_start_2f9 .. :try_end_2ff} :catchall_32a

    .line 423
    move-object/from16 v8, v39

    .end local v39    # "path":Ljava/lang/String;
    .local v8, "path":Ljava/lang/String;
    :try_start_301
    invoke-virtual {v2, v8}, Lcom/android/server/pm/CompilerStats$PackageStats;->getCompileTime(Ljava/lang/String;)J

    move-result-wide v24

    .line 425
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v27

    .line 427
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v9

    .line 428
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v10

    .line 427
    invoke-static {v8, v9, v10}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->getApkType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 418
    move-object/from16 v19, v4

    move-object/from16 v22, v38

    move-object/from16 v26, v42

    move/from16 v28, v1

    move-object/from16 v30, v5

    move-object/from16 v31, v8

    invoke-static/range {v19 .. v31}, Lcom/android/server/pm/dex/ArtStatsLogUtils;->writeStatsLog(Lcom/android/server/pm/dex/ArtStatsLogUtils$ArtStatsLogger;JLjava/lang/String;IJLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_324
    .catchall {:try_start_301 .. :try_end_324} :catchall_328

    .line 432
    .end local v20    # "sessionId":J
    :try_start_324
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    goto :goto_361

    .line 432
    :catchall_328
    move-exception v0

    goto :goto_331

    .end local v8    # "path":Ljava/lang/String;
    .restart local v39    # "path":Ljava/lang/String;
    :catchall_32a
    move-exception v0

    goto :goto_32f

    :catchall_32c
    move-exception v0

    move-object/from16 v3, p0

    :goto_32f
    move-object/from16 v8, v39

    .end local v39    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :goto_331
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    nop

    .end local v8    # "path":Ljava/lang/String;
    .end local v16    # "instructionSets":[Ljava/lang/String;
    .end local v32    # "isUsedByOtherApps":Z
    .end local v33    # "useCloudProfile":Z
    .end local v34    # "isHybridVerifyEnable":Z
    .end local v36    # "profileName":Ljava/lang/String;
    .end local v37    # "profileAnalysisResult":I
    .end local v38    # "compilerFilter":Ljava/lang/String;
    .end local v40    # "classLoaderContexts":[Ljava/lang/String;
    .end local v42    # "dexMetadataPath":Ljava/lang/String;
    .end local v43    # "pathsWithCode":[Z
    .end local v45    # "result":I
    .end local v48    # "sharedGid":I
    .end local v50    # "cloudProfileName":Ljava/lang/String;
    .end local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v55    # "i":I
    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "targetInstructionSets":[Ljava/lang/String;
    .end local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v0
    :try_end_336
    .catchall {:try_start_324 .. :try_end_336} :catchall_336

    .line 454
    .end local v1    # "newResult":I
    .end local v5    # "dexCodeIsa":Ljava/lang/String;
    .end local v35    # "exist":Z
    .end local v44    # "dexoptFlags":I
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v16    # "instructionSets":[Ljava/lang/String;
    .restart local v32    # "isUsedByOtherApps":Z
    .restart local v33    # "useCloudProfile":Z
    .restart local v34    # "isHybridVerifyEnable":Z
    .restart local v36    # "profileName":Ljava/lang/String;
    .restart local v37    # "profileAnalysisResult":I
    .restart local v38    # "compilerFilter":Ljava/lang/String;
    .restart local v40    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v42    # "dexMetadataPath":Ljava/lang/String;
    .restart local v43    # "pathsWithCode":[Z
    .restart local v45    # "result":I
    .restart local v48    # "sharedGid":I
    .restart local v50    # "cloudProfileName":Ljava/lang/String;
    .restart local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v55    # "i":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p3    # "targetInstructionSets":[Ljava/lang/String;
    .restart local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_336
    move-exception v0

    move-object v4, v0

    move/from16 v18, v45

    move-object/from16 v10, v49

    move-object/from16 v7, v50

    move-object/from16 v9, v54

    move/from16 v1, v55

    goto/16 :goto_444

    .end local v8    # "path":Ljava/lang/String;
    .restart local v39    # "path":Ljava/lang/String;
    :catchall_344
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v8, v39

    move-object v4, v0

    move/from16 v18, v45

    move-object/from16 v10, v49

    move-object/from16 v7, v50

    move-object/from16 v9, v54

    move/from16 v1, v55

    .end local v39    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    goto/16 :goto_444

    .line 414
    .end local v8    # "path":Ljava/lang/String;
    .restart local v1    # "newResult":I
    .restart local v5    # "dexCodeIsa":Ljava/lang/String;
    .restart local v35    # "exist":Z
    .restart local v39    # "path":Ljava/lang/String;
    .restart local v44    # "dexoptFlags":I
    :cond_356
    move-object/from16 v3, p0

    move-object/from16 v8, v39

    .end local v39    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    goto :goto_361

    .line 412
    .end local v8    # "path":Ljava/lang/String;
    .restart local v39    # "path":Ljava/lang/String;
    :cond_35b
    move-object/from16 v3, p0

    move-object/from16 v2, p4

    move-object/from16 v8, v39

    .line 438
    .end local v39    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :goto_361
    if-ne v1, v0, :cond_397

    .line 440
    move/from16 v4, v45

    const/4 v6, -0x1

    .end local v45    # "result":I
    .local v4, "result":I
    if-ne v4, v6, :cond_380

    .line 441
    nop

    .line 454
    move-object/from16 v7, v50

    .end local v50    # "cloudProfileName":Ljava/lang/String;
    .local v7, "cloudProfileName":Ljava/lang/String;
    if-eqz v7, :cond_37f

    .line 456
    :try_start_36d
    iget-object v0, v3, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_376
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_36d .. :try_end_376} :catch_377

    .line 459
    goto :goto_37f

    .line 457
    :catch_377
    move-exception v0

    .line 458
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    move-object/from16 v10, v49

    move-object/from16 v9, v54

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_37f
    :goto_37f
    return v4

    .line 443
    .end local v7    # "cloudProfileName":Ljava/lang/String;
    .restart local v50    # "cloudProfileName":Ljava/lang/String;
    :cond_380
    move-object/from16 v10, v49

    move-object/from16 v7, v50

    move-object/from16 v9, v54

    .line 454
    .end local v50    # "cloudProfileName":Ljava/lang/String;
    .restart local v7    # "cloudProfileName":Ljava/lang/String;
    if-eqz v7, :cond_396

    .line 456
    :try_start_388
    iget-object v0, v3, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_391
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_388 .. :try_end_391} :catch_392

    .line 459
    goto :goto_396

    .line 457
    :catch_392
    move-exception v0

    .line 458
    .restart local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_396
    :goto_396
    return v1

    .line 449
    .end local v4    # "result":I
    .end local v7    # "cloudProfileName":Ljava/lang/String;
    .restart local v45    # "result":I
    .restart local v50    # "cloudProfileName":Ljava/lang/String;
    :cond_397
    move/from16 v4, v45

    move-object/from16 v10, v49

    move-object/from16 v7, v50

    move-object/from16 v9, v54

    const/4 v6, -0x1

    .end local v45    # "result":I
    .end local v50    # "cloudProfileName":Ljava/lang/String;
    .restart local v4    # "result":I
    .restart local v7    # "cloudProfileName":Ljava/lang/String;
    if-eq v4, v6, :cond_3a5

    if-eqz v1, :cond_3a5

    .line 450
    move v4, v1

    .line 405
    .end local v1    # "newResult":I
    .end local v5    # "dexCodeIsa":Ljava/lang/String;
    :cond_3a5
    add-int/lit8 v1, v46, 0x1

    move-object/from16 v14, p1

    move v6, v0

    move v3, v4

    move-object/from16 v39, v8

    move-object v13, v9

    move-object v8, v10

    move/from16 v0, v47

    move-object/from16 v10, v51

    move-object/from16 v11, v52

    move-object/from16 v12, v53

    move/from16 v15, v55

    move v4, v1

    move-object v9, v7

    move/from16 v7, v48

    goto/16 :goto_29c

    .line 454
    .end local v4    # "result":I
    .end local v7    # "cloudProfileName":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v35    # "exist":Z
    .end local v44    # "dexoptFlags":I
    .restart local v39    # "path":Ljava/lang/String;
    .restart local v45    # "result":I
    .restart local v50    # "cloudProfileName":Ljava/lang/String;
    :catchall_3bf
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v2, p4

    move-object/from16 v8, v39

    move/from16 v4, v45

    move-object/from16 v10, v49

    move-object/from16 v7, v50

    move-object/from16 v9, v54

    move/from16 v18, v4

    move/from16 v1, v55

    move-object v4, v0

    .end local v39    # "path":Ljava/lang/String;
    .end local v45    # "result":I
    .end local v50    # "cloudProfileName":Ljava/lang/String;
    .restart local v4    # "result":I
    .restart local v7    # "cloudProfileName":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    goto/16 :goto_444

    .end local v4    # "result":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v48    # "sharedGid":I
    .end local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v55    # "i":I
    .restart local v3    # "result":I
    .local v7, "sharedGid":I
    .restart local v9    # "cloudProfileName":Ljava/lang/String;
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v15    # "i":I
    .restart local v39    # "path":Ljava/lang/String;
    :catchall_3d5
    move-exception v0

    move-object/from16 v2, p4

    move v4, v3

    move/from16 v48, v7

    move-object v7, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v9, v13

    move-object/from16 v3, p0

    move-object v10, v8

    move-object/from16 v8, v39

    move/from16 v18, v4

    move v1, v15

    move-object v4, v0

    .end local v3    # "result":I
    .end local v9    # "cloudProfileName":Ljava/lang/String;
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v15    # "i":I
    .end local v39    # "path":Ljava/lang/String;
    .restart local v4    # "result":I
    .local v7, "cloudProfileName":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v48    # "sharedGid":I
    .restart local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v55    # "i":I
    goto/16 :goto_444

    .line 405
    .end local v4    # "result":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v48    # "sharedGid":I
    .end local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v55    # "i":I
    .restart local v3    # "result":I
    .local v7, "sharedGid":I
    .restart local v9    # "cloudProfileName":Ljava/lang/String;
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v15    # "i":I
    .restart local v35    # "exist":Z
    .restart local v39    # "path":Ljava/lang/String;
    .restart local v44    # "dexoptFlags":I
    :cond_3ee
    move-object/from16 v2, p4

    move v4, v3

    move/from16 v48, v7

    move-object v7, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v9, v13

    move/from16 v55, v15

    const/4 v6, -0x1

    move-object/from16 v3, p0

    move-object v10, v8

    move-object/from16 v8, v39

    .line 454
    .end local v3    # "result":I
    .end local v9    # "cloudProfileName":Ljava/lang/String;
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v15    # "i":I
    .end local v35    # "exist":Z
    .end local v39    # "path":Ljava/lang/String;
    .end local v44    # "dexoptFlags":I
    .restart local v4    # "result":I
    .local v7, "cloudProfileName":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v48    # "sharedGid":I
    .restart local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v55    # "i":I
    if-eqz v7, :cond_413

    .line 456
    :try_start_405
    iget-object v0, v3, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_405 .. :try_end_40e} :catch_40f

    goto :goto_413

    .line 457
    :catch_40f
    move-exception v0

    .line 458
    .restart local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v7    # "cloudProfileName":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v32    # "isUsedByOtherApps":Z
    .end local v33    # "useCloudProfile":Z
    .end local v34    # "isHybridVerifyEnable":Z
    .end local v36    # "profileName":Ljava/lang/String;
    .end local v37    # "profileAnalysisResult":I
    .end local v38    # "compilerFilter":Ljava/lang/String;
    .end local v42    # "dexMetadataPath":Ljava/lang/String;
    :cond_413
    :goto_413
    move/from16 v18, v4

    .end local v4    # "result":I
    .restart local v18    # "result":I
    :goto_415
    move/from16 v1, v55

    .end local v55    # "i":I
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    move-object/from16 v14, p1

    move-object v13, v2

    move-object v15, v3

    move v9, v6

    move-object v8, v10

    move-object/from16 v4, v40

    move/from16 v5, v41

    move-object/from16 v6, v43

    move/from16 v7, v48

    move-object/from16 v10, v51

    move-object/from16 v11, v52

    move-object/from16 v12, v53

    move v3, v0

    .end local v1    # "i":I
    .local v0, "i":I
    goto/16 :goto_e1

    .line 454
    .end local v0    # "i":I
    .end local v48    # "sharedGid":I
    .end local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v7, "sharedGid":I
    .restart local v9    # "cloudProfileName":Ljava/lang/String;
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v15    # "i":I
    .restart local v32    # "isUsedByOtherApps":Z
    .restart local v33    # "useCloudProfile":Z
    .restart local v34    # "isHybridVerifyEnable":Z
    .restart local v36    # "profileName":Ljava/lang/String;
    .restart local v37    # "profileAnalysisResult":I
    .restart local v38    # "compilerFilter":Ljava/lang/String;
    .restart local v39    # "path":Ljava/lang/String;
    .restart local v42    # "dexMetadataPath":Ljava/lang/String;
    :catchall_430
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v2, p4

    move/from16 v48, v7

    move-object v7, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object v9, v13

    move v1, v15

    move-object v10, v8

    move-object/from16 v8, v39

    move-object v4, v0

    .end local v9    # "cloudProfileName":Ljava/lang/String;
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v15    # "i":I
    .end local v39    # "path":Ljava/lang/String;
    .restart local v1    # "i":I
    .local v7, "cloudProfileName":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v48    # "sharedGid":I
    .restart local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_444
    if-eqz v7, :cond_454

    .line 456
    :try_start_446
    iget-object v0, v3, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_446 .. :try_end_44f} :catch_450

    .line 459
    goto :goto_454

    .line 457
    :catch_450
    move-exception v0

    .line 458
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_454
    :goto_454
    throw v4

    .line 314
    .end local v1    # "i":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v32    # "isUsedByOtherApps":Z
    .end local v33    # "useCloudProfile":Z
    .end local v34    # "isHybridVerifyEnable":Z
    .end local v36    # "profileName":Ljava/lang/String;
    .end local v37    # "profileAnalysisResult":I
    .end local v38    # "compilerFilter":Ljava/lang/String;
    .end local v40    # "classLoaderContexts":[Ljava/lang/String;
    .end local v42    # "dexMetadataPath":Ljava/lang/String;
    .end local v43    # "pathsWithCode":[Z
    .end local v48    # "sharedGid":I
    .end local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v52    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v53    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v3, "i":I
    .local v4, "classLoaderContexts":[Ljava/lang/String;
    .restart local v6    # "pathsWithCode":[Z
    .local v7, "sharedGid":I
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v12    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_455
    move v1, v3

    move-object/from16 v40, v4

    move-object/from16 v43, v6

    move-object/from16 v51, v10

    .end local v3    # "i":I
    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .end local v6    # "pathsWithCode":[Z
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v40    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v43    # "pathsWithCode":[Z
    .restart local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 316
    move-object/from16 v5, v51

    .end local v51    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    .end local v1    # "i":I
    .end local v5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "classLoaderContexts":[Ljava/lang/String;
    .end local v43    # "pathsWithCode":[Z
    .restart local v4    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v6    # "pathsWithCode":[Z
    .restart local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_487
    return v18
.end method

.method private prepareCloudProfile(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "dexMetadataPath"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    if-eqz p4, :cond_2d

    .line 478
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/Installer;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 481
    .local v5, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x2710

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_22
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_22} :catch_24

    .line 483
    const/4 v0, 0x1

    return v0

    .line 484
    .end local v5    # "appId":I
    :catch_24
    move-exception v1

    .line 485
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to prepare cloud profile"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    return v0

    .line 489
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_2d
    return v0
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .registers 5
    .param p1, "flags"    # I

    .line 1174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    .line 1177
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_10
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1180
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_1a
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_26

    .line 1183
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_26
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 1186
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_31
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3d

    .line 1189
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_3d
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_48

    .line 1192
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    :cond_48
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_54

    .line 1195
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_54
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_60

    .line 1198
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_60
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_6b

    .line 1201
    const-string v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_6b
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_76

    .line 1204
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_76
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .registers 8
    .param p1, "acquireTime"    # J

    .line 708
    const-string v0, "PackageDexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_9

    .line 709
    return-void

    .line 712
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 713
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 715
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 716
    .local v1, "duration":J
    const-wide/32 v3, 0xa1220

    cmp-long v3, v1, v3

    if-ltz v3, :cond_5a

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time out. Operation took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 719
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5a} :catch_5b

    .line 723
    .end local v1    # "duration":J
    :cond_5a
    goto :goto_7e

    .line 721
    :catch_5b
    move-exception v1

    .line 722
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7e
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .registers 2
    .param p1, "dexoptFlags"    # I

    .line 822
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .registers 2
    .param p1, "dexoptNeeded"    # I

    .line 815
    return p1
.end method

.method canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 193
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 194
    return v1

    .line 201
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInjector:Lcom/android/server/pm/PackageDexOptimizer$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/PackageDexOptimizer$Injector;->getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    .line 202
    .local v0, "ahm":Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    if-eqz v0, :cond_2d

    .line 203
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 204
    invoke-virtual {v0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isOatArtifactDeletionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 205
    return v1

    .line 208
    :cond_2d
    const/4 v1, 0x1

    return v1
.end method

.method checkIfKilledAndRemoveDexoptPid(I)Z
    .registers 3
    .param p1, "pid"    # I

    .line 246
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerWithoutLock()Lcom/android/server/pm/Installer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->checkIfKilledAndRemoveDexoptPid(I)Z

    move-result v0

    return v0
.end method

.method controlDexOptBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z

    .line 255
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerWithoutLock()Lcom/android/server/pm/Installer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->controlDexOptBlocking(Z)V

    .line 256
    return-void
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 10
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "secondaryId"    # I
    .param p4, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p5, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 677
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 680
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_8
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1d

    .line 685
    .local v1, "acquireTime":J
    :try_start_e
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_17

    .line 688
    :try_start_12
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 685
    return v3

    .line 688
    :catchall_17
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 689
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "secondaryId":I
    .end local p4    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local p5    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 690
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "path":Ljava/lang/String;
    .restart local p3    # "secondaryId":I
    .restart local p4    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p5    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v1

    .line 678
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 11
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 671
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method public dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 30
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 595
    nop

    .line 596
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/4 v2, 0x2

    or-int/2addr v0, v2

    .line 597
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v1, 0x200

    :cond_16
    or-int/2addr v1, v0

    .line 599
    .local v1, "dexoptFlags":I
    const/4 v0, 0x0

    .line 600
    .local v0, "result":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move/from16 v21, v0

    .end local v0    # "result":I
    .local v21, "result":I
    :goto_22
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 601
    .local v22, "isa":Ljava/lang/String;
    const-string v4, "android"

    .line 605
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v7

    .line 606
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 601
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, v22

    move v11, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)I

    move-result v23

    .line 612
    .local v23, "dexoptNeeded":I
    if-nez v23, :cond_4b

    .line 613
    goto :goto_22

    .line 616
    :cond_4b
    move-object/from16 v15, p0

    :try_start_4d
    iget-object v14, v15, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_50
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4d .. :try_end_50} :catch_9c

    .line 617
    :try_start_50
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerLI()Lcom/android/server/pm/Installer;

    move-result-object v3

    const/16 v5, 0x3e8

    const-string v6, "android"

    const/4 v9, 0x0

    .line 625
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 633
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v24
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_95

    .line 617
    move-object/from16 v4, p1

    move-object/from16 v7, v22

    move/from16 v8, v23

    move v10, v1

    move-object/from16 v25, v14

    move-object v14, v0

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    :try_start_88
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 634
    .local v0, "completed":Z
    if-nez v0, :cond_90

    .line 635
    monitor-exit v25

    return v2

    .line 637
    .end local v0    # "completed":Z
    :cond_90
    monitor-exit v25

    .line 641
    nop

    .line 642
    const/16 v21, 0x1

    .line 643
    .end local v22    # "isa":Ljava/lang/String;
    .end local v23    # "dexoptNeeded":I
    goto :goto_22

    .line 637
    .restart local v22    # "isa":Ljava/lang/String;
    .restart local v23    # "dexoptNeeded":I
    :catchall_95
    move-exception v0

    move-object/from16 v25, v14

    :goto_98
    monitor-exit v25
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_9a

    .end local v1    # "dexoptFlags":I
    .end local v21    # "result":I
    .end local v22    # "isa":Ljava/lang/String;
    .end local v23    # "dexoptNeeded":I
    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "dexPath":Ljava/lang/String;
    .end local p2    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local p3    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :try_start_99
    throw v0
    :try_end_9a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_99 .. :try_end_9a} :catch_9c

    .restart local v1    # "dexoptFlags":I
    .restart local v21    # "result":I
    .restart local v22    # "isa":Ljava/lang/String;
    .restart local v23    # "dexoptNeeded":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "dexPath":Ljava/lang/String;
    .restart local p2    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p3    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_9a
    move-exception v0

    goto :goto_98

    .line 638
    :catch_9c
    move-exception v0

    .line 639
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to dexopt"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v2, -0x1

    return v2

    .line 644
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v22    # "isa":Ljava/lang/String;
    .end local v23    # "dexoptNeeded":I
    :cond_a6
    return v21
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 830
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 831
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v3

    .line 830
    invoke-static {v0, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "instructionSets":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v5

    .line 837
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 838
    .local v7, "path":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "path: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 841
    array-length v8, v4

    const/4 v0, 0x0

    move v9, v0

    :goto_46
    if-ge v9, v8, :cond_a3

    aget-object v10, v4, v9

    .line 843
    .local v10, "isa":Ljava/lang/String;
    :try_start_4a
    invoke-static {v7, v10}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    .line 844
    .local v0, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": [status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] [reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 845
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 844
    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_80} :catch_81

    .line 848
    .end local v0    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_a0

    .line 846
    :catch_81
    move-exception v0

    .line 847
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": [Exception]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 841
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v10    # "isa":Ljava/lang/String;
    :goto_a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 851
    :cond_a3
    invoke-virtual {v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v8, "used by other apps: "

    if-eqz v0, :cond_c4

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 855
    :cond_c4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 857
    .local v0, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13b

    .line 858
    const-string v9, "known secondary dex files:"

    invoke-virtual {v1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 860
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_de
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_138

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 861
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 862
    .local v11, "dex":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 863
    .local v12, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 866
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "class loader context: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v13

    if-eqz v13, :cond_134

    .line 868
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 870
    :cond_134
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 871
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v11    # "dex":Ljava/lang/String;
    .end local v12    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_de

    .line 872
    :cond_138
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 874
    :cond_13b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 875
    .end local v0    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v7    # "path":Ljava/lang/String;
    goto/16 :goto_1c

    .line 876
    :cond_140
    return-void
.end method

.method dumpSingleDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 887
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V

    .line 889
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "odex file size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/content/pm/PackageParserStub;->get()Landroid/content/pm/PackageParserStub;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/PackageParserStub;->getDexFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 893
    return-void
.end method

.method performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 222
    const-string v0, "android"

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 226
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 231
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_1e
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_35

    .line 236
    .local v1, "acquireTime":J
    :try_start_26
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    .line 239
    :try_start_2a
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 236
    return v3

    .line 239
    :catchall_2f
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 240
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "instructionSets":[Ljava/lang/String;
    .end local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 241
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p3    # "instructionSets":[Ljava/lang/String;
    .restart local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v1

    .line 227
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "System server dexopting should be done via  DexManager and PackageDexOptimizer#dexoptSystemServerPath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method recoverOldFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "oatPath"    # Ljava/lang/String;

    .line 499
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerWithoutLock()Lcom/android/server/pm/Installer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->recoverOldFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method rmBackupOat(Ljava/lang/String;)V
    .registers 3
    .param p1, "oatPath"    # Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->getInstallerWithoutLock()Lcom/android/server/pm/Installer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->rmBackupOat(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 1171
    return-void
.end method
