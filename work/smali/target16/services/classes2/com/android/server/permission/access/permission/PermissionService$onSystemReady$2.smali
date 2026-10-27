.class public final Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 2405
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .registers 7

    .line 2406
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 311
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 312
    :try_start_d
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_47

    .line 313
    :cond_1d
    :goto_1d
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v3

    .line 314
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 2406
    # getter for: Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object p0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->onDeviceIdRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 315
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 316
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 317
    # getter for: Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    new-instance p1, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {p1, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 318
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_1b

    .line 311
    monitor-exit v1

    return-void

    :goto_47
    monitor-exit v1

    throw p0
.end method
