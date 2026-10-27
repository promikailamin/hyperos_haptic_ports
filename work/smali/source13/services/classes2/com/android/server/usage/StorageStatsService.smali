.class public Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/StorageStatsService$LocalService;,
        Lcom/android/server/usage/StorageStatsService$H;,
        Lcom/android/server/usage/StorageStatsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTA:J

.field private static final DELAY_CHECK_STORAGE_DELTA:J = 0x7530L

.field private static final DELAY_RECALCULATE_QUOTAS:J = 0x2255100L

.field private static final PROP_DISABLE_QUOTA:Ljava/lang/String; = "fw.disable_quota"

.field private static final PROP_STORAGE_CRATES:Ljava/lang/String; = "fw.storage_crates"

.field private static final PROP_VERIFY_STORAGE:Ljava/lang/String; = "fw.verify_storage"

.field private static final TAG:Ljava/lang/String; = "StorageStatsService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCacheQuotas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private final mPackage:Landroid/content/pm/PackageManager;

.field private final mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStorageThresholdPercentHigh:I

.field private final mUser:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCacheQuotas(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/usage/StorageStatsService$H;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstaller(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/StorageStatsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageStatsAugmenters(Lcom/android/server/usage/StorageStatsService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageThresholdPercentHigh(Lcom/android/server/usage/StorageStatsService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    return p0
.end method

.method static bridge synthetic -$$Nest$minvalidateMounts(Lcom/android/server/usage/StorageStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 104
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 141
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 142
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 144
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 147
    new-instance v2, Lcom/android/server/pm/Installer;

    invoke-direct {v2, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 148
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 149
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V

    .line 151
    new-instance v2, Lcom/android/server/usage/StorageStatsService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 152
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessage(I)Z

    .line 154
    new-instance v2, Lcom/android/server/usage/StorageStatsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 168
    const-class v1, Lcom/android/server/usage/StorageStatsManagerLocal;

    new-instance v2, Lcom/android/server/usage/StorageStatsService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/usage/StorageStatsService$LocalService;-><init>(Lcom/android/server/usage/StorageStatsService;Lcom/android/server/usage/StorageStatsService$LocalService-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 170
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v1, "prFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 174
    new-instance v2, Lcom/android/server/usage/StorageStatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/usage/StorageStatsService$2;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    .line 186
    nop

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    .line 186
    const-string/jumbo v3, "storage_native_boot"

    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 188
    return-void
.end method

.method private static checkCratesEnable()V
    .registers 3

    .line 700
    const-string v0, "fw.storage_crates"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 701
    .local v0, "enable":Z
    if-eqz v0, :cond_a

    .line 704
    return-void

    .line 702
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Storage Crate feature is disabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .registers 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 555
    cmp-long v0, p1, p3

    if-eqz v0, :cond_2a

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2a
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/content/pm/PackageStats;
    .param p2, "b"    # Landroid/content/pm/PackageStats;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " codeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalCodeSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalDataSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalCacheSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 552
    return-void
.end method

.method private static checkEquals(Ljava/lang/String;[J[J)V
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "a"    # [J
    .param p2, "b"    # [J

    .line 540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;JJ)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method private checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "noteOp"    # Z

    .line 216
    const/16 v0, 0x2b

    if-eqz p3, :cond_b

    .line 217
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .local v0, "mode":I
    goto :goto_11

    .line 219
    .end local v0    # "mode":I
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    .line 221
    .restart local v0    # "mode":I
    :goto_11
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_68

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blocked by mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 225
    :sswitch_3d
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_48

    .line 227
    return-object v1

    .line 229
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have android.permission.PACKAGE_USAGE_STATS; callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 223
    :sswitch_66
    return-object v1

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_66
        0x3 -> :sswitch_3d
    .end sparse-switch
.end method

.method private static convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;
    .registers 8
    .param p0, "crateMetadatas"    # [Landroid/os/storage/CrateMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/storage/CrateMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 722
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 723
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 726
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v0, "crateInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/CrateInfo;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_3a

    aget-object v3, p0, v2

    .line 728
    .local v3, "crateMetadata":Landroid/os/storage/CrateMetadata;
    if-eqz v3, :cond_37

    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    .line 729
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 730
    goto :goto_37

    .line 733
    :cond_27
    iget v4, v3, Landroid/os/storage/CrateMetadata;->uid:I

    iget-object v5, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/os/storage/CrateInfo;->copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;

    move-result-object v4

    .line 735
    .local v4, "crateInfo":Landroid/os/storage/CrateInfo;
    if-nez v4, :cond_34

    .line 736
    goto :goto_37

    .line 739
    :cond_34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v3    # "crateMetadata":Landroid/os/storage/CrateMetadata;
    .end local v4    # "crateInfo":Landroid/os/storage/CrateInfo;
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 742
    :cond_3a
    return-object v0
.end method

.method private enforceCratesPermission(ILjava/lang/String;)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_CRATES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private enforceStatsPermission(ILjava/lang/String;)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "errMsg":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 212
    return-void

    .line 210
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 751
    .local v0, "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 752
    .end local v0    # "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    :catch_10
    move-exception v0

    .line 753
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getAppIds(I)[I
    .registers 7
    .param p1, "userId"    # I

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "appIds":[I
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 523
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 524
    .local v3, "appId":I
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_29

    .line 525
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 527
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appId":I
    :cond_29
    goto :goto_d

    .line 528
    :cond_2a
    return-object v0
.end method

.method private static getDefaultFlags()I
    .registers 2

    .line 532
    const-string v0, "fw.disable_quota"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 533
    return v1

    .line 535
    :cond_a
    const/16 v0, 0x1000

    return v0
.end method

.method private invalidateMounts()V
    .registers 4

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 204
    goto :goto_e

    .line 202
    :catch_6
    move-exception v0

    .line 203
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "StorageStatsService"

    const-string v2, "Failed to invalidate mounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_e
    return-void
.end method

.method static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 686
    const-string v0, "enable_cache_quota_calculation"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static synthetic lambda$queryStatsForPackage$1(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 5
    .param p0, "stats"    # Landroid/content/pm/PackageStats;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "callerHasStatsPermission"    # Z
    .param p4, "storageStatsAugmenter"    # Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 381
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 383
    return-void
.end method

.method static synthetic lambda$queryStatsForUid$2(Landroid/content/pm/PackageStats;IZLcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 4
    .param p0, "stats"    # Landroid/content/pm/PackageStats;
    .param p1, "uid"    # I
    .param p2, "callerHasStatsPermission"    # Z
    .param p3, "storageStatsAugmenter"    # Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 446
    invoke-interface {p3, p0, p1, p2}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V

    .line 447
    return-void
.end method

.method static synthetic lambda$queryStatsForUser$3(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;)V
    .registers 3
    .param p0, "stats"    # Landroid/content/pm/PackageStats;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "storageStatsAugmenter"    # Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 478
    invoke-interface {p2, p0, p1}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    .line 479
    return-void
.end method

.method private static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .registers 6
    .param p0, "stats"    # Landroid/content/pm/PackageStats;

    .line 561
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 562
    .local v0, "res":Landroid/app/usage/StorageStats;
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 563
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 564
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 565
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v1, v0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    .line 566
    return-object v0
.end method

.method private updateConfig()V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "storage_threshold_percent_high"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 11
    .param p2, "queryTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 850
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_7
    if-ge v0, v1, :cond_45

    .line 851
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 852
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 853
    .local v3, "augmenterTag":Ljava/lang/String;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 855
    .local v4, "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 857
    :try_start_36
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 859
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    nop

    .line 850
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;>;"
    .end local v3    # "augmenterTag":Ljava/lang/String;
    .end local v4    # "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 859
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;>;"
    .restart local v3    # "augmenterTag":Ljava/lang/String;
    .restart local v4    # "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;
    :catchall_40
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    throw v5

    .line 862
    .end local v0    # "i":I
    .end local v1    # "count":I
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;>;"
    .end local v3    # "augmenterTag":Ljava/lang/String;
    .end local v4    # "storageStatsAugmenter":Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;
    :cond_45
    return-void
.end method

.method public getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 307
    const-wide/16 v0, 0x0

    .line 308
    .local v0, "cacheBytes":J
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 309
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v4

    .line 310
    .local v4, "stats":Landroid/app/usage/StorageStats;
    iget-wide v5, v4, Landroid/app/usage/StorageStats;->cacheBytes:J

    add-long/2addr v0, v5

    .line 311
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "stats":Landroid/app/usage/StorageStats;
    goto :goto_13

    .line 312
    :cond_2a
    return-wide v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 320
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 321
    .local v0, "uidMap":Landroid/util/SparseLongArray;
    sget-wide v1, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    return-wide v1

    .line 324
    .end local v0    # "uidMap":Landroid/util/SparseLongArray;
    :cond_1e
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    return-wide v0
.end method

.method public getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 15
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 277
    const-string v0, "android"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 281
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_c} :catch_39
    .catchall {:try_start_6 .. :try_end_c} :catchall_37

    .line 284
    .local v3, "path":Ljava/io/File;
    nop

    .line 289
    :try_start_d
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 291
    .local v4, "cacheTotal":J
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v6

    .line 292
    .local v6, "cacheReserved":J
    const-wide/16 v8, 0x0

    sub-long v10, v4, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 294
    .local v8, "cacheClearable":J
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_37

    add-long/2addr v10, v8

    .line 299
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return-wide v10

    .line 296
    .end local v4    # "cacheTotal":J
    .end local v6    # "cacheReserved":J
    .end local v8    # "cacheClearable":J
    :cond_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    .line 299
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return-wide v4

    .line 299
    .end local v3    # "path":Ljava/io/File;
    :catchall_37
    move-exception v0

    goto :goto_40

    .line 282
    :catch_39
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3a
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/usage/StorageStatsService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callingPackage":Ljava/lang/String;
    throw v3
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 299
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/StorageStatsService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    throw v0
.end method

.method public getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 261
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v0, :cond_f

    .line 262
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0

    .line 264
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 265
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_20

    .line 269
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget-wide v1, v1, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {v1, v2}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v1

    return-wide v1

    .line 266
    :cond_20
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find storage device for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 242
    :catch_7
    move-exception v0

    .line 243
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 249
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_14

    .line 250
    const-string/jumbo v0, "vold.has_reserved"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_13

    :cond_12
    const/4 v1, 0x1

    :cond_13
    return v1

    .line 253
    :cond_14
    return v1
.end method

.method synthetic lambda$new$0$com-android-server-usage-StorageStatsService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 187
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    return-void
.end method

.method notifySignificantDelta()V
    .registers 5

    .line 695
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 696
    const-string v1, "content://com.android.externalstorage.documents/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 695
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 697
    return-void
.end method

.method public queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 761
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 762
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_12

    .line 763
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1a} :catch_36

    .line 773
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_24

    goto :goto_2b

    .line 778
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 781
    :goto_2b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 782
    .local v1, "packageNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 771
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageNames":[Ljava/lang/String;
    :catch_36
    move-exception v0

    .line 772
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 789
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 790
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 791
    .local v0, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 792
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "StorageStatsService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, p2, :cond_1d

    goto :goto_24

    .line 799
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 802
    :goto_24
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 805
    .local v3, "validatedPackageNames":[Ljava/lang/String;
    array-length v4, v1

    :goto_32
    if-ge v2, v4, :cond_5c

    aget-object v5, v1, v2

    .line 806
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 807
    goto :goto_52

    .line 811
    :cond_3d
    :try_start_3d
    iget-object v6, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2000

    invoke-virtual {v6, v5, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 813
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_48

    .line 814
    goto :goto_52

    .line 817
    :cond_48
    const-class v7, Ljava/lang/String;

    invoke-static {v7, v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_50} :catch_55

    move-object v3, v7

    .line 821
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 805
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 819
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_55
    move-exception v2

    .line 820
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/os/ParcelableException;

    invoke-direct {v4, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 824
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_5c
    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2
.end method

.method public queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/os/storage/CrateInfo;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 832
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_12

    .line 833
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceCratesPermission(ILjava/lang/String;)V

    .line 841
    :try_start_19
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Installer;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 842
    .local v0, "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_28
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_19 .. :try_end_28} :catch_29

    return-object v1

    .line 843
    .end local v0    # "crateMetadatas":[Landroid/os/storage/CrateMetadata;
    :catch_29
    move-exception v0

    .line 844
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .registers 10
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 487
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 488
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "StorageStatsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 495
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 498
    .local v0, "appIds":[I
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v1

    .line 500
    .local v1, "stats":[J
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 501
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/pm/Installer;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v2

    .line 503
    .local v2, "manualStats":[J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;[J[J)V
    :try_end_49
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1a .. :try_end_49} :catch_6d

    .line 507
    .end local v2    # "manualStats":[J
    :cond_49
    nop

    .line 509
    new-instance v2, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {v2}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 510
    .local v2, "res":Landroid/app/usage/ExternalStorageStats;
    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 511
    const/4 v3, 0x1

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 512
    const/4 v3, 0x2

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 513
    const/4 v3, 0x3

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 514
    const/4 v3, 0x4

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 515
    const/4 v3, 0x5

    aget-wide v3, v1, v3

    iput-wide v3, v2, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 516
    return-object v2

    .line 505
    .end local v1    # "stats":[J
    .end local v2    # "res":Landroid/app/usage/ExternalStorageStats;
    :catch_6d
    move-exception v1

    .line 506
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 25
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 330
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v2, "StorageStatsService"

    if-eq v13, v0, :cond_19

    .line 331
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_19
    :try_start_19
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v0, v12, v3, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_21} :catch_da

    move-object v15, v0

    .line 341
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v3, :cond_3d

    .line 347
    nop

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 347
    invoke-direct {v1, v0, v14, v6}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    move v0, v5

    goto :goto_3b

    :cond_3a
    move v0, v6

    :goto_3b
    move v10, v0

    .local v0, "callerHasStatsPermission":Z
    goto :goto_46

    .line 350
    .end local v0    # "callerHasStatsPermission":Z
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v14}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 351
    const/4 v0, 0x1

    move v10, v0

    .line 354
    .local v10, "callerHasStatsPermission":Z
    :goto_46
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v5, :cond_5c

    .line 356
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v11, v0, v14}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 359
    :cond_5c
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 360
    .local v16, "appId":I
    new-array v4, v5, [Ljava/lang/String;

    aput-object v12, v4, v6

    .line 361
    .local v4, "packageNames":[Ljava/lang/String;
    new-array v9, v5, [J

    .line 362
    .local v9, "ceDataInodes":[J
    new-array v0, v6, [Ljava/lang/String;

    .line 364
    .local v0, "codePaths":[Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_79

    move-object/from16 v17, v0

    goto :goto_88

    .line 367
    :cond_79
    const-class v3, Ljava/lang/String;

    .line 368
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-static {v3, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 371
    .end local v0    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    :goto_88
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 373
    .local v8, "stats":Landroid/content/pm/PackageStats;
    :try_start_8e
    iget-object v2, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_90
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8e .. :try_end_90} :catch_c6

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v7, v16

    move-object/from16 v18, v8

    .end local v8    # "stats":Landroid/content/pm/PackageStats;
    .local v18, "stats":Landroid/content/pm/PackageStats;
    move-object v8, v9

    move-object/from16 v19, v9

    .end local v9    # "ceDataInodes":[J
    .local v19, "ceDataInodes":[J
    move-object/from16 v9, v17

    move v13, v10

    .end local v10    # "callerHasStatsPermission":Z
    .local v13, "callerHasStatsPermission":Z
    move-object/from16 v10, v18

    :try_start_a1
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_a4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a1 .. :try_end_a4} :catch_c2

    .line 377
    nop

    .line 378
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne v11, v0, :cond_bb

    .line 379
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 380
    .local v0, "userHandle":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;

    move-object/from16 v3, v18

    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .local v3, "stats":Landroid/content/pm/PackageStats;
    invoke-direct {v2, v3, v12, v0, v13}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    const-string/jumbo v5, "queryStatsForPackage"

    invoke-virtual {v1, v2, v5}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto :goto_bd

    .line 378
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .restart local v18    # "stats":Landroid/content/pm/PackageStats;
    :cond_bb
    move-object/from16 v3, v18

    .line 385
    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .restart local v3    # "stats":Landroid/content/pm/PackageStats;
    :goto_bd
    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 375
    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .restart local v18    # "stats":Landroid/content/pm/PackageStats;
    :catch_c2
    move-exception v0

    move-object/from16 v3, v18

    .end local v18    # "stats":Landroid/content/pm/PackageStats;
    .restart local v3    # "stats":Landroid/content/pm/PackageStats;
    goto :goto_cb

    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .end local v13    # "callerHasStatsPermission":Z
    .end local v19    # "ceDataInodes":[J
    .restart local v8    # "stats":Landroid/content/pm/PackageStats;
    .restart local v9    # "ceDataInodes":[J
    .restart local v10    # "callerHasStatsPermission":Z
    :catch_c6
    move-exception v0

    move-object v3, v8

    move-object/from16 v19, v9

    move v13, v10

    .line 376
    .end local v8    # "stats":Landroid/content/pm/PackageStats;
    .end local v9    # "ceDataInodes":[J
    .end local v10    # "callerHasStatsPermission":Z
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v3    # "stats":Landroid/content/pm/PackageStats;
    .restart local v13    # "callerHasStatsPermission":Z
    .restart local v19    # "ceDataInodes":[J
    :goto_cb
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 339
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v3    # "stats":Landroid/content/pm/PackageStats;
    .end local v4    # "packageNames":[Ljava/lang/String;
    .end local v13    # "callerHasStatsPermission":Z
    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "appId":I
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v19    # "ceDataInodes":[J
    :catch_da
    move-exception v0

    .line 340
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 24
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 391
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 392
    .local v13, "userId":I
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 394
    .local v14, "appId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v15, "StorageStatsService"

    if-eq v13, v0, :cond_1d

    .line 395
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v12, 0x0

    if-ne v0, v2, :cond_34

    .line 403
    nop

    .line 404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 403
    invoke-direct {v1, v0, v3, v12}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    move v0, v12

    :goto_32
    move v11, v0

    .local v0, "callerHasStatsPermission":Z
    goto :goto_3d

    .line 406
    .end local v0    # "callerHasStatsPermission":Z
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    move v11, v0

    .line 410
    .local v11, "callerHasStatsPermission":Z
    :goto_3d
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, "packageNames":[Ljava/lang/String;
    array-length v0, v10

    new-array v9, v0, [J

    .line 412
    .local v9, "ceDataInodes":[J
    new-array v0, v12, [Ljava/lang/String;

    .line 414
    .local v0, "codePaths":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object v8, v0

    .end local v0    # "codePaths":[Ljava/lang/String;
    .local v4, "i":I
    .local v8, "codePaths":[Ljava/lang/String;
    :goto_4e
    array-length v0, v10

    if-ge v4, v0, :cond_80

    .line 416
    :try_start_51
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    aget-object v5, v10, v4

    const/16 v6, 0x2000

    invoke-virtual {v0, v5, v6, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 418
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v5

    if-nez v5, :cond_68

    goto :goto_75

    .line 421
    :cond_68
    const-class v5, Ljava/lang/String;

    .line 422
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-static {v5, v8, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_74} :catch_79

    move-object v8, v5

    .line 426
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_75
    nop

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 424
    :catch_79
    move-exception v0

    .line 425
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Landroid/os/ParcelableException;

    invoke-direct {v5, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 429
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i":I
    :cond_80
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v15}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 431
    .local v7, "stats":Landroid/content/pm/PackageStats;
    :try_start_86
    iget-object v4, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v0
    :try_end_8c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_86 .. :try_end_8c} :catch_105

    move-object/from16 v5, p1

    move-object v6, v10

    move-object/from16 v16, v7

    .end local v7    # "stats":Landroid/content/pm/PackageStats;
    .local v16, "stats":Landroid/content/pm/PackageStats;
    move v7, v13

    move-object/from16 v17, v8

    .end local v8    # "codePaths":[Ljava/lang/String;
    .local v17, "codePaths":[Ljava/lang/String;
    move v8, v0

    move-object/from16 v18, v9

    .end local v9    # "ceDataInodes":[J
    .local v18, "ceDataInodes":[J
    move v9, v14

    move-object/from16 v19, v10

    .end local v10    # "packageNames":[Ljava/lang/String;
    .local v19, "packageNames":[Ljava/lang/String;
    move-object/from16 v10, v18

    move v3, v11

    .end local v11    # "callerHasStatsPermission":Z
    .local v3, "callerHasStatsPermission":Z
    move-object/from16 v11, v17

    move v0, v12

    move-object/from16 v12, v16

    :try_start_a2
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 434
    const-string v4, "fw.verify_storage"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_ab
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a2 .. :try_end_ab} :catch_ff

    if-eqz v0, :cond_e6

    .line 435
    :try_start_ad
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, v15}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v4, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move v7, v13

    move v9, v14

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_d6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ad .. :try_end_d6} :catch_e0

    move-object/from16 v5, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .local v5, "stats":Landroid/content/pm/PackageStats;
    :try_start_d8
    invoke-static {v4, v0, v5}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_db
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_e8

    .line 440
    .end local v0    # "manualStats":Landroid/content/pm/PackageStats;
    :catch_dc
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_110

    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :catch_e0
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v4, p1

    goto :goto_104

    .line 434
    :cond_e6
    move-object/from16 v5, v16

    .line 442
    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    :goto_e8
    nop

    .line 444
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v4, p1

    if-ne v4, v0, :cond_fa

    .line 445
    new-instance v0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5, v2, v3}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/PackageStats;IZ)V

    const-string/jumbo v6, "queryStatsForUid"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 449
    :cond_fa
    invoke-static {v5}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0

    .line 440
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v16    # "stats":Landroid/content/pm/PackageStats;
    :catch_ff
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    .end local v16    # "stats":Landroid/content/pm/PackageStats;
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    :goto_104
    goto :goto_110

    .end local v3    # "callerHasStatsPermission":Z
    .end local v5    # "stats":Landroid/content/pm/PackageStats;
    .end local v17    # "codePaths":[Ljava/lang/String;
    .end local v18    # "ceDataInodes":[J
    .end local v19    # "packageNames":[Ljava/lang/String;
    .restart local v7    # "stats":Landroid/content/pm/PackageStats;
    .restart local v8    # "codePaths":[Ljava/lang/String;
    .restart local v9    # "ceDataInodes":[J
    .restart local v10    # "packageNames":[Ljava/lang/String;
    .restart local v11    # "callerHasStatsPermission":Z
    :catch_105
    move-exception v0

    move-object/from16 v4, p1

    move-object v5, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move v3, v11

    .line 441
    .end local v7    # "stats":Landroid/content/pm/PackageStats;
    .end local v8    # "codePaths":[Ljava/lang/String;
    .end local v9    # "ceDataInodes":[J
    .end local v10    # "packageNames":[Ljava/lang/String;
    .end local v11    # "callerHasStatsPermission":Z
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v3    # "callerHasStatsPermission":Z
    .restart local v5    # "stats":Landroid/content/pm/PackageStats;
    .restart local v17    # "codePaths":[Ljava/lang/String;
    .restart local v18    # "ceDataInodes":[J
    .restart local v19    # "packageNames":[Ljava/lang/String;
    :goto_110
    new-instance v6, Landroid/os/ParcelableException;

    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .registers 13
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 454
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "StorageStatsService"

    if-eq p2, v0, :cond_f

    .line 455
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 462
    invoke-direct {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    move-result-object v0

    .line 463
    .local v0, "appIds":[I
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 465
    .local v8, "stats":Landroid/content/pm/PackageStats;
    :try_start_20
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->getDefaultFlags()I

    move-result v5

    move-object v3, p1

    move v4, p2

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 467
    const-string v2, "fw.verify_storage"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 468
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 469
    .local v1, "manualStats":Landroid/content/pm/PackageStats;
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v8}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_5c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_20 .. :try_end_5c} :catch_75

    .line 474
    .end local v1    # "manualStats":Landroid/content/pm/PackageStats;
    :cond_5c
    nop

    .line 475
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    if-ne p1, v1, :cond_70

    .line 476
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 477
    .local v1, "userHandle":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v8, v1}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    const-string/jumbo v3, "queryStatsForUser"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 481
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_70
    invoke-static {v8}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    move-result-object v1

    return-object v1

    .line 472
    :catch_75
    move-exception v1

    .line 473
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
