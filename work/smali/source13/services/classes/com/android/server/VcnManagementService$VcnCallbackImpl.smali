.class Lcom/android/server/VcnManagementService$VcnCallbackImpl;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Lcom/android/server/VcnManagementService$VcnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnCallbackImpl"
.end annotation


# instance fields
.field private final mSubGroup:Landroid/os/ParcelUuid;

.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .registers 3
    .param p2, "subGroup"    # Landroid/os/ParcelUuid;

    .line 1341
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    const-string p1, "Missing subGroup"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    .line 1343
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$VcnCallbackImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGatewayConnectionError$0$com-android-server-VcnManagementService$VcnCallbackImpl(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "cbInfo"    # Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    .param p2, "gatewayConnectionName"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "exceptionClass"    # Ljava/lang/String;
    .param p5, "exceptionMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1378
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/net/vcn/IVcnStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1385
    goto :goto_e

    .line 1383
    :catch_6
    move-exception v0

    .line 1384
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    const-string v2, "VcnStatusCallback threw on VCN status change"

    invoke-static {v1, v2, v0}, Lcom/android/server/VcnManagementService;->-$$Nest$mlogDbg(Lcom/android/server/VcnManagementService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "exceptionClass"    # Ljava/lang/String;
    .param p4, "exceptionMessage"    # Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1369
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1370
    monitor-exit v0

    return-void

    .line 1374
    :cond_17
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmRegisteredStatusCallbacks(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 1375
    .local v2, "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-static {v3, v2, v4}, Lcom/android/server/VcnManagementService;->-$$Nest$misCallbackPermissioned(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1376
    new-instance v10, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService$VcnCallbackImpl;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1388
    .end local v2    # "cbInfo":Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
    :cond_4a
    goto :goto_25

    .line 1389
    :cond_4b
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public onSafeModeStatusChanged(Z)V
    .registers 6
    .param p1, "isInSafeMode"    # Z

    .line 1347
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1349
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1350
    monitor-exit v0

    return-void

    .line 1354
    :cond_17
    if-eqz p1, :cond_1b

    const/4 v1, 0x3

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x2

    .line 1356
    .local v1, "status":I
    :goto_1c
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->-$$Nest$mnotifyAllPolicyListenersLocked(Lcom/android/server/VcnManagementService;)V

    .line 1357
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    iget-object v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-static {v2, v3, v1}, Lcom/android/server/VcnManagementService;->-$$Nest$mnotifyAllPermissionedStatusCallbacksLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V

    .line 1358
    .end local v1    # "status":I
    monitor-exit v0

    .line 1359
    return-void

    .line 1358
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method
