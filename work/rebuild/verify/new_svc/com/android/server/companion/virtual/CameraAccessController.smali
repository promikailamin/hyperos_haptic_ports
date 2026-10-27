.class public Lcom/android/server/companion/virtual/CameraAccessController;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraAccessController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

.field public final mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mObserverCount:I

.field public final mObserverLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageToSessionData:Landroid/util/ArrayMap;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$monInjectionError(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/CameraAccessController;->onInjectionError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monInjectionSucceeded(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/CameraAccessController;->onInjectionSucceeded(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 92
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 94
    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    .line 95
    const-class p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 97
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public blockCameraAccessIfNeeded(Ljava/util/Set;)V
    .registers 9

    .line 152
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 153
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 154
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    .line 156
    iget-object v4, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 157
    iget-object v3, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 158
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 159
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-nez v3, :cond_53

    .line 161
    new-instance v3, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v3}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    .line 162
    iput v6, v3, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 163
    iget-object v5, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_5b

    .line 165
    :cond_53
    :goto_53
    invoke-virtual {p0, v4, v2}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 170
    :cond_59
    monitor-exit v0

    return-void

    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_51

    throw p0
.end method

.method public close()V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-gez v1, :cond_22

    .line 177
    const-string v1, "CameraAccessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected negative mObserverCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catchall_20
    move-exception p0

    goto :goto_80

    :cond_22
    if-lez v1, :cond_3c

    .line 179
    const-string v1, "CameraAccessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected close with observers remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3c
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_20

    .line 183
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_40
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 185
    iget-object v2, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraInjectionSession;

    .line 186
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    goto :goto_60

    :catchall_70
    move-exception p0

    goto :goto_7e

    .line 189
    :cond_72
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 190
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_40 .. :try_end_78} :catchall_70

    .line 191
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void

    .line 190
    :goto_7e
    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_70

    throw p0

    .line 181
    :goto_80
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_20

    throw p0
.end method

.method public getUserId()I
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method public onCameraClosed(Ljava/lang/String;)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_3f

    .line 243
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 244
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraInjectionSession;

    if-eqz v3, :cond_3c

    .line 246
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 247
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v2, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 249
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_41

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 253
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_3a

    throw p0
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 197
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 199
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v2

    .line 200
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 201
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 202
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 203
    invoke-virtual {p0, v4, p2}, Lcom/android/server/companion/virtual/CameraAccessController;->queryUidFromPackageName(ILjava/lang/String;)I

    move-result v4

    .line 204
    iget-object v5, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v5, :cond_5c

    .line 205
    invoke-virtual {v5, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    if-nez v1, :cond_4d

    .line 207
    new-instance v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v1}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    .line 208
    iput v4, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 209
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catchall_4b
    move-exception p0

    goto :goto_9a

    .line 211
    :cond_4d
    :goto_4d
    iget-object v1, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 212
    monitor-exit v0

    return-void

    .line 214
    :cond_57
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    monitor-exit v0

    return-void

    :cond_5c
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 222
    :cond_67
    new-instance v2, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    invoke-direct {v2}, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;-><init>()V

    .line 223
    iput-object p2, v2, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 224
    iput-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUids:Ljava/util/Set;

    .line 225
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_80

    .line 227
    iget-object v2, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraInjectionSession;

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    :goto_81
    if-eqz v2, :cond_98

    .line 229
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 230
    iget-object v2, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p1, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 232
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_98
    monitor-exit v0

    return-void

    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_4b

    throw p0
.end method

.method public final onInjectionError(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2a

    .line 312
    const-string p0, "CameraAccessController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected injection error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for camera:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and package:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_2a
    iget-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 317
    :try_start_2d
    iget-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-eqz p2, :cond_41

    .line 319
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    iget p2, p2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    invoke-interface {p0, p2}, Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;->onCameraAccessBlocked(I)V

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_43

    .line 321
    :cond_41
    :goto_41
    monitor-exit p1

    return-void

    :goto_43
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_3f

    throw p0
.end method

.method public final onInjectionSucceeded(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-nez p0, :cond_2b

    .line 293
    const-string p0, "CameraAccessController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInjectionSucceeded didn\'t find expected entry for package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 296
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    goto :goto_51

    .line 298
    :cond_2b
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraInjectionSession;

    if-eqz p0, :cond_4f

    .line 300
    const-string p2, "CameraAccessController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInjectionSucceeded found unexpected existing session for camera "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 304
    :cond_4f
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_29

    throw p0
.end method

.method public final queryUidFromPackageName(ILjava/lang/String;)I
    .registers 4

    .line 326
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 329
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "queryUidFromPackageName - unknown package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraAccessController"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final startBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 262
    const-string v1, "CameraAccessController"

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBlocking() cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packageName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v5, ""

    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/virtual/CameraAccessController$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController$1;-><init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2e} :catch_37

    move-object v3, p1

    move-object v4, p2

    .line 265
    :try_start_30
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    :try_end_33
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_30 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    :goto_35
    move-object p0, v0

    goto :goto_3b

    :catch_37
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    goto :goto_35

    .line 282
    :goto_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to injectCamera for cameraId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public startObservingIfNeeded()V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-nez v1, :cond_15

    .line 124
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_1d

    .line 126
    :cond_15
    :goto_15
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 127
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_13

    throw p0
.end method

.method public stopObservingIfNeeded()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-gtz v1, :cond_11

    .line 137
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 139
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method
