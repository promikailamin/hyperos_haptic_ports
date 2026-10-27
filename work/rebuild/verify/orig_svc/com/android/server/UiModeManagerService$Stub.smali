.class public final Lcom/android/server/UiModeManagerService$Stub;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public static synthetic $r8$lambda$TV9EAceiCXd-6xqembbbA6h2_RM(Lcom/android/server/UiModeManagerService$Stub;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->lambda$setAttentionModeThemeOverlay$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kEKw_iOiu7UZa8ZrwTxGXSouA2s(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u2YdeWTEr_oQCDXr0OTTzC4ztdY(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .registers 2

    .line 980
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)V
    .registers 3

    .line 857
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 858
    invoke-static {p2}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/IUiModeManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/app/IUiModeManagerCallback;I)V
    .registers 10

    .line 864
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "addCallback"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 864
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 866
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 867
    :try_start_19
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 868
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_48

    .line 870
    :cond_37
    :goto_37
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 871
    monitor-exit v1

    return-void

    :goto_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_34

    throw p0
.end method

.method public addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V
    .registers 7

    .line 1397
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener_enforcePermission()V

    if-nez p2, :cond_6

    goto :goto_71

    .line 1402
    :cond_6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1404
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1405
    :try_start_10
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_26

    .line 1406
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmProjectionListeners(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_72

    .line 1408
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_40

    .line 1409
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1411
    :cond_40
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 1415
    invoke-static {p0, p2, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    move-result p0

    .line 1416
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2
    :try_end_61
    .catchall {:try_start_10 .. :try_end_61} :catchall_24

    if-nez p2, :cond_70

    .line 1418
    :try_start_63
    invoke-interface {p1, p0, v1}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_66} :catch_67
    .catchall {:try_start_63 .. :try_end_66} :catchall_24

    goto :goto_70

    .line 1420
    :catch_67
    :try_start_67
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed a call to onProjectionStateChanged() during listener registration."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_70
    :goto_70
    monitor-exit v0

    :goto_71
    return-void

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_24

    throw p0
.end method

.method public disableCarMode(I)V
    .registers 3

    const/4 v0, 0x0

    .line 942
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    return-void
.end method

.method public disableCarModeByCallingPackage(ILjava/lang/String;)V
    .registers 10

    .line 953
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 954
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "disableCarMode while UI mode is locked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 964
    :cond_10
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    if-nez v1, :cond_32

    if-nez v2, :cond_32

    .line 968
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    :cond_32
    if-eqz v1, :cond_36

    move v0, p1

    goto :goto_38

    :cond_36
    and-int/lit8 v0, p1, -0x3

    .line 973
    :goto_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 975
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_8d

    .line 978
    :try_start_43
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCarModePackagePriority(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 979
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v6, p2}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 981
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda3;-><init>()V

    .line 982
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 983
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 985
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v3, v0, v5, p2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 986
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_86

    .line 987
    invoke-virtual {p0, v3, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_86

    :catchall_84
    move-exception p0

    goto :goto_8b

    .line 989
    :cond_86
    :goto_86
    monitor-exit v4
    :try_end_87
    .catchall {:try_start_43 .. :try_end_87} :catchall_84

    .line 991
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 989
    :goto_8b
    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_84

    :try_start_8c
    throw p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p0

    .line 991
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 992
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1175
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 1176
    :cond_11
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableCarMode(IILjava/lang/String;)V
    .registers 9

    .line 902
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 903
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "enableCarMode while UI mode is locked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz p2, :cond_29

    .line 907
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 908
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 911
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 917
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_38

    goto :goto_3d

    .line 919
    :cond_38
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 922
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 924
    :try_start_41
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_62

    .line 925
    :try_start_48
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 926
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_5b

    const/4 p2, 0x0

    .line 927
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_5b

    :catchall_59
    move-exception p0

    goto :goto_60

    .line 929
    :cond_5b
    :goto_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_59

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 929
    :goto_60
    :try_start_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_59

    :try_start_61
    throw p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    throw p0
.end method

.method public getActiveProjectionTypes()I
    .registers 5

    .line 1368
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes_enforcePermission()V

    .line 1370
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1371
    :try_start_a
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    move v1, v2

    .line 1372
    :goto_14
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 1373
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 1374
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_40

    :catchall_3e
    move-exception p0

    goto :goto_46

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_43
    move v2, v1

    .line 1378
    :cond_44
    monitor-exit v0

    return v2

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_a .. :try_end_47} :catchall_3e

    throw p0
.end method

.method public getAttentionModeThemeOverlay()I
    .registers 2

    .line 1119
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getAttentionModeThemeOverlay_enforcePermission()V

    .line 1120
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1121
    :try_start_a
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmAttentionModeThemeOverlay(Lcom/android/server/UiModeManagerService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 1122
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getContrast(I)F
    .registers 9

    .line 1446
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getContrast"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    .line 1446
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1448
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1449
    :try_start_19
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetContrastLocked(Lcom/android/server/UiModeManagerService;I)F

    move-result p0

    monitor-exit v1

    return p0

    :catchall_21
    move-exception v0

    move-object p0, v0

    .line 1450
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public getCurrentModeType(I)I
    .registers 5

    .line 997
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 998
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    and-int/lit8 p1, p1, 0xf

    if-eqz p1, :cond_1a

    .line 1001
    monitor-exit v0

    return p1

    :catchall_18
    move-exception p0

    goto :goto_28

    .line 1003
    :cond_1a
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurUiMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    monitor-exit v0

    return p0

    .line 1004
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_18

    throw p0
.end method

.method public getCustomNightModeEnd()J
    .registers 5

    .line 1279
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCustomNightModeStart()J
    .registers 5

    .line 1248
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getForceInvertOverrideState(ILjava/lang/String;)I
    .registers 11

    .line 1475
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1476
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    const-string v6, "getForceInvertOverrideState"

    const/4 v4, 0x0

    move v3, p1

    move-object v7, p2

    .line 1476
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1479
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1480
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetForceInvertOverrideStateLocked(Lcom/android/server/UiModeManagerService;I)Lcom/android/server/accessibility/ForceInvertOverrideState;

    move-result-object p0

    .line 1481
    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/ForceInvertOverrideState;->getStateForPackage(Ljava/lang/String;)I

    move-result p0

    monitor-exit p2

    return p0

    :catchall_2a
    move-exception v0

    move-object p0, v0

    .line 1482
    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2a

    throw p0
.end method

.method public getForceInvertState(I)I
    .registers 9

    .line 1461
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getForceInvertState"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    .line 1461
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1463
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1464
    :try_start_19
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetForceInvertStateLocked(Lcom/android/server/UiModeManagerService;I)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_21
    move-exception v0

    move-object p0, v0

    .line 1465
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_21

    throw p0
.end method

.method public getNightMode(I)I
    .registers 5

    .line 1074
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1075
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmDisplayUiModeOverrides(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_1a

    .line 1078
    monitor-exit v0

    return p1

    :catchall_18
    move-exception p0

    goto :goto_26

    .line 1080
    :cond_1a
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p0

    monitor-exit v0

    return p0

    .line 1081
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_18

    throw p0
.end method

.method public getNightModeCustomType()I
    .registers 2

    .line 1094
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType_enforcePermission()V

    .line 1095
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1096
    :try_start_a
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    .line 1097
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getProjectingPackages(I)Ljava/util/List;
    .registers 4

    .line 1386
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages_enforcePermission()V

    .line 1387
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1388
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    .line 1390
    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception p0

    .line 1391
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isNightModeLocked()Z
    .registers 2

    .line 1162
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1163
    :try_start_7
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1164
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isUiModeLocked()Z
    .registers 2

    .line 1155
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1156
    :try_start_7
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 1157
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final synthetic lambda$setAttentionModeThemeOverlay$1()V
    .registers 2

    .line 1111
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1170
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public releaseProjection(ILjava/lang/String;)Z
    .registers 4

    .line 1357
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1358
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$smassertSingleProjectionType(I)V

    .line 1359
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V

    .line 1360
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1362
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeCallback(Landroid/app/IUiModeManagerCallback;I)V
    .registers 10

    .line 885
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "removeCallback"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p2

    .line 885
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 887
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 888
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    .line 889
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_3e

    .line 891
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 892
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_3e

    .line 893
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeManagerCallbacks(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3e

    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto :goto_40

    .line 896
    :cond_3e
    :goto_3e
    monitor-exit v1

    return-void

    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_3b

    throw p0
.end method

.method public removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    .registers 5

    .line 1433
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener_enforcePermission()V

    .line 1434
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1435
    :try_start_a
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    .line 1436
    :goto_13
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1437
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catchall_31
    move-exception p0

    goto :goto_35

    .line 1440
    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_31

    throw p0
.end method

.method public requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 14

    .line 1311
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1312
    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$smassertSingleProjectionType(I)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V

    .line 1314
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1316
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1317
    :try_start_17
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2f

    .line 1318
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v0, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmProjectionHolders(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V

    goto :goto_2f

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c3

    .line 1320
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1321
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1323
    :cond_49
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    move v4, v3

    .line 1326
    :goto_57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 1327
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1328
    monitor-exit v1

    return v2

    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_72
    if-ne p2, v2, :cond_7c

    .line 1336
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7c

    .line 1337
    monitor-exit v1

    return v3

    .line 1340
    :cond_7c
    new-instance v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v8, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v8, v5}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;)V

    const/4 v9, 0x0

    move-object v7, p1

    move v6, p2

    move-object v5, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;Lcom/android/server/UiModeManagerService-IA;)V

    .line 1343
    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$mlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Z

    move-result p1

    if-nez p1, :cond_94

    .line 1344
    monitor-exit v1

    return v3

    .line 1346
    :cond_94
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " set projection type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$monProjectionStateChangedLocked(Lcom/android/server/UiModeManagerService;I)V

    .line 1350
    monitor-exit v1

    return v2

    :goto_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_17 .. :try_end_c4} :catchall_2b

    throw p0
.end method

.method public setApplicationNightMode(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    if-eq p1, v1, :cond_23

    if-eq p1, v0, :cond_23

    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    goto :goto_23

    .line 1134
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    if-eq p1, v1, :cond_2c

    if-eq p1, v0, :cond_29

    const/4 p1, 0x0

    goto :goto_2e

    :cond_29
    const/16 p1, 0x20

    goto :goto_2e

    :cond_2c
    const/16 p1, 0x10

    .line 1147
    :goto_2e
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object p0

    .line 1149
    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    .line 1150
    invoke-interface {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    return-void
.end method

.method public setAttentionModeThemeOverlay(I)V
    .registers 4

    .line 1104
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->setAttentionModeThemeOverlay_enforcePermission()V

    .line 1106
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1108
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1109
    :try_start_d
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmAttentionModeThemeOverlay(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    if-eq v1, p1, :cond_25

    .line 1110
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmAttentionModeThemeOverlay(Lcom/android/server/UiModeManagerService;I)V

    .line 1111
    new-instance p1, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService$Stub;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_27

    .line 1113
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_23

    throw p0
.end method

.method public setCustomNightModeEnd(J)V
    .registers 8

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1287
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1291
    :cond_1e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1293
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    .line 1296
    :try_start_2c
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_30
    .catch Ljava/time/DateTimeException; {:try_start_2c .. :try_end_30} :catch_46
    .catchall {:try_start_2c .. :try_end_30} :catchall_44

    if-nez p1, :cond_36

    .line 1303
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1298
    :cond_36
    :try_start_36
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V

    .line 1299
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_40
    .catch Ljava/time/DateTimeException; {:try_start_36 .. :try_end_40} :catch_46
    .catchall {:try_start_36 .. :try_end_40} :catchall_44

    .line 1303
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception p0

    goto :goto_4f

    .line 1301
    :catch_46
    :try_start_46
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_44

    .line 1303
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1304
    throw p0
.end method

.method public setCustomNightModeStart(J)V
    .registers 8

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1256
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1260
    :cond_1e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1262
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    .line 1265
    :try_start_2c
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_30
    .catch Ljava/time/DateTimeException; {:try_start_2c .. :try_end_30} :catch_4b
    .catchall {:try_start_2c .. :try_end_30} :catchall_49

    if-nez p1, :cond_36

    .line 1273
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1267
    :cond_36
    :try_start_36
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V

    .line 1268
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 1269
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_45
    .catch Ljava/time/DateTimeException; {:try_start_36 .. :try_end_45} :catch_4b
    .catchall {:try_start_36 .. :try_end_45} :catchall_49

    .line 1273
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception p0

    goto :goto_54

    .line 1271
    :catch_4b
    :try_start_4b
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_49

    .line 1273
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    throw p0
.end method

.method public setNightMode(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    .line 1013
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeInternal(II)V

    return-void
.end method

.method public setNightModeActivated(Z)Z
    .registers 4

    .line 1186
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeActivatedForModeInternal(IZZ)Z

    move-result p0

    return p0
.end method

.method public setNightModeActivatedForCustomMode(IZ)Z
    .registers 4

    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeActivatedForModeInternal(IZZ)Z

    move-result p0

    return p0
.end method

.method public final setNightModeActivatedForModeInternal(IZZ)Z
    .registers 9

    .line 1191
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1194
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1197
    :cond_19
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1198
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v0, v2, :cond_41

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 1201
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1206
    :cond_41
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4c

    .line 1211
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmLastBedtimeRequestedNightMode(Lcom/android/server/UiModeManagerService;Z)V

    .line 1213
    :cond_4c
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq p1, v2, :cond_55

    return v1

    .line 1216
    :cond_55
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1217
    :try_start_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_f1

    .line 1219
    :try_start_60
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v3

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v3

    .line 1220
    invoke-interface {v3}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7a

    goto :goto_ad

    .line 1226
    :cond_7a
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v0, :cond_95

    if-eqz p2, :cond_95

    .line 1227
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p2

    invoke-interface {p2, v4}, Lcom/android/server/UiModeManagerService$IntProperty;->set(I)V

    goto :goto_d0

    :catchall_93
    move-exception p0

    goto :goto_f3

    .line 1228
    :cond_95
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v3

    if-ne v3, v4, :cond_d0

    if-nez p2, :cond_d0

    .line 1229
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/android/server/UiModeManagerService$IntProperty;->set(I)V

    goto :goto_d0

    .line 1221
    :cond_ad
    :goto_ad
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1222
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    xor-int/lit8 v4, p2, 0x1

    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeOff(Lcom/android/server/UiModeManagerService;Z)V

    .line 1223
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeOn(Lcom/android/server/UiModeManagerService;Z)V

    .line 1224
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    invoke-static {p2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeUser(Lcom/android/server/UiModeManagerService;I)V

    .line 1225
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    invoke-static {p2, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightModeOverrides(Lcom/android/server/UiModeManagerService;I)V

    :cond_d0
    :goto_d0
    if-eqz p3, :cond_d9

    .line 1234
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/16 p3, 0x3e8

    invoke-static {p2, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmAttentionModeThemeOverlay(Lcom/android/server/UiModeManagerService;I)V

    .line 1236
    :cond_d9
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1237
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mapplyConfigurationExternallyLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1238
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V
    :try_end_ec
    .catchall {:try_start_60 .. :try_end_ec} :catchall_93

    .line 1241
    :try_start_ec
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p1

    return v0

    :catchall_f1
    move-exception p0

    goto :goto_f7

    :goto_f3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1242
    throw p0

    .line 1243
    :goto_f7
    monitor-exit p1
    :try_end_f8
    .catchall {:try_start_ec .. :try_end_f8} :catchall_f1

    throw p0
.end method

.method public setNightModeCustomType(I)V
    .registers 3

    .line 1087
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType_enforcePermission()V

    const/4 v0, 0x3

    .line 1088
    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService$Stub;->setNightModeInternal(II)V

    return-void
.end method

.method public final setNightModeInternal(II)V
    .registers 9

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Stub;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1020
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v0, 0x3

    if-eqz p1, :cond_64

    const/4 v1, 0x1

    if-eq p1, v1, :cond_64

    const/4 v1, 0x2

    if-eq p1, v1, :cond_64

    if-ne p1, v0, :cond_4d

    .line 1029
    sget-object v1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_64

    .line 1032
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set the custom type to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1035
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1038
    :cond_64
    :goto_64
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->enforceCurrentUserIfVisibleBackgroundEnabled()V

    .line 1040
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1043
    :try_start_6f
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_104

    .line 1044
    :try_start_76
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v5

    if-ne v5, p1, :cond_8e

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eq v5, p2, :cond_fd

    goto :goto_8e

    :catchall_8b
    move-exception p0

    goto/16 :goto_102

    .line 1045
    :cond_8e
    :goto_8e
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object v5

    .line 1046
    invoke-interface {v5}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result v5

    if-ne v5, v0, :cond_b0

    .line 1047
    :cond_a6
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1048
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V

    .line 1050
    :cond_b0
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    if-ne p1, v0, :cond_b5

    goto :goto_b6

    :cond_b5
    const/4 p2, -0x1

    .line 1052
    :goto_b6
    invoke-static {v5, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightModeCustomType(Lcom/android/server/UiModeManagerService;I)V

    .line 1053
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/server/UiModeManagerService$IntProperty;->set(I)V

    .line 1054
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z

    .line 1055
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 1057
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    if-eqz p1, :cond_e4

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$IntProperty;

    move-result-object p1

    .line 1058
    invoke-interface {p1}, Lcom/android/server/UiModeManagerService$IntProperty;->get()I

    move-result p1

    if-ne p1, v0, :cond_ec

    :cond_e4
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 1059
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 1060
    :cond_ec
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1061
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_fd

    .line 1063
    :cond_f8
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mregisterDeviceInactiveListenerLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1066
    :cond_fd
    :goto_fd
    monitor-exit v4
    :try_end_fe
    .catchall {:try_start_76 .. :try_end_fe} :catchall_8b

    .line 1068
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1066
    :goto_102
    :try_start_102
    monitor-exit v4
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_8b

    :try_start_103
    throw p0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    :catchall_104
    move-exception p0

    .line 1068
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    throw p0
.end method
