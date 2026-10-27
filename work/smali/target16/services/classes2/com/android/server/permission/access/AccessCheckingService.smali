.class public final Lcom/android/server/permission/access/AccessCheckingService;
.super Lcom/android/server/SystemService;
.source "AccessCheckingService.kt"


# instance fields
.field private appFunctionAccessService:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;

.field private appOpService:Lcom/android/server/permission/access/appop/AppOpService;

.field private packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field private permissionService:Lcom/android/server/permission/access/permission/PermissionService;

.field private final persistence:Lcom/android/server/permission/access/AccessPersistence;

.field private final policy:Lcom/android/server/permission/access/AccessPolicy;

.field private volatile state:Lcom/android/server/permission/access/AccessState;

.field private final stateLock:Ljava/lang/Object;

.field private systemConfig:Lcom/android/server/SystemConfig;

.field private userManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    .line 54
    new-instance p1, Lcom/android/server/permission/access/AccessPolicy;

    invoke-direct {p1}, Lcom/android/server/permission/access/AccessPolicy;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 56
    new-instance v0, Lcom/android/server/permission/access/AccessPersistence;

    invoke-direct {v0, p1}, Lcom/android/server/permission/access/AccessPersistence;-><init>(Lcom/android/server/permission/access/AccessPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    return-void
.end method

.method public static final synthetic access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    return-object p0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    return-void
.end method

.method private final getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerLocal;",
            ")",
            "Lcom/android/server/permission/jarjar/kotlin/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;>;"
        }
    .end annotation

    .line 261
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_4
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_15
    move-exception p1

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedMap;"
        }
    .end annotation

    .line 148
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_10
    if-ge v3, v2, :cond_47

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 150
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    .line 330
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_39

    goto :goto_41

    .line 152
    :cond_39
    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v7, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    invoke-virtual {p0, v6, v7}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_41
    check-cast v7, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 84
    invoke-virtual {v7, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_47
    return-object p0
.end method

.method private final getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            ")",
            "Lcom/android/server/permission/access/immutable/IntMap;"
        }
    .end annotation

    .line 265
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 267
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {p0, v0, v3}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 269
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {p0, v0, v3}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/4 v0, 0x4

    .line 274
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {p0, v0, v3}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    .line 276
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {p0, v1, v0}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/4 v0, 0x6

    .line 278
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xa

    .line 283
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 285
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xc

    .line 290
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0xf

    .line 295
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0x10

    .line 297
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {p0, v0, v1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    const/16 v0, 0x11

    .line 299
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-static {p0, v0, p1}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    return-object p0
.end method

.method private final getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedListSet;"
        }
    .end annotation

    .line 131
    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    const-string v0, "android"

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object p1

    const-string v0, "android.hardware.type.automotive"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 138
    const-string/jumbo p1, "ro.android.car.carservice.package"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    :cond_28
    return-object p0
.end method

.method private final isLeanback(Lcom/android/server/SystemConfig;)Z
    .registers 2

    .line 127
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object p0

    const-string p1, "android.software.leanback"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;
    .registers 3

    .line 322
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->getSchemePolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p0

    return-object p0
.end method

.method public final getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;",
            ")TT;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    if-nez p0, :cond_f

    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-interface {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .registers 14

    .line 86
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 88
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 87
    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 89
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 90
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 92
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "userManagerService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->MutableIntSet([I)Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v4

    .line 93
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_3f

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3f
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 94
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_5c

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5c
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 95
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    const-string/jumbo v2, "systemConfig"

    if-nez v0, :cond_6b

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6b
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->isLeanback(Lcom/android/server/SystemConfig;)Z

    move-result v8

    .line 96
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_77

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_77
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v9

    .line 98
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_83

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_83
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v10

    .line 99
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_8f

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8f
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v11

    .line 100
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_9b

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9b
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v12

    .line 102
    new-instance v3, Lcom/android/server/permission/access/MutableAccessState;

    invoke-direct {v3}, Lcom/android/server/permission/access/MutableAccessState;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/permission/access/AccessPolicy;->initialize(Lcom/android/server/permission/access/MutableAccessState;Lcom/android/server/permission/access/immutable/IntSet;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessPersistence;->initialize()V

    .line 116
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/AccessPersistence;->read(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 117
    iput-object v3, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    .line 119
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    if-nez v0, :cond_bf

    const-string v0, "appOpService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_bf
    invoke-virtual {v0}, Lcom/android/server/permission/access/appop/AppOpService;->initialize()V

    .line 120
    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    if-nez p0, :cond_cd

    const-string/jumbo p0, "permissionService"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ce

    :cond_cd
    move-object v1, p0

    :goto_ce
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/PermissionService;->initialize()V

    return-void
.end method

.method public final mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 312
    :try_start_6
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_42

    .line 313
    :cond_16
    :goto_16
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-interface {p1, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_14

    .line 311
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :goto_42
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    monitor-exit v0

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p0
.end method

.method public final onAgentAllowlistChanged$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/content/pm/SignedPackage;",
            ">;)V"
        }
    .end annotation

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_5
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_3f

    .line 313
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 314
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 252
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onAgentAllowlistChanged(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_13

    .line 311
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0

    throw p0
.end method

.method public final onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V
    .registers 11

    .line 188
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 189
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_29

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_32
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    :cond_42
    move-object v1, v0

    .line 313
    :goto_43
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 191
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    .line 192
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/AccessPolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_6c
    .catchall {:try_start_32 .. :try_end_6c} :catchall_3f

    .line 311
    monitor-exit v2

    return-void

    :goto_6e
    monitor-exit v2

    throw p0
.end method

.method public final onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .registers 13

    .line 219
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 220
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_29

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_32
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :cond_42
    move-object v1, v0

    .line 313
    :goto_43
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 222
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    .line 223
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_6d
    .catchall {:try_start_32 .. :try_end_6d} :catchall_3f

    .line 311
    monitor-exit v2

    return-void

    :goto_6f
    monitor-exit v2

    throw p0
.end method

.method public final onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .registers 13

    .line 203
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 204
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_29

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_32
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :cond_42
    move-object v1, v0

    .line 313
    :goto_43
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 206
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    .line 207
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_6d
    .catchall {:try_start_32 .. :try_end_6d} :catchall_3f

    .line 311
    monitor-exit v2

    return-void

    :goto_6f
    monitor-exit v2

    throw p0
.end method

.method public final onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V
    .registers 15

    .line 235
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 236
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_29

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_32
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_70

    :cond_42
    move-object v1, v0

    .line 313
    :goto_43
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 238
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    move v10, p3

    .line 239
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_6e
    .catchall {:try_start_32 .. :try_end_6e} :catchall_3f

    .line 311
    monitor-exit v2

    return-void

    :goto_70
    monitor-exit v2

    throw p0
.end method

.method public onStart()V
    .registers 4

    .line 68
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    .line 69
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    .line 70
    new-instance v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appFunctionAccessService:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;

    .line 72
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    const/4 v1, 0x0

    if-nez v0, :cond_20

    const-string v0, "appOpService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_20
    const-class v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 73
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    if-nez v2, :cond_32

    const-string/jumbo v2, "permissionService"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_32
    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 75
    const-class v0, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    .line 76
    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->appFunctionAccessService:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;

    if-nez v2, :cond_41

    const-string v2, "appFunctionAccessService"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_42

    :cond_41
    move-object v1, v2

    .line 74
    :goto_42
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    .line 79
    const-class p0, Lcom/android/server/permission/PermissionManagerLocal;

    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    .line 172
    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_29

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_32
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_70

    :cond_42
    move-object v1, v0

    .line 313
    :goto_43
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v1, v0}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 174
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    .line 175
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_6e
    .catchall {:try_start_32 .. :try_end_6e} :catchall_3f

    .line 311
    monitor-exit v2

    return-void

    :goto_70
    monitor-exit v2

    throw p0
.end method

.method public final onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V
    .registers 5

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_5
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_3f

    .line 313
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 314
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 256
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/AccessPolicy;->onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_13

    .line 311
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0

    throw p0
.end method

.method public final onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .registers 6

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_5
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_3f

    .line 313
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 314
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 159
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_13

    .line 311
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0

    throw p0
.end method

.method public final onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .registers 6

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 312
    :try_start_5
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_3f

    .line 313
    :cond_15
    :goto_15
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 314
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 163
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_13

    .line 311
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0

    throw p0
.end method
