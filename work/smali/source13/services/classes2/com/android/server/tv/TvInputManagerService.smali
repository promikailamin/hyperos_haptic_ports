.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputManagerService$ClientPidNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;,
        Lcom/android/server/tv/TvInputManagerService$HardwareListener;,
        Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;,
        Lcom/android/server/tv/TvInputManagerService$SessionCallback;,
        Lcom/android/server/tv/TvInputManagerService$ServiceCallback;,
        Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;,
        Lcom/android/server/tv/TvInputManagerService$SessionState;,
        Lcom/android/server/tv/TvInputManagerService$TvInputState;,
        Lcom/android/server/tv/TvInputManagerService$ServiceState;,
        Lcom/android/server/tv/TvInputManagerService$ClientState;,
        Lcom/android/server/tv/TvInputManagerService$UserState;,
        Lcom/android/server/tv/TvInputManagerService$BinderService;
    }
.end annotation


# static fields
.field private static final APP_TAG_SELF:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DVB_DIRECTORY:Ljava/lang/String; = "/dev/dvb"

.field private static final PERMISSION_ACCESS_WATCHED_PROGRAMS:Ljava/lang/String; = "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field private static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

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

.field private final mSessionIdToSessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/tv/TvInputManagerService$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/TvInputManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionIdToSessionStateMap(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTvInputHardwareManager(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatchLogHandler(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mabortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildTvContentRatingSystemListLocked(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildTvInputListLocked(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserStateLocked(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->logTuneStateChanged(ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->removeUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMainLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setStateLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->startUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->stopUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchUser(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceConnectionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsAdapterDirPattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsFrontEndDevicePattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsFrontEndInAdapterDirPattern()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 138
    nop

    .line 139
    const-string v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    .line 140
    nop

    .line 141
    const-string v0, "^adapter([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 142
    nop

    .line 143
    const-string v0, "^frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 156
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    .line 174
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    .line 175
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    .line 177
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$HardwareListener-IA;)V

    invoke-direct {v1, p1, v2}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    .line 179
    nop

    .line 180
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 181
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 183
    monitor-enter v0

    .line 184
    :try_start_63
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method private abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 16
    .param p1, "serviceState"    # Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 797
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 798
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v1, "sessionsToAbort":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

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

    .line 800
    .local v3, "sessionToken":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 801
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    if-nez v5, :cond_3c

    if-eqz p2, :cond_39

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    .line 802
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 803
    :cond_39
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v3    # "sessionToken":Landroid/os/IBinder;
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3c
    goto :goto_11

    .line 806
    :cond_3d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 807
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 808
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v7

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 810
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_41

    .line 811
    :cond_6b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 812
    return-void
.end method

.method private buildTvContentRatingSystemListLocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 437
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 439
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 440
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, "intent":Landroid/content/Intent;
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 443
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 444
    .local v5, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 445
    .local v6, "metaData":Landroid/os/Bundle;
    if-nez v6, :cond_35

    .line 446
    goto :goto_22

    .line 449
    :cond_35
    const-string v7, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 450
    .local v7, "xmlResId":I
    if-nez v7, :cond_64

    .line 451
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TvInputManagerService"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    goto :goto_22

    .line 456
    :cond_64
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 457
    invoke-static {v7, v9}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v9

    .line 456
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "xmlResId":I
    goto :goto_22

    .line 460
    :cond_72
    return-void
.end method

.method private buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "updatedPackages"    # [Ljava/lang/String;

    .line 317
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 318
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 321
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 322
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.media.tv.TvInputService"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x84

    invoke-virtual {v5, v0, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 326
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 327
    .local v7, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 328
    .local v8, "hardwareComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_e4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 329
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 330
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v13, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "TvInputManagerService"

    if-nez v0, :cond_73

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping TV input "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ": it does not require the permission "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    goto :goto_34

    .line 336
    :cond_73
    new-instance v0, Landroid/content/ComponentName;

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    .line 337
    .local v13, "component":Landroid/content/ComponentName;
    invoke-static {v5, v13}, Lcom/android/server/tv/TvInputManagerService;->hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 338
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 340
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v0, :cond_a3

    .line 343
    new-instance v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v14, v1, v13, v2, v10}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$ServiceState-IA;)V

    move-object v0, v14

    .line 344
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-direct {v1, v13, v2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    goto :goto_ae

    .line 347
    :cond_a3
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgethardwareInputMap(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    .end local v0    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_ae
    goto :goto_be

    .line 351
    :cond_af
    :try_start_af
    new-instance v0, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10, v11}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 352
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_bd} :catch_c9

    .line 356
    nop

    .line 358
    .end local v0    # "info":Landroid/media/tv/TvInputInfo;
    :goto_be
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    iget-object v10, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "si":Landroid/content/pm/ServiceInfo;
    .end local v13    # "component":Landroid/content/ComponentName;
    goto/16 :goto_34

    .line 353
    .restart local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v13    # "component":Landroid/content/ComponentName;
    :catch_c9
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed to load TV input "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    goto/16 :goto_34

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "si":Landroid/content/pm/ServiceInfo;
    .end local v13    # "component":Landroid/content/ComponentName;
    :cond_e4
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v0, "inputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    invoke-direct {v9, v11}, Landroid/util/ArrayMap;-><init>(I)V

    .line 365
    .local v9, "tisInputCount":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_102
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/tv/TvInputInfo;

    .line 366
    .local v12, "info":Landroid/media/tv/TvInputInfo;
    invoke-virtual {v12}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v13

    .line 371
    .local v13, "inputId":Ljava/lang/String;
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 372
    .local v14, "count":Ljava/lang/Integer;
    const/4 v15, 0x1

    if-nez v14, :cond_124

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_12a

    :cond_124
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v15, v16, 0x1

    :goto_12a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 373
    invoke-virtual {v9, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 375
    .local v15, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v15, :cond_146

    .line 376
    move-object/from16 v16, v5

    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v16, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v5, v10}, Lcom/android/server/tv/TvInputManagerService$TvInputState;-><init>(Lcom/android/server/tv/TvInputManagerService$TvInputState-IA;)V

    move-object v15, v5

    goto :goto_148

    .line 375
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_146
    move-object/from16 v16, v5

    .line 378
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    :goto_148
    invoke-static {v15, v12}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V

    .line 379
    invoke-direct {v1, v12}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v5

    invoke-static {v15, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 380
    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v15, v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 382
    .end local v12    # "info":Landroid/media/tv/TvInputInfo;
    .end local v13    # "inputId":Ljava/lang/String;
    .end local v14    # "count":Ljava/lang/Integer;
    .end local v15    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    move-object/from16 v5, v16

    goto :goto_102

    .line 384
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_15f
    move-object/from16 v16, v5

    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_169
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 385
    .local v10, "inputId":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_183

    .line 386
    invoke-direct {v1, v4, v10}, Lcom/android/server/tv/TvInputManagerService;->notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    goto :goto_1ad

    .line 387
    :cond_183
    if-eqz v3, :cond_1ad

    .line 389
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 390
    .local v11, "component":Landroid/content/ComponentName;
    array-length v12, v3

    const/4 v13, 0x0

    :goto_195
    if-ge v13, v12, :cond_1ad

    aget-object v14, v3, v13

    .line 391
    .local v14, "updatedPackage":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1aa

    .line 392
    invoke-direct {v1, v11, v2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 393
    invoke-direct {v1, v4, v10}, Lcom/android/server/tv/TvInputManagerService;->notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 394
    goto :goto_1ad

    .line 390
    .end local v14    # "updatedPackage":Ljava/lang/String;
    :cond_1aa
    add-int/lit8 v13, v13, 0x1

    goto :goto_195

    .line 398
    .end local v10    # "inputId":Ljava/lang/String;
    .end local v11    # "component":Landroid/content/ComponentName;
    :cond_1ad
    :goto_1ad
    goto :goto_169

    .line 400
    :cond_1ae
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 401
    .restart local v10    # "inputId":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f0

    .line 402
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v11

    .line 403
    .local v11, "info":Landroid/media/tv/TvInputInfo;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 404
    .local v12, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v12, :cond_1ed

    .line 405
    invoke-direct {v1, v12, v10, v2}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    .line 407
    :cond_1ed
    invoke-direct {v1, v4, v10}, Lcom/android/server/tv/TvInputManagerService;->notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V

    .line 409
    .end local v10    # "inputId":Ljava/lang/String;
    .end local v11    # "info":Landroid/media/tv/TvInputInfo;
    .end local v12    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_1f0
    goto :goto_1ba

    .line 412
    :cond_1f1
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 413
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    :goto_1fd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21d

    .line 414
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 415
    .local v10, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v11

    if-eqz v11, :cond_21c

    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcomponent(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_21c

    .line 416
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 418
    .end local v10    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_21c
    goto :goto_1fd

    .line 420
    :cond_21d
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 421
    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/util/Map;)V

    .line 422
    return-void
.end method

.method private clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 10
    .param p1, "state"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 583
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    const-string v1, "error in onSessionReleased"

    const-string v2, "TvInputManagerService"

    if-eqz v0, :cond_1a

    .line 585
    :try_start_a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 588
    goto :goto_1a

    .line 586
    :catch_16
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 592
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 593
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_61

    .line 594
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 596
    :try_start_51
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5c} :catch_5d

    .line 599
    goto :goto_61

    .line 597
    :catch_5d
    move-exception v5

    .line 598
    .local v5, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_61
    :goto_61
    goto :goto_2e

    .line 602
    :cond_62
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetuserId(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 603
    return-void
.end method

.method private createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 21
    .param p1, "service"    # Landroid/media/tv/ITvInputService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 817
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    invoke-direct {v7, v9}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v10

    .line 818
    .local v10, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 823
    .local v12, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v13

    .line 826
    .local v13, "channels":[Landroid/view/InputChannel;
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v0, v7, v12, v13}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    move-object v14, v0

    .line 828
    .local v14, "callback":Landroid/media/tv/ITvInputSessionCallback;
    const/4 v15, 0x1

    .line 831
    .local v15, "created":Z
    const/16 v16, 0x1

    :try_start_28
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 832
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v14, v0, v1}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 835
    :cond_3a
    aget-object v0, v13, v16

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v14, v1, v2}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_47} :catch_48

    .line 843
    :goto_47
    goto :goto_64

    .line 838
    :catch_48
    move-exception v0

    .line 839
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in createSession"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetseq(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 842
    const/4 v15, 0x0

    .line 844
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_64
    aget-object v0, v13, v16

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 845
    return v15
.end method

.method private getContentResolverForUser(I)Landroid/content/ContentResolver;
    .registers 6
    .param p1, "userId"    # I

    .line 666
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 669
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_f

    .line 673
    .local v1, "context":Landroid/content/Context;
    goto :goto_2b

    .line 670
    .end local v1    # "context":Landroid/content/Context;
    :catch_f
    move-exception v1

    .line 671
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create package context as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    move-object v1, v2

    .line 674
    .local v1, "context":Landroid/content/Context;
    :goto_2b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    return-object v2
.end method

.method private getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 23
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/tv/TvInputManagerService$UserState;",
            "II)",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    .line 2780
    move-object/from16 v0, p0

    move/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2781
    .local v2, "channelInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    move/from16 v3, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/tv/TvInputManagerService;->hasAccessWatchedProgramsPermission(II)Z

    move-result v4

    .line 2782
    .local v4, "watchedProgramsAccess":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2783
    .local v6, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 2786
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    if-ne v7, v1, :cond_3c

    .line 2787
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2788
    .local v7, "appTag":Ljava/lang/Integer;
    const/4 v8, 0x1

    move-object/from16 v10, p1

    .local v8, "appType":I
    goto :goto_83

    .line 2790
    .end local v7    # "appTag":Ljava/lang/Integer;
    .end local v8    # "appType":I
    :cond_3c
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmAppTagMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2791
    .restart local v7    # "appTag":Ljava/lang/Integer;
    if-nez v7, :cond_6f

    .line 2792
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmNextAppTag(Lcom/android/server/tv/TvInputManagerService$UserState;)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v10, p1

    invoke-static {v10, v9}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmNextAppTag(Lcom/android/server/tv/TvInputManagerService$UserState;I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2793
    invoke-static/range {p1 .. p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmAppTagMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 2791
    :cond_6f
    move-object/from16 v10, p1

    .line 2795
    :goto_71
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/server/tv/TvInputManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 2796
    const/4 v8, 0x2

    goto :goto_82

    .line 2797
    :cond_81
    const/4 v8, 0x3

    :goto_82
    nop

    .line 2799
    .restart local v8    # "appType":I
    :goto_83
    new-instance v9, Landroid/media/tv/TunedInfo;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v12

    .line 2801
    if-eqz v4, :cond_90

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_91

    :cond_90
    const/4 v11, 0x0

    :goto_91
    move-object v13, v11

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v14

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisVisible(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v15

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v16

    .line 2806
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v11, v9

    move/from16 v17, v8

    invoke-direct/range {v11 .. v18}, Landroid/media/tv/TunedInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V

    .line 2799
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 2783
    .end local v7    # "appTag":Ljava/lang/Integer;
    .end local v8    # "appType":I
    :cond_ac
    move-object/from16 v10, p1

    .line 2808
    .end local v6    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_ae
    goto/16 :goto_1b

    .line 2809
    :cond_b0
    move-object/from16 v10, p1

    return-object v2
.end method

.method private getInputUid(Landroid/media/tv/TvInputInfo;)I
    .registers 5
    .param p1, "info"    # Landroid/media/tv/TvInputInfo;

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 427
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    .line 428
    :catch_16
    move-exception v0

    .line 429
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

    const-string v2, "TvInputManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v1, -0x1

    return v1
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 6
    .param p1, "userId"    # I

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 680
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_14

    .line 681
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Landroid/content/Context;ILcom/android/server/tv/TvInputManagerService$UserState-IA;)V

    move-object v0, v1

    .line 682
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    :cond_14
    return-object v0
.end method

.method private getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 689
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 690
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 691
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v1, :cond_11

    .line 695
    return-object v1

    .line 692
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

.method private getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 720
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 6
    .param p1, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 725
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    .line 726
    .local v0, "session":Landroid/media/tv/ITvInputSession;
    if-eqz v0, :cond_7

    .line 730
    return-object v0

    .line 727
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session not yet created for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 6
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 699
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 700
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1

    return-object v1
.end method

.method private getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 8
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 706
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 707
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-eqz v0, :cond_3b

    .line 711
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3a

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v1

    if-ne p2, v1, :cond_17

    goto :goto_3a

    .line 712
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

    .line 715
    :cond_3a
    :goto_3a
    return-object v0

    .line 708
    :cond_3b
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session state not found for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 4
    .param p0, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 2771
    if-eqz p1, :cond_11

    .line 2772
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetinputId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    return-object v0

    .line 2774
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 3
    .param p1, "userId"    # I

    .line 3677
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    return-object v0
.end method

.method static getVideoUnavailableReasonForStatsd(I)I
    .registers 3
    .param p0, "reason"    # I

    .line 3664
    add-int/lit8 v0, p0, 0x64

    .line 3666
    .local v0, "loggedReason":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_a

    const/16 v1, 0x76

    if-le v0, v1, :cond_c

    .line 3670
    :cond_a
    const/16 v0, 0x64

    .line 3673
    :cond_c
    return v0
.end method

.method private hasAccessWatchedProgramsPermission(II)Z
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 2813
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static hasHardwarePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 312
    nop

    .line 313
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2819
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_13

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    move v0, v2

    :cond_12
    return v0

    .line 2821
    :catch_13
    move-exception v1

    .line 2822
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private logTuneStateChanged(ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 16
    .param p1, "state"    # I
    .param p2, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p3, "inputState"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 2841
    const/4 v0, -0x1

    .line 2842
    .local v0, "tisUid":I
    const/4 v1, 0x0

    .line 2843
    .local v1, "inputType":I
    const/4 v2, 0x0

    .line 2844
    .local v2, "inputId":I
    const/4 v3, 0x0

    .line 2845
    .local v3, "hdmiPort":I
    if-eqz p3, :cond_2f

    .line 2846
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v0

    .line 2847
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v1

    .line 2848
    if-nez v1, :cond_15

    .line 2849
    const/4 v1, 0x1

    .line 2851
    :cond_15
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinputNumber(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v2

    .line 2852
    invoke-static {p3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    .line 2853
    .local v4, "hdmiDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v4, :cond_2b

    .line 2854
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    move v9, v1

    move v10, v2

    move v11, v3

    goto :goto_32

    .line 2853
    :cond_2b
    move v9, v1

    move v10, v2

    move v11, v3

    goto :goto_32

    .line 2845
    .end local v4    # "hdmiDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2f
    move v9, v1

    move v10, v2

    move v11, v3

    .line 2857
    .end local v1    # "inputType":I
    .end local v2    # "inputId":I
    .end local v3    # "hdmiPort":I
    .local v9, "inputType":I
    .local v10, "inputId":I
    .local v11, "hdmiPort":I
    :goto_32
    const/16 v1, 0x147

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcallingUid(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const-string/jumbo v3, "tif_player"

    const-string/jumbo v4, "tv_input_service"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    move v4, p1

    move v6, v9

    move v7, v10

    move v8, v11

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;III)V

    .line 2866
    return-void
.end method

.method private notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 1035
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1036
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_5d

    .line 1038
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 1039
    .local v2, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcallbackPidUidMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1040
    .local v3, "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_TUNED_INFO"

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 1041
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1040
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1042
    goto :goto_5a

    .line 1044
    :cond_3a
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1045
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1044
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object v4

    .line 1046
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    invoke-interface {v2, v4}, Landroid/media/tv/ITvInputManagerCallback;->onCurrentTunedInfosUpdated(Ljava/util/List;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_51} :catch_52

    .line 1049
    .end local v2    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local v3    # "pidUid":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    goto :goto_5a

    .line 1047
    :catch_52
    move-exception v2

    .line 1048
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report updated current channel infos to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1051
    .end local v1    # "i":I
    :cond_5d
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1052
    return-void
.end method

.method private notifyInputAddedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 961
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 962
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 964
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 967
    goto :goto_21

    .line 965
    :catch_19
    move-exception v2

    .line 966
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report added input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 969
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 970
    return-void
.end method

.method private notifyInputRemovedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 977
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 978
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 980
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 983
    goto :goto_21

    .line 981
    :catch_19
    move-exception v2

    .line 982
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report removed input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 985
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 986
    return-void
.end method

.method private notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "targetCallback"    # Landroid/media/tv/ITvInputManagerCallback;

    .line 1011
    const-string v0, "failed to report state change to callback"

    const-string v1, "TvInputManagerService"

    if-nez p4, :cond_2e

    .line 1012
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1013
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_26

    .line 1015
    :try_start_11
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 1018
    goto :goto_23

    .line 1016
    :catch_1f
    move-exception v4

    .line 1017
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1013
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1020
    .end local v3    # "i":I
    :cond_26
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1021
    .end local v2    # "n":I
    goto :goto_36

    .line 1023
    :cond_2e
    :try_start_2e
    invoke-interface {p4, p2, p3}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    .line 1026
    goto :goto_36

    .line 1024
    :catch_32
    move-exception v2

    .line 1025
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method private notifyInputUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;)V
    .registers 8
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputId"    # Ljava/lang/String;

    .line 993
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 994
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_24

    .line 996
    :try_start_b
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 999
    goto :goto_21

    .line 997
    :catch_19
    move-exception v2

    .line 998
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputManagerService"

    const-string v4, "failed to report updated input to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1001
    .end local v1    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1002
    return-void
.end method

.method private registerBroadcastReceivers()V
    .registers 9

    .line 219
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    .line 285
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 287
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/tv/TvInputManagerService$2;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method private releaseSessionLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 861
    const/4 v0, 0x0

    .line 863
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v2

    move-object v0, v2

    .line 864
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 865
    .local v2, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 866
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v3

    if-ne p1, v3, :cond_1b

    .line 867
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V

    .line 869
    :cond_1b
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 870
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputSession;->release()V

    .line 872
    :cond_2d
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 873
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 874
    invoke-static {v0, v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 875
    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3c} :catch_44
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_2 .. :try_end_3c} :catch_44
    .catchall {:try_start_2 .. :try_end_3c} :catchall_42

    .line 880
    .end local v2    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_3c
    if-eqz v0, :cond_50

    .line 881
    :goto_3e
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    goto :goto_50

    .line 880
    :catchall_42
    move-exception v2

    goto :goto_54

    .line 877
    :catch_44
    move-exception v2

    .line 878
    .local v2, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v3, "TvInputManagerService"

    const-string v4, "error in releaseSession"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    .line 880
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_50

    .line 881
    goto :goto_3e

    .line 884
    :cond_50
    :goto_50
    invoke-direct {p0, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(Landroid/os/IBinder;I)V

    .line 885
    return-object v0

    .line 880
    :goto_54
    if-eqz v0, :cond_59

    .line 881
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputsession(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)V

    .line 883
    :cond_59
    throw v2
.end method

.method private releaseSessionOfUserLocked(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 528
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_7

    .line 529
    return-void

    .line 531
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v1, "sessionStatesToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 533
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisRecordingSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 534
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v3    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_33
    goto :goto_18

    .line 537
    :cond_34
    const/4 v2, 0x0

    .line 538
    .local v2, "notifyInfoUpdated":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 540
    .local v4, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_start_45
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->release()V

    .line 541
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 542
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 543
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5a} :catch_63
    .catchall {:try_start_45 .. :try_end_5a} :catchall_61

    .line 544
    const/4 v2, 0x1

    .line 549
    :cond_5b
    if-eqz v2, :cond_6f

    .line 550
    :goto_5d
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    goto :goto_6f

    .line 549
    :catchall_61
    move-exception v3

    goto :goto_73

    .line 546
    :catch_63
    move-exception v5

    .line 547
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_64
    const-string v6, "TvInputManagerService"

    const-string v7, "error in release"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_61

    .line 549
    nop

    .end local v5    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_6f

    .line 550
    goto :goto_5d

    .line 553
    :cond_6f
    :goto_6f
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 554
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto :goto_39

    .line 549
    .restart local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_73
    if-eqz v2, :cond_78

    .line 550
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 552
    :cond_78
    throw v3

    .line 555
    .end local v4    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_79
    return-void
.end method

.method private removeSessionStateLocked(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 890
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 891
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_e

    .line 895
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 899
    :cond_e
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 901
    .local v1, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    if-nez v1, :cond_23

    .line 902
    const-string v2, "TvInputManagerService"

    const-string/jumbo v3, "sessionState null, no more remove session action!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 908
    :cond_23
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 909
    .local v2, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v2, :cond_5f

    .line 910
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 911
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService$ClientState;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 912
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetclient(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 917
    :cond_5f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsessionId(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 920
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_7f

    .line 921
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 923
    :cond_7f
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V

    .line 926
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 927
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 929
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 930
    return-void
.end method

.method private removeUser(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 608
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v1, :cond_b

    .line 609
    monitor-exit v0

    return-void

    .line 612
    :cond_b
    const/4 v2, 0x0

    .line 613
    .local v2, "notifyInfoUpdated":Z
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 614
    .local v4, "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_e8

    if-eqz v7, :cond_5a

    .line 616
    :try_start_2c
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetsession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/ITvInputSession;->release()V

    .line 617
    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputcurrentChannel(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/net/Uri;)V

    .line 618
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 619
    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisCurrent(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3f} :catch_48
    .catchall {:try_start_2c .. :try_end_3f} :catchall_46

    .line 620
    const/4 v2, 0x1

    .line 625
    :cond_40
    if-eqz v2, :cond_5a

    .line 626
    :goto_42
    :try_start_42
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_e8

    goto :goto_5a

    .line 625
    :catchall_46
    move-exception v3

    goto :goto_53

    .line 622
    :catch_48
    move-exception v5

    .line 623
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v6, "TvInputManagerService"

    const-string v7, "error in release"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_46

    .line 625
    .end local v5    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_5a

    .line 626
    goto :goto_42

    .line 625
    :goto_53
    if-eqz v2, :cond_58

    .line 626
    :try_start_55
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 628
    :cond_58
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvInputManagerService;
    .end local p1    # "userId":I
    throw v3

    .line 630
    .end local v4    # "state":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .restart local p0    # "this":Lcom/android/server/tv/TvInputManagerService;
    .restart local p1    # "userId":I
    :cond_5a
    :goto_5a
    goto :goto_18

    .line 631
    :cond_5b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetsessionStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 634
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 635
    .local v4, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v7

    if-eqz v7, :cond_a3

    .line 636
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v7
    :try_end_84
    .catchall {:try_start_55 .. :try_end_84} :catchall_e8

    if-eqz v7, :cond_9a

    .line 638
    :try_start_86
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v7

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_91} :catch_92
    .catchall {:try_start_86 .. :try_end_91} :catchall_e8

    .line 641
    goto :goto_9a

    .line 639
    :catch_92
    move-exception v7

    .line 640
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_93
    const-string v8, "TvInputManagerService"

    const-string v9, "error in unregisterCallback"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_9a
    :goto_9a
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 645
    .end local v4    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_a3
    goto :goto_6e

    .line 646
    :cond_a4
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 649
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 650
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetpackageSet(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 651
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetcontentRatingSystemList(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 652
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetclientStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 653
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V

    .line 654
    invoke-static {v1, v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fputmainSessionToken(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)V

    .line 656
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 657
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 659
    iget v3, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v3, :cond_e6

    .line 660
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 662
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2    # "notifyInfoUpdated":Z
    :cond_e6
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_e8
    move-exception v1

    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_93 .. :try_end_ea} :catchall_e8

    throw v1
.end method

.method private resolveCallingUserId(IIILjava/lang/String;)I
    .registers 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "requestedUserId"    # I
    .param p4, "methodName"    # Ljava/lang/String;

    .line 735
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

.method private sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 9
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/os/IBinder;
    .param p4, "channel"    # Landroid/view/InputChannel;
    .param p5, "seq"    # I

    .line 852
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 855
    goto :goto_c

    .line 853
    :catch_4
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onSessionCreated"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private setMainLocked(Landroid/os/IBinder;ZII)V
    .registers 9
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "isMain"    # Z
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 935
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v0

    .line 936
    .local v0, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 937
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgethardwareSessionToken(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2, p4}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1

    move-object v0, v1

    .line 940
    :cond_15
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetcomponentName(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v1

    .line 941
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 942
    return-void

    .line 944
    :cond_24
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v2

    .line 945
    .local v2, "session":Landroid/media/tv/ITvInputSession;
    invoke-interface {v2, p2}, Landroid/media/tv/ITvInputSession;->setMain(Z)V

    .line 946
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fgetisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v3

    if-eq v3, p2, :cond_3b

    .line 947
    invoke-direct {p0, p4}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 948
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-$$Nest$fputisMainSession(Lcom/android/server/tv/TvInputManagerService$SessionState;Z)V

    .line 949
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3b} :catch_3c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 953
    .end local v0    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "session":Landroid/media/tv/ITvInputSession;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_3b
    goto :goto_44

    .line 951
    :catch_3c
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TvInputManagerService"

    const-string v2, "error in setMain"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method private setStateLocked(Ljava/lang/String;II)V
    .registers 9
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userId"    # I

    .line 1081
    invoke-direct {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 1082
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1083
    .local v1, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v1, :cond_29

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setStateLocked - unknown input id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInputManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-void

    .line 1087
    :cond_29
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1088
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fgetstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v3

    .line 1089
    .local v3, "oldState":I
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputstate(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 1090
    if-eqz v2, :cond_5b

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    if-nez v4, :cond_5b

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    .line 1091
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1093
    :cond_5a
    return-void

    .line 1095
    :cond_5b
    if-eq v3, p2, :cond_61

    .line 1096
    const/4 v4, 0x0

    invoke-direct {p0, v0, p1, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;ILandroid/media/tv/ITvInputManagerCallback;)V

    .line 1098
    :cond_61
    return-void
.end method

.method private startProfileLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 496
    return-void
.end method

.method private startUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 463
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_33

    .line 468
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 469
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 470
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    iget v4, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_31

    .line 474
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->startProfileLocked(I)V

    .line 476
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_31
    monitor-exit v0

    .line 477
    return-void

    .line 466
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    .line 476
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

    .line 480
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_10

    .line 482
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 483
    monitor-exit v0

    return-void

    .line 486
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 487
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 488
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private switchUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 499
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 504
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 505
    const-string v2, "TvInputManagerService"

    const-string v3, "cannot switch to a profile!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v0

    return-void

    .line 509
    :cond_1e
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

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

    .line 510
    .local v3, "runningId":I
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 511
    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 512
    .end local v3    # "runningId":I
    goto :goto_24

    .line 513
    :cond_3b
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 514
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 515
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 517
    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 518
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 520
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    const/4 v3, 0x3

    .line 521
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getContentResolverForUser(I)Landroid/content/ContentResolver;

    move-result-object v4

    .line 520
    invoke-virtual {v2, v3, v4}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 522
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private unbindServiceOfUserLocked(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 560
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    if-nez v0, :cond_7

    .line 561
    return-void

    .line 563
    :cond_7
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 564
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 565
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 566
    .local v2, "component":Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 567
    .local v3, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-eqz v3, :cond_5b

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 568
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 570
    :try_start_3b
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetcallback(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_47

    .line 573
    goto :goto_4f

    .line 571
    :catch_47
    move-exception v4

    .line 572
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TvInputManagerService"

    const-string v6, "error in unregisterCallback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 578
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_5b
    goto :goto_13

    .line 579
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_5c
    return-void
.end method

.method private updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 741
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 742
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 743
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v1, :cond_11

    .line 744
    return-void

    .line 746
    :cond_11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 747
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 749
    return-void

    .line 751
    :cond_23
    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputreconnecting(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    .line 755
    :cond_26
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-eq p2, v2, :cond_42

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_42

    .line 762
    :cond_38
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    .local v2, "shouldBind":Z
    goto :goto_54

    .line 756
    .end local v2    # "shouldBind":Z
    :cond_42
    :goto_42
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetsessionTokens(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetisHardware(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_52
    move v3, v4

    :cond_53
    move v2, v3

    .line 765
    .restart local v2    # "shouldBind":Z
    :goto_54
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-nez v3, :cond_84

    if-eqz v2, :cond_84

    .line 768
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 771
    return-void

    .line 777
    :cond_63
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.tv.TvInputService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 778
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v5

    const v6, 0x2000001

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fputbound(Lcom/android/server/tv/TvInputManagerService$ServiceState;Z)V

    .end local v3    # "i":Landroid/content/Intent;
    goto :goto_9d

    .line 782
    :cond_84
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetservice(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_9d

    if-nez v2, :cond_9d

    .line 788
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-$$Nest$fgetconnection(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 789
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetserviceStateMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9e

    .line 782
    :cond_9d
    :goto_9d
    nop

    .line 791
    :goto_9e
    return-void
.end method

.method private updateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 10
    .param p1, "userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1059
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "inputId":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetinputMap(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1061
    .local v1, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    const-string v2, "TvInputManagerService"

    if-nez v1, :cond_29

    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set input info - unknown input id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void

    .line 1065
    :cond_29
    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputinfo(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)V

    .line 1066
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->-$$Nest$fputuid(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)V

    .line 1068
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1069
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    if-ge v4, v3, :cond_55

    .line 1071
    :try_start_3e
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4b} :catch_4c

    .line 1074
    goto :goto_52

    .line 1072
    :catch_4c
    move-exception v5

    .line 1073
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "failed to report updated input info to callback"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1076
    .end local v4    # "i":I
    :cond_55
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->-$$Nest$fgetmCallbacks(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1077
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 195
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_8

    .line 196
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V

    goto :goto_1f

    .line 197
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1f

    .line 198
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_f
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 200
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 201
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v1

    .line 203
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onBootPhase(I)V

    .line 204
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 190
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$BinderService-IA;)V

    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/TvInputManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 209
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_d
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 214
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
