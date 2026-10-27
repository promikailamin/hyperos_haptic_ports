.class Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final greylist-max-o mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;Landroid/content/AttributionSource;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothHidDevice$Callback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 347
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;-><init>()V

    .line 348
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 349
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 350
    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    .line 351
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAppStatusChanged$0$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 358
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method synthetic blacklist lambda$onConnectionStateChanged$1$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 369
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method synthetic blacklist lambda$onGetReport$2$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 380
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method

.method synthetic blacklist lambda$onInterruptData$5$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 413
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method

.method synthetic blacklist lambda$onSetProtocol$4$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 402
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method synthetic blacklist lambda$onSetReport$3$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 391
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    return-void
.end method

.method synthetic blacklist lambda$onVirtualCableUnplug$6$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 424
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public greylist-max-o onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 355
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 356
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 358
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 360
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 361
    throw v2
.end method

.method public greylist-max-o onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 367
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 369
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 371
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 372
    nop

    .line 373
    return-void

    .line 371
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 372
    throw v2
.end method

.method public greylist-max-o onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 15
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 378
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda2;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 382
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 383
    throw v2
.end method

.method public greylist-max-o onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 410
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 411
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 413
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 415
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 416
    throw v2
.end method

.method public greylist-max-o onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 399
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 400
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 402
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 404
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 405
    nop

    .line 406
    return-void

    .line 404
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 405
    throw v2
.end method

.method public greylist-max-o onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 15
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 388
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 389
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 391
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BB[B)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 393
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 394
    nop

    .line 395
    return-void

    .line 393
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 394
    throw v2
.end method

.method public greylist-max-o onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 421
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 422
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 424
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 426
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 427
    nop

    .line 428
    return-void

    .line 426
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    .line 427
    throw v2
.end method
