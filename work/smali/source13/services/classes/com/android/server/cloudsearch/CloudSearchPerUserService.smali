.class public Lcom/android/server/cloudsearch/CloudSearchPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "CloudSearchPerUserService.java"

# interfaces
.implements Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
        "Lcom/android/server/cloudsearch/CloudSearchManagerService;",
        ">;",
        "Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbackQueue:Lcom/android/server/CircularQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/CircularQueue<",
            "Ljava/lang/String;",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteComponentName:Landroid/content/ComponentName;

.field private mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

.field private final mServiceName:Ljava/lang/String;

.field private mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 7
    .param p1, "master"    # Lcom/android/server/cloudsearch/CloudSearchManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "serviceName"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 49
    new-instance v0, Lcom/android/server/CircularQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/CircularQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    .line 67
    iput-object p4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    .line 68
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    .line 69
    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_5

    .line 271
    return-void

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 275
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_12
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v0}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->destroy()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 280
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    const/4 v1, 0x1

    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    .line 282
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 283
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 284
    if-eqz v0, :cond_3b

    .line 285
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 286
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_36
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v0}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->reconnect()V

    .line 290
    :cond_3b
    return-void

    .line 282
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;
    .registers 12

    .line 324
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_42

    .line 325
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getComponentNameForMultipleLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "serviceName":Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 327
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean v1, v1, Lcom/android/server/cloudsearch/CloudSearchManagerService;->verbose:Z

    if-eqz v1, :cond_1c

    .line 328
    sget-object v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1c
    const/4 v1, 0x0

    return-object v1

    .line 332
    :cond_1e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 334
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v10, Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 336
    invoke-virtual {v2}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean v9, v2, Lcom/android/server/cloudsearch/CloudSearchManagerService;->verbose:Z

    const-string v4, "android.service.cloudsearch.CloudSearchService"

    move-object v2, v10

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;ZZ)V

    iput-object v10, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 339
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_42
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    return-object v0
.end method

.method static synthetic lambda$onSearchLocked$0(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V
    .registers 2
    .param p0, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;
    .param p1, "s"    # Landroid/service/cloudsearch/ICloudSearchService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-interface {p1, p0}, Landroid/service/cloudsearch/ICloudSearchService;->onSearch(Landroid/app/cloudsearch/SearchRequest;)V

    return-void
.end method

.method private resurrectSessionsLocked()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0}, Lcom/android/server/CircularQueue;->size()I

    move-result v0

    .line 298
    .local v0, "numCallbacks":I
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 299
    sget-object v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requests."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_36
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v1}, Lcom/android/server/CircularQueue;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 304
    .local v2, "callbackInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    iget-object v3, v2, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->resurrectSessionLocked(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Landroid/os/IBinder;)V

    .line 305
    .end local v2    # "callbackInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    goto :goto_40

    .line 306
    :cond_52
    return-void
.end method

.method private updateRemoteServiceLocked()V
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-eqz v0, :cond_a

    .line 250
    invoke-virtual {v0}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->destroy()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 253
    :cond_a
    return-void
.end method


# virtual methods
.method synthetic lambda$onSearchLocked$1$com-android-server-cloudsearch-CloudSearchPerUserService(Ljava/lang/String;)V
    .registers 4
    .param p1, "requestId"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget v3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 81
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 85
    return-object v0

    .line 79
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :catch_e
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .line 218
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 219
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1f
    if-eqz p1, :cond_40

    .line 222
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_24
    iget-boolean v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    if-eqz v1, :cond_3b

    .line 225
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v1, :cond_35

    .line 226
    sget-object v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resurrect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit v0

    return-void

    .line 229
    :cond_35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    .line 230
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resurrectSessionsLocked()V

    .line 232
    :cond_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_3d

    throw v1

    .line 234
    :cond_40
    :goto_40
    return-void
.end method

.method public onDestroyLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "requestId"    # Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 200
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1f
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/CircularQueue;->removeElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 203
    .local v0, "sessionInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    if-eqz v0, :cond_2c

    .line 204
    invoke-virtual {v0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->destroy()V

    .line 206
    :cond_2c
    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .registers 5
    .param p1, "timedOut"    # Z

    .line 210
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 211
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailureOrTimeout(): timed out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1f
    return-void
.end method

.method onPackageRestartedLocked()V
    .registers 3

    .line 263
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_e
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->destroyAndRebindRemoteService()V

    .line 267
    return-void
.end method

.method onPackageUpdatedLocked()V
    .registers 3

    .line 256
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 257
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_e
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->destroyAndRebindRemoteService()V

    .line 260
    return-void
.end method

.method public onReturnResultsLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/app/cloudsearch/SearchResponse;

    .line 168
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteService:Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    if-nez v0, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/cloudsearch/ICloudSearchService;

    .line 172
    .local v0, "serviceInterface":Landroid/service/cloudsearch/ICloudSearchService;
    if-eqz v0, :cond_56

    invoke-interface {v0}, Landroid/service/cloudsearch/ICloudSearchService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_14

    goto :goto_56

    .line 175
    :cond_14
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v1, p2}, Lcom/android/server/CircularQueue;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 176
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mServiceName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/app/cloudsearch/SearchResponse;->setSource(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v1, p2}, Lcom/android/server/CircularQueue;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 179
    .local v1, "sessionInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    :try_start_29
    invoke-virtual {p3}, Landroid/app/cloudsearch/SearchResponse;->getStatusCode()I

    move-result v2

    if-nez v2, :cond_37

    .line 180
    invoke-static {v1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->-$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V

    goto :goto_3e

    .line 182
    :cond_37
    invoke-static {v1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->-$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3e} :catch_3f

    .line 190
    :goto_3e
    goto :goto_55

    .line 184
    :catch_3f
    move-exception v2

    .line 185
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/cloudsearch/CloudSearchManagerService;

    iget-boolean v3, v3, Lcom/android/server/cloudsearch/CloudSearchManagerService;->debug:Z

    if-eqz v3, :cond_52

    .line 186
    sget-object v3, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in posting results"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    :cond_52
    invoke-virtual {p0, p2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    .line 192
    .end local v1    # "sessionInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_55
    :goto_55
    return-void

    .line 173
    :cond_56
    :goto_56
    return-void
.end method

.method public onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .registers 15
    .param p1, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;
    .param p2, "callback"    # Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    .line 110
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    .line 111
    return-void

    .line 114
    :cond_5
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getSearchConstraints()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 116
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getSearchConstraints()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 117
    :cond_1a
    const-string v0, ""

    :goto_1c
    nop

    .line 119
    .local v0, "filterList":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mRemoteComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "remoteServicePackageName":Ljava/lang/String;
    const/4 v2, 0x1

    .line 122
    .local v2, "wantedProvider":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_42

    .line 124
    const/4 v2, 0x0

    .line 125
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "providersSpecified":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    array-length v5, v3

    if-ge v4, v5, :cond_42

    .line 127
    aget-object v5, v3, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 128
    const/4 v2, 0x1

    .line 129
    goto :goto_42

    .line 126
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 135
    .end local v3    # "providersSpecified":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_42
    :goto_42
    if-nez v2, :cond_45

    .line 137
    return-void

    .line 139
    :cond_45
    new-instance v3, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/SearchRequest;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resolveService(Landroid/app/cloudsearch/SearchRequest;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v3

    .line 141
    .local v3, "serviceExists":Z
    invoke-virtual {p1}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "requestId":Ljava/lang/String;
    if-eqz v3, :cond_85

    iget-object v4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v4, v10}, Lcom/android/server/CircularQueue;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 143
    new-instance v11, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 144
    invoke-interface {p2}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v9, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, v10}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V

    move-object v4, v11

    move-object v5, v10

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;-><init>(Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 149
    .local v4, "sessionInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    invoke-virtual {v4}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->linkToDeath()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 150
    iget-object v5, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mCallbackQueue:Lcom/android/server/CircularQueue;

    invoke-virtual {v5, v10, v4}, Lcom/android/server/CircularQueue;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;

    .line 151
    .local v5, "removedInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    if-eqz v5, :cond_81

    .line 152
    invoke-virtual {v5}, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->destroy()V

    .line 154
    .end local v5    # "removedInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    :cond_81
    goto :goto_85

    .line 156
    :cond_82
    invoke-virtual {p0, v10}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    .line 159
    .end local v4    # "sessionInfo":Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
    :cond_85
    :goto_85
    return-void
.end method

.method public onServiceDied(Lcom/android/server/cloudsearch/RemoteCloudSearchService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 239
    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1f
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    const/4 v1, 0x1

    :try_start_23
    iput-boolean v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mZombie:Z

    .line 243
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    .line 244
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->updateRemoteServiceLocked()V

    .line 245
    return-void

    .line 243
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 43
    check-cast p1, Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onServiceDied(Lcom/android/server/cloudsearch/RemoteCloudSearchService;)V

    return-void
.end method

.method protected resolveService(Landroid/app/cloudsearch/SearchRequest;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 5
    .param p1, "requestId"    # Landroid/app/cloudsearch/SearchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/cloudsearch/SearchRequest;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/cloudsearch/ICloudSearchService;",
            ">;)Z"
        }
    .end annotation

    .line 314
    .local p2, "cb":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<Landroid/service/cloudsearch/ICloudSearchService;>;"
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->getRemoteServiceLocked()Lcom/android/server/cloudsearch/RemoteCloudSearchService;

    move-result-object v0

    .line 315
    .local v0, "service":Lcom/android/server/cloudsearch/RemoteCloudSearchService;
    if-eqz v0, :cond_9

    .line 316
    invoke-virtual {v0, p2}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 318
    :cond_9
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method protected updateLocked(Z)Z
    .registers 4
    .param p1, "disabled"    # Z

    .line 91
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 92
    .local v0, "enabledChanged":Z
    if-eqz v0, :cond_13

    .line 93
    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->isEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 95
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->resurrectSessionsLocked()V

    goto :goto_13

    .line 98
    :cond_10
    invoke-direct {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->updateRemoteServiceLocked()V

    .line 101
    :cond_13
    :goto_13
    return v0
.end method
