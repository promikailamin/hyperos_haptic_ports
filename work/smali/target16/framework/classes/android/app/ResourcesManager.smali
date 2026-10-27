.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$SharedLibraryAssets;,
        Landroid/app/ResourcesManager$PathCollector;,
        Landroid/app/ResourcesManager$UpdateHandler;,
        Landroid/app/ResourcesManager$ApkKey;,
        Landroid/app/ResourcesManager$ApkAssetsSupplier;,
        Landroid/app/ResourcesManager$ActivityResources;,
        Landroid/app/ResourcesManager$ActivityResource;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist RESOURCE_CACHE_DIR:Ljava/lang/String; = "/data/resource-cache/"

.field static final greylist-max-o TAG:Ljava/lang/String; = "ResourcesManager"

.field private static volatile greylist-max-o sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final greylist mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApplicationOwnedApks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCachedApkAssets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ApkAssets;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPendingAppInfoUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final greylist mResConfiguration:Landroid/content/res/Configuration;

.field private blacklist mResDisplayId:I

.field private final greylist mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSharedLibAssetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ResourcesManager$SharedLibraryAssets;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 137
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    .line 273
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    .line 353
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 360
    new-instance v0, Landroid/app/ResourcesManager$UpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager-IA;)V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    .line 366
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    .line 370
    return-void
.end method

.method private blacklist addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 558
    iget-object v0, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 559
    if-eqz p2, :cond_10

    .line 560
    iget-object p1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 562
    :cond_10
    return-void
.end method

.method private blacklist appendLibAssetsLocked(Landroid/app/ResourcesManager$SharedLibraryAssets;)V
    .registers 8

    .line 1778
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1779
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1780
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_42

    .line 1781
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 1782
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1783
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    .line 1784
    :goto_28
    if-nez v4, :cond_32

    .line 1785
    const-string v3, "ResourcesManager"

    const-string v4, "Found a null ResourcesImpl, skipped."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    goto :goto_3f

    .line 1789
    :cond_32
    invoke-virtual {p1}, Landroid/app/ResourcesManager$SharedLibraryAssets;->getResourcesKey()Landroid/content/res/ResourcesKey;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Landroid/app/ResourcesManager;->createNewResourceKeyIfNeeded(Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    .line 1790
    if-eqz v3, :cond_3f

    .line 1791
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1794
    :cond_42
    invoke-direct {p0, v0}, Landroid/app/ResourcesManager;->redirectAllResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1795
    return-void
.end method

.method private blacklist applyAllPendingAppInfoUpdates$ravenwood()V
    .registers 1

    .line 1556
    return-void
.end method

.method private blacklist applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V
    .registers 7

    .line 1620
    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1621
    invoke-virtual {p4}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1622
    iget-object p1, p4, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1628
    :cond_e
    invoke-virtual {p5}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object p1

    .line 1629
    if-eqz p2, :cond_1d

    .line 1630
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 1631
    invoke-virtual {v0, p2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    move-object p1, v0

    .line 1633
    :cond_1d
    invoke-virtual {p1, p3}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1634
    invoke-direct {p0, p4}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result p4

    invoke-virtual {p0, p4, p1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1636
    invoke-virtual {p5, p3, p1, p2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1637
    return-void
.end method

.method private static blacklist applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 6

    .line 491
    const/4 v0, 0x1

    iput v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 492
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 493
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 494
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v3, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 495
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 496
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, p0, :cond_37

    .line 497
    const/4 p0, 0x2

    iput p0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 498
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, p0, v0}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_43

    .line 501
    :cond_37
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 502
    iget p0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, p0, v0}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 505
    :goto_43
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 506
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput p0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 507
    iget p0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 508
    iget p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 509
    return-void
.end method

.method private blacklist applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 22

    .line 1800
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x2000

    :try_start_6
    const-string v4, "ResourcesManager#applyNewResourceDirsLocked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1803
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 1805
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1806
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v4, :cond_1a

    .line 1807
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    goto :goto_1c

    .line 1808
    :cond_1a
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 1811
    :goto_1c
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Ljava/lang/String;

    .line 1812
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1815
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v4, :cond_32

    .line 1816
    invoke-direct {v0, v7, v8}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1819
    :cond_32
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1820
    iget-object v4, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1821
    const/4 v5, 0x0

    move v15, v5

    :goto_3f
    if-ge v15, v4, :cond_a7

    .line 1822
    iget-object v5, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1823
    iget-object v6, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1824
    if-eqz v6, :cond_5a

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesImpl;

    goto :goto_5b

    :cond_5a
    const/4 v6, 0x0

    .line 1826
    :goto_5b
    if-nez v6, :cond_60

    .line 1827
    move-wide/from16 v16, v2

    goto :goto_a2

    .line 1830
    :cond_60
    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v10, :cond_7d

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1831
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7a

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1832
    move-object/from16 v11, p1

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    goto :goto_7f

    :cond_77
    move-wide/from16 v16, v2

    goto :goto_a2

    .line 1831
    :cond_7a
    move-object/from16 v11, p1

    goto :goto_7f

    .line 1830
    :cond_7d
    move-object/from16 v11, p1

    .line 1833
    :goto_7f
    new-instance v10, Landroid/content/res/ResourcesKey;

    move-object v12, v6

    iget v6, v5, Landroid/content/res/ResourcesKey;->mTokenIdentity:I

    move-object v13, v10

    iget-object v10, v5, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v11, v5, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move-object v14, v12

    iget-object v12, v5, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v13

    iget-object v13, v5, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v5, v5, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;
    :try_end_92
    .catchall {:try_start_6 .. :try_end_92} :catchall_b3

    move-object/from16 v18, v14

    move-object v14, v5

    move-object/from16 v5, v16

    move-wide/from16 v16, v2

    move-object/from16 v2, v18

    :try_start_9b
    invoke-direct/range {v5 .. v14}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object v13, v5

    invoke-virtual {v1, v2, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    :goto_a2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v2, v16

    goto :goto_3f

    .line 1847
    :cond_a7
    move-wide/from16 v16, v2

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_ac
    .catchall {:try_start_9b .. :try_end_ac} :catchall_b1

    .line 1849
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 1850
    nop

    .line 1851
    return-void

    .line 1849
    :catchall_b1
    move-exception v0

    goto :goto_b6

    :catchall_b3
    move-exception v0

    move-wide/from16 v16, v2

    :goto_b6
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 1850
    throw v0
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1127
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 1128
    return-void
.end method

.method private static blacklist cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TC;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TC;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1135
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 1136
    if-nez v0, :cond_7

    .line 1137
    return-void

    .line 1140
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1141
    :goto_c
    if-eqz v0, :cond_16

    .line 1142
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1141
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_c

    .line 1145
    :cond_16
    new-instance p1, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, v1}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/HashSet;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 1149
    return-void
.end method

.method private static blacklist combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1868
    if-nez p0, :cond_9

    .line 1869
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 1870
    :cond_9
    if-nez p1, :cond_12

    .line 1871
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 1873
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    array-length v2, p0

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1874
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v3, v1, :cond_27

    aget-object v4, p1, v3

    .line 1875
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1877
    :cond_27
    array-length p1, p0

    move v1, v2

    :goto_29
    if-ge v1, p1, :cond_39

    aget-object v3, p0, v1

    .line 1878
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1879
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1882
    :cond_39
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static greylist-max-o countLiveReferences(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)I"
        }
    .end annotation

    .line 717
    nop

    .line 718
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 719
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 720
    :goto_1a
    if-eqz v1, :cond_1e

    .line 721
    add-int/lit8 v0, v0, 0x1

    .line 723
    :cond_1e
    goto :goto_6

    .line 724
    :cond_1f
    return v0
.end method

.method private blacklist createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;
    .registers 11

    .line 1157
    const-string v0, "ResourcesManager#createApkAssetsSupplierNotLocked"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1165
    :try_start_7
    new-instance v0, Landroid/app/ResourcesManager$ApkAssetsSupplier;

    invoke-direct {v0, p0}, Landroid/app/ResourcesManager$ApkAssetsSupplier;-><init>(Landroid/app/ResourcesManager;)V

    .line 1166
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_36

    .line 1168
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ApkKey;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_3b

    .line 1170
    :try_start_1d
    invoke-virtual {v0, v5}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_3b

    .line 1173
    goto :goto_33

    .line 1171
    :catch_21
    move-exception v6

    .line 1172
    :try_start_22
    const-string v7, "ResourcesManager"

    const-string v8, "failed to preload asset path \'%s\'"

    iget-object v5, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_3b

    .line 1167
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1175
    :cond_36
    nop

    .line 1177
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1175
    return-object v0

    .line 1177
    :catchall_3b
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1178
    throw p1
.end method

.method private blacklist createNewResourceKeyIfNeeded(Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesKey;
    .registers 4

    .line 1767
    new-instance v0, Landroid/app/ResourcesManager$PathCollector;

    invoke-direct {v0, p1}, Landroid/app/ResourcesManager$PathCollector;-><init>(Landroid/content/res/ResourcesKey;)V

    .line 1768
    invoke-virtual {v0, p2}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 1769
    invoke-virtual {v0}, Landroid/app/ResourcesManager$PathCollector;->isSameAsOriginal()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object p1

    :goto_14
    return-object p1
.end method

.method private blacklist createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 5

    .line 1194
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_3
    invoke-direct {p0, p1, p3}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object p3

    .line 1201
    if-nez p3, :cond_c

    .line 1202
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 1205
    :cond_c
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p2, p3, p1}, Landroid/app/ResourcesManager;->createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1206
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private blacklist createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;
    .registers 16

    .line 1214
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1220
    :try_start_3
    invoke-direct {p0, p2, p6}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object v7

    .line 1221
    if-nez v7, :cond_c

    .line 1222
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    .line 1225
    :cond_c
    iget-object v8, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v8}, Landroid/app/ResourcesManager;->createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1227
    :catchall_19
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_19

    throw p1
.end method

.method private blacklist createResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 10

    .line 935
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object p1

    .line 937
    iget-object v0, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v2, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/app/ResourcesManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;Ljava/util/function/Function;)V

    .line 941
    invoke-virtual {p6}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result p6

    if-eqz p6, :cond_1c

    new-instance p6, Landroid/content/res/CompatResources;

    invoke-direct {p6, p4}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_21

    .line 942
    :cond_1c
    new-instance p6, Landroid/content/res/Resources;

    invoke-direct {p6, p4}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 943
    :goto_21
    invoke-virtual {p6, p5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 944
    iget-object p4, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {p6, p4}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 946
    new-instance p4, Landroid/app/ResourcesManager$ActivityResource;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Landroid/app/ResourcesManager$ActivityResource;-><init>(Landroid/app/ResourcesManager-IA;)V

    .line 947
    new-instance p5, Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p5, p6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p5, p4, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 949
    iget-object p5, p4, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p5, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 950
    iput-object p3, p4, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 951
    iget-object p2, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object p1, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4f

    .line 953
    iput-boolean p2, p4, Landroid/app/ResourcesManager$ActivityResource;->isBaseResource:Z

    .line 959
    :cond_4f
    return-object p6
.end method

.method private blacklist createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 9

    .line 766
    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object v1

    .line 767
    if-nez v1, :cond_8

    .line 768
    const/4 p1, 0x0

    return-object p1

    .line 773
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 774
    new-instance p2, Landroid/view/DisplayAdjustments;

    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p2, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 775
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 776
    iget-object v2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-object v4, p2

    move-object v3, v0

    goto :goto_31

    .line 779
    :cond_26
    new-instance p2, Landroid/view/DisplayAdjustments;

    invoke-direct {p2}, Landroid/view/DisplayAdjustments;-><init>()V

    .line 780
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v4, p2

    move-object v3, v0

    .line 782
    :goto_31
    iget-object p2, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v4, p2}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 784
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->generateDisplayId(Landroid/content/res/ResourcesKey;)I

    move-result p1

    invoke-virtual {p0, p1, v4}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 785
    new-instance v0, Landroid/content/res/ResourcesImpl;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Z)V

    .line 790
    return-object v0
.end method

.method private blacklist createResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 6

    .line 964
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 966
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result p3

    if-eqz p3, :cond_13

    new-instance p3, Landroid/content/res/CompatResources;

    invoke-direct {p3, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_18

    .line 967
    :cond_13
    new-instance p3, Landroid/content/res/Resources;

    invoke-direct {p3, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 968
    :goto_18
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 969
    iget-object p1, p0, Landroid/app/ResourcesManager;->mUpdateCallbacks:Landroid/app/ResourcesManager$UpdateHandler;

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->setCallbacks(Landroid/content/res/Resources$UpdateCallbacks;)V

    .line 970
    iget-object p1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourcesReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2, p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    return-object p3
.end method

.method private static blacklist extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ApkKey;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 617
    new-instance v1, Landroid/app/ResourcesManager$ApkKey;

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_14
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 621
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2b

    aget-object v5, v1, v4

    .line 622
    new-instance v6, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v6, v5, v2, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 626
    :cond_2b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    .line 627
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v4, v1

    move v5, v2

    :goto_34
    if-ge v5, v4, :cond_4b

    aget-object v6, v1, v5

    .line 629
    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 630
    new-instance v7, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v7, v6, v3, v2}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 635
    :cond_4b
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 636
    iget-object p0, p0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v1, p0

    move v4, v2

    :goto_53
    if-ge v4, v1, :cond_62

    aget-object v5, p0, v4

    .line 637
    new-instance v6, Landroid/app/ResourcesManager$ApkKey;

    invoke-direct {v6, v5, v2, v3}, Landroid/app/ResourcesManager$ApkKey;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 641
    :cond_62
    return-object v0
.end method

.method private greylist-max-o findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 5

    .line 862
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 863
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_25

    .line 864
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 865
    if-eqz v2, :cond_22

    invoke-virtual {v2, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 866
    iget-object p1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ResourcesKey;

    return-object p1

    .line 863
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 869
    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist-max-o findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 3

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object p1

    return-object p1
.end method

.method private blacklist findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;
    .registers 3

    .line 831
    nop

    .line 832
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplPairForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/util/Pair;

    move-result-object p1

    .line 833
    if-eqz p1, :cond_c

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/ResourcesImpl;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method

.method private blacklist findOrCreateResourcesImplPairForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            "Landroid/app/ResourcesManager$ApkAssetsSupplier;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/res/ResourcesKey;",
            "Landroid/content/res/ResourcesImpl;",
            ">;"
        }
    .end annotation

    .line 843
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplPairForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/util/Pair;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ResourcesImpl;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 846
    :goto_c
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAppliedSharedLibsHash()I

    move-result v1

    iget-object v2, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_30

    .line 847
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/ResourcesImpl;

    move-result-object p2

    .line 848
    if-eqz p2, :cond_30

    .line 849
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 853
    :cond_30
    return-object v0
.end method

.method private blacklist findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 9

    .line 910
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object p1

    .line 913
    iget-object v0, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 914
    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    .line 915
    iget-object v3, p1, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResource;

    .line 916
    iget-object v3, v3, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 917
    if-nez v3, :cond_21

    goto :goto_29

    .line 918
    :cond_21
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    .line 917
    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v2

    .line 920
    :goto_29
    if-eqz v2, :cond_3c

    .line 921
    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 922
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 923
    return-object v3

    .line 914
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 927
    :cond_3f
    return-object v2
.end method

.method private blacklist findResourcesImplPairForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ResourcesKey;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/res/ResourcesKey;",
            "Landroid/content/res/ResourcesImpl;",
            ">;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 803
    const/4 v0, 0x0

    if-gez p1, :cond_a

    .line 804
    return-object v0

    .line 806
    :cond_a
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 807
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    .line 808
    :goto_1c
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 809
    new-instance v0, Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ResourcesKey;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 811
    :cond_36
    return-object v0
.end method

.method private blacklist generateDisplayId(Landroid/content/res/ResourcesKey;)I
    .registers 4

    .line 761
    iget v0, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget p1, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    goto :goto_a

    :cond_8
    iget p1, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    :goto_a
    return p1
.end method

.method private blacklist getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;
    .registers 5

    .line 476
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 478
    if-eqz v0, :cond_12

    .line 479
    iget v2, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 480
    :goto_13
    if-eqz v0, :cond_1f

    .line 481
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 482
    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 481
    invoke-virtual {v0, v1, v2, p1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_22

    .line 484
    :cond_1f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 486
    :goto_22
    return-object v1
.end method

.method public static greylist getInstance()Landroid/app/ResourcesManager;
    .registers 2

    .line 388
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 389
    if-nez v0, :cond_17

    .line 390
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 391
    :try_start_7
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 392
    if-nez v0, :cond_12

    .line 393
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 395
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    .line 397
    :cond_17
    :goto_17
    return-object v0
.end method

.method private greylist-max-o getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .registers 4

    .line 899
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 900
    if-nez v0, :cond_15

    .line 901
    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager-IA;)V

    .line 902
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_15
    return-object v0
.end method

.method static synthetic blacklist lambda$cleanupReferences$1(Ljava/util/function/Function;Ljava/util/HashSet;Ljava/lang/Object;)Z
    .registers 3

    .line 1146
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1147
    if-eqz p0, :cond_11

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method static synthetic blacklist lambda$createResourcesForActivityLocked$0(Landroid/app/ResourcesManager$ActivityResource;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 939
    iget-object p0, p0, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static greylist-max-o overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/resource-cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "@idmap"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist rebaseActivityOverrideConfig(Landroid/os/IBinder;Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;
    .registers 19

    .line 1438
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 1439
    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 1440
    return-object v3

    .line 1445
    :cond_10
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v4

    .line 1446
    if-nez v4, :cond_37

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1448
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1447
    const-string v1, "ResourcesManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return-object v3

    .line 1453
    :cond_37
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    .line 1454
    if-eqz v1, :cond_41

    .line 1455
    invoke-virtual {v11, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1458
    :cond_41
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    .line 1459
    if-eqz v1, :cond_63

    .line 1460
    new-instance v2, Landroid/view/DisplayAdjustments;

    invoke-direct {v2, v11}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 1461
    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1462
    iget-object v5, v4, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v5}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1464
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1465
    invoke-static {v2, v11}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1468
    :cond_63
    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1469
    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 1470
    if-nez v2, :cond_72

    .line 1471
    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v11, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1474
    :cond_72
    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResource;->overrideDisplayId:Ljava/lang/Integer;

    if-eqz v2, :cond_85

    iget-object v2, v0, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1475
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_85

    .line 1479
    iget-object v2, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1483
    :cond_85
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v10, v1

    goto :goto_8f

    :cond_8d
    move/from16 v10, p4

    .line 1488
    :goto_8f
    iget-boolean v0, v0, Landroid/app/ResourcesManager$ActivityResource;->isBaseResource:Z

    if-eqz v0, :cond_98

    .line 1489
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_99

    :cond_98
    const/4 v0, 0x0

    :goto_99
    move v5, v0

    .line 1491
    new-instance v0, Landroid/content/res/ResourcesKey;

    iget-object v6, v4, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v8, v4, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v9, v4, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v12, v4, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v13, v4, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1500
    return-object v4
.end method

.method private blacklist rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V
    .registers 7

    .line 1065
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    nop

    .line 1067
    :try_start_4
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object p1

    .line 1069
    iget v1, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 1070
    iget v1, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    iput v1, p2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1074
    :cond_11
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1075
    new-instance v1, Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1076
    iget-object p1, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_26

    .line 1078
    :cond_24
    iget-object v1, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 1081
    :goto_26
    if-eqz p3, :cond_44

    iget-object p1, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1082
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_44

    .line 1083
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 1085
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v1, p1

    .line 1091
    :cond_3e
    iget-object p1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 1094
    :cond_44
    iget-object p1, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1095
    monitor-exit v0

    .line 1096
    return-void

    .line 1095
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method private blacklist rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V
    .registers 7

    .line 1105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1107
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    .line 1108
    if-eqz v1, :cond_13

    .line 1109
    new-instance v2, Landroid/view/DisplayAdjustments;

    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_18

    .line 1110
    :cond_13
    new-instance v2, Landroid/view/DisplayAdjustments;

    invoke-direct {v2}, Landroid/view/DisplayAdjustments;-><init>()V

    .line 1111
    :goto_18
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1113
    invoke-virtual {p0, p2, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1114
    invoke-static {p2, v0}, Landroid/app/ResourcesManager;->applyDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1116
    if-eqz v1, :cond_2b

    .line 1117
    iget-object p2, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1119
    :cond_2b
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1120
    return-void
.end method

.method private blacklist redirectAllResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1938
    iget-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0, v1}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 1941
    iget-object v0, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1942
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_7b

    .line 1943
    iget-object v2, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1944
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 1945
    :goto_22
    if-nez v2, :cond_25

    .line 1946
    goto :goto_78

    .line 1948
    :cond_25
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 1949
    const-string v4, "ResourcesManager"

    if-eqz v3, :cond_54

    .line 1950
    invoke-direct {p0, v3}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v5

    .line 1951
    if-eqz v5, :cond_3d

    .line 1952
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_53

    .line 1954
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to redirect ResourcesImpl, left untouched, for a key "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :goto_53
    goto :goto_78

    .line 1962
    :cond_54
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 1963
    if-eqz v3, :cond_78

    .line 1964
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 1966
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v6

    if-eq v5, v6, :cond_78

    .line 1967
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1968
    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v3}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    .line 1969
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1970
    goto :goto_78

    .line 1971
    :cond_73
    const-string v2, "Skip appending shared library asset paths for the Resources as its assets are not up to date."

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_78
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1978
    :cond_7b
    return-void
.end method

.method private greylist-max-o redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    .line 1889
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1890
    return-void

    .line 1894
    :cond_7
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1895
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    const-string v3, "failed to redirect ResourcesImpl"

    const/4 v4, 0x0

    if-ge v2, v0, :cond_45

    .line 1896
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1897
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    .line 1898
    :cond_24
    if-eqz v4, :cond_42

    .line 1899
    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesKey;

    .line 1900
    if-eqz v5, :cond_42

    .line 1901
    invoke-direct {p0, v5}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v5

    .line 1902
    if-eqz v5, :cond_3c

    .line 1905
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_42

    .line 1903
    :cond_3c
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1895
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1911
    :cond_45
    iget-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResourcesManager$ActivityResources;

    .line 1912
    iget-object v5, v2, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1913
    move v6, v1

    :goto_62
    if-ge v6, v5, :cond_99

    .line 1914
    iget-object v7, v2, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1915
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ResourcesManager$ActivityResource;

    .line 1916
    if-eqz v7, :cond_77

    .line 1917
    iget-object v7, v7, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Resources;

    goto :goto_78

    :cond_77
    move-object v7, v4

    .line 1918
    :goto_78
    if-eqz v7, :cond_96

    .line 1919
    invoke-virtual {v7}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesKey;

    .line 1920
    if-eqz v8, :cond_96

    .line 1921
    invoke-direct {p0, v8}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v8

    .line 1922
    if-eqz v8, :cond_90

    .line 1926
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_96

    .line 1923
    :cond_90
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1913
    :cond_96
    :goto_96
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 1930
    :cond_99
    goto :goto_4f

    .line 1931
    :cond_9a
    return-void
.end method

.method private blacklist resourcesKeyFromAssets(Landroid/content/res/AssetManager;)Landroid/content/res/ResourcesKey;
    .registers 15

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 647
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_40

    aget-object v5, p1, v4

    .line 648
    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->isSystem()Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->isForLoader()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 649
    goto :goto_3d

    .line 651
    :cond_22
    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->isOverlay()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 652
    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 653
    :cond_30
    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->isSharedLib()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 654
    invoke-virtual {v5}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 657
    :cond_40
    new-instance v5, Landroid/content/res/ResourcesKey;

    new-array p1, v3, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Ljava/lang/String;

    new-array p1, v3, [Ljava/lang/String;

    .line 658
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 657
    return-object v5
.end method

.method public static greylist setInstance(Landroid/app/ResourcesManager;)Landroid/app/ResourcesManager;
    .registers 3

    .line 379
    const-class v0, Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 380
    :try_start_3
    sget-object v1, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 381
    sput-object p0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 382
    monitor-exit v0

    return-object v1

    .line 383
    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method private static blacklist updateWindowConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 4

    .line 1513
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v0

    .line 1515
    if-eqz v0, :cond_12

    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_12

    .line 1516
    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    iput p1, p0, Landroid/content/res/Configuration;->seq:I

    .line 1518
    :cond_12
    if-eqz v0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public greylist appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1647
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1648
    return-void
.end method

.method public blacklist appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 25

    .line 1657
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1660
    :try_start_7
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1662
    iget-object v4, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1663
    const/4 v6, 0x0

    :goto_13
    if-ge v6, v4, :cond_82

    .line 1664
    iget-object v7, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ResourcesKey;

    .line 1665
    iget-object v8, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 1666
    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/ResourcesImpl;

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    .line 1667
    :goto_2f
    if-eqz v8, :cond_7b

    iget-object v9, v7, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 1668
    iget-object v9, v7, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    .line 1669
    array-length v11, v1

    const/4 v12, 0x0

    :goto_3f
    if-ge v12, v11, :cond_4e

    aget-object v13, v1, v12

    .line 1670
    const-class v14, Ljava/lang/String;

    .line 1671
    invoke-static {v14, v9, v13}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 1669
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 1674
    :cond_4e
    iget-object v11, v7, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7d

    .line 1675
    new-instance v12, Landroid/content/res/ResourcesKey;

    iget v13, v7, Landroid/content/res/ResourcesKey;->mTokenIdentity:I

    iget-object v14, v7, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v11, v7, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget v5, v7, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v1, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v1

    iget-object v1, v7, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v7, v7, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    move-object/from16 v20, v1

    move/from16 v18, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v9

    move-object/from16 v16, v11

    invoke-direct/range {v12 .. v21}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 1667
    :cond_7b
    move-object/from16 v10, p1

    .line 1663
    :cond_7d
    :goto_7d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    goto :goto_13

    .line 1689
    :cond_82
    invoke-direct {v0, v3}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    .line 1690
    monitor-exit v2

    .line 1691
    return-void

    .line 1690
    :catchall_87
    move-exception v0

    monitor-exit v2
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_87

    throw v0
.end method

.method public blacklist appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 1525
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1526
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1532
    :cond_e
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_32

    .line 1533
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1534
    iget-object v2, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1532
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1537
    :cond_32
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    monitor-exit v0

    .line 1539
    return-void

    .line 1538
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public final blacklist applyAllPendingAppInfoUpdates()V
    .registers 6

    .line 1543
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1544
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    if-eqz v1, :cond_29

    .line 1545
    iget-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_26

    .line 1546
    iget-object v3, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1547
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v4, v3}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1545
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1549
    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ResourcesManager;->mPendingAppInfoUpdates:Ljava/util/ArrayList;

    .line 1551
    :cond_29
    monitor-exit v0

    .line 1552
    return-void

    .line 1551
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .registers 5

    .line 513
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_17

    .line 515
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 516
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 518
    :cond_17
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 519
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final blacklist applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .registers 16

    .line 1560
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1562
    const-wide/16 v2, 0x2000

    :try_start_5
    const-string v0, "ResourcesManager#applyConfigurationToResources"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1565
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_93

    const/4 v4, 0x0

    if-nez v0, :cond_1b

    if-nez p2, :cond_1b

    .line 1570
    nop

    .line 1607
    :try_start_16
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_99

    .line 1570
    return v4

    .line 1573
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1574
    if-eqz p2, :cond_38

    iget-object v5, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1575
    invoke-virtual {v5, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 1576
    :cond_2f
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p2, v5}, Landroid/content/res/CompatibilityInfo;->getCompatibilityChangesForConfig(Landroid/content/res/CompatibilityInfo;)I

    move-result v5

    or-int/2addr v0, v5

    .line 1577
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1583
    :cond_38
    const/high16 v5, -0x80000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_40

    .line 1584
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1587
    :cond_40
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getDisplayMetrics(Landroid/content/res/Configuration;)Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1588
    invoke-static {p1, v5, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1590
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 1592
    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    .line 1594
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    :goto_57
    if-ltz v5, :cond_8b

    .line 1595
    iget-object v6, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/content/res/ResourcesKey;

    .line 1596
    iget-object v6, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1597
    if-eqz v6, :cond_73

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ResourcesImpl;

    goto :goto_74

    :cond_73
    const/4 v6, 0x0

    :goto_74
    move-object v11, v6

    .line 1598
    if-eqz v11, :cond_7e

    .line 1599
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Landroid/content/res/ResourcesKey;Landroid/content/res/ResourcesImpl;)V

    goto :goto_86

    .line 1601
    :cond_7e
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    iget-object p1, v6, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_93

    .line 1594
    :goto_86
    add-int/lit8 v5, v5, -0x1

    move-object p1, v7

    move-object p2, v8

    goto :goto_57

    .line 1605
    :cond_8b
    if-eqz v0, :cond_8e

    move v4, v12

    .line 1607
    :cond_8e
    :try_start_8e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1

    .line 1605
    return v4

    .line 1607
    :catchall_93
    move-exception v0

    move-object p1, v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1608
    throw p1

    .line 1609
    :catchall_99
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_8e .. :try_end_9c} :catchall_99

    throw p1
.end method

.method protected greylist createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .registers 3

    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;

    move-result-object p1

    return-object p1
.end method

.method protected greylist createAssetManager(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/AssetManager;
    .registers 12

    .line 685
    new-instance v0, Landroid/content/res/AssetManager$Builder;

    invoke-direct {v0}, Landroid/content/res/AssetManager$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->setNoInit()Landroid/content/res/AssetManager$Builder;

    move-result-object v0

    .line 687
    invoke-static {p1}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_69

    .line 689
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ApkKey;

    .line 691
    nop

    .line 692
    if-eqz p2, :cond_23

    :try_start_1e
    invoke-virtual {p2, v5}, Landroid/app/ResourcesManager$ApkAssetsSupplier;->load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v6

    goto :goto_27

    :cond_23
    invoke-virtual {p0, v5}, Landroid/app/ResourcesManager;->loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v6

    .line 691
    :goto_27
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_2b

    .line 704
    goto :goto_55

    .line 693
    :catch_2b
    move-exception v6

    .line 694
    iget-boolean v7, v5, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    const-string v8, "ResourcesManager"

    if-eqz v7, :cond_42

    .line 695
    iget-object v5, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "failed to add overlay path \'%s\'"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 696
    :cond_42
    iget-boolean v7, v5, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v7, :cond_58

    .line 697
    iget-object v5, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "asset path \'%s\' does not exist or contains no resources"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 701
    :cond_58
    iget-object p1, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "failed to add asset path \'%s\'"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    const/4 p1, 0x0

    return-object p1

    .line 707
    :cond_69
    iget-object p2, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    if-eqz p2, :cond_7a

    .line 708
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    array-length p2, p1

    :goto_70
    if-ge v3, p2, :cond_7a

    aget-object v1, p1, v3

    .line 709
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager$Builder;->addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;

    .line 708
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 713
    :cond_7a
    invoke-virtual {v0}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1012
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    const-wide/16 v3, 0x2000

    :try_start_8
    const-string v5, "ResourcesManager#createBaseActivityResources"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1014
    new-instance v6, Landroid/content/res/ResourcesKey;

    .line 1015
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 1018
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1023
    if-nez v2, :cond_1c

    const/4 v2, 0x0

    :goto_1a
    move-object v15, v2

    goto :goto_26

    :cond_1c
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_1a

    :goto_26
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v6 .. v15}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1024
    if-eqz p10, :cond_3a

    move-object/from16 v2, p10

    goto :goto_3e

    :cond_3a
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1031
    :goto_3e
    iget-object v5, v0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_7b

    .line 1033
    :try_start_41
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    .line 1034
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_78

    .line 1037
    move/from16 v12, p7

    move-object/from16 v13, p8

    :try_start_49
    invoke-virtual {v0, v1, v13, v12}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 1039
    iget-object v5, v0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_7b

    .line 1040
    :try_start_4f
    invoke-direct {v0, v1, v6, v2}, Landroid/app/ResourcesManager;->findResourcesForActivityLocked(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v7

    .line 1042
    if-eqz v7, :cond_5a

    .line 1043
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_75

    .line 1052
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1043
    return-object v7

    .line 1045
    :cond_5a
    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_75

    .line 1048
    :try_start_5b
    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p7, v2

    move-object/from16 p5, v5

    move-object/from16 p4, v6

    move-object/from16 p6, v7

    move-object/from16 p8, v8

    invoke-direct/range {p2 .. p8}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_7b

    .line 1052
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1048
    return-object v0

    .line 1045
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_7b

    .line 1034
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    .line 1052
    :catchall_7b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1053
    throw v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 733
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v1

    .line 735
    iget-object v2, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResourcesManager$ActivityResources;

    .line 736
    invoke-virtual {v3}, Landroid/app/ResourcesManager$ActivityResources;->countLiveReferences()I

    move-result v3

    add-int/2addr v1, v3

    .line 737
    goto :goto_13

    .line 738
    :cond_25
    nop

    .line 739
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v2

    .line 740
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_7c

    .line 742
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 743
    :try_start_34
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManager;->countLiveReferences(Ljava/util/Collection;)I

    move-result v0

    .line 744
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_79

    .line 746
    new-instance v3, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 747
    const/4 p2, 0x0

    :goto_47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge p2, v4, :cond_55

    .line 748
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 747
    add-int/lit8 p2, p2, 0x1

    goto :goto_47

    .line 750
    :cond_55
    const-string p1, "ResourcesManager:"

    invoke-virtual {v3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 752
    const-string/jumbo p1, "total apks: "

    invoke-virtual {v3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 754
    const-string/jumbo p1, "resources: "

    invoke-virtual {v3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 756
    const-string/jumbo p1, "resource impls: "

    invoke-virtual {v3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 758
    return-void

    .line 744
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p1

    .line 740
    :catchall_7c
    move-exception p1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p1
.end method

.method public greylist-max-o getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 4

    .line 530
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 531
    if-nez v0, :cond_8

    .line 533
    const/4 p1, 0x0

    return-object p1

    .line 535
    :cond_8
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public greylist-max-o getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    .line 447
    iget v0, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    sget-object v1, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .registers 7

    .line 455
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 456
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 457
    if-eqz v0, :cond_10

    .line 458
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 459
    :goto_11
    if-eqz v0, :cond_2f

    .line 460
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 461
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object p2

    .line 462
    iget v3, p0, Landroid/app/ResourcesManager;->mResDisplayId:I

    if-ne v3, p1, :cond_2a

    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 463
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    goto :goto_2b

    :cond_2a
    nop

    .line 461
    :goto_2b
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 464
    goto :goto_32

    .line 465
    :cond_2f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 467
    :goto_32
    return-object v1
.end method

.method public blacklist getRegisteredResourcePaths()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ResourcesManager$SharedLibraryAssets;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 1275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    const-wide/16 v7, 0x2000

    :try_start_8
    const-string v3, "ResourcesManager#getResources"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1276
    new-instance v9, Landroid/content/res/ResourcesKey;

    .line 1277
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 1280
    invoke-static/range {p4 .. p5}, Landroid/app/ResourcesManager;->combinedOverlayPaths([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1282
    if-eqz p7, :cond_1e

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, -0x1

    :goto_1f
    move v15, v3

    .line 1285
    const/4 v3, 0x0

    if-nez v2, :cond_27

    const/4 v2, 0x0

    :goto_24
    move-object/from16 v18, v2

    goto :goto_30

    :cond_27
    new-array v4, v3, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    goto :goto_24

    :goto_30
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v9 .. v18}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1286
    if-eqz p10, :cond_42

    move-object/from16 v5, p10

    goto :goto_47

    :cond_42
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v5, v2

    .line 1290
    :goto_47
    invoke-direct {v0, v9}, Landroid/app/ResourcesManager;->createApkAssetsSupplierNotLocked(Landroid/content/res/ResourcesKey;)Landroid/app/ResourcesManager$ApkAssetsSupplier;

    move-result-object v6

    .line 1292
    if-eqz p7, :cond_54

    .line 1293
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v9, v2}, Landroid/app/ResourcesManager;->rebaseKeyForDisplay(Landroid/content/res/ResourcesKey;I)V

    .line 1297
    :cond_54
    if-eqz v1, :cond_6c

    .line 1298
    move v2, v3

    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, v9, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1299
    if-eqz p7, :cond_61

    const/4 v2, 0x1

    :cond_61
    invoke-direct {v0, v1, v9, v2}, Landroid/app/ResourcesManager;->rebaseKeyForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Z)V

    .line 1300
    move-object/from16 v4, p7

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Landroid/app/ResourcesManager;->createResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;Ljava/lang/Integer;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1302
    goto :goto_70

    .line 1303
    :cond_6c
    invoke-direct {v0, v9, v5, v6}, Landroid/app/ResourcesManager;->createResources(Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_75

    .line 1305
    :goto_70
    nop

    .line 1307
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1305
    return-object v0

    .line 1307
    :catchall_75
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1308
    throw v0
.end method

.method public blacklist initializeApplicationPaths(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 543
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 545
    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->addApplicationPathsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    .line 547
    :cond_e
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public greylist-max-o invalidatePath(Ljava/lang/String;)V
    .registers 8

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    iget-object v1, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_8
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_36

    .line 409
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 410
    invoke-virtual {v3, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 411
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesImpl;

    .line 412
    if-eqz v3, :cond_33

    .line 413
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 417
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_c5

    .line 418
    const/4 v1, 0x0

    move v2, v1

    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 419
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 421
    :cond_4b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v3, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 423
    :try_start_53
    iget-object v4, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5b
    if-ltz v4, :cond_87

    .line 424
    iget-object v5, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ResourcesManager$ApkKey;

    .line 425
    iget-object v5, v5, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 426
    iget-object v5, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 427
    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ApkAssets;

    goto :goto_7f

    :cond_7e
    const/4 v5, 0x0

    .line 428
    :goto_7f
    if-eqz v5, :cond_84

    .line 429
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_84
    add-int/lit8 v4, v4, -0x1

    goto :goto_5b

    .line 433
    :cond_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_53 .. :try_end_88} :catchall_c2

    .line 434
    nop

    :goto_89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9b

    .line 435
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ApkAssets;

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->close()V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 437
    :cond_9b
    const-string v1, "ResourcesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalidated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " asset managers that referenced "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 433
    :catchall_c2
    move-exception p1

    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p1

    .line 417
    :catchall_c5
    move-exception p1

    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw p1
.end method

.method public greylist-max-o isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .registers 7

    .line 881
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ResourcesManager$ActivityResources;

    goto :goto_11

    .line 894
    :catchall_e
    move-exception p1

    goto :goto_37

    .line 883
    :cond_10
    const/4 p1, 0x0

    .line 884
    :goto_11
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1b

    .line 885
    if-nez p2, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    monitor-exit v0

    return v1

    .line 889
    :cond_1b
    iget-object v3, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    if-eqz p2, :cond_32

    iget-object v3, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_32

    iget-object p1, p1, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 891
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result p1

    if-nez p1, :cond_32

    goto :goto_34

    :cond_32
    move v1, v2

    goto :goto_35

    :cond_34
    :goto_34
    nop

    :goto_35
    monitor-exit v0

    .line 889
    return v1

    .line 894
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_e

    throw p1
.end method

.method public blacklist loadApkAssets(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 577
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 578
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_58

    .line 579
    if-eqz v1, :cond_1d

    .line 580
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ApkAssets;

    .line 581
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 582
    return-object v0

    .line 586
    :cond_1d
    nop

    .line 587
    iget-boolean v0, p1, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-eqz v0, :cond_24

    .line 588
    const/4 v0, 0x2

    goto :goto_25

    .line 587
    :cond_24
    const/4 v0, 0x0

    .line 590
    :goto_25
    iget-object v1, p0, Landroid/app/ResourcesManager;->mApplicationOwnedApks:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 591
    or-int/lit8 v0, v0, 0x10

    .line 593
    :cond_31
    iget-boolean v1, p1, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-eqz v1, :cond_40

    .line 594
    iget-object v1, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/ResourcesManager;->overlayPathToIdmapPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    goto :goto_46

    .line 596
    :cond_40
    iget-object v1, p1, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 599
    :goto_46
    iget-object v1, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 600
    :try_start_49
    iget-object v2, p0, Landroid/app/ResourcesManager;->mCachedApkAssets:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    monitor-exit v1

    .line 603
    return-object v0

    .line 601
    :catchall_55
    move-exception p1

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_55

    throw p1

    .line 578
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1
.end method

.method public blacklist registerAllResourcesReference(Landroid/content/res/Resources;)V
    .registers 6

    .line 2099
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v1, v2}, Landroid/app/ResourcesManager;->cleanupReferences(Ljava/util/ArrayList;Ljava/lang/ref/ReferenceQueue;)V

    .line 2101
    iget-object v1, p0, Landroid/app/ResourcesManager;->mAllResourceReferences:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/app/ResourcesManager;->mAllResourceReferencesQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    monitor-exit v0

    .line 2104
    return-void

    .line 2103
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public blacklist registerResourcePaths(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 152
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 154
    :goto_11
    new-instance v2, Landroid/app/ResourcesManager$SharedLibraryAssets;

    invoke-direct {v2, p2, v0, v1}, Landroid/app/ResourcesManager$SharedLibraryAssets;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;Landroid/app/ResourcesManager-IA;)V

    .line 155
    iget-object p2, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 156
    :try_start_19
    iget-object v0, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 157
    const-string v0, "ResourcesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package resources\' paths for uniqueId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has already been registered, this is a no-op."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit p2

    return-void

    .line 161
    :cond_41
    iget-object v0, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->appendLibAssetsLocked(Landroid/app/ResourcesManager$SharedLibraryAssets;)V

    .line 163
    const-string p1, "ResourcesManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The following library key has been added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v2}, Landroid/app/ResourcesManager$SharedLibraryAssets;->getResourcesKey()Landroid/content/res/ResourcesKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit p2

    .line 166
    return-void

    .line 165
    :catchall_67
    move-exception p1

    monitor-exit p2
    :try_end_69
    .catchall {:try_start_19 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public blacklist updateResourceImplAssetsWithRegisteredLibs(Landroid/content/res/AssetManager;Z)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 181
    if-eqz v1, :cond_4c

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v2

    if-ne p1, v2, :cond_12

    goto :goto_4c

    .line 184
    :cond_12
    new-instance v2, Landroid/app/ResourcesManager$PathCollector;

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->resourcesKeyFromAssets(Landroid/content/res/AssetManager;)Landroid/content/res/ResourcesKey;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ResourcesManager$PathCollector;-><init>(Landroid/content/res/ResourcesKey;)V

    .line 185
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_30

    .line 186
    iget-object v4, p0, Landroid/app/ResourcesManager;->mSharedLibAssetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ResourcesManager$SharedLibraryAssets;

    invoke-virtual {v4}, Landroid/app/ResourcesManager$SharedLibraryAssets;->getResourcesKey()Landroid/content/res/ResourcesKey;

    move-result-object v4

    .line 187
    invoke-virtual {v2, v4}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 189
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_57

    .line 190
    invoke-virtual {v2}, Landroid/app/ResourcesManager$PathCollector;->isSameAsOriginal()Z

    move-result v0

    if-nez v0, :cond_42

    .line 204
    invoke-virtual {v2}, Landroid/app/ResourcesManager$PathCollector;->collectedKey()Landroid/content/res/ResourcesKey;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManager;->extractApkKeys(Landroid/content/res/ResourcesKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/AssetManager;->addApkKeys(Ljava/util/List;Z)V

    .line 206
    :cond_42
    new-instance p2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 182
    :cond_4c
    :goto_4c
    :try_start_4c
    new-instance p2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    .line 189
    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_57

    throw p1
.end method

.method public blacklist updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 22

    .line 1324
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-wide/16 v3, 0x2000

    :try_start_8
    const-string v5, "ResourcesManager#updateResourcesForActivity"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1326
    const/4 v5, -0x1

    if-eq v2, v5, :cond_d8

    .line 1329
    iget-object v5, v0, Landroid/app/ResourcesManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_e4

    .line 1330
    nop

    .line 1331
    :try_start_14
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v6

    .line 1333
    iget v7, v6, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v7, v2, :cond_20

    move v7, v8

    goto :goto_21

    :cond_20
    move v7, v9

    .line 1334
    :goto_21
    iget-object v10, v6, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v10, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    if-nez v7, :cond_30

    .line 1337
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_d1

    .line 1426
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1337
    return-void

    .line 1342
    :cond_30
    :try_start_30
    new-instance v7, Landroid/content/res/Configuration;

    iget-object v10, v6, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v7, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1345
    if-eqz v1, :cond_3f

    .line 1346
    iget-object v7, v6, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_44

    .line 1348
    :cond_3f
    iget-object v7, v6, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->unset()V

    .line 1352
    :goto_44
    iput v2, v6, Landroid/app/ResourcesManager$ActivityResources;->overrideDisplayId:I

    .line 1357
    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 1372
    iget-object v7, v6, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1373
    move v10, v9

    :goto_50
    if-ge v10, v7, :cond_c9

    .line 1374
    iget-object v11, v6, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 1375
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ResourcesManager$ActivityResource;

    .line 1377
    iget-object v12, v11, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Resources;

    .line 1378
    if-nez v12, :cond_69

    .line 1379
    move-object/from16 v13, p1

    move-wide/from16 v16, v3

    goto :goto_c4

    .line 1382
    :cond_69
    move-object/from16 v13, p1

    invoke-direct {v0, v13, v11, v1, v2}, Landroid/app/ResourcesManager;->rebaseActivityOverrideConfig(Landroid/os/IBinder;Landroid/app/ResourcesManager$ActivityResource;Landroid/content/res/Configuration;I)Landroid/content/res/ResourcesKey;

    move-result-object v11

    .line 1384
    if-nez v11, :cond_74

    .line 1385
    move-wide/from16 v16, v3

    goto :goto_c4

    .line 1390
    :cond_74
    nop

    .line 1391
    const/4 v14, 0x0

    invoke-direct {v0, v11, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplPairForKeyLocked(Landroid/content/res/ResourcesKey;Landroid/app/ResourcesManager$ApkAssetsSupplier;)Landroid/util/Pair;

    move-result-object v15

    .line 1393
    if-eqz v15, :cond_80

    iget-object v14, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/content/res/ResourcesImpl;
    :try_end_80
    .catchall {:try_start_30 .. :try_end_80} :catchall_d1

    .line 1394
    :cond_80
    if-nez v14, :cond_85

    .line 1395
    move-wide/from16 v16, v3

    goto :goto_c4

    .line 1397
    :cond_85
    move-wide/from16 v16, v3

    :try_start_87
    invoke-virtual {v12}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-eq v14, v3, :cond_90

    .line 1400
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 1405
    :cond_90
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 1407
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->ignoreNonPublicConfigDiffForResourcesKey()Z

    move-result v4

    if-eqz v4, :cond_a0

    if-eqz v3, :cond_a0

    if-eq v3, v11, :cond_a0

    move v4, v8

    goto :goto_a1

    :cond_a0
    move v4, v9

    .line 1409
    :goto_a1
    if-eqz v4, :cond_c4

    .line 1414
    iget-object v3, v3, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3, v4}, Landroid/app/ResourcesManager;->updateWindowConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1416
    invoke-virtual {v14}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3, v4}, Landroid/app/ResourcesManager;->updateWindowConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 1418
    nop

    .line 1419
    invoke-virtual {v14}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 1418
    invoke-static {v3, v4}, Landroid/app/ResourcesManager;->updateWindowConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 1373
    :cond_c4
    :goto_c4
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, v16

    goto :goto_50

    .line 1424
    :cond_c9
    move-wide/from16 v16, v3

    monitor-exit v5
    :try_end_cc
    .catchall {:try_start_87 .. :try_end_cc} :catchall_d6

    .line 1426
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 1427
    nop

    .line 1428
    return-void

    .line 1424
    :catchall_d1
    move-exception v0

    move-wide/from16 v16, v3

    :goto_d4
    :try_start_d4
    monitor-exit v5
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d6

    :try_start_d5
    throw v0

    :catchall_d6
    move-exception v0

    goto :goto_d4

    .line 1327
    :cond_d8
    move-wide/from16 v16, v3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId can not be INVALID_DISPLAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e2
    .catchall {:try_start_d5 .. :try_end_e2} :catchall_e2

    .line 1426
    :catchall_e2
    move-exception v0

    goto :goto_e7

    :catchall_e4
    move-exception v0

    move-wide/from16 v16, v3

    :goto_e7
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 1427
    throw v0
.end method
