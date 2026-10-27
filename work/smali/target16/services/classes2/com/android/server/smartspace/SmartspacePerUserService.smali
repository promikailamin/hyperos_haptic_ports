.class public Lcom/android/server/smartspace/SmartspacePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SmartspacePerUserService.java"

# interfaces
.implements Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method public static synthetic $r8$lambda$-N1pBvBT33mDHPhscw34vXDyQOk(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->lambda$onCreateSmartspaceSessionLocked$1(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IY5l97yD8StPG1WT8TyJe1isNvQ(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Landroid/service/smartspace/ISmartspaceService;)V
    .registers 3

    .line 134
    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TDsEcFW0ruvc7rXl2ML9ZZbwM1M(Landroid/app/smartspace/SmartspaceSessionId;Landroid/service/smartspace/ISmartspaceService;)V
    .registers 2

    .line 188
    invoke-interface {p1, p0}, Landroid/service/smartspace/ISmartspaceService;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7Kietf0V-6DcS9rDShraKv8_xg(Landroid/app/smartspace/SmartspaceSessionId;Landroid/service/smartspace/ISmartspaceService;)V
    .registers 2

    .line 145
    invoke-interface {p1, p0}, Landroid/service/smartspace/ISmartspaceService;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajl3pwMUnhEiElW7LvGjEnEnSOw(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Landroid/service/smartspace/ISmartspaceService;)V
    .registers 3

    .line 172
    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m7fVO1E9xzG7iEF5J5rbwrd_T4M(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;Landroid/service/smartspace/ISmartspaceService;)V
    .registers 3

    .line 157
    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t2U8r44TTh9gdSgeFgr3QSLD3nU(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/service/smartspace/ISmartspaceService;)V
    .registers 3

    .line 108
    invoke-interface {p2, p0, p1}, Landroid/service/smartspace/ISmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 50
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_5

    goto :goto_3b

    .line 258
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 259
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_12
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 264
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 265
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 266
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 267
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz v0, :cond_3b

    .line 269
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 270
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_36
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {p0}, Lcom/android/server/smartspace/RemoteSmartspaceService;->reconnect()V

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 266
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method private resurrectSessionsLocked()V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 282
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 283
    sget-object v1, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_31
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 288
    iget-object v2, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->resurrectSessionLocked(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/os/IBinder;)V

    goto :goto_3b

    :cond_4d
    return-void
.end method

.method private updateRemoteServiceLocked()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-eqz v0, :cond_a

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    :cond_a
    return-void
.end method


# virtual methods
.method public final getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;
    .registers 9

    .line 308
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_3e

    .line 309
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 311
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_19

    .line 312
    sget-object p0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 316
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 318
    new-instance v0, Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 320
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/smartspace/SmartspaceManagerService;

    iget-boolean v7, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v2, "android.service.smartspace.SmartspaceService"

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/smartspace/RemoteSmartspaceService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;ZZ)V

    iput-object v0, v5, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    goto :goto_3f

    :cond_3e
    move-object v5, p0

    .line 323
    :goto_3f
    iget-object p0, v5, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    return-object p0
.end method

.method public final synthetic lambda$onCreateSmartspaceSessionLocked$1(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 115
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 74
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 77
    :catch_d
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifySmartspaceEventLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_b

    return-void

    .line 134
    :cond_b
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5

    .line 202
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 203
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz p1, :cond_3f

    .line 206
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 207
    :try_start_22
    iget-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    if-eqz v0, :cond_3b

    .line 209
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    if-nez v0, :cond_35

    .line 210
    sget-object p0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit p1

    return-void

    :catchall_33
    move-exception p0

    goto :goto_3d

    :cond_35
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 214
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked()V

    .line 216
    :cond_3b
    monitor-exit p1

    return-void

    :goto_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_33

    throw p0

    :cond_3f
    return-void
.end method

.method public onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .registers 6

    .line 107
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 110
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 111
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 117
    invoke-virtual {v0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 118
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 121
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    :cond_2c
    return-void
.end method

.method public onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5

    .line 183
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 184
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1d
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_28

    return-void

    .line 188
    :cond_28
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 189
    invoke-virtual {v0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->destroy()V

    return-void
.end method

.method public onPackageRestartedLocked()V
    .registers 3

    .line 247
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 248
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_e
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .registers 3

    .line 240
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_e
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/smartspace/RemoteSmartspaceService;)V
    .registers 5

    .line 222
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 223
    sget-object v0, Lcom/android/server/smartspace/SmartspacePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1d
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 226
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 227
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 228
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_28
    move-exception p0

    .line 227
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 45
    check-cast p1, Lcom/android/server/smartspace/RemoteSmartspaceService;

    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->onServiceDied(Lcom/android/server/smartspace/RemoteSmartspaceService;)V

    return-void
.end method

.method public registerSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_b

    goto :goto_19

    .line 156
    :cond_b
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 159
    invoke-virtual {v0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->addCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public requestSmartspaceUpdateLocked(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_b

    return-void

    .line 144
    :cond_b
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda6;-><init>(Landroid/app/smartspace/SmartspaceSessionId;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 3

    .line 298
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 300
    invoke-virtual {p0, p2}, Lcom/android/server/smartspace/RemoteSmartspaceService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterSmartspaceUpdatesLocked(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    if-nez v0, :cond_b

    goto :goto_19

    .line 171
    :cond_b
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService(Landroid/app/smartspace/SmartspaceSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 174
    invoke-virtual {v0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->removeCallbackLocked(Landroid/app/smartspace/ISmartspaceCallback;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public updateLocked(Z)Z
    .registers 3

    .line 88
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 90
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked()V

    return p1

    .line 95
    :cond_10
    invoke-direct {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->updateRemoteServiceLocked()V

    :cond_13
    return p1
.end method
