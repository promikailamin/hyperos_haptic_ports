.class final Lcom/android/server/pm/BackgroundDexOptService$Injector;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/BackgroundDexOptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataDir:Ljava/io/File;

.field private final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataDir(Lcom/android/server/pm/BackgroundDexOptService$Injector;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexManager"    # Lcom/android/server/pm/dex/DexManager;
    .param p3, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    .line 1496
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    .line 1497
    iput-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 1498
    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 1499
    return-void
.end method


# virtual methods
.method createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 1580
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1581
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1583
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 1502
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentThermalStatus()I
    .registers 4

    .line 1565
    nop

    .line 1566
    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1565
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    .line 1568
    .local v0, "thermalService":Landroid/os/IThermalService;
    :try_start_c
    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return v1

    .line 1569
    :catch_11
    move-exception v1

    .line 1570
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x3

    return v2
.end method

.method getDataDirStorageLowBytes()J
    .registers 3

    .line 1561
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method getDataDirUsableSpace()J
    .registers 3

    .line 1557
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method getDexManager()Lcom/android/server/pm/dex/DexManager;
    .registers 2

    .line 1518
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    return-object v0
.end method

.method getDexOptHelper()Lcom/android/server/pm/DexOptHelper;
    .registers 3

    .line 1510
    new-instance v0, Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/DexOptHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-object v0
.end method

.method getDexOptThermalCutoff()I
    .registers 3

    .line 1575
    const-string v0, "dalvik.vm.dexopt.thermal-cutoff"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getDowngradeUnusedAppsThresholdInMillis()J
    .registers 6

    .line 1539
    const-string/jumbo v0, "persist.sys.downgrade_after_inactive_days"

    .line 1540
    .local v0, "sysPropKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, "sysPropValue":Ljava/lang/String;
    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_3f

    .line 1545
    :cond_12
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->-$$Nest$sfgetDEBUG_DOWNGRADE()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1546
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inactive days is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_34
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    return-wide v2

    .line 1542
    :cond_3f
    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SysProp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2
.end method

.method getJobScheduler()Landroid/app/job/JobScheduler;
    .registers 3

    .line 1514
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .registers 2

    .line 1506
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$Injector;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getPinnerService()Lcom/android/server/PinnerService;
    .registers 2

    .line 1522
    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    return-object v0
.end method

.method isBackgroundDexOptDisabled()Z
    .registers 3

    .line 1526
    const-string/jumbo v0, "pm.dexopt.disable_bg_dexopt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isBatteryLevelLow()Z
    .registers 2

    .line 1531
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v0

    return v0
.end method

.method supportSecondaryDex()Z
    .registers 3

    .line 1553
    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
