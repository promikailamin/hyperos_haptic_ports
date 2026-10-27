.class public final Lcom/android/server/permission/access/appop/AppOpService;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/server/appop/AppOpsCheckingServiceInterface;


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appop/AppOpService$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

.field public final backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

.field public final context:Landroid/content/Context;

.field public final devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field public final foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

.field public foregroundableOps:Landroid/util/SparseBooleanArray;

.field public handler:Landroid/os/Handler;

.field public volatile listeners:Landroid/util/ArraySet;

.field public final listenersLock:Ljava/lang/Object;

.field public final packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

.field public final permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field public final runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

.field public final runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appop/AppOpService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService;->Companion:Lcom/android/server/permission/access/appop/AppOpService$Companion;

    .line 588
    const-class v0, Lcom/android/server/permission/access/appop/AppOpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 55
    const-string/jumbo v0, "package"

    const-string v1, "app-op"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.PackageAppOpPolicy"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    .line 57
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 59
    const-string/jumbo v1, "permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 61
    const-string v1, "device-permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 63
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    .line 69
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 71
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 75
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 79
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 83
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    .line 84
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listenersLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAppIdPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    return-object p0
.end method

.method public static final synthetic access$getBackgroundToForegroundPermissionNames$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getForegroundToBackgroundPermissionName$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static final synthetic access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    return-object p0
.end method

.method public static final synthetic access$getPermissionPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/AccessCheckingService;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    return-object p0
.end method


# virtual methods
.method public addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;)Z
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 377
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 378
    iput-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 379
    monitor-exit v0

    return p1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public clearAllModes()V
    .registers 1

    .line 0
    return-void
.end method

.method public final createPermissionAppOpMapping()V
    .registers 8

    .line 116
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1b
    const/16 v2, 0xaa

    if-ge v1, v2, :cond_a7

    .line 120
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2c

    .line 121
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 116
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 123
    :cond_2c
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 126
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_a3

    .line 128
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_80

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 49
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    if-ne v5, v4, :cond_a3

    .line 133
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 99
    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_a3

    .line 139
    iget-object v5, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 116
    invoke-virtual {v5, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 140
    iget-object v4, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v4, p0, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    .line 604
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7a

    .line 143
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 607
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_7a
    check-cast v5, Landroid/util/ArraySet;

    .line 144
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 130
    :cond_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing permission definition for permission \""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" associated with app op "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b

    :cond_a7
    return-void
.end method

.method public final evaluateModeFromPermissionFlags(II)I
    .registers 3

    .line 245
    sget-object p0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 246
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x4

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
    .registers 12

    .line 345
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModes(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_31

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_13
    if-ge v6, v5, :cond_31

    .line 41
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    if-ne v8, v2, :cond_2e

    .line 348
    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v7

    .line 116
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 351
    :cond_31
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    :goto_37
    if-ge v3, v5, :cond_4c

    .line 41
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 352
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/permission/access/appop/AppOpService;->getUidMode(ILjava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_49

    .line 116
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4c
    return-object v0
.end method

.method public getForegroundOps(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .registers 12

    .line 360
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_31

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_13
    if-ge v6, v5, :cond_31

    .line 41
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    if-ne v8, v2, :cond_2e

    .line 363
    invoke-static {v7}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v7

    .line 116
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 366
    :cond_31
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundableOps:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    :goto_37
    if-ge v3, v5, :cond_4c

    .line 41
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 367
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageMode(Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v2, :cond_49

    .line 116
    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4c
    return-object v0
.end method

.method public getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
    .registers 3

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appop/AppOpService;->getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public getNonDefaultUidModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
    .registers 13

    .line 153
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 154
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 155
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    const-string/jumbo p1, "state"

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1a
    invoke-direct {v1, p1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 157
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object v0

    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/appop/AppOpService;->opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;

    move-result-object p1

    .line 158
    iget-object v6, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v0, 0x0

    move v8, v0

    :goto_35
    if-ge v8, v7, :cond_5c

    .line 41
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v9

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 160
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p2

    if-eq p0, p2, :cond_57

    .line 116
    invoke-virtual {p1, v9, p0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_57
    add-int/lit8 v8, v8, 0x1

    move-object p0, v0

    move-object p2, v5

    goto :goto_35

    :cond_5c
    return-object p1
.end method

.method public getPackageMode(Ljava/lang/String;II)I
    .registers 6

    .line 288
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p2

    .line 289
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_15
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 290
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPackageModes(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 295
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_22
    return-object v2
.end method

.method public getUidMode(ILjava/lang/String;I)I
    .registers 10

    .line 179
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 180
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 181
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    const/4 p3, 0x0

    .line 184
    const-string/jumbo v0, "state"

    if-nez v4, :cond_34

    .line 185
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_29

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object p3, p2

    :goto_2a
    invoke-direct {v1, p3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 185
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    return p0

    .line 187
    :cond_34
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    if-nez p1, :cond_42

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    move-object p3, p1

    :goto_43
    invoke-direct {v1, p3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v0, p0

    move-object v5, p2

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 206
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 207
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_23

    .line 210
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    move-object v5, p5

    .line 211
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    move-object p2, v7

    goto :goto_2e

    :cond_23
    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object p2, p4

    move-object v5, p5

    .line 214
    iget-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p1, v3, v4, v6, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p1

    .line 216
    :goto_2e
    iget-object p3, p0, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_49

    if-eqz v0, :cond_42

    .line 220
    iget-object v2, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 221
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result p3

    goto :goto_4b

    .line 224
    :cond_42
    iget-object p3, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 225
    invoke-virtual {p3, v3, v4, v6, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p3

    goto :goto_4b

    :cond_49
    const/16 p3, 0x10

    .line 231
    :goto_4b
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    move-result p1

    if-eq p1, v1, :cond_52

    goto :goto_5a

    .line 237
    :cond_52
    sget-object p3, Lcom/android/server/permission/access/permission/PermissionService;->Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

    invoke-virtual {p3, p2}, Lcom/android/server/permission/access/permission/PermissionService$Companion;->getFullerPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5b

    :goto_5a
    return p1

    :cond_5b
    move-object v2, p0

    move-object v7, v5

    move v5, v6

    move-object v6, p2

    .line 238
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/appop/AppOpService;->getUidModeFromPermissionState(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUidModes(I)Landroid/util/ArrayMap;
    .registers 6

    .line 194
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 195
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 196
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1a

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1a
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 196
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpModes(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    :cond_2a
    return-object v3
.end method

.method public getUidsWithOpMode(III)Ljava/util/List;
    .registers 6

    .line 174
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_15
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 175
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getUidsWithOpMode(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final initialize()V
    .registers 3

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->handler:Landroid/os/Handler;

    .line 90
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    new-instance v1, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->addOnAppOpModeChangedListener(Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    new-instance v1, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->addOnAppOpModeChangedListener(Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;)V

    return-void
.end method

.method public final opNameMapToOpSparseArray(Landroid/util/ArrayMap;)Landroid/util/SparseIntArray;
    .registers 6

    if-nez p1, :cond_8

    .line 330
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    return-object p0

    .line 332
    :cond_8
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 40
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_32

    .line 41
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/String;

    .line 334
    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_32
    return-object p0
.end method

.method public readState()V
    .registers 1

    .line 0
    return-void
.end method

.method public removePackage(Ljava/lang/String;I)Z
    .registers 9

    .line 321
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_c
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_4b

    .line 313
    :cond_1c
    :goto_1c
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 314
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v3, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 323
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    move-result-object p0

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_1a

    .line 311
    monitor-exit v2

    .line 325
    iget-boolean p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    .line 311
    :goto_4b
    monitor-exit v2

    throw p0
.end method

.method public removeUid(I)V
    .registers 8

    .line 315
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 316
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 317
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 312
    :try_start_f
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_1f

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_49

    .line 313
    :cond_1f
    :goto_1f
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 314
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v3, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getAppIdPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    move-result-object p0

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->removeAppOpModes(Lcom/android/server/permission/access/MutateStateScope;II)Z

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v1, v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_1d

    .line 311
    monitor-exit v2

    return-void

    :goto_49
    monitor-exit v2

    throw p0
.end method

.method public setPackageMode(Ljava/lang/String;III)V
    .registers 13

    .line 298
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 302
    sget-object p0, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(packageName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\'s appop state for runtime op "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be set directly."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 301
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 309
    :cond_3d
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 312
    :try_start_44
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_55

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_55

    :catchall_52
    move-exception v0

    move-object p0, v0

    goto :goto_82

    .line 313
    :cond_55
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    .line 314
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 310
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPackagePolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    move-result-object v0

    move-object v2, p1

    move v5, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)Z

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p2, v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_80
    .catchall {:try_start_44 .. :try_end_80} :catchall_52

    .line 311
    monitor-exit v6

    return-void

    :goto_82
    monitor-exit v6

    throw p0
.end method

.method public setUidMode(ILjava/lang/String;II)Z
    .registers 12

    .line 256
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 257
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 258
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->runtimeAppOpToPermissionNames:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_94

    .line 262
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_26

    const-string/jumbo p2, "state"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_27

    :cond_26
    move-object v0, p2

    :goto_27
    invoke-direct {v1, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 262
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->getAppOpMode(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    if-eq p0, p4, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    move v0, p2

    :goto_36
    if-eqz v0, :cond_3b

    .line 265
    const-string v1, "Blocked"

    goto :goto_3d

    :cond_3b
    const-string v1, "Ignored"

    .line 268
    :goto_3d
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    .line 269
    invoke-static {p4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p4

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 271
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setUidMode call for runtime permission app op: uid = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", code = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mode = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", callingUid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldMode = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_8e

    .line 273
    sget-object p1, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_93

    .line 275
    :cond_8e
    sget-object p1, Lcom/android/server/permission/access/appop/AppOpService;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_93
    return p2

    .line 280
    :cond_94
    new-instance p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 281
    iget-object p2, p0, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 312
    :try_start_a0
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-nez v1, :cond_b0

    const-string/jumbo v1, "state"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b1

    :catchall_ad
    move-exception v0

    move-object p0, v0

    goto :goto_e1

    :cond_b0
    move-object v0, v1

    .line 313
    :goto_b1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    .line 314
    new-instance v1, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v1, v0, v6}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 282
    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getAppIdPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    move-result-object v0

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {p2, v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p2, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p2, v6}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_dd
    .catchall {:try_start_a0 .. :try_end_dd} :catchall_ad

    .line 311
    monitor-exit p3

    .line 284
    iget-boolean p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0

    .line 311
    :goto_e1
    monitor-exit p3

    throw p0
.end method

.method public shutdown()V
    .registers 1

    .line 0
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 109
    invoke-virtual {p0}, Lcom/android/server/permission/access/appop/AppOpService;->createPermissionAppOpMapping()V

    .line 110
    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V

    .line 112
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService;->devicePermissionPolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;)V

    return-void
.end method

.method public writeState()V
    .registers 1

    .line 0
    return-void
.end method
