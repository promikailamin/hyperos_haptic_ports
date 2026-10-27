.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

.field public isKillRuntimePermissionRevokedUidsSkipped:Z

.field public isPermissionFlagsChanged:Z

.field public final killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

.field public final runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .registers 4

    .line 2630
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2635
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 2637
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2638
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-direct {p1, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 2641
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    return-void
.end method

.method public static final synthetic access$isAppBackupAndRestoreRunning(Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;I)Z
    .registers 2

    .line 2630
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isAppBackupAndRestoreRunning(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .registers 3

    .line 2648
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 72
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 5

    .line 2788
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 2790
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAppBackupAndRestoreRunning(I)Z
    .registers 5

    .line 2766
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 2768
    const-string v1, "android.permission.BACKUP"

    .line 2769
    const-string v2, "default:0"

    .line 2766
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 2775
    :cond_e
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2777
    const-string/jumbo v0, "user_setup_complete"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_24

    return v2

    .line 2781
    :cond_24
    :goto_24
    const-string/jumbo v0, "user_setup_personalization_state"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_35

    return v2

    :cond_35
    :goto_35
    return v1
.end method

.method public onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 11

    const/4 v0, 0x1

    .line 2676
    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2678
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 2680
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;
    invoke-static {p2}, Lcom/android/server/permission/access/permission/PermissionService;->access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 305
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_1e

    const-string/jumbo p2, "state"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1e
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2680
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/permission/Permission;

    if-nez p2, :cond_32

    goto :goto_8d

    .line 2681
    :cond_32
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, p5}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p5

    .line 2682
    invoke-virtual {v1, p6}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p6

    .line 49
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_7b

    if-eqz p5, :cond_65

    if-nez p6, :cond_65

    .line 2690
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2691
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_61

    .line 2692
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p4

    if-eqz p4, :cond_61

    move p4, v0

    goto :goto_62

    :cond_61
    move p4, v2

    .line 116
    :goto_62
    invoke-virtual {v1, p1, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2694
    :cond_65
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 77
    invoke-virtual {p4, p1}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6e

    goto :goto_76

    .line 2694
    :cond_6e
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 80
    invoke-virtual {p4, p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_76
    check-cast v1, Ljava/util/Collection;

    .line 2694
    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_7b
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_83

    goto :goto_84

    :cond_83
    move v0, v2

    :goto_84
    if-nez v0, :cond_8d

    if-eq p5, p6, :cond_8d

    .line 2698
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-static {p0, p1}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .registers 13

    .line 2661
    const-string v3, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 2658
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onStateMutated()V
    .registers 20

    move-object/from16 v2, p0

    const/4 v6, 0x0

    .line 2749
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2703
    iget-boolean v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x10

    .line 2704
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 2707
    iput-boolean v6, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2710
    :cond_12
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v1, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntMap;->getSize()I

    move-result v3

    move v4, v6

    :goto_1b
    const/4 v8, 0x0

    if-ge v4, v3, :cond_4c

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntMap;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 2899
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2712
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    move-result-object v11

    if-nez v11, :cond_45

    const-string/jumbo v11, "onPermissionsChangeListeners"

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v8

    :cond_45
    invoke-virtual {v11, v5, v10}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->onPermissionsChanged(ILjava/lang/String;)V

    goto :goto_2c

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 2715
    :cond_4c
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;->clear()V

    .line 2717
    iget-boolean v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    const-string v9, "handler"

    if-nez v0, :cond_bf

    .line 2719
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2720
    iget-object v10, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const-string v11, ", "

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_71
    move-object v5, v0

    goto :goto_77

    .line 2722
    :cond_73
    const-string/jumbo v0, "permissions revoked"

    goto :goto_71

    .line 2724
    :goto_77
    iget-object v10, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    iget-object v4, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 120
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    move v12, v6

    :goto_80
    if-ge v12, v11, :cond_bf

    .line 41
    invoke-virtual {v10, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v10, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .line 2728
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_94

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_94
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 2729
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_a8

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    .line 2730
    :cond_a8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 2731
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;-><init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 2740
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_bc
    add-int/lit8 v12, v12, 0x1

    goto :goto_80

    .line 2744
    :cond_bf
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2746
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    iget-object v1, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    move v4, v6

    :goto_cd
    if-ge v4, v3, :cond_100

    .line 39
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v5

    .line 2749
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v10

    if-nez v10, :cond_dd

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v8

    :cond_dd
    invoke-virtual {v10, v5, v7}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_fd

    .line 2750
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v10

    if-nez v10, :cond_ed

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v8

    .line 2751
    :cond_ed
    invoke-virtual {v10, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2752
    new-instance v11, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;

    invoke-direct {v11, v1, v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v10, v11}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    .line 2755
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_fd
    add-int/lit8 v4, v4, 0x1

    goto :goto_cd

    .line 2758
    :cond_100
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableIntSet;->clear()V

    .line 2760
    iput-boolean v6, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 2761
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V
    .registers 2

    const/4 p1, 0x1

    .line 2644
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    return-void
.end method
