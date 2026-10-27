.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "AppIdPermissionPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

.field public static final STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;


# instance fields
.field public volatile isSignaturePermissionAllowlistForceEnforced:Z

.field public final migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

.field public volatile onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

.field public final privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public final upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$Companion;

    .line 1983
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1994
    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    .line 1995
    const-string v6, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v2, "android.permission.ACTIVITY_RECOGNITION"

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 1989
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 2002
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 2003
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1999
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 2006
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 2015
    const-string v6, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 2016
    const-string v7, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 2009
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/android/server/permission/access/SchemePolicy;-><init>()V

    .line 53
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 55
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    .line 57
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;-><init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    .line 62
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    return-void
.end method

.method public static synthetic getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_8

    .line 1606
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p4

    .line 1603
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V
    .registers 4

    .line 1955
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-static {v1, p1}, Lcom/android/server/permission/access/immutable/IndexedListSetExtensionsKt;->plus(Lcom/android/server/permission/access/immutable/IndexedListSet;Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 1957
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 1955
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final addPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;Z)V
    .registers 4

    if-eqz p3, :cond_4

    const/4 p0, 0x2

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    .line 1882
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState(I)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    .line 34
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 14

    .line 393
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_10c

    .line 41
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/pm/pkg/PackageUserState;

    .line 393
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_108

    .line 402
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    :goto_2b
    if-ge v2, v0, :cond_107

    .line 39
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const-wide/16 v4, 0x80

    .line 404
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 409
    iget-object v4, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    const/4 v6, 0x1

    if-eqz v5, :cond_f3

    .line 413
    iget-object v7, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f3

    .line 415
    iget-object v7, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 416
    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 421
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    const-string v9, "Ignoring permission group "

    if-nez v8, :cond_8e

    .line 423
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " declared in package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": already declared in another package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 430
    :cond_8e
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v8, :cond_cd

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    if-ne v8, v6, :cond_cd

    .line 432
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " declared in system package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": already declared in another system package "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 440
    :cond_cd
    sget-object v8, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 443
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Overriding permission group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with new declaration in system package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": originally declared in another package "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_f3
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v1, v6, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionGroups()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_103
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    :cond_107
    return-void

    :cond_108
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 396
    :cond_10c
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 398
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring permission groups declared in package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": instant apps cannot declare permission groups"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 33

    .line 455
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v1, :cond_24

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    const/4 v4, 0x1

    if-eqz v1, :cond_38

    .line 461
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    move v1, v4

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 462
    :goto_39
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_42
    if-ge v6, v5, :cond_43a

    .line 39
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    const-wide/16 v8, 0x80

    .line 464
    invoke-static {v7, v8, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 468
    iget-object v8, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 470
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v9

    if-eqz v9, :cond_72

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    :goto_6d
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    goto :goto_85

    .line 473
    :cond_72
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    goto :goto_6d

    .line 479
    :goto_85
    invoke-virtual {v12, v13, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v10

    .line 480
    iget-object v14, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 481
    const-string v15, " declared in package "

    const-string v2, "Ignoring permission "

    if-eqz v10, :cond_e1

    .line 37
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 481
    invoke-static {v14, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 483
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": base permission tree "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is declared in another package "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d3
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v25, v5

    move/from16 v26, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_dd
    :goto_dd
    move-object/from16 v0, p3

    goto/16 :goto_430

    :cond_e1
    if-eqz v9, :cond_334

    .line 37
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 492
    invoke-static {v14, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f2

    .line 37
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 495
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    if-nez v10, :cond_11e

    .line 497
    sget-object v7, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": already declared in another package "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 504
    :cond_11e
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v10, :cond_15e

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    if-ne v10, v4, :cond_15e

    .line 506
    sget-object v7, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " declared in system package "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": already declared in another system package "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3

    .line 514
    :cond_15e
    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 517
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Overriding permission "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " with new declaration in system package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": originally declared in another package "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    const/4 v10, 0x0

    :goto_195
    if-ge v10, v3, :cond_1e3

    .line 39
    invoke-virtual {v2, v10}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v15

    .line 521
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    move-object/from16 v18, v0

    .line 44
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    move/from16 v19, v1

    const/4 v1, 0x0

    :goto_1b0
    if-ge v1, v0, :cond_1d4

    move-object/from16 v16, v14

    .line 45
    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v17

    check-cast v17, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const/16 v17, 0x0

    move-object/from16 v28, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v28

    .line 522
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-object/from16 v12, v16

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, p1

    move-object v14, v8

    move-object v8, v12

    move-object/from16 v12, p0

    goto :goto_1b0

    :cond_1d4
    move-object v12, v8

    move-object v8, v14

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v13, p1

    move-object v8, v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    const/4 v4, 0x1

    move-object/from16 v12, p0

    goto :goto_195

    :cond_1e3
    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v12, v8

    move-object v8, v14

    :cond_1e9
    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v2, v12

    goto/16 :goto_340

    :cond_1f2
    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object v12, v8

    move-object v8, v14

    .line 525
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 527
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_216

    .line 528
    iget-object v0, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_216

    .line 40
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 529
    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_216

    const/4 v0, 0x1

    goto :goto_217

    :cond_216
    const/4 v0, 0x0

    .line 531
    :goto_217
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_228

    .line 49
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23a

    .line 25
    :cond_228
    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23c

    .line 49
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v2, :cond_23a

    goto :goto_23c

    :cond_23a
    const/4 v1, 0x1

    goto :goto_23d

    :cond_23c
    :goto_23c
    const/4 v1, 0x0

    :goto_23d
    if-nez v0, :cond_241

    if-eqz v1, :cond_1e9

    .line 534
    :cond_241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_252
    if-ge v4, v3, :cond_1e9

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v15

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v13

    const/4 v14, 0x0

    :goto_269
    if-ge v14, v13, :cond_31d

    move/from16 v20, v0

    .line 45
    invoke-virtual {v10, v14}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v0

    invoke-virtual {v10, v14}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v16

    check-cast v16, Lcom/android/server/permission/access/immutable/IndexedListSet;

    move/from16 v21, v1

    .line 536
    const-string v1, " and userId "

    move-object/from16 v22, v2

    const-string v2, " for appId "

    move/from16 v23, v3

    if-eqz v20, :cond_2c6

    .line 542
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    move/from16 v24, v4

    .line 40
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v25, v5

    .line 546
    iget-object v5, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v26, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v7

    const-string v7, "Revoking runtime permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " as the permission group changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ce

    :cond_2c6
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    :goto_2ce
    if-eqz v21, :cond_2f7

    .line 551
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Revoking permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as the permission protection changed."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f7
    const/16 v17, 0x0

    move-object/from16 v16, v12

    move v1, v14

    move-object/from16 v12, p0

    move v14, v0

    move v0, v13

    move-object/from16 v13, p1

    .line 557
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-object/from16 v2, v16

    add-int/lit8 v14, v1, 0x1

    move v13, v0

    move-object v12, v2

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move-object/from16 v7, v27

    goto/16 :goto_269

    :cond_31d
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v2, v12

    add-int/lit8 v4, v24, 0x1

    move-object/from16 v2, v22

    goto/16 :goto_252

    :cond_334
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-object v2, v8

    move-object v8, v14

    .line 564
    :goto_340
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 566
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_370

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_370

    .line 567
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getConfigPermissions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    if-eqz v1, :cond_370

    .line 571
    iget-object v3, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v3, :cond_36b

    .line 573
    iget-boolean v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    move v1, v0

    move-object v0, v3

    goto :goto_36c

    :cond_36b
    const/4 v1, 0x0

    :goto_36c
    move/from16 v16, v1

    :goto_36e
    move-object v15, v0

    goto :goto_373

    :cond_370
    const/16 v16, 0x0

    goto :goto_36e

    .line 578
    :goto_373
    new-instance v10, Lcom/android/server/permission/access/permission/Permission;

    const/4 v13, 0x0

    .line 582
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v14

    const/4 v12, 0x1

    .line 578
    invoke-direct/range {v10 .. v16}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    .line 587
    invoke-interface/range {v27 .. v27}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v0

    if-eqz v0, :cond_398

    .line 588
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_dd

    :cond_398
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 590
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-static {v0, v3, v4, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v2, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_42b

    .line 37
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 593
    invoke-static {v8, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42b

    .line 46
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v0, v4, :cond_42b

    .line 595
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v0

    if-eqz v0, :cond_428

    .line 49
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3de

    if-nez v19, :cond_3da

    goto :goto_3de

    :cond_3da
    move-object/from16 v0, p3

    const/4 v4, 0x1

    goto :goto_42d

    .line 64
    :cond_3de
    :goto_3de
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v4, 0x8000000

    .line 91
    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_400

    .line 148
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 598
    invoke-static {v0, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3da

    .line 49
    :cond_400
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_dd

    .line 40
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_dd

    .line 40
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 601
    invoke-static {v0, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    :goto_425
    move-object/from16 v0, p3

    goto :goto_42d

    :cond_428
    const/4 v4, 0x1

    goto/16 :goto_dd

    :cond_42b
    const/4 v4, 0x1

    goto :goto_425

    .line 80
    :goto_42d
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :goto_430
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v5, v25

    goto/16 :goto_42

    :cond_43a
    return-void
.end method

.method public final adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 27

    .line 326
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 327
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_aa

    .line 39
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 328
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 329
    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->canAdoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d

    :cond_27
    move-object/from16 p2, v0

    move-object/from16 v0, p3

    goto/16 :goto_a4

    .line 332
    :cond_2d
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    move v11, v3

    :goto_3e
    if-ge v11, v10, :cond_27

    .line 48
    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/android/server/permission/access/permission/Permission;

    check-cast v12, Ljava/lang/String;

    .line 37
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 336
    invoke-static {v13, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5e

    move-object/from16 p2, v0

    move-object/from16 v0, p3

    goto :goto_9f

    .line 341
    :cond_5e
    new-instance v15, Landroid/content/pm/PermissionInfo;

    invoke-direct {v15}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 342
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v13, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 343
    iput-object v6, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 344
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v13, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v21, 0x34

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 350
    invoke-static/range {v14 .. v22}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v13

    .line 355
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 p2, v0

    const/4 v0, 0x1

    .line 356
    invoke-static {v14, v3, v0, v15}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v11, v13}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->putAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p3

    .line 80
    invoke-virtual {v0, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :goto_9f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    goto :goto_3e

    :goto_a4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_11

    :cond_aa
    return-void
.end method

.method public final canAdoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 369
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageState;

    const/4 p1, 0x0

    if-nez p0, :cond_16

    return p1

    .line 370
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const-string v1, " to "

    const-string v2, "Unable to adopt permissions from "

    if-nez v0, :cond_40

    .line 372
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": original package not in system partition"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 371
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 378
    :cond_40
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 380
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": original package still exists"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_66
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPrivilegedPermissionAllowlistIfNeeded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .registers 10

    .line 1491
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1494
    :cond_6
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 1497
    :cond_13
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_d4

    .line 1501
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPrivilegedPermissionAllowlistPackages()Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v0

    .line 37
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1501
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    return v1

    .line 34
    :cond_3a
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1505
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPrivilegedPermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1507
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1510
    :cond_4b
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_52

    return v1

    .line 1514
    :cond_52
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->isSystemReady()Z

    move-result p1

    if-nez p1, :cond_d0

    .line 1516
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result p1

    if-nez p1, :cond_d0

    .line 1518
    sget-object p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1520
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Privileged permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for package "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") not in privileged permission allowlist"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    sget-boolean p1, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz p1, :cond_d0

    .line 1524
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 1525
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1526
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p2

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 1530
    :cond_d0
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr p0, v1

    return p0

    :cond_d4
    :goto_d4
    return v1
.end method

.method public final clearRestrictedPermissionImplicitExemption(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .registers 13

    .line 186
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_bf

    .line 189
    :cond_8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_bf

    .line 190
    :cond_10
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 191
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p2

    .line 2107
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-nez v5, :cond_42

    :cond_3d
    :goto_3d
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    goto/16 :goto_ba

    .line 133
    :cond_42
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 139
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1621
    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    .line 1624
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v4

    const/4 v6, 0x0

    :goto_77
    if-ge v6, v4, :cond_b1

    .line 39
    invoke-virtual {v2, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 30
    check-cast v7, Ljava/lang/String;

    .line 1626
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_ae

    .line 198
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    goto :goto_3d

    :cond_ae
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    :cond_b1
    const/high16 v6, 0x20000

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    .line 203
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :goto_ba
    move-object p0, v1

    move-object p1, v2

    move p3, v4

    goto/16 :goto_1c

    :cond_bf
    :goto_bf
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 8

    .line 935
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1d

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v3

    .line 936
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V
    .registers 13

    .line 949
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2513
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 951
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    .line 950
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_10

    :cond_29
    return-void
.end method

.method public final evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 30

    move/from16 v2, p2

    move-object/from16 v4, p4

    .line 977
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 981
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedList;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedList;-><init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_26
    if-ge v7, v3, :cond_5b

    .line 39
    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 985
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_57

    .line 987
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 84
    invoke-virtual {v1, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedList;->add(Ljava/lang/Object;)V

    goto :goto_58

    :cond_57
    move v8, v5

    :cond_58
    :goto_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 994
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v0

    if-ne v0, v5, :cond_64

    if-eqz v8, :cond_64

    goto :goto_88

    .line 998
    :cond_64
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 999
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    if-nez v0, :cond_89

    if-nez v3, :cond_88

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    .line 1005
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_88
    :goto_88
    return-void

    :cond_89
    move-object v2, v0

    move-object/from16 v0, p0

    .line 49
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/16 v9, 0x40

    const/4 v10, 0x2

    if-nez v7, :cond_118

    .line 1011
    invoke-static {v3, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    .line 1012
    invoke-static {v3, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-nez v7, :cond_fd

    if-nez v8, :cond_a6

    goto :goto_fd

    :cond_a6
    if-eqz p5, :cond_bb

    .line 1019
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    .line 1018
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    move v7, v5

    goto :goto_bc

    :cond_bb
    const/4 v7, 0x0

    .line 38
    :goto_bc
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v8

    const/4 v11, 0x0

    :goto_c1
    if-ge v11, v8, :cond_d4

    .line 39
    invoke-virtual {v1, v11}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1021
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_d1

    move v8, v5

    goto :goto_d5

    :cond_d1
    add-int/lit8 v11, v11, 0x1

    goto :goto_c1

    :cond_d4
    const/4 v8, 0x0

    .line 38
    :goto_d5
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_da
    if-ge v12, v11, :cond_f4

    .line 39
    invoke-virtual {v1, v12}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 30
    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 1024
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v13, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isCompatibilityPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f1

    move v6, v5

    goto :goto_f5

    :cond_f1
    add-int/lit8 v12, v12, 0x1

    goto :goto_da

    :cond_f4
    const/4 v6, 0x0

    :goto_f5
    if-nez v7, :cond_fd

    if-nez v8, :cond_fd

    if-eqz v6, :cond_fc

    goto :goto_fd

    :cond_fc
    move v5, v10

    .line 64
    :cond_fd
    :goto_fd
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    .line 67
    invoke-static {v1, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_10e

    and-int/lit8 v1, v3, 0x28

    or-int/2addr v5, v1

    :cond_10e
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1057
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void

    :cond_118
    move-object/from16 v4, p1

    .line 49
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/4 v11, 0x4

    if-ne v7, v10, :cond_126

    goto :goto_130

    :cond_126
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    if-ne v7, v11, :cond_1eb

    .line 1059
    :goto_130
    invoke-static {v3, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v8, :cond_13b

    if-eqz v7, :cond_13b

    :cond_138
    :goto_138
    move v6, v11

    goto/16 :goto_1a8

    .line 64
    :cond_13b
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    const/16 v8, 0x10

    .line 106
    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_164

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v7

    const/4 v8, 0x0

    :goto_150
    if-ge v8, v7, :cond_162

    .line 39
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1069
    invoke-virtual {v0, v4, v12, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->checkPrivilegedPermissionAllowlistIfNeeded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_15f

    goto :goto_164

    :cond_15f
    add-int/lit8 v8, v8, 0x1

    goto :goto_150

    :cond_162
    const/4 v7, 0x0

    goto :goto_165

    :cond_164
    :goto_164
    move v7, v5

    .line 49
    :goto_165
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v8

    if-ne v8, v10, :cond_187

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v8

    const/4 v10, 0x0

    :goto_174
    if-ge v10, v8, :cond_187

    .line 39
    invoke-virtual {v1, v10}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1074
    invoke-virtual {v0, v4, v12, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPermissionBySignature(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_184

    move v8, v5

    goto :goto_188

    :cond_184
    add-int/lit8 v10, v10, 0x1

    goto :goto_174

    :cond_187
    const/4 v8, 0x0

    .line 38
    :goto_188
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v10

    const/4 v12, 0x0

    :goto_18d
    if-ge v12, v10, :cond_19f

    .line 39
    invoke-virtual {v1, v12}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 30
    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 1078
    invoke-virtual {v0, v4, v13, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v13

    if-eqz v13, :cond_19c

    goto :goto_1a0

    :cond_19c
    add-int/lit8 v12, v12, 0x1

    goto :goto_18d

    :cond_19f
    const/4 v5, 0x0

    :goto_1a0
    if-eqz v7, :cond_1a7

    if-nez v8, :cond_138

    if-eqz v5, :cond_1a7

    goto :goto_138

    :cond_1a7
    const/4 v6, 0x0

    .line 64
    :goto_1a8
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    .line 67
    invoke-static {v1, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1b9

    and-int/lit8 v1, v3, 0x28

    or-int/2addr v6, v1

    .line 64
    :cond_1b9
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v5, 0x20

    .line 79
    invoke-static {v1, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1cc

    and-int/lit8 v1, v3, 0x10

    or-int/2addr v6, v1

    .line 64
    :cond_1cc
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/high16 v2, 0x4000000

    .line 115
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1df

    and-int/lit8 v1, v3, 0x18

    or-int/2addr v6, v1

    :cond_1df
    move/from16 v2, p2

    move/from16 v3, p3

    move-object v1, v4

    move v5, v6

    move-object/from16 v4, p4

    .line 1106
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void

    :cond_1eb
    move-object/from16 v7, p4

    move-object v8, v2

    move v9, v3

    move/from16 v2, p2

    move/from16 v3, p3

    .line 49
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v10

    if-ne v10, v5, :cond_421

    const v10, 0xfffff8

    and-int/2addr v10, v9

    if-eqz v10, :cond_20d

    .line 1109
    sget-object v12, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v12, v10}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v12

    if-nez v12, :cond_20d

    move v12, v5

    goto :goto_20e

    :cond_20d
    const/4 v12, 0x0

    .line 38
    :goto_20e
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v13

    const/16 v14, 0x2710

    const/4 v15, 0x0

    :goto_215
    if-ge v15, v13, :cond_22f

    .line 39
    invoke-virtual {v1, v15}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 73
    check-cast v16, Lcom/android/server/pm/pkg/PackageState;

    .line 1115
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    invoke-static {v14, v6}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_215

    :cond_22f
    const/16 v6, 0x17

    const v13, 0x38000

    if-ge v14, v6, :cond_25f

    .line 64
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v6

    const/16 v15, 0x2000

    .line 118
    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v6

    if-eqz v6, :cond_24e

    and-int v6, v9, v13

    :cond_248
    :goto_248
    move v9, v6

    move v6, v5

    move v5, v9

    move v9, v13

    goto/16 :goto_3a0

    :cond_24e
    or-int/lit16 v6, v10, 0x400

    if-eqz v12, :cond_256

    const v6, 0x100400

    or-int/2addr v6, v10

    .line 1132
    :cond_256
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_248

    or-int/lit16 v6, v6, 0x1000

    goto :goto_248

    :cond_25f
    const/16 v6, 0x400

    .line 1138
    invoke-static {v10, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    const/16 v15, 0x1000

    .line 1139
    invoke-static {v10, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v16

    if-eqz v9, :cond_275

    .line 1141
    invoke-static {v10, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v10

    if-nez v16, :cond_275

    or-int/lit8 v10, v10, 0x10

    :cond_275
    const/16 v6, 0x800

    .line 1146
    invoke-static {v10, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v17

    .line 1148
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/permission/access/ExternalState;->isLeanback()Z

    move-result v18

    if-eqz v18, :cond_293

    sget-object v11, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v11, v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_293

    move v11, v5

    goto :goto_294

    :cond_293
    const/4 v11, 0x0

    .line 38
    :goto_294
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v13

    const/4 v15, 0x0

    :goto_299
    if-ge v15, v13, :cond_2b9

    .line 39
    invoke-virtual {v1, v15}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 30
    check-cast v19, Lcom/android/server/pm/pkg/PackageState;

    .line 1151
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b4

    move v6, v5

    goto :goto_2ba

    :cond_2b4
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x800

    goto :goto_299

    :cond_2b9
    const/4 v6, 0x0

    .line 1154
    :goto_2ba
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/ExternalState;->getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-eqz v13, :cond_330

    .line 38
    invoke-virtual {v13}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v15

    const/4 v5, 0x0

    :goto_2d3
    if-ge v5, v15, :cond_32c

    .line 39
    invoke-virtual {v13, v5}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v5

    .line 30
    move-object/from16 v5, v20

    check-cast v5, Ljava/lang/String;

    .line 1158
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v20

    move/from16 v22, v6

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v6, :cond_30c

    .line 49
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_302

    move v5, v6

    goto :goto_303

    :cond_302
    const/4 v5, 0x0

    :goto_303
    if-nez v5, :cond_307

    move v5, v6

    goto :goto_334

    :cond_307
    add-int/lit8 v5, v21, 0x1

    move/from16 v6, v22

    goto :goto_2d3

    .line 1160
    :cond_30c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown source permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in split permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32c
    move/from16 v22, v6

    const/4 v6, 0x1

    goto :goto_333

    :cond_330
    move/from16 v22, v6

    move v6, v5

    :goto_333
    const/4 v5, 0x0

    :goto_334
    if-nez v11, :cond_355

    if-eqz v22, :cond_33b

    if-eqz v5, :cond_33b

    goto :goto_355

    :cond_33b
    const/16 v5, 0x800

    .line 1173
    invoke-static {v10, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v5

    if-nez v9, :cond_345

    if-eqz v17, :cond_35d

    :cond_345
    const/high16 v9, 0x100000

    .line 1176
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_35d

    const v9, 0x100010

    .line 1185
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v5

    goto :goto_35d

    :cond_355
    :goto_355
    or-int/lit16 v5, v10, 0x800

    if-eqz v12, :cond_35d

    const v5, 0x100800

    or-int/2addr v5, v10

    :cond_35d
    :goto_35d
    if-nez v22, :cond_397

    if-eqz v16, :cond_397

    const/16 v9, 0x1000

    .line 1190
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v5

    .line 1192
    sget-object v10, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v10, v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_385

    .line 1197
    const-string v10, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1194
    invoke-virtual {v0, v4, v2, v3, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v10

    .line 1200
    sget-object v11, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v11, v10}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v11

    if-eqz v11, :cond_385

    .line 1201
    invoke-static {v10, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-nez v9, :cond_385

    move v9, v6

    goto :goto_386

    :cond_385
    const/4 v9, 0x0

    :goto_386
    const/16 v10, 0x180

    .line 1203
    invoke-static {v5, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v10

    if-nez v9, :cond_39b

    if-eqz v10, :cond_391

    goto :goto_39b

    :cond_391
    const/16 v9, 0x70

    .line 1210
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v5

    :cond_397
    :goto_397
    const v9, 0x38000

    goto :goto_3a0

    :cond_39b
    :goto_39b
    if-eqz v17, :cond_397

    or-int/lit8 v5, v5, 0x10

    goto :goto_397

    .line 1218
    :goto_3a0
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v9

    const/high16 v10, 0xc0000

    .line 1219
    invoke-static {v5, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v10

    .line 133
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v11

    const/16 v12, 0x8

    if-nez v11, :cond_3c5

    .line 139
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v11, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v11

    if-eqz v11, :cond_3d2

    :cond_3c5
    if-nez v9, :cond_3d2

    if-nez v10, :cond_3d2

    const/high16 v9, 0x20000

    or-int/2addr v5, v9

    move/from16 v23, v6

    move v6, v5

    move/from16 v5, v23

    goto :goto_3d4

    :cond_3d2
    move v6, v5

    move v5, v9

    .line 133
    :goto_3d4
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    const/high16 v10, 0x40000

    if-eqz v9, :cond_3e7

    if-nez v5, :cond_3e7

    or-int/2addr v6, v10

    goto :goto_3eb

    .line 1244
    :cond_3e7
    invoke-static {v6, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v6

    .line 139
    :goto_3eb
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v8, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    const/high16 v9, 0x80000

    if-eqz v8, :cond_418

    if-nez v5, :cond_418

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedList;->getSize()I

    move-result v5

    const/4 v8, 0x0

    :goto_400
    if-ge v8, v5, :cond_412

    .line 39
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/IndexedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 1251
    invoke-virtual {v0, v10, v14, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSoftRestrictedPermissionExemptForPackage(Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_40f

    goto :goto_418

    :cond_40f
    add-int/lit8 v8, v8, 0x1

    goto :goto_400

    :cond_412
    or-int v1, v6, v9

    :goto_414
    move v5, v1

    move-object v1, v4

    move-object v4, v7

    goto :goto_41d

    .line 1260
    :cond_418
    :goto_418
    invoke-static {v6, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    goto :goto_414

    .line 1262
    :goto_41d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void

    .line 1265
    :cond_421
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 46
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 34
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown protection level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "for permission "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while evaluating permission statefor appId "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and userId "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1264
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 22

    .line 917
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_95

    .line 39
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v8

    .line 919
    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v11

    .line 44
    invoke-virtual {v11}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v12

    move v13, v3

    :goto_21
    if-ge v13, v12, :cond_91

    .line 45
    invoke-virtual {v11, v13}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v7

    invoke-virtual {v11, v13}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 1621
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    .line 1624
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v5

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v15}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    move v6, v3

    :goto_48
    if-ge v6, v5, :cond_8e

    .line 39
    invoke-virtual {v15, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 30
    check-cast v9, Ljava/lang/String;

    .line 1626
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_85

    .line 922
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v9, v10

    move-object/from16 v10, p3

    .line 925
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_8e

    :cond_85
    move/from16 v16, v5

    move/from16 v17, v6

    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_48

    :cond_8e
    :goto_8e
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_95
    return-void
.end method

.method public final findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .registers 10

    .line 1850
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    const/4 v2, 0x0

    if-ge v1, p1, :cond_45

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x2

    .line 1855
    invoke-static {p2, v3, v0, v5, v2}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1856
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3f

    .line 1857
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_3f

    move-object v2, v4

    :cond_3f
    if-eqz v2, :cond_42

    return-object v2

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_45
    return-object v2
.end method

.method public final getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 4

    .line 1910
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I
    .registers 9

    .line 1652
    invoke-virtual {p4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 72
    new-instance p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 p2, 0x2710

    iput p2, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p2

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p2, :cond_68

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    check-cast v1, Ljava/lang/String;

    .line 1654
    invoke-virtual {p4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 1655
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 1611
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p3, :cond_53

    .line 1612
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1613
    :cond_53
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 1659
    :cond_5b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 74
    :cond_68
    iget p0, p1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method

.method public getObjectScheme()Ljava/lang/String;
    .registers 1

    .line 74
    const-string/jumbo p0, "permission"

    return-object p0
.end method

.method public final getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I
    .registers 5

    .line 1899
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I
    .registers 5

    .line 1907
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I
    .registers 5

    .line 1893
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 2

    .line 1871
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionTrees(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 2

    .line 1847
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 2

    .line 1875
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPrivilegedPermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8

    .line 1541
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p0

    .line 1542
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object p1

    .line 1543
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1545
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_6f

    .line 1550
    :cond_21
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1551
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1555
    :cond_2c
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 1556
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_37
    if-eqz p1, :cond_6a

    .line 1562
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_62

    .line 1567
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " APEX instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1566
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_62
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_69

    return-object p2

    :cond_69
    return-object p0

    .line 1581
    :cond_6a
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1546
    :cond_6f
    :goto_6f
    invoke-virtual {p0, v0, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getSignaturePermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .line 1442
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p0

    .line 1443
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1445
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_51

    .line 1447
    :cond_1d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1448
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1452
    :cond_28
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 1453
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1458
    :cond_33
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_50

    .line 1459
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_50

    .line 1463
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_50

    .line 1467
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_50

    .line 1471
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_50
    return-object p2

    .line 1446
    :cond_51
    :goto_51
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorSignatureAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectScheme()Ljava/lang/String;
    .registers 1

    .line 71
    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 4

    .line 1890
    invoke-virtual {p1}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/UserState;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V
    .registers 21

    move/from16 v7, p3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1274
    invoke-static/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result v6

    .line 1275
    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v9, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1633
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 1636
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    const/4 v11, 0x0

    :goto_30
    if-ge v11, v5, :cond_60

    .line 39
    invoke-virtual {v4, v11}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1638
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1639
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_5d

    .line 1277
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIndexedSet;Ljava/util/Collection;)V

    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    .line 44
    :cond_60
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v11

    const/4 v12, 0x0

    :goto_65
    if-ge v12, v11, :cond_161

    .line 45
    invoke-virtual {v8, v12}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 1280
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 1281
    const-string v5, " in split permissions"

    if-eqz v3, :cond_143

    .line 49
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    if-ne v3, v9, :cond_136

    .line 1289
    invoke-virtual {v0, v1, v2, v7, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getOldStatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_136

    .line 1294
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getImplicitToSourcePermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v3, :cond_aa

    goto/16 :goto_136

    .line 1296
    :cond_aa
    invoke-virtual {v0, v1, v2, v7, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v13

    .line 38
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v14

    const/4 v15, 0x0

    :goto_b3
    if-ge v15, v14, :cond_119

    .line 39
    invoke-virtual {v3, v15}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 1298
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v10, :cond_fb

    .line 1302
    invoke-virtual {v0, v1, v2, v7, v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v9

    .line 1303
    sget-object v10, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v0

    .line 1304
    invoke-virtual {v10, v13}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v10

    if-eqz v0, :cond_e6

    if-nez v10, :cond_e6

    const/16 v16, 0x1

    goto :goto_e8

    :cond_e6
    const/16 v16, 0x0

    :goto_e8
    if-eq v0, v10, :cond_ec

    if-eqz v16, :cond_f5

    :cond_ec
    if-eqz v16, :cond_ef

    const/4 v13, 0x0

    :cond_ef
    const v0, 0xfffff8

    and-int/2addr v0, v9

    or-int/2addr v0, v13

    move v13, v0

    :cond_f5
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto :goto_b3

    .line 1300
    :cond_fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown source permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_119
    const/16 v0, 0x17

    if-lt v6, v0, :cond_130

    .line 1315
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const/16 v0, 0x1000

    .line 1317
    invoke-static {v13, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    :goto_12b
    move v5, v0

    move v3, v7

    move-object/from16 v0, p0

    goto :goto_133

    :cond_130
    or-int/lit16 v0, v13, 0x1000

    goto :goto_12b

    .line 1321
    :goto_133
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :cond_136
    :goto_136
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p3

    const/4 v9, 0x1

    goto/16 :goto_65

    .line 1282
    :cond_143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown implicit permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1281
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_161
    return-void
.end method

.method public final isCompatibilityPermissionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 5

    .line 1329
    sget-object p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    .line 1331
    invoke-virtual {v0}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1332
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1335
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1337
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to old package "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1334
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4a
    const/4 p0, 0x0

    return p0
.end method

.method public final isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z
    .registers 5

    .line 880
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p0

    .line 881
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p0

    return p0
.end method

.method public final isSignaturePermissionAllowlistForceEnforced()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    return p0
.end method

.method public final isSoftRestrictedPermissionExemptForPackage(Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .registers 4

    .line 1597
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p3, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_13

    .line 1598
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p3, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    return p1

    :cond_13
    :goto_13
    const/16 p0, 0x1d

    if-lt p2, p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return p1
.end method

.method public migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 2

    .line 1967
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migrateSystemState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;)V

    return-void
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 3

    .line 1971
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migrateUserState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 9

    .line 93
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_37

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/UserState;

    .line 94
    invoke-virtual {v3}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 95
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v4, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_37
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 9

    .line 138
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 142
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 143
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    if-ge v4, v1, :cond_32

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 147
    :cond_32
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v1

    :goto_45
    if-ge v3, v1, :cond_55

    .line 39
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v2

    .line 149
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 151
    :cond_55
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .registers 4

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->clearRestrictedPermissionImplicitExemption(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 7

    .line 155
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 159
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 161
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 162
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 44
    :cond_31
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result p2

    const/4 p3, 0x0

    :goto_36
    if-ge p3, p2, :cond_44

    .line 45
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_36

    :cond_44
    return-void

    .line 156
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reported as removed before disabled system package is enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .registers 5

    const/4 p3, 0x1

    .line 269
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .registers 4

    .line 77
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p1, :cond_15

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    .line 77
    invoke-interface {v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 12

    .line 106
    new-instance p2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_44

    .line 39
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-nez v4, :cond_2a

    goto :goto_41

    .line 111
    :cond_2a
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 112
    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 113
    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 114
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 115
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 44
    :cond_44
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v0

    move v3, v2

    :goto_49
    if-ge v3, v0, :cond_57

    .line 45
    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 38
    :cond_57
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    move v0, v2

    :goto_5c
    if-ge v0, p2, :cond_84

    .line 39
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-nez v3, :cond_79

    goto :goto_81

    :cond_79
    if-eqz p4, :cond_7d

    move-object v4, v3

    goto :goto_7e

    :cond_7d
    move-object v4, v1

    .line 125
    :goto_7e
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 38
    :cond_84
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v2

    :goto_89
    if-ge p4, p2, :cond_d1

    .line 39
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-nez v0, :cond_a6

    goto :goto_ce

    .line 130
    :cond_a6
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    move v4, v2

    :goto_b7
    if-ge v4, v3, :cond_c7

    .line 39
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v5

    .line 131
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 133
    :cond_c7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_ce
    add-int/lit8 p4, p4, 0x1

    goto :goto_89

    :cond_d1
    return-void
.end method

.method public onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .registers 4

    .line 1822
    iget-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 1823
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 1825
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature|privileged permissions not in privileged permission allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1823
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 8

    .line 81
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 2066
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 82
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_14

    :cond_2d
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    goto :goto_14

    .line 87
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v1, :cond_55

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 88
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_55
    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 3

    .line 1831
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    return-void
.end method

.method public parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 4

    .line 1839
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    return-void
.end method

.method public final removePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)V
    .registers 5

    .line 1886
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p0

    .line 34
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;IZ)V
    .registers 15

    .line 279
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-nez v0, :cond_16

    goto/16 :goto_10f

    .line 280
    :cond_16
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_1e

    goto/16 :goto_10f

    .line 281
    :cond_1e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 282
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 2164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    if-nez v2, :cond_50

    :cond_4b
    :goto_4b
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    goto/16 :goto_10a

    .line 49
    :cond_50
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4b

    .line 136
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_4b

    .line 1621
    :cond_69
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 1624
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    const/4 v7, 0x0

    :goto_83
    if-ge v7, v5, :cond_c1

    .line 39
    invoke-virtual {v3, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 30
    check-cast v8, Ljava/lang/String;

    .line 1626
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_be

    .line 289
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_be

    .line 290
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_be

    goto :goto_4b

    :cond_be
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    .line 295
    :cond_c1
    invoke-virtual {p0, p1, v4, p3, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    const/16 v3, 0x180

    .line 296
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_cf

    goto/16 :goto_4b

    .line 301
    :cond_cf
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-nez v3, :cond_df

    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_ec

    :cond_df
    const/16 v3, 0x208

    .line 305
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_ec

    if-eqz p4, :cond_f2

    or-int/lit8 v2, v2, 0x10

    goto :goto_f2

    :cond_ec
    const/16 v3, 0x218

    .line 309
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    :cond_f2
    :goto_f2
    const v3, 0xf00060

    .line 314
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v2

    const/16 v3, 0x400

    .line 315
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_103

    or-int/lit16 v2, v2, 0x1000

    :cond_103
    move-object v3, p1

    move v5, p3

    move v7, v2

    move-object v2, p0

    .line 318
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    :goto_10a
    move-object p0, v2

    move-object p1, v3

    move p3, v5

    goto/16 :goto_2a

    :cond_10f
    :goto_10f
    return-void
.end method

.method public final revokeHeartRatePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 21

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 780
    invoke-static/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result v3

    const/16 v4, 0x24

    if-lt v3, v4, :cond_14

    goto/16 :goto_1c0

    .line 787
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 1624
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v5

    const/4 v7, 0x0

    :goto_2e
    const-string v8, "android.permission.BODY_SENSORS"

    if-ge v7, v5, :cond_65

    .line 39
    invoke-virtual {v4, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Ljava/lang/String;

    .line 1626
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    if-eqz v11, :cond_62

    .line 788
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    const/4 v3, 0x1

    goto :goto_66

    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_65
    const/4 v3, 0x0

    .line 791
    :goto_66
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 1624
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v7

    const/4 v10, 0x0

    :goto_80
    const-string v11, "android.permission.health.READ_HEART_RATE"

    if-ge v10, v7, :cond_b7

    .line 39
    invoke-virtual {v5, v10}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 30
    check-cast v12, Ljava/lang/String;

    .line 1626
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_b4

    .line 792
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b4

    const/4 v4, 0x1

    goto :goto_b8

    :cond_b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_80

    :cond_b7
    const/4 v4, 0x0

    .line 795
    :goto_b8
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    .line 1624
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v10

    const/4 v12, 0x0

    :goto_d2
    const-string v13, "android.permission.BODY_SENSORS_BACKGROUND"

    if-ge v12, v10, :cond_109

    .line 39
    invoke-virtual {v7, v12}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    .line 30
    check-cast v14, Ljava/lang/String;

    .line 1626
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_106

    .line 797
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    .line 796
    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_106

    const/4 v5, 0x1

    goto :goto_10a

    :cond_106
    add-int/lit8 v12, v12, 0x1

    goto :goto_d2

    :cond_109
    const/4 v5, 0x0

    .line 800
    :goto_10a
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    .line 1624
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v12

    const/4 v14, 0x0

    :goto_124
    const-string v15, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    if-ge v14, v12, :cond_15d

    .line 39
    invoke-virtual {v10, v14}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    .line 30
    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 1626
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_15a

    .line 802
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    .line 801
    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15a

    const/4 v9, 0x1

    goto :goto_15e

    :cond_15a
    add-int/lit8 v14, v14, 0x1

    goto :goto_124

    :cond_15d
    const/4 v9, 0x0

    .line 806
    :goto_15e
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v7

    const/4 v10, 0x0

    :goto_16b
    if-ge v10, v7, :cond_1c0

    .line 45
    invoke-virtual {v6, v10}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v12

    invoke-virtual {v6, v10}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/UserState;

    .line 809
    invoke-virtual {v0, v1, v2, v12, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v14

    if-eqz v3, :cond_196

    if-eqz v4, :cond_196

    move/from16 v16, v3

    .line 812
    invoke-virtual {v0, v1, v2, v12, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v3

    if-eq v14, v3, :cond_198

    if-eqz v14, :cond_190

    .line 816
    invoke-virtual {v0, v1, v2, v12, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_190

    const/4 v14, 0x0

    :cond_190
    if-eqz v3, :cond_198

    .line 822
    invoke-virtual {v0, v1, v2, v12, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    goto :goto_198

    :cond_196
    move/from16 v16, v3

    .line 830
    :cond_198
    :goto_198
    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    if-nez v14, :cond_1a7

    .line 837
    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a7

    const/4 v3, 0x0

    :cond_1a7
    if-eqz v5, :cond_1bb

    if-eqz v9, :cond_1bb

    .line 850
    invoke-virtual {v0, v1, v2, v12, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)Z

    move-result v14

    if-eq v3, v14, :cond_1bb

    if-eqz v3, :cond_1b6

    .line 857
    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_1b6
    if-eqz v14, :cond_1bb

    .line 864
    invoke-virtual {v0, v1, v2, v12, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_1bb
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_16b

    :cond_1c0
    :goto_1c0
    return-void
.end method

.method public final revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    .line 713
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeStorageAndMediaPermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 714
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeHeartRatePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z
    .registers 13

    .line 890
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoking runtime permission for appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v1

    const/16 v3, 0x180

    .line 895
    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not allowed to revoke "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for appId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 896
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_56
    const v0, 0xf00278

    .line 904
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 909
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final revokeStorageAndMediaPermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 14

    .line 719
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 720
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    .line 1624
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    if-ge v4, v2, :cond_169

    .line 39
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 1626
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_165

    .line 731
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v0

    .line 732
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v1

    const/16 v2, 0x1d

    const/4 v4, 0x1

    if-lt v0, v2, :cond_66

    if-ge v1, v2, :cond_66

    move v5, v4

    goto :goto_67

    :cond_66
    move v5, v3

    :goto_67
    if-ge v0, v2, :cond_6d

    if-lt v1, v2, :cond_6d

    move v0, v4

    goto :goto_6e

    :cond_6d
    move v0, v3

    .line 742
    :goto_6e
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getOldState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    .line 1624
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v6

    move v7, v3

    :goto_88
    if-ge v7, v6, :cond_b9

    .line 39
    invoke-virtual {v2, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 30
    check-cast v8, Ljava/lang/String;

    .line 1626
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_b6

    .line 743
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v8

    if-eqz v8, :cond_b6

    move v1, v4

    goto :goto_ba

    :cond_b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    :cond_b9
    move v1, v3

    .line 746
    :goto_ba
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    .line 1624
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v7

    move v8, v3

    :goto_d4
    if-ge v8, v7, :cond_105

    .line 39
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 30
    check-cast v9, Ljava/lang/String;

    .line 1626
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_102

    .line 747
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v9

    if-eqz v9, :cond_102

    move v2, v4

    goto :goto_106

    :cond_102
    add-int/lit8 v8, v8, 0x1

    goto :goto_d4

    :cond_105
    move v2, v3

    :goto_106
    if-nez v0, :cond_10d

    if-nez v1, :cond_10d

    if-eqz v2, :cond_10d

    goto :goto_10f

    :cond_10d
    if-eqz v5, :cond_164

    .line 756
    :goto_10f
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    :goto_11b
    if-ge v3, v1, :cond_164

    .line 45
    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/UserState;

    .line 757
    invoke-virtual {v5}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v5, :cond_161

    .line 65
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_138
    const/4 v7, -0x1

    if-ge v7, v6, :cond_161

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    .line 764
    sget-object v9, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v9, v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15e

    const/16 v9, 0x10

    .line 765
    invoke-static {v8, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_15e

    .line 767
    invoke-virtual {p0, p1, p2, v2, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_15e
    add-int/lit8 v6, v6, -0x1

    goto :goto_138

    :cond_161
    add-int/lit8 v3, v3, 0x1

    goto :goto_11b

    :cond_164
    return-void

    :cond_165
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2d

    :cond_169
    return-void
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .registers 3

    .line 1835
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    return-void
.end method

.method public serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .registers 4

    .line 1843
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    return-void
.end method

.method public final setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z
    .registers 13

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 1918
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setSignaturePermissionAllowlistForceEnforced(Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    return-void
.end method

.method public final shouldGrantPermissionByProtectionFlags(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .registers 12

    .line 1667
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1668
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getKnownPackages()Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v1

    .line 1669
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v4, 0x10

    .line 106
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_39

    .line 64
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    const/16 v6, 0x4000

    .line 97
    invoke-static {v3, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1670
    :cond_39
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1672
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 1676
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v3, :cond_62

    .line 1677
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    goto :goto_63

    :cond_62
    const/4 v6, 0x0

    :goto_63
    if-eqz v6, :cond_7d

    .line 1679
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1679
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1680
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result p0

    if-eqz p0, :cond_7d

    move p0, v5

    goto :goto_83

    :cond_7d
    move p0, v4

    goto :goto_83

    .line 1682
    :cond_7f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result p0

    :goto_83
    if-eqz p0, :cond_86

    return v5

    .line 64
    :cond_86
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x80

    .line 100
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_9f

    .line 1688
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 p1, 0x17

    if-ge p0, p1, :cond_9f

    return v5

    .line 64
    :cond_9f
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x100

    .line 85
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_d0

    const/4 p0, 0x2

    .line 1696
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    const/4 p0, 0x7

    .line 1697
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d0

    :cond_cf
    return v5

    .line 64
    :cond_d0
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x200

    .line 130
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_f1

    const/4 p0, 0x4

    .line 1704
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    return v5

    .line 64
    :cond_f1
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x400

    .line 103
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_108

    .line 1710
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_108

    return v5

    .line 64
    :cond_108
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x8000000

    .line 91
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_129

    .line 1716
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    .line 148
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 1716
    invoke-virtual {p0, p1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_129

    return v5

    .line 64
    :cond_129
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/16 p1, 0x800

    .line 121
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_149

    .line 1723
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_149

    return v5

    .line 64
    :cond_149
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x10000

    .line 124
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_16a

    const/4 p0, 0x6

    .line 1731
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16a

    return v5

    .line 64
    :cond_16a
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x80000

    .line 76
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_18c

    const/16 p0, 0xa

    .line 1738
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18c

    return v5

    .line 64
    :cond_18c
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x100000

    .line 82
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_1ae

    const/16 p0, 0xb

    .line 1745
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ae

    return v5

    .line 64
    :cond_1ae
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x200000

    .line 70
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_1d0

    const/16 p0, 0xc

    .line 1753
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d0

    return v5

    .line 64
    :cond_1d0
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x800000

    .line 73
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_1f2

    const/16 p0, 0xf

    .line 1760
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f2

    return v5

    .line 64
    :cond_1f2
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x2000000

    .line 109
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_214

    const/16 p0, 0x11

    .line 1765
    invoke-virtual {v1, p0}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_214

    return v5

    .line 64
    :cond_214
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const/high16 p1, 0x400000

    .line 94
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_22b

    .line 1769
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22b

    return v5

    :cond_22b
    return v4
.end method

.method public final shouldGrantPermissionBySignature(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .registers 12

    .line 1376
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 1378
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    .line 37
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1378
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 1379
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1380
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    goto :goto_32

    :cond_31
    move-object v1, v2

    .line 1382
    :goto_32
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    const-string v4, "android"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 1383
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1384
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_60

    .line 1386
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-ne v1, v7, :cond_60

    goto :goto_6f

    .line 1390
    :cond_60
    invoke-virtual {v0, v3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1391
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_6f

    :cond_6d
    move v0, v6

    goto :goto_70

    :cond_6f
    :goto_6f
    move v0, v7

    :goto_70
    if-nez v0, :cond_73

    return v6

    .line 37
    :cond_73
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1402
    invoke-static {v0, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1404
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1407
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1409
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    .line 1410
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v0, :cond_a7

    .line 1411
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    :cond_a7
    if-eqz v2, :cond_ba

    .line 1413
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1413
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_110

    .line 34
    :cond_ba
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1422
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getSignaturePermissionAllowlistState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_110

    .line 1425
    sget-object p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1427
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for package "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") not in signature permission allowlist"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1424
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_10f

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    if-eqz p0, :cond_110

    :cond_10f
    return v6

    :cond_110
    :goto_110
    return v7
.end method

.method public final shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .registers 7

    .line 34
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1781
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    const/16 v2, 0x10

    .line 106
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    .line 1784
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 1789
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 64
    :cond_2d
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p1

    const p2, 0x8000

    .line 127
    invoke-static {p1, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-nez p1, :cond_62

    .line 1793
    sget-object p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    .line 1795
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be granted to privileged vendor (or odm) app "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it isn\'t a vendorPrivileged permission"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1792
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_62
    const/4 p0, 0x1

    return p0

    .line 64
    :cond_64
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p3

    const/16 v1, 0x4000

    .line 97
    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_b9

    .line 1804
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 1806
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/permission/access/ExternalState;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/permission/PermissionAllowlist;->getOemAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_91

    .line 1814
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1812
    :cond_91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OEM permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requested by package "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be explicitly declared granted or not"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1810
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b9
    return v2
.end method

.method public final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 16

    .line 692
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1633
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    .line 1636
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_52

    .line 39
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1638
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 1639
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_4f

    .line 701
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIndexedSet;Ljava/util/Collection;)V

    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 703
    :cond_52
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v3

    :goto_5e
    if-ge v5, v3, :cond_af

    .line 45
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/UserState;

    .line 704
    invoke-virtual {v4}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v4, :cond_a6

    .line 65
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v2

    move v12, v6

    :goto_7c
    const/4 v6, -0x1

    if-ge v6, v12, :cond_a6

    .line 54
    invoke-virtual {v4, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 705
    invoke-virtual {v0, v10}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    .line 706
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    goto :goto_a0

    :cond_9d
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    :goto_a0
    add-int/lit8 v12, v12, -0x1

    move-object p0, v6

    move-object p1, v7

    move p2, v8

    goto :goto_7c

    :cond_a6
    move-object v6, p0

    move-object v7, p1

    move v8, p2

    add-int/lit8 v5, v5, 0x1

    move-object p0, v6

    move-object p1, v7

    move p2, v8

    goto :goto_5e

    :cond_af
    return-void
.end method

.method public final trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 23

    move-object/from16 v0, p2

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 614
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    goto :goto_1d

    :cond_1c
    move-object v3, v2

    :goto_1d
    if-eqz v1, :cond_23

    if-nez v3, :cond_23

    goto/16 :goto_1e5

    .line 619
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v4, :cond_3c

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    goto :goto_3d

    :cond_3c
    move-object v4, v2

    .line 622
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_4f
    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ge v8, v6, :cond_d1

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    check-cast v8, Ljava/lang/String;

    .line 37
    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 627
    invoke-static {v10, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cd

    if-eqz v1, :cond_95

    .line 629
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    .line 38
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v9

    :goto_79
    if-ge v12, v11, :cond_95

    .line 39
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 51
    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 630
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v14

    if-eqz v14, :cond_92

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_92

    goto :goto_cd

    :cond_92
    add-int/lit8 v12, v12, 0x1

    goto :goto_79

    :cond_95
    if-eqz v4, :cond_be

    .line 632
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_be

    .line 38
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v9

    :goto_a2
    if-ge v12, v11, :cond_be

    .line 39
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 30
    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 633
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v14

    if-eqz v14, :cond_bb

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bb

    goto :goto_cd

    :cond_bb
    add-int/lit8 v12, v12, 0x1

    goto :goto_a2

    .line 636
    :cond_be
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    invoke-static {v8, v9, v7, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    :cond_cd
    :goto_cd
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4f

    .line 640
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_e2
    if-ge v8, v6, :cond_1e5

    .line 54
    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/permission/Permission;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 644
    invoke-virtual {v12, v13, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionIfDynamic(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v11

    .line 645
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v14

    .line 646
    invoke-static {v14, v9, v7, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v14

    .line 647
    invoke-virtual {v14}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v14

    .line 648
    invoke-virtual {v14, v6, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->putAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v11}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 650
    invoke-static {v11, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_139

    if-eqz v1, :cond_144

    .line 652
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v11

    .line 38
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v14

    move v15, v9

    :goto_121
    if-ge v15, v14, :cond_144

    .line 39
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 51
    check-cast v16, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 653
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v17

    if-nez v17, :cond_140

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_140

    :cond_139
    :goto_139
    move v8, v9

    move v9, v7

    move-object v7, v2

    move-object/from16 v2, p3

    goto/16 :goto_1dd

    :cond_140
    add-int/lit8 v15, v15, 0x1

    const/4 v8, -0x1

    goto :goto_121

    :cond_144
    if-eqz v4, :cond_16d

    .line 655
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_16d

    .line 38
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v11

    move v14, v9

    :goto_151
    if-ge v14, v11, :cond_16d

    .line 39
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 30
    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 656
    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_16a

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16a

    goto :goto_139

    :cond_16a
    add-int/lit8 v14, v14, 0x1

    goto :goto_151

    .line 664
    :cond_16d
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v11

    move v14, v9

    :goto_17e
    if-ge v14, v11, :cond_1c5

    .line 39
    invoke-virtual {v8, v14}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v15

    .line 665
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v7

    :goto_194
    if-ge v9, v7, :cond_1b8

    move/from16 v16, v14

    .line 45
    invoke-virtual {v2, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v14

    invoke-virtual {v2, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v17

    check-cast v17, Lcom/android/server/permission/access/immutable/IndexedListSet;

    const/16 v17, 0x0

    move/from16 v18, v16

    move-object/from16 v16, v10

    move/from16 v10, v18

    .line 666
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-object/from16 v12, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, p1

    move v14, v10

    move-object v10, v12

    move-object/from16 v12, p0

    goto :goto_194

    :cond_1b8
    move-object v12, v10

    move v10, v14

    add-int/lit8 v14, v10, 0x1

    move-object/from16 v13, p1

    move-object v10, v12

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v12, p0

    goto :goto_17e

    :cond_1c5
    move-object v12, v10

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v2, v8, v9, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    move-object/from16 v2, p3

    .line 80
    invoke-virtual {v2, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    :goto_1dd
    add-int/lit8 v6, v6, -0x1

    move-object v2, v7

    move v7, v9

    move v9, v8

    const/4 v8, -0x1

    goto/16 :goto_e2

    :cond_1e5
    :goto_1e5
    return-void
.end method

.method public final updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V
    .registers 16

    .line 34
    invoke-virtual {p4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 221
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 222
    invoke-static {v0, p5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    and-int/2addr p5, p6

    or-int/2addr p5, v1

    if-ne v0, p5, :cond_14

    goto/16 :goto_be

    :cond_14
    const p6, 0x38000

    .line 226
    invoke-static {p5, p6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result p6

    .line 133
    invoke-virtual {p4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    const/high16 v2, 0x40000

    if-eqz v1, :cond_3c

    if-nez p6, :cond_3c

    or-int/2addr p5, v2

    .line 232
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 v1, 0x80

    .line 233
    invoke-static {p5, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p5

    goto :goto_40

    .line 236
    :cond_3c
    invoke-static {p5, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p5

    .line 139
    :cond_40
    :goto_40
    invoke-virtual {p4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v1, 0x8

    invoke-static {p4, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p4

    const/high16 v8, 0x80000

    if-eqz p4, :cond_b5

    if-nez p6, :cond_b5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 240
    invoke-static/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion$default(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;Lcom/android/server/permission/access/AccessState;ILjava/lang/Object;)I

    move-result p0

    move-object p4, v4

    .line 1621
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p6

    .line 1624
    invoke-virtual {p6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_77
    if-ge v4, v3, :cond_b1

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 1626
    invoke-virtual {p6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    .line 1627
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_ae

    .line 242
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 243
    invoke-virtual {v1, v5, p0, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSoftRestrictedPermissionExemptForPackage(Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    goto :goto_b7

    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    :cond_b1
    or-int p0, p5, v8

    :goto_b3
    move p5, p0

    goto :goto_bc

    :cond_b5
    move-object v1, p0

    move-object p4, v4

    .line 256
    :goto_b7
    invoke-static {p5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p0

    goto :goto_b3

    :goto_bc
    if-ne v0, p5, :cond_bf

    :goto_be
    return-void

    :cond_bf
    move-object p0, v1

    .line 261
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z
    .registers 12

    const/4 v0, 0x0

    .line 1937
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1927
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1931
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to update permission flags for missing user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1935
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/UserState;

    .line 1936
    invoke-virtual {v2}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    .line 1935
    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 1937
    invoke-static {v2, p4, v1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1938
    invoke-static {v2, p5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v3

    and-int/2addr p5, p6

    or-int/2addr p5, v3

    if-ne v2, p5, :cond_58

    return v0

    .line 1942
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object p1

    const/4 p6, 0x2

    const/4 v3, 0x0

    invoke-static {p1, p3, v0, p6, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p6

    const/4 v4, 0x1

    if-eqz p6, :cond_71

    goto :goto_79

    .line 1943
    :cond_71
    new-instance p6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {p6, v3, v4, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-virtual {p1, p2, p6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

    .line 1943
    :goto_79
    check-cast p6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 1944
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p6, p4, v3, v1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    invoke-virtual {p6}, Lcom/android/server/permission/access/immutable/IndexedMap;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_8b

    .line 1946
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 1948
    :cond_8b
    iget-object p6, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 38
    invoke-virtual {p6}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v1

    :goto_91
    if-ge v0, v1, :cond_a6

    .line 39
    invoke-virtual {p6, v0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    move p1, p2

    move p2, p3

    move-object p3, p4

    move p4, v2

    .line 1949
    invoke-interface/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onPermissionFlagsChanged(IILjava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    move-object p4, p3

    move p3, p2

    move p2, p1

    goto :goto_91

    :cond_a6
    return v4
.end method

.method public final updatePermissionIfDynamic(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)Lcom/android/server/permission/access/permission/Permission;
    .registers 12

    .line 43
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 34
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    if-nez p0, :cond_14

    return-object p2

    .line 683
    :cond_14
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 684
    iput-object p1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 686
    invoke-virtual {p0}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    const/16 v7, 0x34

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 681
    invoke-static/range {v0 .. v8}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZII[IZILjava/lang/Object;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object p0

    return-object p0

    :cond_36
    move-object v0, p2

    return-object v0
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 5

    .line 1979
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    return-void
.end method
