.class public final Lcom/android/server/storage/StorageSessionController;
.super Ljava/lang/Object;
.source "StorageSessionController.java"


# instance fields
.field public final mConnections:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public volatile mExternalStorageServiceAppId:I

.field public volatile mExternalStorageServiceComponent:Landroid/content/ComponentName;

.field public volatile mExternalStorageServicePackageName:Ljava/lang/String;

.field public volatile mIsResetting:Z

.field public final mLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 72
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static isEmulatedOrPublic(Lcom/android/server/storage/ImmutableVolumeInfo;)Z
    .registers 3

    .line 470
    invoke-virtual {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 471
    invoke-virtual {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportedVolume(Lcom/android/server/storage/ImmutableVolumeInfo;)Z
    .registers 2

    .line 490
    invoke-static {p0}, Lcom/android/server/storage/StorageSessionController;->isEmulatedOrPublic(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public freeCache(Ljava/lang/String;J)V
    .registers 9

    .line 182
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    .line 185
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 186
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    if-eqz v3, :cond_22

    .line 188
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection;->freeCache(Ljava/lang/String;J)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_27

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 191
    :cond_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_20

    throw p0
.end method

.method public getConnectionUserIdForVolume(Lcom/android/server/storage/ImmutableVolumeInfo;)I
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getMountUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 86
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 87
    invoke-virtual {v0}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v0

    .line 89
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getMountUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2c

    if-eqz v0, :cond_2c

    .line 92
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    return p0

    .line 94
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getMountUserId()I

    move-result p0

    return p0
.end method

.method public getExternalStorageServiceComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 398
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final initExternalStorageServiceComponent(I)V
    .registers 5

    .line 366
    const-string v0, "StorageSessionController"

    const-string v1, "Initialialising..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "media"

    const/high16 v2, 0x1c0000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 375
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    .line 376
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 384
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 386
    const-string v1, "android.permission.BIND_EXTERNAL_STORAGE_SERVICE"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 392
    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    return-void

    .line 387
    :cond_44
    new-instance p0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not require permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_62
    new-instance p0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    const-string p1, "No valid ExternalStorageService component found"

    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 372
    :cond_6a
    new-instance p0, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    const-string p1, "No valid MediaStore provider found"

    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAppIoBlocked(I)Z
    .registers 4

    .line 443
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 447
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    if-eqz p0, :cond_17

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection;->isAppIoBlocked(I)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0

    :catchall_19
    move-exception p0

    .line 447
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final killExternalStorageService(I)V
    .registers 8

    .line 456
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 458
    :try_start_4
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    const-string/jumbo v4, "storage_session_controller reset"
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_12

    const/16 v5, 0xd

    move v3, p1

    :try_start_e
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_13

    return-void

    :catch_12
    move v3, p1

    .line 461
    :catch_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to kill the ExtenalStorageService for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageSessionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyAnrDelayStarted(Ljava/lang/String;III)V
    .registers 7

    .line 201
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 205
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 208
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAnrDelayStarted(Ljava/lang/String;III)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 205
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyAppIoBlocked(Ljava/lang/String;III)V
    .registers 7

    .line 411
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 415
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 418
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAppIoBlocked(Ljava/lang/String;III)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 415
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyAppIoResumed(Ljava/lang/String;III)V
    .registers 7

    .line 430
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 434
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    if-eqz p0, :cond_15

    .line 437
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAppIoResumed(Ljava/lang/String;III)V

    :cond_15
    return-void

    :catchall_16
    move-exception p0

    .line 434
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public notifyVolumeStateChanged(Lcom/android/server/storage/ImmutableVolumeInfo;)V
    .registers 7

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 153
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Lcom/android/server/storage/ImmutableVolumeInfo;)I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_12
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    .line 159
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_59

    if-eqz v3, :cond_42

    .line 162
    const-string v1, "StorageSessionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying volume state changed for session with id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getMountUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/server/storage/ImmutableVolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 163
    invoke-virtual {v3, v0, p0}, Lcom/android/server/storage/StorageUserConnection;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    return-void

    .line 166
    :cond_42
    const-string p0, "StorageSessionController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No available storage user connection for userId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_59
    move-exception p0

    .line 159
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V
    .registers 13

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_115

    .line 319
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 321
    :try_start_12
    iput-boolean v2, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    .line 322
    const-string v2, "StorageSessionController"

    const-string v3, "Started resetting external storage service..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    .line 323
    :goto_1d
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 324
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/storage/StorageUserConnection;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catchall_39
    move-exception p0

    goto/16 :goto_119

    .line 326
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_39

    move v1, v2

    .line 328
    :goto_3e
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_100

    .line 329
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    .line 330
    invoke-virtual {v3}, Lcom/android/server/storage/StorageUserConnection;->getAllSessionIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    :try_start_5e
    const-string v6, "StorageSessionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmounting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {p1, v5}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 334
    const-string v6, "StorageSessionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmounted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Landroid/os/ServiceSpecificException; {:try_start_5e .. :try_end_8d} :catch_8e
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_8d} :catch_8e

    goto :goto_a5

    :catch_8e
    move-exception v6

    .line 337
    const-string v7, "StorageSessionController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unmount volume: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :goto_a5
    :try_start_a5
    const-string v6, "StorageSessionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exiting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v3, v5}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V

    .line 343
    const-string v6, "StorageSessionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exited "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/IllegalStateException; {:try_start_a5 .. :try_end_d4} :catch_d6
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_a5 .. :try_end_d4} :catch_d6

    goto/16 :goto_52

    :catch_d6
    move-exception v4

    .line 345
    const-string v6, "StorageSessionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to exit session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Killing MediaProvider..."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/storage/StorageSessionController;->killExternalStorageService(I)V

    .line 353
    :cond_f9
    invoke-virtual {v3}, Lcom/android/server/storage/StorageUserConnection;->close()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3e

    .line 356
    :cond_100
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 357
    iget-object p1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 358
    :try_start_106
    iget-object p2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 359
    iput-boolean v2, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    .line 360
    const-string p0, "StorageSessionController"

    const-string p2, "Finished resetting external storage service"

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    monitor-exit p1

    :goto_115
    return-void

    :catchall_116
    move-exception p0

    monitor-exit p1
    :try_end_118
    .catchall {:try_start_106 .. :try_end_118} :catchall_116

    throw p0

    .line 326
    :goto_119
    :try_start_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_39

    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On user unlock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageSessionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_2b

    .line 276
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 277
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->initExternalStorageServiceComponent(I)V

    :cond_2b
    return-void
.end method

.method public onUserStopping(I)V
    .registers 5

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 296
    :cond_8
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_b
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 298
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_47

    if-eqz p0, :cond_30

    .line 301
    const-string v0, "StorageSessionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing all sessions for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/android/server/storage/StorageUserConnection;->removeAllSessions()V

    return-void

    .line 304
    :cond_30
    const-string p0, "StorageSessionController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No connection found for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_47
    move-exception p0

    .line 298
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public onVolumeMount(Landroid/os/ParcelFileDescriptor;Lcom/android/server/storage/ImmutableVolumeInfo;)V
    .registers 9

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 118
    :cond_7
    const-string v0, "StorageSessionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On volume mount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p2}, Lcom/android/server/storage/ImmutableVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Lcom/android/server/storage/ImmutableVolumeInfo;)I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_28
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/StorageUserConnection;

    if-nez v3, :cond_57

    .line 127
    const-string v3, "StorageSessionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating connection for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v3, Lcom/android/server/storage/StorageUserConnection;

    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, p0}, Lcom/android/server/storage/StorageUserConnection;-><init>(Landroid/content/Context;ILcom/android/server/storage/StorageSessionController;)V

    .line 129
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_82

    .line 131
    :cond_57
    :goto_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_55

    .line 132
    const-string p0, "StorageSessionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating and starting session with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p2}, Lcom/android/server/storage/ImmutableVolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-virtual {p2}, Lcom/android/server/storage/ImmutableVolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {v3, v0, p1, p0, p2}, Lcom/android/server/storage/StorageUserConnection;->startSession(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :goto_82
    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_55

    throw p0
.end method

.method public onVolumeRemove(Lcom/android/server/storage/ImmutableVolumeInfo;)Lcom/android/server/storage/StorageUserConnection;
    .registers 6

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 225
    :cond_8
    const-string v0, "StorageSessionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On volume remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Lcom/android/server/storage/ImmutableVolumeInfo;)I

    move-result p1

    .line 230
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_29
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 232
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_65

    if-eqz p0, :cond_4e

    .line 235
    const-string p1, "StorageSessionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed session for vol with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/storage/StorageUserConnection;->removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;

    return-object p0

    .line 239
    :cond_4e
    const-string p0, "StorageSessionController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session already removed for vol with id: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_65
    move-exception p0

    .line 232
    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public onVolumeUnmount(Lcom/android/server/storage/ImmutableVolumeInfo;)V
    .registers 8

    .line 255
    const-string v0, "StorageSessionController"

    invoke-virtual {p1}, Lcom/android/server/storage/ImmutableVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 258
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Lcom/android/server/storage/ImmutableVolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    move-result-object p0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On volume unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2c

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V
    :try_end_27
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_a .. :try_end_27} :catch_2a
    .catchall {:try_start_a .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p0

    goto :goto_48

    :catch_2a
    move-exception p0

    goto :goto_30

    .line 266
    :cond_2c
    :goto_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 264
    :goto_30
    :try_start_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to end session for vol with id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_28

    .line 266
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw p0
.end method

.method public final resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;
    .registers 4

    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.storage.ExternalStorageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x84

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    return-object p0

    .line 514
    :cond_1c
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public final shouldHandle(Lcom/android/server/storage/ImmutableVolumeInfo;)Z
    .registers 2

    .line 494
    iget-boolean p0, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    if-nez p0, :cond_e

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/android/server/storage/StorageSessionController;->isSupportedVolume(Lcom/android/server/storage/ImmutableVolumeInfo;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public supportsExternalStorage(I)Z
    .registers 2

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
