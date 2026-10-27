.class public Lcom/android/server/searchui/SearchUiPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SearchUiPerUserService.java"

# interfaces
.implements Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method public static synthetic $r8$lambda$BdZWF3bFvbwgU45BKdKDCcm6ueQ(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .registers 4

    .line 148
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DV1I4V-jodnXvFvmnt0TTp_7Nfc(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->lambda$onCreateSearchSessionLocked$1(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EoUfS3_FBEODTuzVH5dAjxRYbZ0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 3

    .line 109
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OhDPF3m2CqC_XY1AgUrcs3n4PHY(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V
    .registers 4

    .line 136
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TlGm_b1Q9BbL5OdMr1loI8hEdmk(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 2

    .line 194
    invoke-interface {p1, p0}, Landroid/service/search/ISearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fpCI5YS0xF44TkBsXuF0iaZk4PY(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .registers 3

    .line 177
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEZo6IsdKJAhsIoolXMLMCpcJOg(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .registers 3

    .line 161
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/server/searchui/SearchUiPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 63
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_5

    goto :goto_3b

    .line 264
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_12
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 270
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 271
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 272
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 273
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_3b

    .line 275
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 276
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_36
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/searchui/RemoteSearchUiService;->reconnect()V

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception p0

    .line 272
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method private resurrectSessionsLocked()V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 288
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 289
    sget-object v1, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_31
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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

    check-cast v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 294
    iget-object v2, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->resurrectSessionLocked(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/os/IBinder;)V

    goto :goto_3b

    :cond_4d
    return-void
.end method

.method private updateRemoteServiceLocked()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_a

    .line 240
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    :cond_a
    return-void
.end method


# virtual methods
.method public final getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;
    .registers 9

    .line 314
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_3e

    .line 315
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 317
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_19

    .line 318
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "getRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 324
    new-instance v0, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/searchui/SearchUiManagerService;

    .line 326
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean v7, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    const-string v2, "android.service.search.SearchUiService"

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/searchui/RemoteSearchUiService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;ZZ)V

    iput-object v0, v5, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    goto :goto_3f

    :cond_3e
    move-object v5, p0

    .line 329
    :goto_3f
    iget-object p0, v5, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    return-object p0
.end method

.method public final synthetic lambda$onCreateSearchSessionLocked$1(Landroid/app/search/SearchSessionId;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    .line 116
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

    .line 78
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

    .line 81
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

.method public notifyLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    return-void

    .line 135
    :cond_b
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5

    .line 208
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 209
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

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

    .line 212
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_22
    iget-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    if-eqz v0, :cond_3b

    .line 215
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_35

    .line 216
    sget-object p0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot resurrect sessions because remote service is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit p1

    return-void

    :catchall_33
    move-exception p0

    goto :goto_3d

    :cond_35
    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 220
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->resurrectSessionsLocked()V

    .line 222
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

.method public onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 6

    .line 108
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 111
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 112
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 118
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->linkToDeath()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 119
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 122
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    :cond_2c
    return-void
.end method

.method public onDestroyLocked(Landroid/app/search/SearchSessionId;)V
    .registers 5

    .line 188
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 189
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1d
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_28

    return-void

    .line 193
    :cond_28
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 195
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->destroy()V

    return-void
.end method

.method public onPackageRestartedLocked()V
    .registers 3

    .line 253
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 254
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_e
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onPackageUpdatedLocked()V
    .registers 3

    .line 246
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 247
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_e
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V
    .registers 5

    .line 228
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 229
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1d
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 232
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 233
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 234
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    return-void

    :catchall_28
    move-exception p0

    .line 233
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 46
    check-cast p1, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V

    return-void
.end method

.method public queryLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    return-void

    .line 147
    :cond_b
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda6;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    return-void
.end method

.method public registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    goto :goto_19

    .line 160
    :cond_b
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 163
    invoke-virtual {v0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->addCallbackLocked(Landroid/app/search/ISearchCallback;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 3

    .line 304
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 306
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/RemoteSearchUiService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    if-nez v0, :cond_b

    goto :goto_19

    .line 176
    :cond_b
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 179
    invoke-virtual {v0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->removeCallbackLocked(Landroid/app/search/ISearchCallback;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public updateLocked(Z)Z
    .registers 3

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 94
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 96
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    :cond_f
    return p1
.end method
