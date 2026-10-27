.class public final Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
.super Ljava/lang/Object;
.source "SearchUiPerUserService.java"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mSearchContext:Landroid/app/search/SearchContext;

.field public final mSessionId:Landroid/app/search/SearchSessionId;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$GM-px3ZBzriJKVUlO0z3IMahRFA(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/ISearchCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->lambda$resurrectSessionLocked$0(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 6

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 355
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 356
    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSearchContext:Landroid/app/search/SearchContext;

    .line 357
    iput-object p3, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    .line 358
    iput-object p4, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public addCallbackLocked(Landroid/app/search/ISearchCallback;)V
    .registers 2

    .line 366
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 396
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 398
    :cond_a
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public final synthetic lambda$resurrectSessionLocked$0(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/ISearchCallback;)V
    .registers 3

    .line 410
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method

.method public linkToDeath()Z
    .registers 3

    const/4 v0, 0x0

    .line 379
    :try_start_1
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    return v0
.end method

.method public removeCallbackLocked(Landroid/app/search/ISearchCallback;)V
    .registers 2

    .line 374
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public resurrectSessionLocked(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/os/IBinder;)V
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 408
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSearchContext:Landroid/app/search/SearchContext;

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    .line 409
    iget-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;Lcom/android/server/searchui/SearchUiPerUserService;)V

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method
