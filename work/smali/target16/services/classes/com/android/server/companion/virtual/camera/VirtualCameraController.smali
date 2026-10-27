.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController;
.super Ljava/lang/Object;
.source "VirtualCameraController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCameraPolicy:I

.field public final mCameras:Ljava/util/Map;

.field public final mDeviceId:I

.field public final mServiceLock:Ljava/lang/Object;

.field public mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V

    return-void
.end method

.method public constructor <init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 77
    iput p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    .line 78
    iput p3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 153
    const-string v0, "VirtualCameraController"

    const-string v1, "Virtual camera service died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_b
    iput-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 156
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1b

    .line 157
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v1

    .line 158
    :try_start_11
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 159
    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p0

    :catchall_1b
    move-exception p0

    .line 156
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final checkConfigByPolicy(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .registers 4

    .line 199
    iget v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    if-eqz v0, :cond_51

    const/4 v0, 0x2

    .line 207
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v1

    if-ne v0, v1, :cond_c

    goto :goto_1a

    .line 211
    :cond_c
    iget v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    if-eqz v0, :cond_36

    .line 217
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->isLensFacingAlreadyPresent(I)Z

    move-result p0

    if-nez p0, :cond_1b

    :goto_1a
    return-void

    .line 218
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only a single virtual camera can be created with lens facing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create virtual camera with DEVICE_POLICY_DEFAULT for POLICY_TYPE_CAMERA and lens facing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create virtual camera with DEVICE_POLICY_DEFAULT for POLICY_TYPE_CAMERA."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 7

    .line 164
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 166
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 168
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3f

    .line 169
    :try_start_11
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_2d

    .line 171
    :try_start_27
    iget-object v4, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-interface {v4, v3}, Landroid/companion/virtualcamera/IVirtualCameraService;->unregisterCamera(Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2f
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    goto :goto_1b

    :catchall_2d
    move-exception p0

    goto :goto_41

    :catch_2f
    move-exception v3

    .line 173
    :try_start_30
    const-string v4, "VirtualCameraController"

    const-string v5, "close(): Camera failed to be removed on camera service."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 177
    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    .line 178
    :try_start_39
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p0

    goto :goto_4f

    .line 177
    :goto_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_2d

    :try_start_42
    throw p0

    .line 180
    :cond_43
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_3f

    .line 181
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 182
    :try_start_48
    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 183
    monitor-exit v1

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw p0

    .line 180
    :goto_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_3f

    throw p0
.end method

.method public final connectVirtualCameraService()V
    .registers 5

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    :try_start_4
    const-string/jumbo v2, "virtual_camera"

    .line 251
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 253
    const-string p0, "VirtualCameraController"

    const-string v2, "connectVirtualCameraService: Failed to connect to the virtual camera service"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_1a
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_31

    :catch_1a
    move-exception p0

    goto :goto_2a

    :cond_1c
    const/4 v3, 0x0

    .line 257
    :try_start_1d
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 258
    invoke-static {v2}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_1a
    .catchall {:try_start_1d .. :try_end_26} :catchall_18

    .line 262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 260
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_18

    .line 262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    throw p0
.end method

.method public final connectVirtualCameraServiceIfNeeded()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    if-nez v1, :cond_d

    .line 238
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraService()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_1b

    .line 241
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    if-eqz p0, :cond_13

    .line 244
    monitor-exit v0

    return-void

    .line 242
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Virtual camera service is not connected."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_b

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 189
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VirtualCameraController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " registered cameras"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->-$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :catchall_55
    move-exception p0

    goto :goto_59

    .line 194
    :cond_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_55

    throw p0
.end method

.method public getCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 143
    :try_start_3
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_19

    .line 144
    :try_start_6
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraService;->getCameraId(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    move-exception p0

    .line 147
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final isLensFacingAlreadyPresent(I)Z
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 225
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 226
    invoke-static {v1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->-$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v1

    if-ne v1, p1, :cond_d

    const/4 p0, 0x1

    .line 227
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    goto :goto_2b

    .line 230
    :cond_28
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_26

    throw p0
.end method

.method public registerCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;Landroid/content/AttributionSource;)V
    .registers 5

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->checkConfigByPolicy(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 93
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 94
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;-><init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 96
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    .line 97
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 98
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_20} :catch_2a

    .line 99
    :try_start_20
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v1

    goto :goto_37

    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0

    :catch_2a
    move-exception p0

    goto :goto_34

    .line 103
    :cond_2c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to register virtual camera."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_2a

    .line 106
    :goto_34
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 108
    :goto_37
    const-string/jumbo p0, "virtual_devices.value_virtual_camera_created_count"

    .line 110
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    .line 108
    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public final registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z
    .registers 5

    .line 267
    invoke-static {p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->getServiceCameraConfiguration(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_7
    iget v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    .line 275
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1, v0, v2}, Landroid/companion/virtualcamera/IVirtualCameraService;->registerCamera(Landroid/os/IBinder;Landroid/companion/virtualcamera/VirtualCameraConfiguration;I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_19
    move-exception p0

    .line 277
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 120
    :try_start_3
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 121
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 122
    const-string p0, "VirtualCameraController"

    const-string p1, "Virtual camera was not registered."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catchall_1b
    move-exception p0

    goto :goto_39

    .line 124
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1b

    .line 127
    :try_start_20
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_2f
    .catchall {:try_start_20 .. :try_end_23} :catchall_1b

    .line 128
    :try_start_23
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-interface {v2, p1}, Landroid/companion/virtualcamera/IVirtualCameraService;->unregisterCamera(Landroid/os/IBinder;)V

    .line 129
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_31

    .line 130
    :try_start_29
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_1b

    goto :goto_37

    :catch_2f
    move-exception p0

    goto :goto_34

    :catchall_31
    move-exception p0

    .line 129
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_34} :catch_2f
    .catchall {:try_start_33 .. :try_end_34} :catchall_1b

    .line 132
    :goto_34
    :try_start_34
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 135
    :goto_37
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_1b

    throw p0
.end method
