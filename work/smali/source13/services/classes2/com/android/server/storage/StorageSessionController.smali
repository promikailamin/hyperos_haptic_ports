.class public final Lcom/android/server/storage/StorageSessionController;
.super Ljava/lang/Object;
.source "StorageSessionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageSessionController"


# instance fields
.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/StorageUserConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mExternalStorageServiceAppId:I

.field private volatile mExternalStorageServiceComponent:Landroid/content/ComponentName;

.field private volatile mExternalStorageServicePackageName:Ljava/lang/String;

.field private volatile mIsResetting:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 71
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    .line 72
    return-void
.end method

.method private initExternalStorageServiceComponent(I)V
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 362
    const-string v0, "StorageSessionController"

    const-string v1, "Initialialising..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "media"

    const/high16 v2, 0x1c0000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 367
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_77

    .line 371
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    .line 372
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    .line 376
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_31

    .line 377
    invoke-direct {p0, v1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_36

    .line 379
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_31
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 382
    .restart local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_36
    if-eqz v1, :cond_6f

    .line 387
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v2, "name":Landroid/content/ComponentName;
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 389
    const-string v4, "android.permission.BIND_EXTERNAL_STORAGE_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 395
    iput-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    .line 396
    return-void

    .line 390
    :cond_4e
    new-instance v3, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not require permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_6f
    new-instance v2, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    const-string v3, "No valid ExternalStorageService component found"

    invoke-direct {v2, v3}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_77
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    const-string v2, "No valid MediaStore provider found"

    invoke-direct {v1, v2}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isEmulatedOrPublic(Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 473
    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_10

    .line 474
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 473
    :goto_13
    return v0
.end method

.method private static isSupportedVolume(Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 493
    invoke-static {p0}, Lcom/android/server/storage/StorageSessionController;->isEmulatedOrPublic(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method private killExternalStorageService(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 459
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 461
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    const-string/jumbo v3, "storage_session_controller reset"

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 465
    goto :goto_28

    .line 463
    :catch_f
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to kill the ExtenalStorageService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageSessionController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method private resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.storage.ExternalStorageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 513
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_1c

    .line 514
    const/4 v2, 0x0

    return-object v2

    .line 517
    :cond_1c
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v2
.end method

.method private shouldHandle(Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 497
    iget-boolean v0, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/android/server/storage/StorageSessionController;->isSupportedVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public freeCache(Ljava/lang/String;J)V
    .registers 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 181
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 182
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 183
    .local v3, "key":I
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/StorageUserConnection;

    .line 184
    .local v4, "connection":Lcom/android/server/storage/StorageUserConnection;
    if-eqz v4, :cond_1f

    .line 185
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/storage/StorageUserConnection;->freeCache(Ljava/lang/String;J)V

    .line 181
    .end local v3    # "key":I
    .end local v4    # "connection":Lcom/android/server/storage/StorageUserConnection;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 188
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_22
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I
    .registers 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 83
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 84
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, "volumeUserContext":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 86
    invoke-virtual {v1}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    move-result v1

    .line 88
    .local v1, "isMediaSharedWithParent":Z
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mUserManager:Landroid/os/UserManager;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 89
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_28

    if-eqz v1, :cond_28

    .line 91
    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    return v3

    .line 93
    :cond_28
    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v3
.end method

.method public getExternalStorageServiceComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isAppIoBlocked(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 446
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 448
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_7
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/StorageUserConnection;

    .line 450
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    .line 452
    if-eqz v2, :cond_17

    .line 453
    invoke-virtual {v2, p1}, Lcom/android/server/storage/StorageUserConnection;->isAppIoBlocked(I)Z

    move-result v1

    return v1

    .line 455
    :cond_17
    const/4 v1, 0x0

    return v1

    .line 450
    .end local v2    # "connection":Lcom/android/server/storage/StorageUserConnection;
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public notifyAnrDelayStarted(Ljava/lang/String;III)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 198
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 200
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_7
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/StorageUserConnection;

    .line 202
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 204
    if-eqz v2, :cond_15

    .line 205
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAnrDelayStarted(Ljava/lang/String;III)V

    .line 207
    :cond_15
    return-void

    .line 202
    .end local v2    # "connection":Lcom/android/server/storage/StorageUserConnection;
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public notifyAppIoBlocked(Ljava/lang/String;III)V
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 414
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 416
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_7
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/StorageUserConnection;

    .line 418
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 420
    if-eqz v2, :cond_15

    .line 421
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAppIoBlocked(Ljava/lang/String;III)V

    .line 423
    :cond_15
    return-void

    .line 418
    .end local v2    # "connection":Lcom/android/server/storage/StorageUserConnection;
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public notifyAppIoResumed(Ljava/lang/String;III)V
    .registers 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 433
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 435
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_7
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/StorageUserConnection;

    .line 437
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 439
    if-eqz v2, :cond_15

    .line 440
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/storage/StorageUserConnection;->notifyAppIoResumed(Ljava/lang/String;III)V

    .line 442
    :cond_15
    return-void

    .line 437
    .end local v2    # "connection":Lcom/android/server/storage/StorageUserConnection;
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    .registers 9
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 149
    return-void

    .line 151
    :cond_7
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "sessionId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 154
    .local v1, "connectionUserId":I
    const/4 v2, 0x0

    .line 155
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 156
    :try_start_13
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/StorageUserConnection;

    move-object v2, v4

    .line 157
    if-eqz v2, :cond_45

    .line 158
    const-string v4, "StorageSessionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying volume state changed for session with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 159
    invoke-virtual {v2, v0, v4}, Lcom/android/server/storage/StorageUserConnection;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    goto :goto_5d

    .line 162
    :cond_45
    const-string v4, "StorageSessionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No available storage user connection for userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_5d
    monitor-exit v3

    .line 166
    return-void

    .line 165
    :catchall_5f
    move-exception v4

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_5f

    throw v4
.end method

.method public onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V
    .registers 12
    .param p1, "vold"    # Landroid/os/IVold;
    .param p2, "resetHandlerRunnable"    # Ljava/lang/Runnable;

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 312
    return-void

    .line 315
    :cond_8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 316
    .local v0, "connections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/storage/StorageUserConnection;>;"
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    const/4 v2, 0x1

    :try_start_11
    iput-boolean v2, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    .line 318
    const-string v2, "StorageSessionController"

    const-string v3, "Started resetting external storage service..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 320
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/StorageUserConnection;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 322
    .end local v2    # "i":I
    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_124

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_10a

    .line 325
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/StorageUserConnection;

    .line 326
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    invoke-virtual {v2}, Lcom/android/server/storage/StorageUserConnection;->getAllSessionIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_103

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 328
    .local v4, "sessionId":Ljava/lang/String;
    :try_start_59
    const-string v5, "StorageSessionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unmounting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-interface {p1, v4}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 330
    const-string v5, "StorageSessionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unmounted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Landroid/os/ServiceSpecificException; {:try_start_59 .. :try_end_8c} :catch_8d
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_8c} :catch_8d

    .line 334
    goto :goto_a6

    .line 331
    :catch_8d
    move-exception v5

    .line 333
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "StorageSessionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to unmount volume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a6
    :try_start_a6
    const-string v5, "StorageSessionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exiting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v2, v4}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V

    .line 339
    const-string v5, "StorageSessionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exited "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/IllegalStateException; {:try_start_a6 .. :try_end_d9} :catch_dc
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_a6 .. :try_end_d9} :catch_dc

    .line 347
    nop

    .line 348
    .end local v4    # "sessionId":Ljava/lang/String;
    goto/16 :goto_4d

    .line 340
    .restart local v4    # "sessionId":Ljava/lang/String;
    :catch_dc
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "StorageSessionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to exit session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Killing MediaProvider..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/storage/StorageSessionController;->killExternalStorageService(I)V

    .line 346
    nop

    .line 349
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "sessionId":Ljava/lang/String;
    :cond_103
    invoke-virtual {v2}, Lcom/android/server/storage/StorageUserConnection;->close()V

    .line 324
    .end local v2    # "connection":Lcom/android/server/storage/StorageUserConnection;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_39

    .line 352
    .end local v1    # "i":I
    :cond_10a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 353
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_110
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 355
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    .line 356
    const-string v1, "StorageSessionController"

    const-string v3, "Finished resetting external storage service"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v2

    .line 358
    return-void

    .line 357
    :catchall_121
    move-exception v1

    monitor-exit v2
    :try_end_123
    .catchall {:try_start_110 .. :try_end_123} :catchall_121

    throw v1

    .line 322
    :catchall_124
    move-exception v2

    :try_start_125
    monitor-exit v1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw v2
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On user unlock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageSessionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-eqz p1, :cond_1e

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_21

    .line 274
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController;->initExternalStorageServiceComponent(I)V

    .line 277
    :cond_21
    return-void
.end method

.method public onUserStopping(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 289
    return-void

    .line 291
    :cond_8
    const/4 v0, 0x0

    .line 292
    .local v0, "connection":Lcom/android/server/storage/StorageUserConnection;
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_c
    iget-object v2, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/StorageUserConnection;

    move-object v0, v2

    .line 294
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_4d

    .line 296
    if-eqz v0, :cond_34

    .line 297
    const-string v1, "StorageSessionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing all sessions for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v0}, Lcom/android/server/storage/StorageUserConnection;->removeAllSessions()V

    goto :goto_4c

    .line 300
    :cond_34
    const-string v1, "StorageSessionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No connection found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_4c
    return-void

    .line 294
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    .registers 10
    .param p1, "deviceFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p2}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 114
    return-void

    .line 117
    :cond_7
    const-string v0, "StorageSessionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On volume mount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "sessionId":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I

    move-result v1

    .line 122
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 123
    .local v2, "connection":Lcom/android/server/storage/StorageUserConnection;
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/StorageUserConnection;

    move-object v2, v4

    .line 125
    if-nez v2, :cond_5b

    .line 126
    const-string v4, "StorageSessionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating connection for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v4, Lcom/android/server/storage/StorageUserConnection;

    iget-object v5, p0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1, p0}, Lcom/android/server/storage/StorageUserConnection;-><init>(Landroid/content/Context;ILcom/android/server/storage/StorageSessionController;)V

    move-object v2, v4

    .line 128
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    :cond_5b
    const-string v4, "StorageSessionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating and starting session with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v2, v0, p1, v4, v5}, Lcom/android/server/storage/StorageUserConnection;->startSession(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    monitor-exit v3

    .line 134
    return-void

    .line 133
    :catchall_88
    move-exception v4

    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_2b .. :try_end_8a} :catchall_88

    throw v4
.end method

.method public onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;
    .registers 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 219
    return-object v1

    .line 222
    :cond_8
    const-string v0, "StorageSessionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On volume remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "sessionId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->getConnectionUserIdForVolume(Landroid/os/storage/VolumeInfo;)I

    move-result v2

    .line 226
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 227
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/StorageUserConnection;

    .line 228
    .local v4, "connection":Lcom/android/server/storage/StorageUserConnection;
    if-eqz v4, :cond_52

    .line 229
    const-string v1, "StorageSessionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed session for vol with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4, v0}, Lcom/android/server/storage/StorageUserConnection;->removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;

    .line 231
    monitor-exit v3

    return-object v4

    .line 233
    :cond_52
    const-string v5, "StorageSessionController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session already removed for vol with id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v3

    return-object v1

    .line 236
    .end local v4    # "connection":Lcom/android/server/storage/StorageUserConnection;
    :catchall_6c
    move-exception v1

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_2b .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    move-result-object v0

    .line 252
    .local v0, "connection":Lcom/android/server/storage/StorageUserConnection;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On volume unmount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageSessionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-eqz v0, :cond_3d

    .line 254
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "sessionId":Ljava/lang/String;
    :try_start_22
    invoke-virtual {v0, v1}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V
    :try_end_25
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_22 .. :try_end_25} :catch_26

    .line 260
    goto :goto_3d

    .line 258
    :catch_26
    move-exception v3

    .line 259
    .local v3, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to end session for vol with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v1    # "sessionId":Ljava/lang/String;
    .end local v3    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :cond_3d
    :goto_3d
    return-void
.end method

.method public supportsExternalStorage(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 505
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageSessionController;->resolveExternalStorageServiceAsUser(I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
