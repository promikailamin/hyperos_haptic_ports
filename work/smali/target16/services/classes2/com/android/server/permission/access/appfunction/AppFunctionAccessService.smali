.class public final Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;
.super Ljava/lang/Object;
.source "AppFunctionAccessService.kt"

# interfaces
.implements Landroid/app/appfunctions/AppFunctionAccessServiceInterface;


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field public permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

.field public final policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

.field public final pregrants:Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;

.field public final service:Lcom/android/server/permission/access/AccessCheckingService;

.field public userManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->Companion:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService$Companion;

    .line 323
    const-class v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 44
    const-string/jumbo v0, "uid"

    const-string v1, "app-id-app-function-permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.appfunction.AppIdAppFunctionAccessPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    .line 46
    new-instance v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;-><init>(Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->pregrants:Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;

    .line 48
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;)Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    return-object p0
.end method

.method public static synthetic filterPackageState$default(Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/android/server/pm/pkg/PackageState;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 306
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->filterPackageState(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;I)V
    .registers 4

    .line 267
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    if-nez p0, :cond_b

    const-string/jumbo p0, "permissionEnforcer"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0, p1}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    return-void
.end method

.method public final filterPackageNames(Ljava/util/List;I)Ljava/util/List;
    .registers 14

    .line 296
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    .line 297
    :try_start_10
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v2, 0x0

    move v10, v2

    :goto_1a
    if-ge v10, v9, :cond_42

    .line 39
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p2

    .line 300
    invoke-static/range {v2 .. v8}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->filterPackageState$default(Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_36

    goto :goto_3d

    .line 299
    :cond_36
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :cond_3d
    :goto_3d
    add-int/lit8 v10, v10, 0x1

    move-object p0, v2

    move p2, v5

    goto :goto_1a

    .line 297
    :cond_42
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_3a

    .line 296
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :goto_4a
    :try_start_4a
    throw p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    move-object p1, v0

    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final filterPackageState(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .registers 5

    .line 312
    invoke-interface {p1, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 313
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_12

    :cond_11
    return-object p0

    :cond_12
    :goto_12
    if-eqz p4, :cond_2d

    .line 315
    sget-object p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unknown package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccessFlags(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAccessRequestState(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 5

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public final getFilteredPackageState(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    .line 292
    :try_start_10
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->filterPackageState(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 291
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_18
    move-exception p0

    :try_start_19
    throw p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    invoke-static {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getValidAgents(I)Ljava/util/List;
    .registers 6

    .line 223
    const-string v0, "getValidAgents"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->userExists(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 224
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 226
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;I)V

    .line 227
    iget-object v1, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const-string/jumbo v1, "permissionEnforcer"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 229
    :cond_1c
    const-string v3, "android.permission.MANAGE_APP_FUNCTION_ACCESS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v1, v0, v3}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    move-object v2, v0

    :goto_37
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->getAgents(Lcom/android/server/permission/access/GetStateScope;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->filterPackageNames(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValidTargets(I)Ljava/util/List;
    .registers 6

    .line 237
    const-string v0, "getValidTargets"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->userExists(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 238
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 240
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->enforceCallingOrSelfCrossUserPermission(Ljava/lang/String;I)V

    .line 241
    iget-object v1, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->permissionEnforcer:Lcom/android/server/permission/access/util/PermissionEnforcer;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const-string/jumbo v1, "permissionEnforcer"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 243
    :cond_1c
    const-string v3, "android.permission.MANAGE_APP_FUNCTION_ACCESS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v1, v0, v3}, Lcom/android/server/permission/access/util/PermissionEnforcer;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v1, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    move-object v2, v0

    :goto_37
    invoke-direct {v1, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->getTargets(Lcom/android/server/permission/access/GetStateScope;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->filterPackageNames(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onUserStarting(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public revokeSelfAccess(Ljava/lang/String;)V
    .registers 14

    .line 189
    const-string/jumbo v0, "revokeSelfAppFunctionAccess"

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 192
    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->getFilteredPackageState(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_3c

    .line 193
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 195
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 305
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "state"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2c
    invoke-direct {v3, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 196
    iget-object v2, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    .line 197
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    move v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->getAccessFlags(Lcom/android/server/permission/access/GetStateScope;IIII)I

    move-result v0

    if-nez v0, :cond_3d

    :goto_3c
    return-void

    .line 204
    :cond_3d
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 312
    :try_start_44
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_54

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_55

    :catchall_51
    move-exception v0

    move-object p0, v0

    goto :goto_87

    :cond_54
    move-object v1, v2

    .line 313
    :goto_55
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v11

    .line 314
    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v11}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 205
    # getter for: Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->policy:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->access$getPolicy$p(Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;)Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    move-result-object v2

    .line 212
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    const/16 v8, 0x1e

    const/4 v9, 0x4

    move v7, v5

    .line 209
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->updateAccessFlags(Lcom/android/server/permission/access/MutateStateScope;IIIIII)Z

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v11}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v0, v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v11}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_85
    .catchall {:try_start_44 .. :try_end_85} :catchall_51

    .line 311
    monitor-exit v10

    return-void

    :goto_87
    monitor-exit v10

    throw p0
.end method

.method public setAgentAllowlist(Ljava/util/Set;)V
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onAgentAllowlistChanged$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/util/Set;)V

    return-void
.end method

.method public updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z
    .registers 7

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final userExists(Ljava/lang/String;I)Z
    .registers 5

    .line 279
    iget-object p0, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez p0, :cond_b

    const-string/jumbo p0, "userManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 281
    sget-object v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Unknown user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return p0
.end method
