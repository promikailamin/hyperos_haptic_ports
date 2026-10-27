.class Lcom/android/server/companion/virtual/CameraAccessController;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraAccessController.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;,
        Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;,
        Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraAccessController"


# instance fields
.field private mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mObserverCount:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageToSessionData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private final mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$monInjectionError(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/CameraAccessController;->onInjectionError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInjectionSucceeded(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/CameraAccessController;->onInjectionSucceeded(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "virtualDeviceManagerInternal"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .param p3, "blockedCallback"    # Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    .line 82
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 83
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 85
    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    .line 86
    const-class v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    return-void
.end method

.method private onInjectionError(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .line 262
    const/4 v0, 0x2

    if-eq p3, v0, :cond_30

    .line 266
    const-string v0, "CameraAccessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected injection error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 270
    :cond_30
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_33
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 272
    .local v1, "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    if-eqz v1, :cond_44

    .line 273
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;

    iget v3, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    invoke-interface {v2, v3}, Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;->onCameraAccessBlocked(I)V

    .line 275
    .end local v1    # "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    :cond_44
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private onInjectionSucceeded(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CameraInjectionSession;)V
    .registers 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/hardware/camera2/CameraInjectionSession;

    .line 244
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 246
    .local v1, "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    if-nez v1, :cond_2b

    .line 247
    const-string v2, "CameraAccessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInjectionSucceeded didn\'t find expected entry for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 250
    monitor-exit v0

    return-void

    .line 252
    :cond_2b
    iget-object v2, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraInjectionSession;

    .line 253
    .local v2, "existingSession":Landroid/hardware/camera2/CameraInjectionSession;
    if-eqz v2, :cond_51

    .line 254
    const-string v3, "CameraAccessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInjectionSucceeded found unexpected existing session for camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 258
    .end local v1    # "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    .end local v2    # "existingSession":Landroid/hardware/camera2/CameraInjectionSession;
    :cond_51
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method private startBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 216
    const-string v0, "CameraAccessController"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBlocking() cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v5, ""

    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/virtual/CameraAccessController$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController$1;-><init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    :try_end_37
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_37} :catch_38

    .line 239
    goto :goto_59

    .line 235
    :catch_38
    move-exception v1

    .line 236
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to injectCamera for cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_59
    return-void
.end method


# virtual methods
.method public blockCameraAccessIfNeeded(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "runningUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 126
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "cameraId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    .line 128
    .local v3, "openCameraInfo":Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;
    iget v4, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUid:I

    .line 129
    .local v4, "packageUid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 130
    iget-object v5, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 131
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 132
    .local v6, "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    if-nez v6, :cond_41

    .line 133
    new-instance v7, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v7}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    move-object v6, v7

    .line 134
    iput v4, v6, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 135
    iget-object v7, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_41
    invoke-direct {p0, v5, v2}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "openCameraInfo":Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;
    .end local v4    # "packageUid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 140
    .end local v1    # "i":I
    :cond_47
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public close()V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-gez v1, :cond_22

    .line 147
    const-string v1, "CameraAccessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected negative mObserverCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 148
    :cond_22
    if-lez v1, :cond_3e

    .line 149
    const-string v1, "CameraAccessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected close with observers remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3e
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_45

    .line 152
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 153
    return-void

    .line 151
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onCameraClosed(Ljava/lang/String;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_3c

    .line 198
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 199
    .local v2, "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraInjectionSession;

    .line 200
    .local v3, "session":Landroid/hardware/camera2/CameraInjectionSession;
    if-eqz v3, :cond_39

    .line 201
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 202
    iget-object v4, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v4, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 204
    iget-object v4, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 197
    .end local v2    # "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    .end local v3    # "session":Landroid/hardware/camera2/CameraInjectionSession;
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 208
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 160
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 161
    .local v2, "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v3

    if-nez v3, :cond_51

    .line 162
    new-instance v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    invoke-direct {v3}, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;-><init>()V

    .line 163
    .local v3, "openCameraInfo":Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;
    iput-object p2, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 164
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v3, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUid:I

    .line 165
    iget-object v4, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    if-eqz v2, :cond_37

    iget-object v4, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraInjectionSession;

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    .line 168
    .local v4, "existingSession":Landroid/hardware/camera2/CameraInjectionSession;
    :goto_38
    if-eqz v4, :cond_4f

    .line 169
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 170
    iget-object v5, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v5, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 172
    iget-object v5, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_4f} :catch_74
    .catchall {:try_start_3 .. :try_end_4f} :catchall_72

    .line 175
    :cond_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_72

    return-void

    .line 177
    .end local v3    # "openCameraInfo":Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;
    .end local v4    # "existingSession":Landroid/hardware/camera2/CameraInjectionSession;
    :cond_51
    if-nez v2, :cond_62

    .line 178
    :try_start_53
    new-instance v3, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v3}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    move-object v2, v3

    .line 179
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 180
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_62
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_68} :catch_74
    .catchall {:try_start_53 .. :try_end_68} :catchall_72

    if-eqz v3, :cond_6c

    .line 183
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_72

    return-void

    .line 185
    :cond_6c
    :try_start_6c
    invoke-direct {p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_6f} :catch_74
    .catchall {:try_start_6c .. :try_end_6f} :catchall_72

    .line 189
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "data":Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;
    nop

    .line 190
    :try_start_70
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_72
    move-exception v1

    goto :goto_90

    .line 186
    :catch_74
    move-exception v1

    .line 187
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CameraAccessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCameraOpened - unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    monitor-exit v0

    return-void

    .line 190
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_72

    throw v1
.end method

.method public startObservingIfNeeded()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-nez v1, :cond_12

    .line 97
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 99
    :cond_12
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public stopObservingIfNeeded()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 109
    if-gtz v1, :cond_e

    .line 110
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    .line 112
    :cond_e
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method
