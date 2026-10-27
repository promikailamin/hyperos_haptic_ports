.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;,
        Landroid/content/res/AssetManager$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ACCESS_BUFFER:I = 0x3

.field public static final whitelist ACCESS_RANDOM:I = 0x1

.field public static final whitelist ACCESS_STREAMING:I = 0x2

.field public static final whitelist ACCESS_UNKNOWN:I = 0x0

.field public static final blacklist COOKIE_UNKNOWN:I = -0x1

.field private static final greylist-max-o DEBUG_REFS:Z = false

.field public static final greylist-max-o FRAMEWORK_APK_PATH:Ljava/lang/String;

.field private static final blacklist FRAMEWORK_APK_PATH_DEVICE:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final blacklist FRAMEWORK_APK_PATH_RAVENWOOD:Ljava/lang/String; = "ravenwood-data/framework-res.apk"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o sEmptyApkAssets:[Landroid/content/res/ApkAssets;

.field private static final greylist-max-o sSync:Ljava/lang/Object;

.field static greylist sSystem:Landroid/content/res/AssetManager;

.field private static greylist-max-o sSystemApkAssets:[Landroid/content/res/ApkAssets;

.field private static greylist-max-o sSystemApkAssetsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mApkAssets:[Landroid/content/res/ApkAssets;

.field private blacklist mLoaders:[Landroid/content/res/loader/ResourcesLoader;

.field private blacklist mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private greylist mObject:J

.field private final greylist-max-o mOffsets:[J

.field private greylist-max-o mOpen:Z

.field private greylist-max-o mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mValue:Landroid/util/TypedValue;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V
    .registers 2

    iput-object p1, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdecRefs(Landroid/content/res/AssetManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefs(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetDestroy(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetDestroy(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetGetLength(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetGetRemainingLength(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetRemainingLength(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetRead(J[BII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetRead(J[BII)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetReadChar(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetReadChar(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAssetSeek(JJI)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetSeek(JJI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 84
    invoke-static {}, Landroid/content/res/AssetManager;->getFrameworkApkPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    .line 94
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 96
    new-array v0, v0, [Landroid/content/res/ApkAssets;

    sput-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 6

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 139
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 243
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_1c
    sget-object v1, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 245
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 246
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2f

    .line 248
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 255
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 256
    return-void

    .line 246
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 4

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 128
    const/4 p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 138
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 264
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 269
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/content/res/AssetManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    return-void
.end method

.method private blacklist addAssetPathInternal(Ljava/util/List;Z)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;Z)I"
        }
    .end annotation

    .line 512
    const-string v0, "apkKeys"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 514
    return v1

    .line 517
    :cond_d
    monitor-enter p0

    .line 518
    :try_start_e
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 521
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 524
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 525
    move v3, v1

    :goto_1a
    if-ge v3, v0, :cond_2e

    .line 526
    iget-object v4, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 529
    :cond_2e
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    nop

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    move v6, v1

    move v7, v5

    :goto_3f
    if-ge v6, v4, :cond_5c

    .line 532
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ResourcesManager$ApkKey;

    .line 533
    iget-object v9, v8, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 534
    if-nez v9, :cond_55

    .line 535
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 537
    :cond_55
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 531
    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 540
    :cond_5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_66

    .line 541
    add-int/2addr v7, v2

    monitor-exit p0

    return v7

    .line 544
    :cond_66
    invoke-static {v3}, Landroid/content/res/AssetManager;->loadAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 545
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 546
    monitor-exit p0

    return v1

    .line 548
    :cond_72
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->makeNewAssetsArrayLocked(Ljava/util/ArrayList;)[Landroid/content/res/ApkAssets;

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 549
    iget-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {v3, v4, p1, v2, p2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    .line 550
    invoke-direct {p0, v5}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 551
    add-int/2addr v0, v2

    monitor-exit p0

    return v0

    .line 552
    :catchall_85
    move-exception p1

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_e .. :try_end_87} :catchall_85

    throw p1
.end method

.method public static blacklist createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V
    .registers 7

    .line 279
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    if-nez p0, :cond_7

    .line 280
    return-void

    .line 284
    :cond_7
    :try_start_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->isRunningOnRavenwood()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    new-array p1, v1, [Ljava/lang/String;

    goto :goto_2a

    .line 290
    :cond_22
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/content/om/OverlayConfig;->createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;

    move-result-object p1

    .line 291
    :goto_2a
    array-length v2, p1

    move v3, v1

    :goto_2c
    if-ge v3, v2, :cond_3a

    aget-object v4, p1, v3

    .line 292
    invoke-static {v4, v0}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 295
    :cond_3a
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object p1, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    .line 296
    new-array p1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/res/ApkAssets;

    sput-object p0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 297
    sget-object p0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez p0, :cond_56

    .line 298
    new-instance p0, Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;-><init>(Z)V

    sput-object p0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 300
    :cond_56
    sget-object p0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    sget-object p1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5d} :catch_5f

    .line 303
    nop

    .line 304
    return-void

    .line 301
    :catch_5f
    move-exception p0

    .line 302
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create system AssetManager"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private blacklist decRefs(J)V
    .registers 5

    .line 1704
    iget-object p1, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_29

    .line 1705
    monitor-enter p0

    .line 1706
    :try_start_9
    iget-object p1, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_24

    iget-wide p1, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_24

    .line 1707
    iget-wide p1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {p1, p2}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1708
    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1709
    sget-object p1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 1711
    :cond_24
    monitor-exit p0

    goto :goto_29

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw p1

    .line 1713
    :cond_29
    :goto_29
    return-void
.end method

.method private greylist-max-o ensureOpenLocked()V
    .registers 5

    .line 632
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_15

    .line 636
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 639
    return-void

    .line 637
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager is open but the native object is gone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureValidLocked()V
    .registers 5

    .line 620
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 623
    return-void

    .line 621
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native greylist-max-o getAssetAllocations()Ljava/lang/String;
.end method

.method private static blacklist getFrameworkApkPath()Ljava/lang/String;
    .registers 1

    .line 225
    const-string v0, "/system/framework/framework-res.apk"

    return-object v0
.end method

.method private static blacklist getFrameworkApkPath$ravenwood()Ljava/lang/String;
    .registers 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ravenwood-data/framework-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist getGlobalAssetCount()I
.end method

.method public static native greylist getGlobalAssetManagerCount()I
.end method

.method public static greylist getSystem()Landroid/content/res/AssetManager;
    .registers 3

    .line 313
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    sget-object v1, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked(ZLjava/lang/String;)V

    .line 315
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    monitor-exit v0

    return-object v1

    .line 316
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static blacklist getThemeFreeFunction()J
    .registers 2

    .line 1332
    invoke-static {}, Landroid/content/res/AssetManager;->nativeGetThemeFreeFunction()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o incRefsLocked(J)V
    .registers 3

    .line 1693
    iget-object p1, p0, Landroid/content/res/AssetManager;->mNumRefs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1694
    return-void
.end method

.method private greylist-max-o invalidateCachesLocked(I)V
    .registers 2

    .line 421
    return-void
.end method

.method private static blacklist loadAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    .line 592
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_3a

    .line 593
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$ApkKey;

    .line 598
    :try_start_16
    invoke-virtual {v2, v4}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 601
    goto :goto_37

    .line 599
    :catch_1e
    move-exception v5

    .line 600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load asset, key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AssetManager"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 603
    :cond_3a
    return-object v1
.end method

.method private blacklist makeNewAssetsArrayLocked(Ljava/util/ArrayList;)[Landroid/content/res/ApkAssets;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;)[",
            "Landroid/content/res/ApkAssets;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 563
    nop

    .line 564
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 565
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 566
    nop

    .line 567
    goto :goto_18

    .line 564
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    move v2, v0

    .line 570
    :goto_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 571
    add-int v4, v0, v3

    new-array v4, v4, [Landroid/content/res/ApkAssets;

    .line 572
    if-lez v2, :cond_27

    .line 574
    iget-object v5, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    :cond_27
    nop

    :goto_28
    if-ge v1, v3, :cond_37

    .line 577
    add-int v5, v2, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ApkAssets;

    aput-object v6, v4, v5

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 579
    :cond_37
    if-le v0, v2, :cond_40

    .line 580
    iget-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/2addr v3, v2

    sub-int/2addr v0, v2

    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    :cond_40
    return-object v4
.end method

.method private static native greylist-max-o nativeApplyStyle(JJIIJ[IJJ)V
.end method

.method private static native blacklist nativeApplyStyleWithArray(JJIIJ[I[I[I)V
.end method

.method private static native greylist-max-o nativeAssetDestroy(J)V
.end method

.method private static native greylist-max-o nativeAssetGetLength(J)J
.end method

.method private static native greylist-max-o nativeAssetGetRemainingLength(J)J
.end method

.method private static native greylist-max-o nativeAssetRead(J[BII)I
.end method

.method private static native greylist-max-o nativeAssetReadChar(J)I
.end method

.method private static native greylist-max-o nativeAssetSeek(JJI)J
.end method

.method private static native blacklist nativeAttributeResolutionStack(JJIII)[I
.end method

.method private static native blacklist nativeContainsAllocatedTable(J)Z
.end method

.method private static native greylist-max-o nativeCreate()J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native blacklist nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native blacklist nativeGetLastResourceResolution(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetLocales(JZ)[Ljava/lang/String;
.end method

.method private static native blacklist nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;
.end method

.method private static native blacklist nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetParentThemeIdentifier(JI)I
.end method

.method private static native greylist-max-o nativeGetResourceArray(JI[I)I
.end method

.method private static native greylist-max-o nativeGetResourceArraySize(JI)I
.end method

.method private static native greylist-max-o nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I
.end method

.method private static native greylist-max-o nativeGetResourceEntryName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeGetResourceIntArray(JI)[I
.end method

.method private static native greylist-max-o nativeGetResourceName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourcePackageName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceStringArray(JI)[Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceStringArrayInfo(JI)[I
.end method

.method private static native greylist-max-o nativeGetResourceTypeName(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I
.end method

.method private static native blacklist nativeGetSizeAndUiModeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native greylist-max-o nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native greylist-max-o nativeGetStyleAttributes(JI)[I
.end method

.method private static native blacklist nativeGetThemeFreeFunction()J
.end method

.method private static native greylist-max-o nativeList(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenAsset(JLjava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenNonAsset(JILjava/lang/String;I)J
.end method

.method private static native greylist-max-o nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenXmlAsset(JILjava/lang/String;)J
.end method

.method private static native blacklist nativeOpenXmlAssetFd(JILjava/io/FileDescriptor;)J
.end method

.method private static native greylist-max-o nativeResolveAttrs(JJII[I[I[I[I)Z
.end method

.method private static native greylist-max-o nativeRetrieveAttributes(JJ[I[I[I)Z
.end method

.method private static native blacklist nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V
.end method

.method private static native blacklist nativeSetConfiguration(JIILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIIZ)V
.end method

.method private static native blacklist nativeSetOverlayConstraints(JII)V
.end method

.method private static native blacklist nativeSetResourceResolutionLoggingEnabled(JZ)V
.end method

.method private static native greylist-max-o nativeThemeApplyStyle(JJIZ)V
.end method

.method private static native blacklist nativeThemeCopy(JJJJ)V
.end method

.method private static native greylist-max-o nativeThemeCreate(J)J
.end method

.method private static native greylist-max-o nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I
.end method

.method static native greylist-max-o nativeThemeGetChangingConfigurations(J)I
.end method

.method private static native blacklist nativeThemeRebase(JJ[I[ZI)V
.end method


# virtual methods
.method public blacklist addApkKeys(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;Z)V"
        }
    .end annotation

    .line 508
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    .line 509
    return-void
.end method

.method public greylist addAssetPath(Ljava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    move-result p1

    return p1
.end method

.method public greylist addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    move-result p1

    return p1
.end method

.method public greylist addOverlayPath(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    new-instance v0, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/util/List;Z)I

    move-result p1

    return p1
.end method

.method greylist-max-r applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .registers 27

    .line 1265
    move-object/from16 v1, p0

    move-object/from16 v0, p5

    const-string v2, "inAttrs"

    move-object/from16 v11, p6

    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1266
    monitor-enter p0

    .line 1269
    :try_start_c
    invoke-direct {v1}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1270
    iget-wide v3, v1, Landroid/content/res/AssetManager;->mObject:J

    .line 1271
    if-eqz v0, :cond_16

    iget-wide v5, v0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_18

    :cond_16
    const-wide/16 v5, 0x0

    :goto_18
    move-wide v9, v5

    .line 1270
    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v3 .. v15}, Landroid/content/res/AssetManager;->nativeApplyStyle(JJIIJ[IJJ)V

    .line 1273
    monitor-exit p0

    .line 1274
    return-void

    .line 1273
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v0
.end method

.method blacklist applyStyle$ravenwood(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .registers 24

    .line 1856
    move-object/from16 v0, p5

    const-string v1, "inAttrs"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1857
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    move-result-object v1

    .line 1858
    move-wide/from16 v2, p7

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->fromAddress(J)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [I

    .line 1859
    move-wide/from16 v2, p9

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->fromAddress(J)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [I

    .line 1860
    monitor-enter p0

    .line 1863
    :try_start_20
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1864
    iget-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1865
    if-eqz v0, :cond_2a

    iget-wide v0, v0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_2c

    :cond_2a
    const-wide/16 v0, 0x0

    :goto_2c
    move-wide v8, v0

    .line 1864
    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v2 .. v12}, Landroid/content/res/AssetManager;->nativeApplyStyleWithArray(JJIIJ[I[I[I)V

    .line 1867
    monitor-exit p0

    .line 1868
    return-void

    .line 1867
    :catchall_37
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_37

    throw p1
.end method

.method greylist-max-o applyStyleToTheme(JIZ)V
    .registers 11

    .line 1336
    monitor-enter p0

    .line 1339
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1340
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->nativeThemeApplyStyle(JJIZ)V

    .line 1341
    monitor-exit p0

    .line 1342
    return-void

    .line 1341
    :catchall_e
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_e

    throw p1
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_7

    .line 326
    monitor-exit p0

    return-void

    .line 329
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 331
    monitor-exit p0

    .line 332
    return-void

    .line 331
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist containsAllocatedTable()Z
    .registers 3

    .line 966
    monitor-enter p0

    .line 967
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 968
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeContainsAllocatedTable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 969
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist createTheme()J
    .registers 3

    .line 1319
    monitor-enter p0

    .line 1320
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1321
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeCreate(J)J

    move-result-wide v0

    .line 1322
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1323
    monitor-exit p0

    return-wide v0

    .line 1324
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method declared-synchronized blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1716
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    const/4 v0, 0x0

    :goto_36
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    if-ge v0, v1, :cond_6c

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ApkAssets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6e

    .line 1718
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1722
    :cond_6c
    monitor-exit p0

    return-void

    .line 1715
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method greylist-max-o dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 864
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V

    .line 865
    monitor-exit p0

    .line 866
    return-void

    .line 865
    :catchall_f
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_f

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1391
    monitor-enter p0

    .line 1392
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 1393
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1394
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1396
    :cond_10
    monitor-exit p0

    .line 1397
    return-void

    .line 1396
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public greylist-max-o findCookieForPath(Ljava/lang/String;)I
    .registers 6

    .line 461
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 462
    monitor-enter p0

    .line 463
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 464
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 465
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_26

    .line 466
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 467
    add-int/lit8 v2, v2, 0x1

    monitor-exit p0

    return v2

    .line 465
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 470
    :cond_26
    monitor-exit p0

    .line 471
    return v1

    .line 470
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public greylist getApkAssets()[Landroid/content/res/ApkAssets;
    .registers 2

    .line 430
    monitor-enter p0

    .line 431
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_9

    .line 432
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit p0

    return-object v0

    .line 434
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 435
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    return-object v0

    .line 434
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist getApkPaths()[Ljava/lang/String;
    .registers 5

    .line 441
    monitor-enter p0

    .line 442
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 443
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 444
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v2

    .line 445
    nop

    :goto_f
    if-ge v1, v2, :cond_1e

    .line 446
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 448
    :cond_1e
    monitor-exit p0

    return-object v0

    .line 450
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    .line 451
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 450
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public greylist getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1647
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssignedPackageIdentifiers(ZZ)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1655
    monitor-enter p0

    .line 1656
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1657
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetAssignedPackageIdentifiers(JZZ)Landroid/util/SparseArray;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 1658
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method blacklist getAttributeResolutionStack(JIII)[I
    .registers 13

    .line 1278
    monitor-enter p0

    .line 1279
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1280
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v5, p3

    move v6, p4

    move v4, p5

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeAttributeResolutionStack(JJIII)[I

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 1282
    :catchall_10
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_10

    throw p1
.end method

.method public blacklist getLastResourceResolution()Ljava/lang/String;
    .registers 3

    .line 953
    monitor-enter p0

    .line 954
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 955
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetLastResourceResolution(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 956
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public blacklist getLoaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist getLocales()[Ljava/lang/String;
    .registers 4

    .line 1542
    monitor-enter p0

    .line 1543
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1544
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1545
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public greylist-max-o getNonSystemLocales()[Ljava/lang/String;
    .registers 4

    .line 1559
    monitor-enter p0

    .line 1560
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1561
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1562
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1666
    monitor-enter p0

    .line 1667
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1668
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayableMap(JLjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 1669
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public blacklist getOverlayablesToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1678
    monitor-enter p0

    .line 1679
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1680
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetOverlayablesToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 1681
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method blacklist getParentThemeIdentifier(I)I
    .registers 4

    .line 918
    monitor-enter p0

    .line 919
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 921
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetParentThemeIdentifier(JI)I

    move-result p1

    monitor-exit p0

    return p1

    .line 922
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist-max-o getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .registers 4

    .line 975
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getResourceArray(I[I)I
    .registers 5

    .line 755
    const-string/jumbo v0, "outData"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 756
    monitor-enter p0

    .line 757
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 758
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetResourceArray(JI[I)I

    move-result p1

    monitor-exit p0

    return p1

    .line 759
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method greylist-max-o getResourceArraySize(I)I
    .registers 4

    .line 726
    monitor-enter p0

    .line 727
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 728
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceArraySize(JI)I

    move-result p1

    monitor-exit p0

    return p1

    .line 729
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist getResourceBagText(II)Ljava/lang/CharSequence;
    .registers 6

    .line 706
    monitor-enter p0

    .line 707
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 708
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 709
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/content/res/AssetManager;->nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I

    move-result p1

    .line 710
    if-gtz p1, :cond_11

    .line 711
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 715
    :cond_11
    iget p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result p2

    iput p2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 718
    iget p2, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_26

    .line 719
    iget p2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 721
    :cond_26
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 722
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method greylist getResourceEntryName(I)Ljava/lang/String;
    .registers 4

    .line 894
    monitor-enter p0

    .line 895
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 896
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceEntryName(JI)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 897
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 903
    monitor-enter p0

    .line 904
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 906
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    .line 907
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist-max-o getResourceIntArray(I)[I
    .registers 4

    .line 804
    monitor-enter p0

    .line 805
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 806
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceIntArray(JI)[I

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 807
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist getResourceName(I)Ljava/lang/String;
    .registers 4

    .line 870
    monitor-enter p0

    .line 871
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 872
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceName(JI)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 873
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist getResourcePackageName(I)Ljava/lang/String;
    .registers 4

    .line 878
    monitor-enter p0

    .line 879
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 880
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourcePackageName(JI)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 881
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist-max-o getResourceStringArray(I)[Ljava/lang/String;
    .registers 4

    .line 770
    monitor-enter p0

    .line 771
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 772
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArray(JI)[Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 773
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist getResourceText(I)Ljava/lang/CharSequence;
    .registers 5

    .line 687
    monitor-enter p0

    .line 688
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 689
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 690
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 692
    :cond_11
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 693
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method greylist-max-o getResourceTextArray(I)[Ljava/lang/CharSequence;
    .registers 9

    .line 783
    monitor-enter p0

    .line 784
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 785
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArrayInfo(JI)[I

    move-result-object p1

    .line 786
    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 787
    monitor-exit p0

    return-object v0

    .line 790
    :cond_f
    array-length v1, p1

    .line 791
    div-int/lit8 v2, v1, 0x2

    .line 792
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 793
    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v3, v1, :cond_2f

    .line 794
    aget v5, p1, v3

    .line 795
    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    .line 796
    if-ltz v6, :cond_27

    if-lez v5, :cond_27

    .line 797
    invoke-virtual {p0, v5, v6}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_28

    :cond_27
    move-object v5, v0

    :goto_28
    aput-object v5, v2, v4

    .line 793
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 799
    :cond_2f
    monitor-exit p0

    return-object v2

    .line 800
    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw p1
.end method

.method greylist getResourceTypeName(I)Ljava/lang/String;
    .registers 4

    .line 886
    monitor-enter p0

    .line 887
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 888
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceTypeName(JI)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 889
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist getResourceValue(IILandroid/util/TypedValue;Z)Z
    .registers 12

    .line 656
    const-string/jumbo v0, "outValue"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 657
    monitor-enter p0

    .line 658
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 659
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    int-to-short v4, p2

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I

    move-result p1

    .line 661
    const/4 p2, 0x0

    if-gtz p1, :cond_19

    .line 662
    monitor-exit p0

    return p2

    .line 666
    :cond_19
    iget p3, v5, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result p3

    iput p3, v5, Landroid/util/TypedValue;->changingConfigurations:I

    .line 669
    iget p3, v5, Landroid/util/TypedValue;->type:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_32

    .line 670
    iget p3, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, p3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez p1, :cond_32

    .line 671
    monitor-exit p0

    return p2

    .line 674
    :cond_32
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 675
    :catchall_35
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_35

    throw p1
.end method

.method blacklist getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    .line 1579
    monitor-enter p0

    .line 1580
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1581
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeAndUiModeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1582
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 3

    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1571
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1572
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-o getStyleAttributes(I)[I
    .registers 4

    .line 818
    monitor-enter p0

    .line 819
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 820
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetStyleAttributes(JI)[I

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 821
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method greylist-max-o getThemeValue(JILandroid/util/TypedValue;Z)Z
    .registers 14

    .line 839
    const-string/jumbo v0, "outValue"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 840
    monitor-enter p0

    .line 841
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 842
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I

    move-result p1

    .line 844
    const/4 p2, 0x0

    if-gtz p1, :cond_19

    .line 845
    monitor-exit p0

    return p2

    .line 849
    :cond_19
    iget p3, v6, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result p3

    iput p3, v6, Landroid/util/TypedValue;->changingConfigurations:I

    .line 852
    iget p3, v6, Landroid/util/TypedValue;->type:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_32

    .line 853
    iget p3, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, p3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez p1, :cond_32

    .line 854
    monitor-exit p0

    return p2

    .line 857
    :cond_32
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 858
    :catchall_35
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_35

    throw p1
.end method

.method public greylist isUpToDate()Z
    .registers 6

    .line 1515
    monitor-enter p0

    .line 1516
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1517
    monitor-exit p0

    return v1

    .line 1520
    :cond_8
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    .line 1521
    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1522
    monitor-exit p0

    return v1

    .line 1520
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1526
    :cond_1b
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1527
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public whitelist list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1058
    monitor-enter p0

    .line 1059
    :try_start_7
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1060
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeList(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 1061
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public whitelist open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist open(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1010
    monitor-enter p0

    .line 1011
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1012
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenAsset(JLjava/lang/String;I)J

    move-result-wide v0

    .line 1013
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_25

    .line 1016
    new-instance p1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, v1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager-IA;)V

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1018
    monitor-exit p0

    return-object p1

    .line 1014
    :cond_25
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1019
    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public whitelist openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1034
    monitor-enter p0

    .line 1035
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1036
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/AssetManager;->nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1037
    if-eqz v4, :cond_24

    .line 1040
    new-instance v3, Landroid/content/res/AssetFileDescriptor;

    iget-object p1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v0, 0x0

    aget-wide v5, p1, v0

    iget-object p1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v0, 0x1

    aget-wide v7, p1, v0

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v3

    .line 1038
    :cond_24
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :catchall_3d
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3d

    throw p1
.end method

.method public greylist-max-r openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public greylist openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1127
    monitor-enter p0

    .line 1128
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1129
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeOpenNonAsset(JILjava/lang/String;I)J

    move-result-wide v0

    .line 1130
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_25

    .line 1133
    new-instance p1, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, v1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager-IA;)V

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p2, p2

    invoke-direct {p0, p2, p3}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1135
    monitor-exit p0

    return-object p1

    .line 1131
    :cond_25
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset absolute file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1136
    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public greylist openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1077
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1166
    monitor-enter p0

    .line 1167
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1168
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 1169
    invoke-static {v0, v1, p1, p2, v2}, Landroid/content/res/AssetManager;->nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1170
    if-eqz v4, :cond_24

    .line 1173
    new-instance v3, Landroid/content/res/AssetFileDescriptor;

    iget-object p1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 p2, 0x0

    aget-wide v5, p1, p2

    iget-object p1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 p2, 0x1

    aget-wide v7, p1, p2

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v3

    .line 1171
    :cond_24
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset absolute file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1174
    :catchall_3d
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3d

    throw p1
.end method

.method public whitelist openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method blacklist openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    const-string v0, "fileName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1242
    monitor-enter p0

    .line 1243
    :try_start_6
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 1245
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenXmlAsset(JILjava/lang/String;)J

    move-result-wide v0

    .line 1246
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_24

    .line 1250
    new-instance p1, Landroid/content/res/XmlBlock;

    invoke-direct {p1, p0, v0, v1, p3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;JZ)V

    .line 1251
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p2, p2

    invoke-direct {p0, p2, p3}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1252
    monitor-exit p0

    return-object p1

    .line 1247
    :cond_24
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset XML file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1253
    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method greylist-max-o openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public blacklist openXmlResourceParser(ILjava/lang/String;Z)Landroid/content/res/XmlResourceParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;Z)Landroid/content/res/XmlBlock;

    move-result-object p1

    .line 1209
    :try_start_4
    new-instance p2, Landroid/content/res/Validator;

    invoke-direct {p2}, Landroid/content/res/Validator;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/XmlBlock;->newParser(ILandroid/content/res/Validator;)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1f

    .line 1213
    if-eqz p2, :cond_17

    .line 1216
    nop

    .line 1217
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->close()V

    .line 1216
    :cond_16
    return-object p2

    .line 1214
    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/AssertionError;

    const-string p3, "block.newParser() returned a null parser"

    invoke-direct {p2, p3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    .line 1208
    :catchall_1f
    move-exception p2

    if-eqz p1, :cond_2a

    :try_start_22
    invoke-virtual {p1}, Landroid/content/res/XmlBlock;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    throw p2
.end method

.method public whitelist openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method blacklist rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;
    .registers 14

    .line 1347
    if-eq p0, p3, :cond_1b

    .line 1348
    monitor-enter p0

    .line 1349
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1350
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 1351
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 1352
    monitor-enter p3

    .line 1353
    :try_start_b
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1354
    invoke-direct {p3, p1, p2}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1355
    monitor-exit p3

    goto :goto_1b

    :catchall_13
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_13

    throw p1

    .line 1351
    :catchall_17
    move-exception v0

    move-object p1, v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_17

    throw p1

    .line 1359
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-enter p3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_32

    .line 1360
    :try_start_1c
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1361
    iget-wide v0, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeRebase(JJ[I[ZI)V

    .line 1362
    monitor-exit p3
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2e

    .line 1364
    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1365
    nop

    .line 1366
    return-object p3

    .line 1362
    :catchall_2e
    move-exception v0

    move-object p1, v0

    :try_start_30
    monitor-exit p3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2e

    :try_start_31
    throw p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 1364
    :catchall_32
    move-exception v0

    move-object p1, v0

    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1365
    throw p1
.end method

.method greylist-max-o releaseTheme(J)V
    .registers 3

    .line 1328
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 1329
    return-void
.end method

.method greylist-max-r resolveAttrs(JII[I[I[I[I)Z
    .registers 20

    .line 1289
    const-string v0, "inAttrs"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1290
    const-string/jumbo v0, "outValues"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo v0, "outIndices"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1292
    monitor-enter p0

    .line 1295
    :try_start_18
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1296
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/content/res/AssetManager;->nativeResolveAttrs(JJII[I[I[I[I)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 1298
    :catchall_28
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_28

    throw p1
.end method

.method greylist-max-r retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z
    .registers 13

    .line 1304
    const-string/jumbo v0, "parser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1305
    const-string v0, "inAttrs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1306
    const-string/jumbo v0, "outValues"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1307
    const-string/jumbo v0, "outIndices"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1308
    monitor-enter p0

    .line 1311
    :try_start_18
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1312
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v3, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeRetrieveAttributes(JJ[I[I[I)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 1314
    :catchall_28
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_28

    throw p1
.end method

.method public greylist-max-o setApkAssets([Landroid/content/res/ApkAssets;Z)V
    .registers 11

    .line 345
    const-string v0, "apkAssets"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    .line 350
    sget-object v2, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    sget-object v3, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    sget-object v2, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v2

    .line 354
    array-length v3, p1

    move v5, v4

    :goto_1a
    if-ge v5, v3, :cond_2e

    aget-object v6, p1, v5

    .line 355
    sget-object v7, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 356
    add-int/lit8 v7, v2, 0x1

    aput-object v6, v1, v2

    move v2, v7

    .line 354
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 361
    :cond_2e
    if-eq v2, v0, :cond_37

    .line 362
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Landroid/content/res/ApkAssets;

    .line 365
    :cond_37
    monitor-enter p0

    .line 366
    :try_start_38
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 367
    iput-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 368
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {v0, v1, p1, p2, v4}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;ZZ)V

    .line 369
    if-eqz p2, :cond_4a

    .line 371
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 373
    :cond_4a
    monitor-exit p0

    .line 374
    return-void

    .line 373
    :catchall_4c
    move-exception p1

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public greylist setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V
    .registers 43

    .line 1596
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-virtual/range {v0 .. v21}, Landroid/content/res/AssetManager;->setConfigurationInternal(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V

    .line 1600
    return-void
.end method

.method blacklist setConfigurationInternal(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIZ)V
    .registers 48

    .line 1612
    move-object/from16 v1, p0

    monitor-enter p0

    .line 1613
    :try_start_3
    invoke-direct {v1}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1614
    invoke-static/range {p20 .. p20}, Landroid/os/Build;->getMajorSdkVersion(I)I

    move-result v23

    .line 1615
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->resourcesMinorVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1616
    invoke-static/range {p20 .. p20}, Landroid/os/Build;->getMinorSdkVersion(I)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    move/from16 v24, v0

    .line 1617
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v25, p21

    invoke-static/range {v2 .. v25}, Landroid/content/res/AssetManager;->nativeSetConfiguration(JIILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIIIIZ)V

    .line 1622
    monitor-exit p0

    .line 1623
    return-void

    .line 1622
    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v0
.end method

.method blacklist setLoaders(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 382
    const-string/jumbo v0, "newLoaders"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 387
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v3

    if-nez v3, :cond_23

    .line 388
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 392
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_63

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 397
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 398
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_3b
    if-ltz v5, :cond_63

    .line 399
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v6}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v6

    .line 400
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_4c
    if-ltz v7, :cond_60

    .line 401
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ApkAssets;

    .line 402
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 403
    invoke-virtual {v0, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 400
    :cond_5d
    add-int/lit8 v7, v7, -0x1

    goto :goto_4c

    .line 398
    :cond_60
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    .line 409
    :cond_63
    new-array v2, v1, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/res/loader/ResourcesLoader;

    iput-object p1, p0, Landroid/content/res/AssetManager;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 410
    new-array p1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/res/ApkAssets;

    invoke-virtual {p0, p1, v3}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 411
    return-void
.end method

.method public blacklist setOverlayConstraints(II)V
    .registers 5

    .line 1632
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->rroConstraints()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1633
    return-void

    .line 1636
    :cond_7
    monitor-enter p0

    .line 1637
    :try_start_8
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1638
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeSetOverlayConstraints(JII)V

    .line 1639
    monitor-exit p0

    .line 1640
    return-void

    .line 1639
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public blacklist setResourceResolutionLoggingEnabled(Z)V
    .registers 4

    .line 937
    monitor-enter p0

    .line 938
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 939
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeSetResourceResolutionLoggingEnabled(JZ)V

    .line 940
    monitor-exit p0

    .line 941
    return-void

    .line 940
    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method greylist-max-r setThemeTo(JLandroid/content/res/AssetManager;J)V
    .registers 14

    .line 1371
    monitor-enter p0

    .line 1372
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1373
    monitor-enter p3
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_18

    .line 1374
    :try_start_5
    invoke-direct {p3}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1375
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v4, p3, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->nativeThemeCopy(JJJJ)V

    .line 1376
    monitor-exit p3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    .line 1377
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_18

    .line 1378
    return-void

    .line 1376
    :catchall_14
    move-exception v0

    move-object p1, v0

    :try_start_16
    monitor-exit p3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_14

    :try_start_17
    throw p1

    .line 1377
    :catchall_18
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_18

    throw p1
.end method

.method greylist-max-o xmlBlockGone(I)V
    .registers 4

    .line 1257
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefs(J)V

    .line 1258
    return-void
.end method
