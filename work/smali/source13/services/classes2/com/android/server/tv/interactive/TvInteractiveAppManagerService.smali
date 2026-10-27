.class public Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.super Lcom/android/server/SystemService;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientPidNotFoundException;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$InteractiveAppServiceConnection;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;,
        Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvInteractiveAppManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mGetServiceListCalled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mRunningProfiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGetServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildTvInteractiveAppServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->createSessionInternalLocked(Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->startUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->stopUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchUser(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 96
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 100
    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    .line 116
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    .line 118
    return-void
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 16
    .param p1, "serviceState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .param p2, "iAppServiceId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1663
    invoke-direct {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 1664
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .local v1, "sessionsToAbort":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;>;"
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1666
    .local v3, "sessionToken":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1667
    .local v4, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v5

    if-nez v5, :cond_3c

    if-eqz p2, :cond_39

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    .line 1669
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1670
    :cond_39
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1672
    .end local v3    # "sessionToken":Landroid/os/IBinder;
    .end local v4    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    :cond_3c
    goto :goto_11

    .line 1673
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1674
    .local v3, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 1675
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v7

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1677
    .end local v3    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_41

    .line 1678
    :cond_6b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 1679
    return-void
.end method

.method private buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 123
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 128
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 129
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v3, "iAppList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 136
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_TV_INTERACTIVE_APP"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "TvInteractiveAppManagerService"

    if-nez v7, :cond_64

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping TV interactiva app service "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": it does not require the permission "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_27

    .line 144
    :cond_64
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v7, "component":Landroid/content/ComponentName;
    :try_start_6d
    new-instance v8, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    iget-object v10, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10, v7}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 148
    .local v8, "info":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_82

    .line 152
    nop

    .line 153
    .end local v8    # "info":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .end local v7    # "component":Landroid/content/ComponentName;
    goto :goto_27

    .line 149
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "component":Landroid/content/ComponentName;
    :catch_82
    move-exception v8

    .line 150
    .local v8, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to load TV Interactive App service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    goto :goto_27

    .line 157
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9c
    new-instance v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v4, "iAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;>;"
    new-instance v5, Landroid/util/ArrayMap;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 160
    .local v5, "tiasAppCount":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ba
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 161
    .local v7, "info":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    invoke-virtual {v7}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "iAppServiceId":Ljava/lang/String;
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 167
    .local v9, "count":Ljava/lang/Integer;
    const/4 v10, 0x1

    if-nez v9, :cond_d4

    goto :goto_d9

    :cond_d4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    :goto_d9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 168
    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 170
    .local v10, "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    if-nez v10, :cond_f3

    .line 171
    new-instance v11, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState-IA;)V

    move-object v10, v11

    .line 173
    :cond_f3
    invoke-static {v10, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    .line 174
    invoke-direct {p0, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getInteractiveAppUid(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;I)V

    .line 175
    invoke-virtual {v7}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;Landroid/content/ComponentName;)V

    .line 176
    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fputmIAppNumber(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;I)V

    .line 178
    .end local v7    # "info":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    .end local v8    # "iAppServiceId":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/Integer;
    .end local v10    # "iAppState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;
    goto :goto_ba

    .line 180
    :cond_10f
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_117
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    .local v7, "iAppServiceId":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_131

    .line 182
    invoke-direct {p0, v0, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyInteractiveAppServiceAddedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V

    goto :goto_15b

    .line 183
    :cond_131
    if-eqz p2, :cond_15b

    .line 185
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    invoke-static {v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 186
    .local v8, "component":Landroid/content/ComponentName;
    array-length v9, p2

    const/4 v10, 0x0

    :goto_143
    if-ge v10, v9, :cond_15b

    aget-object v11, p2, v10

    .line 187
    .local v11, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_158

    .line 188
    invoke-direct {p0, v8, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 189
    invoke-direct {p0, v0, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyInteractiveAppServiceUpdatedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V

    .line 190
    goto :goto_15b

    .line 186
    .end local v11    # "updatedPackage":Ljava/lang/String;
    :cond_158
    add-int/lit8 v10, v10, 0x1

    goto :goto_143

    .line 194
    .end local v7    # "iAppServiceId":Ljava/lang/String;
    .end local v8    # "component":Landroid/content/ComponentName;
    :cond_15b
    :goto_15b
    goto :goto_117

    .line 196
    :cond_15c
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_168
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 197
    .restart local v7    # "iAppServiceId":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19e

    .line 198
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    invoke-static {v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;)Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    move-result-object v8

    .line 199
    .local v8, "info":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 200
    .local v9, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-eqz v9, :cond_19b

    .line 201
    invoke-direct {p0, v9, v7, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    .line 203
    :cond_19b
    invoke-direct {p0, v0, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->notifyInteractiveAppServiceRemovedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V

    .line 205
    .end local v7    # "iAppServiceId":Ljava/lang/String;
    .end local v8    # "info":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    .end local v9    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :cond_19e
    goto :goto_168

    .line 207
    :cond_19f
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 208
    invoke-static {v0, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fputmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/util/Map;)V

    .line 209
    return-void
.end method

.method private clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V
    .registers 5
    .param p1, "state"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 563
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 565
    :try_start_6
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionReleased(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 568
    goto :goto_1a

    .line 566
    :catch_12
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onSessionReleased"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 571
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z
    .registers 21
    .param p1, "service"    # Landroid/media/tv/interactive/ITvInteractiveAppService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 1581
    move-object/from16 v7, p0

    move/from16 v8, p3

    invoke-direct {v7, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v9

    .line 1582
    .local v9, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v10, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1587
    .local v11, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v12

    .line 1590
    .local v12, "channels":[Landroid/view/InputChannel;
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;

    invoke-direct {v0, v7, v11, v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V

    move-object v13, v0

    .line 1592
    .local v13, "callback":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    const/4 v14, 0x1

    .line 1595
    .local v14, "created":Z
    const/4 v15, 0x1

    :try_start_25
    aget-object v0, v12, v15

    invoke-static {v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmType(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_37

    move-object/from16 v6, p1

    :try_start_31
    invoke-interface {v6, v0, v13, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    .line 1602
    goto :goto_57

    .line 1597
    :catch_35
    move-exception v0

    goto :goto_3a

    :catch_37
    move-exception v0

    move-object/from16 v6, p1

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3a
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in createSession"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    invoke-static {v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    invoke-static {v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v16

    move-object/from16 v1, p0

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1601
    const/4 v14, 0x0

    .line 1603
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_57
    aget-object v0, v12, v15

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1604
    return v14
.end method

.method private getInteractiveAppUid(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)I
    .registers 5
    .param p1, "info"    # Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    .line 290
    :catch_16
    move-exception v0

    .line 291
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get UID for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvInteractiveAppManagerService"

    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v1, -0x1

    return v1
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 5
    .param p1, "userId"    # I

    .line 581
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 582
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    if-nez v0, :cond_12

    .line 583
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;-><init>(ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState-IA;)V

    move-object v0, v1

    .line 584
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    :cond_12
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 596
    invoke-direct {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 597
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 598
    .local v1, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-eqz v1, :cond_11

    .line 602
    return-object v1

    .line 599
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service state not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 629
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .registers 6
    .param p1, "sessionState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 634
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    .line 635
    .local v0, "session":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    if-eqz v0, :cond_7

    .line 639
    return-object v0

    .line 636
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not yet created for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 6
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 607
    invoke-direct {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 608
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v1

    return-object v1
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 614
    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 615
    .local v0, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    if-eqz v0, :cond_3b

    .line 619
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3a

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmCallingUid(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v1

    if-ne p2, v1, :cond_17

    goto :goto_3a

    .line 620
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access to the session with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_3a
    :goto_3a
    return-object v0

    .line 616
    :cond_3b
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session state not found for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .registers 3
    .param p1, "userId"    # I

    .line 591
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    return-object v0
.end method

.method private notifyInteractiveAppServiceAddedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .param p2, "iAppServiceId"    # Ljava/lang/String;

    .line 217
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 218
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 220
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 221
    invoke-interface {v2, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceAdded(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 224
    goto :goto_21

    .line 222
    :catch_19
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInteractiveAppManagerService"

    const-string v4, "failed to report added Interactive App service to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 226
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 227
    return-void
.end method

.method private notifyInteractiveAppServiceRemovedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .param p2, "iAppServiceId"    # Ljava/lang/String;

    .line 236
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 237
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 239
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 240
    invoke-interface {v2, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 243
    goto :goto_21

    .line 241
    :catch_19
    move-exception v2

    .line 242
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInteractiveAppManagerService"

    const-string v4, "failed to report removed Interactive App service to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 245
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 246
    return-void
.end method

.method private notifyInteractiveAppServiceUpdatedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .param p2, "iAppServiceId"    # Ljava/lang/String;

    .line 255
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 256
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 258
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 259
    invoke-interface {v2, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 262
    goto :goto_21

    .line 260
    :catch_19
    move-exception v2

    .line 261
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInteractiveAppManagerService"

    const-string v4, "failed to report updated Interactive App service to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 264
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 265
    return-void
.end method

.method private notifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V
    .registers 11
    .param p1, "userState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .param p2, "iAppServiceId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "state"    # I
    .param p5, "err"    # I

    .line 274
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 275
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 277
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 278
    invoke-interface {v2, p2, p3, p4, p5}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onStateChanged(Ljava/lang/String;III)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 281
    goto :goto_21

    .line 279
    :catch_19
    move-exception v2

    .line 280
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInteractiveAppManagerService"

    const-string v4, "failed to report RTE state changed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 283
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 284
    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 9

    .line 316
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    .line 381
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 383
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 384
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 405
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1610
    const/4 v0, 0x0

    .line 1612
    .local v0, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    move-result-object v2

    move-object v0, v2

    .line 1613
    invoke-direct {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v2

    .line 1614
    .local v2, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 1615
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1616
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_2c
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_2 .. :try_end_24} :catch_2c
    .catchall {:try_start_2 .. :try_end_24} :catchall_2a

    .line 1621
    .end local v2    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    :cond_24
    if-eqz v0, :cond_38

    .line 1622
    :goto_26
    invoke-static {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    goto :goto_38

    .line 1621
    :catchall_2a
    move-exception v2

    goto :goto_3c

    .line 1618
    :catch_2c
    move-exception v2

    .line 1619
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string v3, "TvInteractiveAppManagerService"

    const-string v4, "error in releaseSession"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    .line 1621
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_38

    .line 1622
    goto :goto_26

    .line 1625
    :cond_38
    :goto_38
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 1626
    return-object v0

    .line 1621
    :goto_3c
    if-eqz v0, :cond_41

    .line 1622
    invoke-static {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    .line 1624
    :cond_41
    throw v2
.end method

.method private releaseSessionOfUserLocked(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 517
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 518
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    if-nez v0, :cond_7

    .line 519
    return-void

    .line 521
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v1, "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;>;"
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 523
    .local v3, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 524
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v3    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    :cond_2d
    goto :goto_18

    .line 527
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 529
    .restart local v3    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    :try_start_3e
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_46

    .line 532
    goto :goto_4e

    .line 530
    :catch_46
    move-exception v4

    .line 531
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TvInteractiveAppManagerService"

    const-string v6, "error in release"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4e
    invoke-direct {p0, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V

    .line 534
    .end local v3    # "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    goto :goto_32

    .line 535
    :cond_52
    return-void
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 1631
    invoke-direct {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 1634
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1636
    .local v1, "sessionState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    if-nez v1, :cond_19

    .line 1637
    const-string v2, "TvInteractiveAppManagerService"

    const-string/jumbo v3, "sessionState null, no more remove session action!"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return-void

    .line 1643
    :cond_19
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 1644
    .local v2, "clientState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
    if-eqz v2, :cond_55

    .line 1645
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1646
    invoke-virtual {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1647
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1652
    :cond_55
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 1653
    .local v3, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-eqz v3, :cond_6c

    .line 1654
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1656
    :cond_6c
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmComponent(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 1657
    return-void
.end method

.method private removeUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v1

    .line 434
    .local v1, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    if-nez v1, :cond_b

    .line 435
    monitor-exit v0

    return-void

    .line 438
    :cond_b
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 439
    .local v3, "state":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_be

    if-eqz v4, :cond_39

    .line 441
    :try_start_29
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31
    .catchall {:try_start_29 .. :try_end_30} :catchall_be

    .line 444
    goto :goto_39

    .line 442
    :catch_31
    move-exception v4

    .line 443
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v5, "TvInteractiveAppManagerService"

    const-string v6, "error in release"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    .end local v3    # "state":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    goto :goto_17

    .line 447
    :cond_3a
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 450
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 451
    .local v3, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    if-eqz v4, :cond_82

    .line 452
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v4
    :try_end_63
    .catchall {:try_start_32 .. :try_end_63} :catchall_be

    if-eqz v4, :cond_79

    .line 454
    :try_start_65
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_70} :catch_71
    .catchall {:try_start_65 .. :try_end_70} :catchall_be

    .line 457
    goto :goto_79

    .line 455
    :catch_71
    move-exception v4

    .line 456
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_72
    const-string v5, "TvInteractiveAppManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_79
    :goto_79
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 461
    .end local v3    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :cond_82
    goto :goto_4d

    .line 462
    :cond_83
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 465
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmIAppMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 466
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmPackageSet(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 467
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 468
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 470
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 473
    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p1, v2, :cond_bc

    .line 474
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser(I)V

    .line 476
    .end local v1    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    :cond_bc
    monitor-exit v0

    .line 477
    return-void

    .line 476
    :catchall_be
    move-exception v1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_72 .. :try_end_c0} :catchall_be

    throw v1
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    .line 575
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 9
    .param p1, "client"    # Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .param p2, "iAppServiceId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    .line 1572
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1575
    goto :goto_c

    .line 1573
    :catch_4
    move-exception v0

    .line 1574
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onSessionCreated"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1576
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private startProfileLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 511
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method private startUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_33

    .line 485
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 486
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 487
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    iget v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_31

    .line 491
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->startProfileLocked(I)V

    .line 493
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_31
    monitor-exit v0

    .line 494
    return-void

    .line 483
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    .line 493
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private stopUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 497
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_10

    .line 499
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser(I)V

    .line 500
    monitor-exit v0

    return-void

    .line 503
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked(I)V

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked(I)V

    .line 505
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 506
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private switchUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 408
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 410
    monitor-exit v0

    return-void

    .line 412
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 413
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 414
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "cannot switch to a profile!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v0

    return-void

    .line 418
    :cond_1e
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 419
    .local v3, "runningId":I
    invoke-direct {p0, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked(I)V

    .line 420
    invoke-direct {p0, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked(I)V

    .line 421
    .end local v3    # "runningId":I
    goto :goto_24

    .line 422
    :cond_3b
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 423
    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked(I)V

    .line 424
    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked(I)V

    .line 426
    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 427
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 428
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method private unbindServiceOfUserLocked(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 540
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    if-nez v0, :cond_7

    .line 541
    return-void

    .line 543
    :cond_7
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 546
    .local v2, "component":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 547
    .local v3, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-eqz v3, :cond_5b

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 548
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 550
    :try_start_3b
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmCallback(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_47

    .line 553
    goto :goto_4f

    .line 551
    :catch_47
    move-exception v4

    .line 552
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TvInteractiveAppManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 556
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 558
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    :cond_5b
    goto :goto_13

    .line 559
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_5c
    return-void
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1683
    invoke-direct {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 1684
    .local v0, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 1685
    .local v1, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    if-nez v1, :cond_11

    .line 1686
    return-void

    .line 1688
    :cond_11
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 1689
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1691
    return-void

    .line 1693
    :cond_23
    invoke-static {v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    .line 1696
    :cond_26
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    .line 1697
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    .line 1698
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    :cond_44
    const/4 v3, 0x1

    :cond_45
    move v2, v3

    .line 1700
    .local v2, "shouldBind":Z
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v3

    if-nez v3, :cond_76

    if-eqz v2, :cond_76

    .line 1703
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1706
    return-void

    .line 1712
    :cond_55
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 1714
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    const v6, 0x2000001

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fputmBound(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Z)V

    .end local v3    # "i":Landroid/content/Intent;
    goto :goto_8f

    .line 1718
    :cond_76
    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    move-result-object v3

    if-eqz v3, :cond_8f

    if-nez v2, :cond_8f

    .line 1724
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmConnection(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1725
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 1718
    :cond_8f
    :goto_8f
    nop

    .line 1727
    :goto_90
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 306
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 307
    invoke-direct {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->registerBroadcastReceivers()V

    goto :goto_1a

    .line 308
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1a

    .line 309
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_f
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 311
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v1

    .line 313
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 301
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService-IA;)V

    const-string/jumbo v1, "tv_interactive_app"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 302
    return-void
.end method
