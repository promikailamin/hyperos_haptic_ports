.class public Lcom/android/server/searchui/SearchUiPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SearchUiPerUserService.java"

# interfaces
.implements Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/searchui/SearchUiPerUserService;",
        "Lcom/android/server/searchui/SearchUiManagerService;",
        ">;",
        "Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

.field private final mSessionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/search/SearchSessionId;",
            "Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetRemoteServiceLocked(Lcom/android/server/searchui/SearchUiPerUserService;)Lcom/android/server/searchui/RemoteSearchUiService;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    return-object v0
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

.method protected constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Ljava/lang/Object;I)V
    .registers 5
    .param p1, "master"    # Lcom/android/server/searchui/SearchUiManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 70
    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_5

    .line 229
    return-void

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_12
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v0}, Lcom/android/server/searchui/RemoteSearchUiService;->destroy()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 238
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    const/4 v1, 0x1

    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 240
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3c

    .line 241
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 242
    if-eqz v0, :cond_3b

    .line 243
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 244
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_36
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v0}, Lcom/android/server/searchui/RemoteSearchUiService;->reconnect()V

    .line 248
    :cond_3b
    return-void

    .line 240
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;
    .registers 12

    .line 282
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v0, :cond_3f

    .line 283
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "serviceName":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 285
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean v1, v1, Lcom/android/server/searchui/SearchUiManagerService;->verbose:Z

    if-eqz v1, :cond_19

    .line 286
    sget-object v1, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 290
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 292
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v10, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/searchui/SearchUiManagerService;

    .line 294
    invoke-virtual {v2}, Lcom/android/server/searchui/SearchUiManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v2, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/searchui/SearchUiManagerService;

    iget-boolean v9, v2, Lcom/android/server/searchui/SearchUiManagerService;->verbose:Z

    const-string v4, "android.service.search.SearchUiService"

    move-object v2, v10

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/searchui/RemoteSearchUiService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;ZZ)V

    iput-object v10, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 297
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_3f
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    return-object v0
.end method

.method static synthetic lambda$notifyLocked$2(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;Landroid/service/search/ISearchUiService;)V
    .registers 4
    .param p0, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p1, "query"    # Landroid/app/search/Query;
    .param p2, "event"    # Landroid/app/search/SearchTargetEvent;
    .param p3, "s"    # Landroid/service/search/ISearchUiService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$onCreateSearchSessionLocked$0(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 3
    .param p0, "context"    # Landroid/app/search/SearchContext;
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "s"    # Landroid/service/search/ISearchUiService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-interface {p2, p0, p1}, Landroid/service/search/ISearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method static synthetic lambda$onDestroyLocked$4(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V
    .registers 2
    .param p0, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p1, "s"    # Landroid/service/search/ISearchUiService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-interface {p1, p0}, Landroid/service/search/ISearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method static synthetic lambda$queryLocked$3(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;Landroid/service/search/ISearchUiService;)V
    .registers 4
    .param p0, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p1, "input"    # Landroid/app/search/Query;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;
    .param p3, "s"    # Landroid/service/search/ISearchUiService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-interface {p3, p0, p1, p2}, Landroid/service/search/ISearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method private resurrectSessionsLocked()V
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 256
    .local v0, "numSessions":I
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 257
    sget-object v1, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_36
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 262
    .local v2, "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    iget-object v3, v2, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->resurrectSessionLocked(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/os/IBinder;)V

    .line 263
    .end local v2    # "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    goto :goto_40

    .line 264
    :cond_52
    return-void
.end method

.method private updateRemoteServiceLocked()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {v0}, Lcom/android/server/searchui/RemoteSearchUiService;->destroy()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 211
    :cond_a
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateSearchSessionLocked$1$com-android-server-searchui-SearchUiPerUserService(Landroid/app/search/SearchSessionId;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 114
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
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

    .line 78
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget v3, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 82
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 86
    return-object v0

    .line 80
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :catch_e
    move-exception v0

    .line 81
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

.method public notifyLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "query"    # Landroid/app/search/Query;
    .param p3, "event"    # Landroid/app/search/SearchTargetEvent;

    .line 133
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 134
    .local v0, "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    if-nez v0, :cond_b

    return-void

    .line 135
    :cond_b
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 137
    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .line 176
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 177
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

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

    .line 179
    :cond_1f
    if-eqz p1, :cond_40

    .line 180
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_24
    iget-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    if-eqz v1, :cond_3b

    .line 183
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    if-nez v1, :cond_35

    .line 184
    sget-object v1, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resurrect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v0

    return-void

    .line 187
    :cond_35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 188
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->resurrectSessionsLocked()V

    .line 190
    :cond_3b
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_3d

    throw v1

    .line 192
    :cond_40
    :goto_40
    return-void
.end method

.method public onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 108
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    move-result v0

    .line 111
    .local v0, "serviceExists":Z
    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 112
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    new-instance v2, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V

    invoke-direct {v1, p2, p1, p3, v2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    .line 118
    .local v1, "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    invoke-virtual {v1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->linkToDeath()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 119
    iget-object v2, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 122
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    .line 125
    .end local v1    # "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onDestroyLocked(Landroid/app/search/SearchSessionId;)V
    .registers 5
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 156
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 157
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1f
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 160
    .local v0, "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    if-nez v0, :cond_2a

    return-void

    .line 161
    :cond_2a
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/search/SearchSessionId;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 163
    invoke-virtual {v0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->destroy()V

    .line 164
    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .registers 5
    .param p1, "timedOut"    # Z

    .line 168
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 169
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

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

    .line 172
    :cond_1f
    return-void
.end method

.method onPackageRestartedLocked()V
    .registers 3

    .line 221
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_e
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    .line 225
    return-void
.end method

.method onPackageUpdatedLocked()V
    .registers 3

    .line 214
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 215
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_e
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->destroyAndRebindRemoteService()V

    .line 218
    return-void
.end method

.method public onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/searchui/RemoteSearchUiService;

    .line 196
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 197
    sget-object v0, Lcom/android/server/searchui/SearchUiPerUserService;->TAG:Ljava/lang/String;

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

    .line 199
    :cond_1f
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    const/4 v1, 0x1

    :try_start_23
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 201
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    .line 202
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    .line 203
    return-void

    .line 201
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

    .line 46
    check-cast p1, Lcom/android/server/searchui/RemoteSearchUiService;

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->onServiceDied(Lcom/android/server/searchui/RemoteSearchUiService;)V

    return-void
.end method

.method public queryLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "callback"    # Landroid/app/search/ISearchCallback;

    .line 145
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 146
    .local v0, "sessionInfo":Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
    if-nez v0, :cond_b

    return-void

    .line 147
    :cond_b
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 149
    return-void
.end method

.method protected resolveService(Landroid/app/search/SearchSessionId;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .registers 5
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/search/ISearchUiService;",
            ">;)Z"
        }
    .end annotation

    .line 272
    .local p2, "cb":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<Landroid/service/search/ISearchUiService;>;"
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    move-result-object v0

    .line 273
    .local v0, "service":Lcom/android/server/searchui/RemoteSearchUiService;
    if-eqz v0, :cond_9

    .line 274
    invoke-virtual {v0, p2}, Lcom/android/server/searchui/RemoteSearchUiService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 276
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

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 93
    .local v0, "enabledChanged":Z
    if-eqz v0, :cond_f

    .line 94
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_f

    .line 96
    invoke-direct {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->updateRemoteServiceLocked()V

    .line 99
    :cond_f
    return v0
.end method
