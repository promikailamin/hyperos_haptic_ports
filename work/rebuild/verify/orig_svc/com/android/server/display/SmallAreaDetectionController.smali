.class final Lcom/android/server/display/SmallAreaDetectionController;
.super Ljava/lang/Object;
.source "SmallAreaDetectionController.java"


# instance fields
.field public final mAllowPkgMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAllowPkgMap(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/provider/DeviceConfigInterface;)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mContext:Landroid/content/Context;

    .line 65
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 67
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;-><init>(Lcom/android/server/display/SmallAreaDetectionController;Lcom/android/server/display/SmallAreaDetectionController-IA;)V

    .line 66
    const-string v3, "display_manager"

    invoke-interface {p2, v3, v0, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 69
    new-instance p2, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;

    invoke-direct {p2, p0, v2}, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;-><init>(Lcom/android/server/display/SmallAreaDetectionController;Lcom/android/server/display/SmallAreaDetectionController-IA;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/display/SmallAreaDetectionController;
    .registers 4

    .line 54
    new-instance v0, Lcom/android/server/display/SmallAreaDetectionController;

    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/SmallAreaDetectionController;-><init>(Landroid/content/Context;Landroid/provider/DeviceConfigInterface;)V

    .line 56
    const-string p0, "display_manager"

    const-string/jumbo v2, "small_area_detection_allowlist"

    invoke-interface {v1, p0, v2}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/server/display/SmallAreaDetectionController;->updateAllowlist(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nativeSetSmallAreaDetectionThreshold(IF)V
.end method

.method private static native nativeUpdateSmallAreaDetection([I[F)V
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 136
    const-string v0, "Small area detection allowlist:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v0, "-------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v0, "  Packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_12
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " threshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    :catchall_4b
    move-exception p0

    goto :goto_4f

    .line 143
    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_12 .. :try_end_50} :catchall_4b

    throw p0
.end method

.method public final putToAllowlist(Ljava/lang/String;)V
    .registers 4

    .line 95
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 96
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    .line 98
    :try_start_b
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 99
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 100
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-void
.end method

.method public setSmallAreaDetectionThreshold(IF)V
    .registers 3

    .line 132
    invoke-static {p1, p2}, Lcom/android/server/display/SmallAreaDetectionController;->nativeSetSmallAreaDetectionThreshold(IF)V

    return-void
.end method

.method public updateAllowlist(Ljava/lang/String;)V
    .registers 7

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    .line 78
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 79
    array-length v3, p1

    :goto_17
    if-ge v2, v3, :cond_3b

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/display/SmallAreaDetectionController;->putToAllowlist(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catchall_21
    move-exception p0

    goto :goto_4f

    .line 81
    :cond_23
    iget-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x10700e1

    .line 82
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 83
    array-length v3, p1

    :goto_31
    if-ge v2, v3, :cond_3b

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/display/SmallAreaDetectionController;->putToAllowlist(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 86
    :cond_3b
    iget-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_45

    monitor-exit v1

    return-void

    .line 87
    :cond_45
    iget-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_21

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/display/SmallAreaDetectionController;->updateSmallAreaDetection(Ljava/util/Map;)V

    return-void

    .line 88
    :goto_4f
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_21

    throw p0
.end method

.method public final updateSmallAreaDetection(Ljava/util/Map;)V
    .registers 7

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 111
    iget-object v4, p0, Lcom/android/server/display/SmallAreaDetectionController;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 113
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    .line 117
    :cond_36
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 118
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 119
    :goto_43
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 120
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, p1, v2

    .line 121
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 123
    :cond_5e
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/SmallAreaDetectionController;->updateSmallAreaDetection([I[F)V

    return-void
.end method

.method public updateSmallAreaDetection([I[F)V
    .registers 3

    .line 128
    invoke-static {p1, p2}, Lcom/android/server/display/SmallAreaDetectionController;->nativeUpdateSmallAreaDetection([I[F)V

    return-void
.end method
