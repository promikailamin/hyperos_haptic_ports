.class public Lcom/android/server/pm/dex/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/DexManager$DexSearchResult;,
        Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;,
        Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static DEX_SEARCH_FOUND_PRIMARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SECONDARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SPLIT:I = 0x0

.field private static DEX_SEARCH_NOT_FOUND:I = 0x0

.field private static final ENABLE_SECONDARY_DEXOPT:Z

.field private static final ISOLATED_PROCESS_PACKAGE_SUFFIX:Ljava/lang/String; = "..isolated"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB:Ljava/lang/String; = "pm.dexopt.priv-apps-oob"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB_LIST:Ljava/lang/String; = "pm.dexopt.priv-apps-oob-list"

.field private static final SYSTEM_SERVER_COMPILER_FILTER:Ljava/lang/String; = "verify"

.field private static final TAG:Ljava/lang/String; = "DexManager"


# instance fields
.field private mBatteryManager:Landroid/os/BatteryManager;

.field private final mContext:Landroid/content/Context;

.field private final mCriticalBatteryLevel:I

.field private final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageCodeLocationsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEX_SEARCH_FOUND_PRIMARY()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEX_SEARCH_FOUND_SECONDARY()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEX_SEARCH_FOUND_SPLIT()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEX_SEARCH_NOT_FOUND()I
    .registers 1

    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smputIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 90
    const-string v0, "DexManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    .line 138
    const/4 v0, 0x1

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    .line 139
    const/4 v2, 0x2

    sput v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    .line 140
    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    .line 143
    nop

    .line 144
    const-string/jumbo v1, "persist.miui.dexopt.secondary"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/DexManager;->ENABLE_SECONDARY_DEXOPT:Z

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdo"    # Lcom/android/server/pm/PackageDexOptimizer;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;

    .line 148
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/pm/IPackageManager;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/pm/IPackageManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdo"    # Lcom/android/server/pm/PackageDexOptimizer;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;
    .param p5, "packageManager"    # Landroid/content/pm/IPackageManager;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 130
    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    .line 154
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 156
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 157
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 158
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 159
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {v0, p3}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 161
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 166
    if-eqz p1, :cond_4a

    .line 167
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    .line 169
    if-nez v0, :cond_3c

    .line 170
    const-string v0, "DexManager"

    const-string v1, "Power Manager is unavailable at time of Dex Manager start"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    goto :goto_4d

    .line 177
    :cond_4a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    .line 179
    :goto_4d
    return-void
.end method

.method private areBatteryThermalOrMemoryCritical()Z
    .registers 5

    .line 1091
    invoke-direct {p0}, Lcom/android/server/pm/dex/DexManager;->getBatteryManager()Landroid/os/BatteryManager;

    move-result-object v0

    .line 1092
    .local v0, "batteryManager":Landroid/os/BatteryManager;
    const/4 v1, 0x3

    if-eqz v0, :cond_17

    const/4 v2, 0x6

    .line 1093
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    if-ne v2, v1, :cond_17

    const/4 v2, 0x4

    .line 1095
    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    if-le v2, v3, :cond_21

    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_23

    .line 1098
    invoke-virtual {v2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v2

    if-lt v2, v1, :cond_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 1101
    .local v1, "isBtmCritical":Z
    :goto_24
    return v1
.end method

.method public static auditUncompressedDexInApk(Ljava/lang/String;)Z
    .registers 13
    .param p0, "fileName"    # Ljava/lang/String;

    .line 1002
    const-string v0, "DexManager"

    const/4 v1, 0x0

    .line 1004
    .local v1, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v1, v3

    .line 1006
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1007
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x1

    .line 1008
    .local v4, "allCorrect":Z
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 1009
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 1010
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1011
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2b} :catch_8f
    .catchall {:try_start_4 .. :try_end_2b} :catchall_8d

    const-string v7, "APK "

    if-eqz v6, :cond_53

    .line 1012
    const/4 v4, 0x0

    .line 1013
    :try_start_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has compressed dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1014
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1013
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 1015
    :cond_53
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_83

    .line 1016
    const/4 v4, 0x0

    .line 1017
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has unaligned dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1018
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1017
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_83} :catch_8f
    .catchall {:try_start_30 .. :try_end_83} :catchall_8d

    .line 1021
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :cond_83
    :goto_83
    goto :goto_f

    .line 1022
    :cond_84
    nop

    .line 1028
    nop

    .line 1029
    :try_start_86
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 1031
    :goto_89
    goto :goto_8c

    :catch_8a
    move-exception v0

    goto :goto_89

    .line 1022
    :goto_8c
    return v4

    .line 1027
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "allCorrect":Z
    :catchall_8d
    move-exception v0

    goto :goto_b0

    .line 1023
    :catch_8f
    move-exception v3

    .line 1024
    .local v3, "ignore":Ljava/io/IOException;
    :try_start_90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when parsing APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_90 .. :try_end_a6} :catchall_8d

    .line 1025
    nop

    .line 1028
    if-eqz v1, :cond_ae

    .line 1029
    :try_start_a9
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_ae

    .line 1031
    :catch_ad
    move-exception v0

    :cond_ae
    :goto_ae
    nop

    .line 1025
    return v2

    .line 1028
    .end local v3    # "ignore":Ljava/io/IOException;
    :goto_b0
    if-eqz v1, :cond_b7

    .line 1029
    :try_start_b2
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_b7

    .line 1031
    :catch_b6
    move-exception v2

    :cond_b7
    :goto_b7
    nop

    .line 1032
    throw v0
.end method

.method private cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;
    .param p4, "dataDirs"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 457
    .local v1, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    if-eqz p4, :cond_23

    .line 459
    array-length v2, p4

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_23

    aget-object v4, p4, v3

    .line 464
    .local v4, "dataDir":Ljava/lang/String;
    if-eqz v4, :cond_20

    .line 465
    invoke-virtual {v1, v4, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 459
    .end local v4    # "dataDir":Ljava/lang/String;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 469
    .end local v1    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_23
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private cachePackageInfo(Landroid/content/pm/PackageInfo;I)V
    .registers 11
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 442
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 443
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 445
    .local v6, "dataDirs":[Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 447
    return-void
.end method

.method private getBatteryManager()Landroid/os/BatteryManager;
    .registers 3

    .line 1079
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 1080
    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 1083
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    return-object v0
.end method

.method private getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .registers 10
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 879
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 881
    .local v0, "loadingPackageCodeLocations":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v1

    .line 882
    .local v1, "outcome":I
    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v2, :cond_17

    .line 884
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->-$$Nest$fgetmPackageName(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 890
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v2

    .line 891
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 892
    .local v4, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v4, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 893
    sget v5, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v5, :cond_44

    .line 894
    new-instance v3, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->-$$Nest$fgetmPackageName(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit v2

    return-object v3

    .line 896
    .end local v4    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_44
    goto :goto_24

    .line 897
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_b6

    .line 907
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 908
    invoke-direct {p0, p2}, Lcom/android/server/pm/dex/DexManager;->isSystemServerDexPathSupportedForOdex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 914
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const-string v3, "android"

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 916
    :cond_5e
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System server loads dex files outside paths supported for odex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_76
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_ad

    .line 926
    :try_start_7a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "dexPathReal":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 928
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dex loaded with symlink. dexPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dexPathReal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_ab} :catch_ac

    .line 933
    .end local v2    # "dexPathReal":Ljava/lang/String;
    :cond_ab
    goto :goto_ad

    .line 931
    :catch_ac
    move-exception v2

    .line 937
    :cond_ad
    :goto_ad
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 v3, 0x0

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 897
    :catchall_b6
    move-exception v3

    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v3
.end method

.method private getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;
    .registers 4
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 710
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 711
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_10

    .line 712
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 710
    :goto_10
    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_12

    .line 184
    nop

    .line 185
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 187
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 964
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static isPackageSelectedToRunOob(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 973
    .local p0, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 974
    const-string/jumbo v0, "pm.dexopt.priv-apps-oob"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 975
    const-string/jumbo v1, "pm.dexopt.priv-apps-oob-list"

    const-string v2, "ALL"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-static {v0, v1, p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/util/Collection;)Z
    .registers 10
    .param p0, "isEnabled"    # Z
    .param p1, "whitelist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 982
    .local p2, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 983
    return v0

    .line 986
    :cond_4
    const-string v1, "ALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 987
    return v2

    .line 989
    :cond_e
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v0

    :goto_16
    if-ge v4, v3, :cond_24

    aget-object v5, v1, v4

    .line 990
    .local v5, "oobPkgName":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 991
    return v2

    .line 989
    .end local v5    # "oobPkgName":Ljava/lang/String;
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 994
    :cond_24
    return v0
.end method

.method private static isPlatformPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 942
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSystemServerDexPathSupportedForOdex(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dexPath"    # Ljava/lang/String;

    .line 354
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    .local v0, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const-string v1, "/apex/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 357
    return v2

    .line 359
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 360
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 361
    return v2

    .line 359
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 364
    .end local v1    # "i":I
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method private loadInternal(Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 473
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    const-string v0, "DexManager"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 474
    .local v1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 478
    .local v2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 479
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 480
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 481
    .local v6, "userId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 483
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 490
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v9, v10}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 492
    .local v9, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v10, v11}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 496
    .local v10, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v11, :cond_78

    .line 498
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 500
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v9    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_78
    goto :goto_34

    .line 501
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v5    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "userId":I
    :cond_79
    goto :goto_14

    .line 504
    :cond_7a
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 505
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v3, "packagesToKeepDataAbout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_89} :catch_8a

    .line 512
    .end local v3    # "packagesToKeepDataAbout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_95

    .line 508
    :catch_8a
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 510
    const-string v4, "Exception while loading package dex usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_95
    :try_start_95
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9a} :catch_9b

    .line 520
    goto :goto_a6

    .line 516
    :catch_9b
    move-exception v3

    .line 517
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 518
    const-string v4, "Exception while loading package dynamic code usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_a6
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 946
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 947
    .local v0, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method


# virtual methods
.method public deleteOptimizedFiles(Lcom/android/server/pm/dex/ArtPackageInfo;)J
    .registers 13
    .param p1, "packageInfo"    # Lcom/android/server/pm/dex/ArtPackageInfo;

    .line 1113
    const-wide/16 v0, 0x0

    .line 1114
    .local v0, "freedBytes":J
    const/4 v2, 0x0

    .line 1115
    .local v2, "hadErrors":Z
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getCodePaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1117
    .local v5, "codePath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getInstructionSets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1119
    .local v7, "isa":Ljava/lang/String;
    :try_start_2f
    iget-object v8, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1120
    invoke-virtual {p1}, Lcom/android/server/pm/dex/ArtPackageInfo;->getOatDir()Ljava/lang/String;

    move-result-object v9

    .line 1119
    invoke-virtual {v8, v3, v5, v7, v9}, Lcom/android/server/pm/Installer;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8
    :try_end_39
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_39} :catch_3b

    add-long/2addr v0, v8

    .line 1124
    goto :goto_55

    .line 1121
    :catch_3b
    move-exception v8

    .line 1122
    .local v8, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed deleting oat files for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DexManager"

    invoke-static {v10, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    const/4 v2, 0x1

    .line 1125
    .end local v7    # "isa":Ljava/lang/String;
    .end local v8    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_55
    goto :goto_23

    .line 1126
    .end local v5    # "codePath":Ljava/lang/String;
    :cond_56
    goto :goto_f

    .line 1127
    :cond_57
    if-eqz v2, :cond_5c

    const-wide/16 v4, -0x1

    goto :goto_5d

    :cond_5c
    move-wide v4, v0

    :goto_5d
    return-wide v4
.end method

.method public dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 18
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 566
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "DexManager"

    if-eqz v0, :cond_15

    .line 570
    const-string v0, "System server jars should be optimized with dexoptSystemServer"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v2

    .line 574
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v4

    .line 575
    .local v4, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v6

    .line 577
    .local v6, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_47

    .line 578
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_46

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No secondary dex use for package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_46
    return v7

    .line 584
    :cond_47
    const/4 v0, 0x1

    .line 585
    .local v0, "success":Z
    invoke-virtual {v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "success":Z
    .local v9, "success":Z
    :goto_55
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 586
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 587
    .local v11, "dexPath":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 591
    .local v12, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :try_start_70
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/DexManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v13, 0x0

    .line 592
    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    .line 591
    invoke-interface {v0, v5, v13, v14, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7e} :catch_cc

    .line 595
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 600
    if-nez v0, :cond_af

    .line 601
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not find package when compiling secondary dex "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 602
    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 601
    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v13, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v14

    invoke-virtual {v13, v5, v14}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    .line 604
    goto :goto_55

    .line 610
    :cond_af
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v13

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v15, p1

    invoke-virtual {v13, v14, v11, v12, v15}, Lcom/android/server/pm/PackageManagerServiceStub;->performDexOptSecondary(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)V

    .line 612
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceStub;->getDexoptSecondaryResult()I

    move-result v13

    .line 614
    .local v13, "result":I
    if-eqz v9, :cond_c9

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c9

    move v14, v7

    goto :goto_ca

    :cond_c9
    move v14, v2

    :goto_ca
    move v9, v14

    .line 615
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v13    # "result":I
    goto :goto_55

    .line 593
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v11    # "dexPath":Ljava/lang/String;
    .restart local v12    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :catch_cc
    move-exception v0

    move-object/from16 v15, p1

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_d5
    move-object/from16 v15, p1

    return v9
.end method

.method public dexoptSystemServer(Lcom/android/server/pm/dex/DexoptOptions;)I
    .registers 18
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 631
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "DexManager"

    if-nez v1, :cond_2a

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non system server package used when trying to dexopt system server:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return v2

    .line 643
    :cond_2a
    const-string/jumbo v1, "verify"

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/android/server/pm/dex/DexoptOptions;->overrideCompilerFilter(Ljava/lang/String;)Lcom/android/server/pm/dex/DexoptOptions;

    move-result-object v1

    .line 646
    .local v1, "overriddenOptions":Lcom/android/server/pm/dex/DexoptOptions;
    invoke-direct {v0, v1}, Lcom/android/server/pm/dex/DexManager;->getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v5

    .line 647
    .local v5, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-virtual {v1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 648
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    .line 649
    .local v7, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_54

    .line 650
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_53

    .line 651
    const-string v2, "No dex files recorded for system server"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_53
    return v9

    .line 657
    :cond_54
    const/4 v8, 0x0

    .line 658
    .local v8, "usageUpdated":Z
    const/4 v10, 0x0

    .line 659
    .local v10, "result":I
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_62
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_104

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 660
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 661
    .local v13, "dexPath":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 662
    .local v14, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-array v15, v9, [Ljava/lang/String;

    invoke-static {v13, v15}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v15

    new-array v2, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v15, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 663
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_a2

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "A dex file previously loaded by System Server does not exist  anymore: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_a2
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 668
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    .line 667
    invoke-virtual {v2, v6, v13, v15}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_b3

    if-eqz v8, :cond_b1

    goto :goto_b3

    :cond_b1
    move v2, v9

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v2, 0x1

    :goto_b4
    move v8, v2

    .line 669
    const/4 v2, -0x1

    goto :goto_62

    .line 672
    :cond_b7
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v2

    if-nez v2, :cond_d1

    .line 673
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v2

    if-eqz v2, :cond_c5

    const/4 v15, -0x1

    goto :goto_d2

    .line 682
    :cond_c5
    invoke-virtual {v5, v13, v14, v1}, Lcom/android/server/pm/PackageDexOptimizer;->dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v2

    .line 688
    .local v2, "newResult":I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_cf

    if-eqz v2, :cond_cf

    .line 690
    move v10, v2

    .line 692
    .end local v2    # "newResult":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v13    # "dexPath":Ljava/lang/String;
    .end local v14    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_cf
    move v2, v15

    goto :goto_62

    .line 672
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v13    # "dexPath":Ljava/lang/String;
    .restart local v14    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_d1
    const/4 v15, -0x1

    .line 674
    :goto_d2
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 675
    const-string/jumbo v2, "unsupported"

    goto :goto_df

    .line 676
    :cond_dc
    const-string/jumbo v2, "variable"

    :goto_df
    nop

    .line 677
    .local v2, "debugMsg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping dexopt for system server path loaded with "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " class loader context: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, -0x1

    const/4 v9, 0x0

    goto/16 :goto_62

    .line 694
    .end local v2    # "debugMsg":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v13    # "dexPath":Ljava/lang/String;
    .end local v14    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_104
    if-eqz v8, :cond_10b

    .line 695
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 698
    :cond_10b
    return v10
.end method

.method public getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCompilationReasonForInstallScenario(I)I
    .registers 5
    .param p1, "installScenario"    # I

    .line 1042
    invoke-direct {p0}, Lcom/android/server/pm/dex/DexManager;->areBatteryThermalOrMemoryCritical()Z

    move-result v0

    .line 1043
    .local v0, "resourcesAreCritical":Z
    sparse-switch p1, :sswitch_data_24

    .line 1070
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid installation scenario"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1066
    :sswitch_f
    const/16 v1, 0xf

    return v1

    .line 1058
    :sswitch_12
    if-eqz v0, :cond_17

    .line 1059
    const/16 v1, 0x8

    return v1

    .line 1061
    :cond_17
    const/4 v1, 0x6

    return v1

    .line 1051
    :sswitch_19
    if-eqz v0, :cond_1d

    .line 1052
    const/4 v1, 0x7

    return v1

    .line 1054
    :cond_1d
    const/4 v1, 0x5

    return v1

    .line 1048
    :sswitch_1f
    const/4 v1, 0x4

    return v1

    .line 1045
    :sswitch_21
    const/4 v1, 0x3

    return v1

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_19
        0x3 -> :sswitch_12
        0x63 -> :sswitch_f
    .end sparse-switch
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object v0
.end method

.method public getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 544
    .local v0, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v0, :cond_e

    new-instance v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v1, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    return-object v1
.end method

.method hasInfoOnPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public load(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 375
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 380
    goto :goto_16

    .line 376
    :catch_4
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 378
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 379
    const-string v1, "DexManager"

    const-string v2, "Exception while loading. Starting with a fresh state."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .param p4, "loaderUserId"    # I
    .param p5, "loaderIsIsolatedProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 210
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 215
    goto :goto_1f

    .line 212
    :catch_4
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while notifying dex load for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    .registers 29
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .param p4, "loaderUserId"    # I
    .param p5, "loaderIsIsolatedProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 222
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-nez p2, :cond_9

    .line 223
    return-void

    .line 225
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v5, "DexManager"

    if-eqz v1, :cond_17

    .line 226
    const-string v1, "Bad call to notifyDexLoad: class loaders list is empty"

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 229
    :cond_17
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading dex files "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in unsupported ISA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 245
    :cond_4a
    move-object/from16 v4, p3

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 246
    .local v1, "loadingPackageAmendedName":Ljava/lang/String;
    if-eqz p5, :cond_65

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..isolated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_66

    .line 246
    :cond_65
    move-object v3, v1

    .line 249
    .end local v1    # "loadingPackageAmendedName":Ljava/lang/String;
    .local v3, "loadingPackageAmendedName":Ljava/lang/String;
    :goto_66
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/Map$Entry;

    .line 250
    .local v18, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "dexPath":Ljava/lang/String;
    invoke-direct {v0, v7, v2, v6}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v1

    .line 254
    .local v1, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    sget-boolean v8, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v8, :cond_b7

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " loads from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b7
    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v9

    sget v10, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v9, v10, :cond_1a0

    .line 263
    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    move/from16 v19, v8

    .line 265
    .local v19, "isUsedByOtherApps":Z
    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v8

    sget v10, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v8, v10, :cond_dd

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v8

    sget v10, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v8, v10, :cond_dc

    goto :goto_dd

    :cond_dc
    const/4 v9, 0x0

    :cond_dd
    :goto_dd
    move/from16 v20, v9

    .line 268
    .local v20, "primaryOrSplit":Z
    if-eqz v20, :cond_ee

    if-nez v19, :cond_ee

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-static {v8}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ee

    .line 276
    goto :goto_6e

    .line 279
    :cond_ee
    if-nez v20, :cond_fb

    .line 281
    iget-object v8, v0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6, v2, v9, v10}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_fb
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v21, v8

    check-cast v21, Ljava/lang/String;

    .line 294
    .local v21, "classLoaderContext":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v22

    .line 296
    .local v22, "overwriteCLC":Z
    if-eqz v21, :cond_19b

    .line 297
    invoke-static/range {v21 .. v21}, Ldalvik/system/VMRuntime;->isValidClassLoaderContext(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_196

    .line 305
    iget-object v8, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    move/from16 v11, p4

    move-object/from16 v12, p3

    move/from16 v13, v20

    move-object v14, v3

    move-object/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 308
    .local v8, "isUpdate":Z
    if-eqz v8, :cond_130

    .line 309
    iget-object v9, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 317
    :cond_130
    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_191

    if-nez v19, :cond_191

    if-eqz v8, :cond_191

    .line 319
    iget-object v9, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 320
    invoke-virtual {v9, v10}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v9

    .line 322
    .local v9, "pkgUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-eqz v9, :cond_170

    sget-boolean v10, Lcom/android/server/pm/dex/DexManager;->ENABLE_SECONDARY_DEXOPT:Z

    if-eqz v10, :cond_170

    .line 323
    nop

    .line 324
    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 325
    .local v10, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    const/16 v13, 0xe

    move-object v14, v1

    .end local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .local v14, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    move-object v1, v11

    move-object v11, v2

    .end local v2    # "dexPath":Ljava/lang/String;
    .local v11, "dexPath":Ljava/lang/String;
    move-object v2, v12

    move-object v12, v3

    .end local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    .local v12, "loadingPackageAmendedName":Ljava/lang/String;
    move-object/from16 v3, p1

    move-object v4, v10

    move-object v15, v5

    move-object v5, v11

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceStub;->processAppLoadSecondaryDexReason(Lcom/android/server/pm/PackageDexOptimizer;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Ljava/lang/String;I)V

    .line 329
    .end local v10    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_19f

    .line 322
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .end local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v2    # "dexPath":Ljava/lang/String;
    .restart local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    :cond_170
    move-object v14, v1

    move-object v11, v2

    move-object v12, v3

    move-object v15, v5

    .line 330
    .end local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v2    # "dexPath":Ljava/lang/String;
    .end local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v11    # "dexPath":Ljava/lang/String;
    .restart local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops, can\'t get pkgUseInfo with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip dexopt on it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19f

    .line 317
    .end local v9    # "pkgUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .end local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v2    # "dexPath":Ljava/lang/String;
    .restart local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    :cond_191
    move-object v14, v1

    move-object v11, v2

    move-object v12, v3

    move-object v15, v5

    .end local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v2    # "dexPath":Ljava/lang/String;
    .end local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v11    # "dexPath":Ljava/lang/String;
    .restart local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    goto :goto_19f

    .line 297
    .end local v8    # "isUpdate":Z
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .end local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v2    # "dexPath":Ljava/lang/String;
    .restart local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    :cond_196
    move-object v14, v1

    move-object v11, v2

    move-object v12, v3

    move-object v15, v5

    .end local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v2    # "dexPath":Ljava/lang/String;
    .end local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v11    # "dexPath":Ljava/lang/String;
    .restart local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    goto :goto_19f

    .line 296
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .end local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v2    # "dexPath":Ljava/lang/String;
    .restart local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    :cond_19b
    move-object v14, v1

    move-object v11, v2

    move-object v12, v3

    move-object v15, v5

    .line 336
    .end local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v2    # "dexPath":Ljava/lang/String;
    .end local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    .end local v19    # "isUsedByOtherApps":Z
    .end local v20    # "primaryOrSplit":Z
    .end local v21    # "classLoaderContext":Ljava/lang/String;
    .end local v22    # "overwriteCLC":Z
    .restart local v11    # "dexPath":Ljava/lang/String;
    .restart local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :goto_19f
    goto :goto_1bc

    .line 339
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .end local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v2    # "dexPath":Ljava/lang/String;
    .restart local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    :cond_1a0
    move-object v14, v1

    move-object v11, v2

    move-object v12, v3

    move-object v15, v5

    .end local v1    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v2    # "dexPath":Ljava/lang/String;
    .end local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v11    # "dexPath":Ljava/lang/String;
    .restart local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    if-eqz v8, :cond_1bc

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find owning package for dex file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v11    # "dexPath":Ljava/lang/String;
    .end local v14    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v18    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1bc
    :goto_1bc
    move-object/from16 v4, p3

    move/from16 v6, p4

    move-object v3, v12

    move-object v5, v15

    goto/16 :goto_6e

    .line 344
    .end local v12    # "loadingPackageAmendedName":Ljava/lang/String;
    .restart local v3    # "loadingPackageAmendedName":Ljava/lang/String;
    :cond_1c4
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 425
    const/4 v0, -0x1

    if-ne p2, v0, :cond_16

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 429
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

    goto :goto_28

    .line 431
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 434
    :cond_23
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removeUserPackage(Ljava/lang/String;I)V

    .line 436
    :goto_28
    return-void
.end method

.method public notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V
    .registers 5
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 390
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 395
    return-void

    .line 391
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "notifyPackageInstalled called with USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;

    .line 403
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 411
    :cond_16
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;

    .line 721
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v10

    .line 722
    .local v10, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 723
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 724
    const-string v0, "DexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No secondary dex use for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_2e
    return-void

    .line 730
    :cond_2f
    const/4 v0, 0x0

    .line 731
    .local v0, "updated":Z
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v0

    .end local v0    # "updated":Z
    .local v12, "updated":Z
    :cond_3d
    :goto_3d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    .line 732
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 733
    .local v14, "dexPath":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 734
    .local v15, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v2, 0x0

    .line 740
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_59
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/DexManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 741
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v5

    .line 740
    invoke-interface {v0, v9, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_67} :catch_6a

    move-object v2, v0

    .line 744
    move-object v8, v2

    goto :goto_6c

    .line 742
    :catch_6a
    move-exception v0

    move-object v8, v2

    .line 745
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v8, "pkg":Landroid/content/pm/PackageInfo;
    :goto_6c
    const/16 v16, 0x1

    const/4 v7, 0x0

    if-nez v8, :cond_ab

    .line 748
    const-string v0, "DexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package when compiling secondary dex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 749
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 752
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 751
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a8

    if-eqz v12, :cond_a6

    goto :goto_a8

    :cond_a6
    move/from16 v16, v7

    :cond_a8
    :goto_a8
    move/from16 v12, v16

    .line 753
    goto :goto_3d

    .line 759
    :cond_ab
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/dex/DexManager;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 760
    new-array v0, v7, [Ljava/lang/String;

    invoke-static {v14, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 761
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_db

    .line 762
    const-string v0, "DexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A dex file previously loaded by System Server does not exist  anymore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_db
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 766
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 765
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_ec

    if-eqz v12, :cond_ea

    goto :goto_ec

    :cond_ea
    move/from16 v16, v7

    :cond_ec
    :goto_ec
    move/from16 v12, v16

    goto/16 :goto_3d

    .line 772
    :cond_f0
    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 773
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 774
    .local v0, "flags":I
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_104

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 775
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 776
    or-int/lit8 v0, v0, 0x1

    move/from16 v17, v0

    goto :goto_114

    .line 777
    :cond_104
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_1a1

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 778
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 779
    or-int/lit8 v0, v0, 0x2

    move/from16 v17, v0

    .line 787
    .end local v0    # "flags":I
    .local v17, "flags":I
    :goto_114
    const/16 v18, 0x1

    .line 788
    .local v18, "dexStillExists":Z
    iget-object v4, v1, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 790
    :try_start_119
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 791
    .local v6, "isas":[Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_12c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_119 .. :try_end_12c} :catch_14f
    .catchall {:try_start_119 .. :try_end_12c} :catchall_147

    move-object/from16 v19, v3

    move-object v3, v14

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v5

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .local v21, "info":Landroid/content/pm/ApplicationInfo;
    move v5, v0

    move/from16 v22, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .local v19, "pkg":Landroid/content/pm/PackageInfo;
    move/from16 v8, v17

    :try_start_13e
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_142
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_13e .. :try_end_142} :catch_145
    .catchall {:try_start_13e .. :try_end_142} :catchall_197

    .line 796
    .end local v6    # "isas":[Ljava/lang/String;
    .end local v18    # "dexStillExists":Z
    .local v0, "dexStillExists":Z
    move/from16 v18, v0

    goto :goto_17e

    .line 793
    .end local v0    # "dexStillExists":Z
    .restart local v18    # "dexStillExists":Z
    :catch_145
    move-exception v0

    goto :goto_158

    .line 797
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_147
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v8

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_198

    .line 793
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_14f
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v19, v8

    .line 794
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_158
    :try_start_158
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got InstallerException when reconciling dex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 795
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_17e
    monitor-exit v20
    :try_end_17f
    .catchall {:try_start_158 .. :try_end_17f} :catchall_197

    .line 798
    if-nez v18, :cond_195

    .line 799
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 800
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 799
    invoke-virtual {v0, v9, v14, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_192

    if-eqz v12, :cond_190

    goto :goto_192

    :cond_190
    move/from16 v16, v22

    :cond_192
    :goto_192
    move/from16 v0, v16

    move v12, v0

    .line 803
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v17    # "flags":I
    .end local v18    # "dexStillExists":Z
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_195
    goto/16 :goto_3d

    .line 797
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v14    # "dexPath":Ljava/lang/String;
    .restart local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local v17    # "flags":I
    .restart local v18    # "dexStillExists":Z
    .restart local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_197
    move-exception v0

    :goto_198
    :try_start_198
    monitor-exit v20
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    throw v0

    .line 778
    .end local v17    # "flags":I
    .end local v18    # "dexStillExists":Z
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "flags":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_19a
    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v19, v8

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_1a7

    .line 777
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1a1
    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v19, v8

    .line 781
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1a7
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not infer CE/DE storage for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 783
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 782
    invoke-virtual {v2, v9, v14, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1d0

    if-eqz v12, :cond_1ce

    goto :goto_1d0

    :cond_1ce
    move/from16 v16, v22

    :cond_1d0
    :goto_1d0
    move/from16 v12, v16

    .line 784
    goto/16 :goto_3d

    .line 804
    .end local v0    # "flags":I
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1d4
    if-eqz v12, :cond_1db

    .line 805
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 807
    :cond_1db
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .registers 26
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "isSharedModule"    # Z
    .param p4, "userId"    # I

    .line 814
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v13

    .line 816
    .local v13, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v14, 0x0

    if-ne v2, v3, :cond_1d

    .line 817
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Package not found"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 819
    :cond_1d
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 820
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Dex path does not belong to package"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 822
    :cond_31
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_cf

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_43

    goto/16 :goto_cf

    .line 828
    :cond_43
    const/4 v2, 0x0

    .line 831
    .local v2, "update":Z
    if-eqz p3, :cond_49

    const-string v3, ".shared.module"

    goto :goto_4d

    :cond_49
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    :goto_4d
    move-object v8, v3

    .line 832
    .local v8, "loadingPackage":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v10, v15

    move/from16 v16, v2

    move v9, v14

    .end local v2    # "update":Z
    .local v16, "update":Z
    :goto_5a
    if-ge v9, v10, :cond_82

    aget-object v17, v15, v9

    .line 833
    .local v17, "isa":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v18, 0x0

    const-string v19, "=VariableClassLoaderContext="

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, v17

    move/from16 v20, v9

    move-object/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v18

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 838
    .local v2, "newUpdate":Z
    or-int v16, v16, v2

    .line 832
    .end local v2    # "newUpdate":Z
    .end local v17    # "isa":Ljava/lang/String;
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v19

    goto :goto_5a

    .line 840
    :cond_82
    if-eqz v16, :cond_89

    .line 841
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 844
    :cond_89
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->-$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 845
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 848
    .local v2, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 851
    .local v3, "options":Lcom/android/server/pm/dex/DexoptOptions;
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v4, v1, v11, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 859
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_c6

    .line 860
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to optimize dex module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DexManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_c6
    new-instance v5, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v6, 0x1

    const-string v7, "Dex module registered successfully"

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v5

    .line 824
    .end local v2    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v3    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .end local v4    # "result":I
    .end local v8    # "loadingPackage":Ljava/lang/String;
    .end local v16    # "update":Z
    :cond_cf
    :goto_cf
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Main apks cannot be registered"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method

.method public writePackageDexUsageNow()V
    .registers 2

    .line 954
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeNow()V

    .line 955
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    .line 956
    return-void
.end method
