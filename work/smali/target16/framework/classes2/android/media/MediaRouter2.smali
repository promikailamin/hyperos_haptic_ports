.class public final Landroid/media/MediaRouter2;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$MediaRouter2Impl;,
        Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;,
        Landroid/media/MediaRouter2$ScanToken;,
        Landroid/media/MediaRouter2$ScanRequest;,
        Landroid/media/MediaRouter2$LocalMediaRouter2Impl;,
        Landroid/media/MediaRouter2$SystemRoutingController;,
        Landroid/media/MediaRouter2$RoutingController;,
        Landroid/media/MediaRouter2$RouteCallback;,
        Landroid/media/MediaRouter2$RouteCallbackRecord;,
        Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;,
        Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;,
        Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;,
        Landroid/media/MediaRouter2$TransferCallbackRecord;,
        Landroid/media/MediaRouter2$TransferCallback;,
        Landroid/media/MediaRouter2$ControllerCallbackRecord;,
        Landroid/media/MediaRouter2$ControllerCallback;,
        Landroid/media/MediaRouter2$SystemSessionOverridesListener;,
        Landroid/media/MediaRouter2$OnGetControllerHintsListener;,
        Landroid/media/MediaRouter2$ControllerCreationRequest;,
        Landroid/media/MediaRouter2$MediaRouter2Stub;,
        Landroid/media/MediaRouter2$SystemSessionOverridesListenerRecord;,
        Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;,
        Landroid/media/MediaRouter2$ScanningState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist MANAGER_REQUEST_ID_NONE:J = 0x0L

.field public static final blacklist SCANNING_STATE_NOT_SCANNING:I = 0x0

.field public static final blacklist SCANNING_STATE_SCANNING_FULL:I = 0x2

.field public static final blacklist SCANNING_STATE_WHILE_INTERACTIVE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MR2"

.field private static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static final blacklist sAppToProxyRouterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/AppId;",
            "Landroid/media/MediaRouter2;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Landroid/media/MediaRouter2;

.field private static final blacklist sRouterLock:Ljava/lang/Object;

.field private static final blacklist sSystemRouterLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field private volatile blacklist mFilteredRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

.field private final blacklist mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mNonSystemRoutingControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

.field private volatile blacklist mPreviousFilteredRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreviousUnfilteredRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRouteListingPreference:Landroid/media/RouteListingPreference;

.field private final blacklist mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScanRequestsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/MediaRouter2$ScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenOffScanRequestCount:I

.field private blacklist mScreenOnScanRequestCount:I

.field private blacklist mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

.field private blacklist mSuggestedDeviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mSystemController:Landroid/media/MediaRouter2$RoutingController;

.field private final blacklist mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$TransferCallbackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControllerCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFilteredRoutes(Landroid/media/MediaRouter2;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanRequestsMap(Landroid/media/MediaRouter2;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestedDeviceInfo(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mSuggestedDeviceInfo:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnGetControllerHintsListener(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2;->getCurrentController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCallbacksDeviceSuggestionRequested(Landroid/media/MediaRouter2;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2;->notifyCallbacksDeviceSuggestionRequested()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDeviceSuggestionsUpdated(Landroid/media/MediaRouter2;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRequestFailed(Landroid/media/MediaRouter2;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRequestFailed(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRouteListingPreferenceUpdated(Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateDiscoveryPreferenceIfNeededLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAppToProxyRouterMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSystemRouterLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 135
    const-string v0, "MR2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 165
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    .line 188
    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 191
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    .line 192
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mSuggestedDeviceInfo:Ljava/util/Map;

    .line 215
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    .line 217
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 627
    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 628
    nop

    .line 630
    const-string p1, "media_router"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 629
    invoke-static {p1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 631
    new-instance p1, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;-><init>(Landroid/media/MediaRouter2;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 632
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    .line 634
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->loadSystemRoutes(Z)V

    .line 636
    iget-object p1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p1

    .line 637
    if-eqz p1, :cond_af

    .line 641
    new-instance v0, Landroid/media/MediaRouter2$SystemRoutingController;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 642
    return-void

    .line 638
    :cond_af
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null currentSystemSessionInfo. Something is wrong."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 165
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    .line 188
    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSuggestedDeviceInfo:Ljava/util/Map;

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    .line 217
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 646
    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 647
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    .line 648
    nop

    .line 650
    const-string p2, "media_router"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 649
    invoke-static {p2}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object p2

    iput-object p2, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 652
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->loadSystemRoutes(Z)V

    .line 654
    new-instance p2, Landroid/media/MediaRouter2$SystemRoutingController;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 657
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-static {v0, v1, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object p2, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 659
    new-instance p2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-direct {p2, p0, p1, p3, p4}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;-><init>(Landroid/media/MediaRouter2;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object p2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 660
    return-void
.end method

.method private blacklist addRoutingController(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;
    .registers 5

    .line 1532
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1534
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 1535
    iget-object p1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    goto :goto_21

    .line 1537
    :cond_e
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 1538
    iget-object p1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1539
    :try_start_16
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    monitor-exit p1

    move-object p1, v0

    .line 1542
    :goto_21
    return-object p1

    .line 1540
    :catchall_22
    move-exception v0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private static blacklist checkCallerHasOnlyRevocablePermissions(Landroid/content/Context;)Z
    .registers 8

    .line 457
    nop

    .line 458
    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 460
    :goto_e
    nop

    .line 461
    const-string v3, "android.permission.MEDIA_ROUTING_CONTROL"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    .line 463
    :goto_1a
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 464
    nop

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 465
    const-string v6, "android:media_routing_control"

    invoke-virtual {v4, v6, v5, p0}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_37

    move p0, v1

    goto :goto_38

    :cond_37
    move p0, v2

    .line 471
    :goto_38
    if-nez v0, :cond_3f

    if-nez v3, :cond_3f

    if-eqz p0, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    return v1
.end method

.method private static blacklist ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 1824
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1825
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1f

    .line 1829
    :cond_11
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 1830
    invoke-virtual {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object p0

    .line 1831
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object p0

    .line 1829
    return-object p0

    .line 1826
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method private blacklist filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1667
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1669
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    iget-object v2, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v2}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1672
    iget-object v3, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1673
    goto :goto_18

    .line 1675
    :cond_31
    iget-object v3, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 1676
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1678
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v3

    .line 1679
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1680
    goto :goto_18

    .line 1682
    :cond_54
    iget-object v3, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1683
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 1684
    goto :goto_18

    .line 1686
    :cond_67
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1688
    :cond_6e
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    goto :goto_18

    .line 1690
    :cond_72
    return-object v1
.end method

.method private static blacklist findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;
    .registers 9

    .line 424
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 425
    const-string v0, "user must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 431
    if-eqz p3, :cond_14

    if-nez p4, :cond_1a

    .line 432
    :cond_14
    invoke-static {p0}, Landroid/media/MediaRouter2;->checkCallerHasOnlyRevocablePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 439
    :cond_1a
    new-instance v0, Landroid/media/AppId;

    invoke-direct {v0, p1, p2}, Landroid/media/AppId;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 441
    sget-object v1, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_22
    sget-object v2, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2;

    .line 443
    if-nez v2, :cond_41

    .line 444
    new-instance v2, Landroid/media/MediaRouter2;

    .line 445
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, p2}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 447
    iget-object p0, v2, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    check-cast p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-virtual {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->registerProxyRouter()V

    .line 448
    sget-object p0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_41
    iget-object p0, v2, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    check-cast p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 451
    invoke-virtual {p0, p3, p4}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->registerInstanceInvalidatedCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 452
    monitor-exit v1

    return-object v2

    .line 453
    :catchall_4a
    move-exception p0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_4a

    throw p0

    .line 433
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Use getInstance(Context, String, Executor, Runnable) to obtain a proxy MediaRouter2 instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "clientPackageName must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getCurrentController()Landroid/media/MediaRouter2$RoutingController;
    .registers 3

    .line 1263
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    .line 1264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter2$RoutingController;

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;
    .registers 3

    .line 234
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    sget-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_8
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    if-nez v1, :cond_17

    .line 237
    new-instance v1, Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    .line 239
    :cond_17
    sget-object p0, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    monitor-exit v0

    return-object p0

    .line 240
    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaRouter2;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 286
    nop

    .line 289
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 286
    invoke-static {p0, p1, v1, v0, v0}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    .line 292
    :catch_b
    move-exception p0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create proxy router for package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MR2"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/media/MediaRouter2;
    .registers 4

    .line 402
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;
    .registers 5

    .line 351
    const-string v0, "Executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    const-string v0, "onInstanceInvalidatedListener must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    nop

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 355
    invoke-static {p0, p1, v0, p2, p3}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .registers 8

    .line 1581
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1582
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    return-object p1

    .line 1585
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_e
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1587
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_81

    .line 1589
    const/4 v0, 0x0

    if-nez v1, :cond_3f

    .line 1590
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ": Matching controller not found. uniqueSessionId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1594
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1590
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return-object v0

    .line 1598
    :cond_3f
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 1599
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1600
    const-string v1, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ": Provider IDs are not matched. old="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1604
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", new="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1606
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1600
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return-object v0

    .line 1609
    :cond_80
    return-object v1

    .line 1587
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method private blacklist getRoutesWithIds(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1695
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1696
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 1697
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;-><init>()V

    .line 1698
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1699
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0

    .line 1696
    return-object p1

    .line 1700
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private blacklist getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1646
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1647
    return-object p1

    .line 1649
    :cond_7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1650
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1651
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_25

    .line 1653
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1655
    :cond_25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1657
    new-instance p1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    .line 1658
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    .line 1657
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1660
    return-object p2
.end method

.method static synthetic blacklist lambda$getSortedRoutes$1(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
    .registers 3

    .line 1659
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method static synthetic blacklist lambda$notifyCallbacksDeviceSuggestionRequested$9(Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;)V
    .registers 1

    .line 1779
    iget-object p0, p0, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    invoke-interface {p0}, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;->onSuggestionsRequested()V

    return-void
.end method

.method static synthetic blacklist lambda$notifyControllerUpdated$14(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Z)V
    .registers 3

    .line 1811
    iget-object p0, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2$ControllerCallback;->onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyDeviceSuggestionsUpdated$8(Ljava/util/List;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;Ljava/lang/String;)V
    .registers 3

    .line 1764
    if-eqz p0, :cond_8

    .line 1765
    iget-object p1, p1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    invoke-interface {p1, p2, p0}, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;->onSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d

    .line 1768
    :cond_8
    iget-object p0, p1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mDeviceSuggestionsUpdatesCallback:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;

    invoke-interface {p0, p2}, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;->onSuggestionsCleared(Ljava/lang/String;)V

    .line 1771
    :goto_d
    return-void
.end method

.method static synthetic blacklist lambda$notifyPreferredFeaturesChanged$6(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 2

    .line 1746
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRequestFailed$12(Landroid/media/MediaRouter2$TransferCallbackRecord;I)V
    .registers 2

    .line 1798
    iget-object p0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRouteListingPreferenceUpdated$7(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V
    .registers 2

    .line 1753
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesAdded$2(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 2

    .line 1708
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesChanged$4(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 2

    .line 1730
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesRemoved$3(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 2

    .line 1719
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesUpdated$5(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 2

    .line 1739
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyStop$13(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    .line 1804
    iget-object p0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransfer$10(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3

    .line 1786
    iget-object p0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2$TransferCallback;->onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailure$11(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V
    .registers 2

    .line 1792
    iget-object p0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreferenceIfNeededLocked$0(Landroid/media/MediaRouter2$RouteCallbackRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    .line 975
    iget-object p0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    return-object p0
.end method

.method private blacklist loadSystemRoutes(Z)V
    .registers 5

    .line 664
    nop

    .line 666
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    .line 670
    goto :goto_13

    .line 668
    :catch_e
    move-exception p1

    .line 669
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    .line 672
    :goto_13
    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 676
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    .line 677
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    goto :goto_1f

    .line 679
    :cond_35
    return-void

    .line 673
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null or empty currentSystemRoutes. Something is wrong."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist notifyCallbacksDeviceSuggestionRequested()V
    .registers 5

    .line 1777
    iget-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    .line 1778
    iget-object v2, v1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;-><init>(Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1780
    goto :goto_6

    .line 1781
    :cond_1d
    return-void
.end method

.method private blacklist notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;Z)V
    .registers 7

    .line 1809
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    .line 1810
    iget-object v2, v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1812
    goto :goto_6

    .line 1813
    :cond_1d
    return-void
.end method

.method private blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    .line 1762
    iget-object v2, v1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;

    invoke-direct {v3, p2, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;-><init>(Ljava/util/List;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1772
    goto :goto_6

    .line 1773
    :cond_1d
    return-void
.end method

.method private blacklist notifyPreferredFeaturesChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1744
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1745
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1747
    goto :goto_6

    .line 1748
    :cond_1d
    return-void
.end method

.method private blacklist notifyRequestFailed(I)V
    .registers 6

    .line 1797
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1798
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1799
    goto :goto_6

    .line 1800
    :cond_1d
    return-void
.end method

.method private blacklist notifyRouteListingPreferenceUpdated(Landroid/media/RouteListingPreference;)V
    .registers 6

    .line 1751
    iget-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    .line 1752
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1754
    goto :goto_6

    .line 1755
    :cond_1d
    return-void
.end method

.method private blacklist notifyRoutesAdded(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1704
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1705
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1706
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1707
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1708
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1710
    :cond_2a
    goto :goto_6

    .line 1711
    :cond_2b
    return-void
.end method

.method private blacklist notifyRoutesChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1725
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1726
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1727
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1728
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1729
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda13;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1732
    :cond_2a
    goto :goto_6

    .line 1733
    :cond_2b
    return-void
.end method

.method private blacklist notifyRoutesRemoved(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1715
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1716
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1717
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1718
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1721
    :cond_2a
    goto :goto_6

    .line 1722
    :cond_2b
    return-void
.end method

.method private blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1736
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1737
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1738
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1739
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1740
    goto :goto_6

    .line 1741
    :cond_25
    return-void
.end method

.method private blacklist notifyStop(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 6

    .line 1803
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1804
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1805
    goto :goto_6

    .line 1806
    :cond_1d
    return-void
.end method

.method private blacklist notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 7

    .line 1784
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1785
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1787
    goto :goto_6

    .line 1788
    :cond_1d
    return-void
.end method

.method private blacklist notifyTransferFailure(Landroid/media/MediaRoute2Info;)V
    .registers 6

    .line 1791
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1792
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda14;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1793
    goto :goto_6

    .line 1794
    :cond_1d
    return-void
.end method

.method private blacklist updateDiscoveryPreferenceIfNeededLocked()Z
    .registers 5

    .line 974
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 975
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 976
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    .line 975
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/Collection;)V

    .line 976
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    .line 978
    iget-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 979
    const/4 v0, 0x0

    return v0

    .line 981
    :cond_2c
    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 982
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 983
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableRouteVisibilityControlCompatFixes()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 984
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 985
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 984
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 990
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 989
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    :cond_5c
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist cancelScanRequest(Landroid/media/MediaRouter2$ScanToken;)V
    .registers 7

    .line 588
    const-string v0, "token must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ScanRequest;

    .line 593
    if-eqz v1, :cond_6a

    .line 599
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    .line 600
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    if-ne v2, v4, :cond_24

    move v2, v4

    goto :goto_31

    :cond_24
    move v2, v3

    goto :goto_31

    .line 601
    :cond_26
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    if-ne v2, v4, :cond_30

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_72

    if-nez v2, :cond_30

    move v2, v4

    goto :goto_31

    :cond_30
    move v2, v3

    .line 603
    :goto_31
    if-eqz v2, :cond_4e

    .line 605
    :try_start_33
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    if-nez v2, :cond_3e

    goto :goto_44

    .line 608
    :cond_3e
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v2, v4}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V

    goto :goto_49

    .line 606
    :cond_44
    :goto_44
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v2, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_49} :catch_4a
    .catchall {:try_start_33 .. :try_end_49} :catchall_72

    .line 613
    :goto_49
    goto :goto_4e

    .line 611
    :catch_4a
    move-exception v2

    .line 612
    :try_start_4b
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 616
    :cond_4e
    :goto_4e
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 617
    iget v1, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    goto :goto_5f

    .line 619
    :cond_5a
    iget v1, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 622
    :goto_5f
    iget-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 623
    monitor-exit v0

    .line 624
    return-void

    .line 594
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The token does not match any active scan request"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_4b .. :try_end_74} :catchall_72

    throw p1
.end method

.method public whitelist clearDeviceSuggestions()V
    .registers 3

    .line 932
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setDeviceSuggestions(Ljava/util/List;)V

    .line 933
    return-void
.end method

.method blacklist createControllerOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .registers 7

    .line 1475
    nop

    .line 1476
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ControllerCreationRequest;

    .line 1477
    iget v2, v1, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRequestId:I

    if-ne v2, p1, :cond_19

    .line 1478
    nop

    .line 1479
    goto :goto_1b

    .line 1481
    :cond_19
    goto :goto_7

    .line 1476
    :cond_1a
    const/4 v1, 0x0

    .line 1483
    :goto_1b
    const-string p1, "MR2"

    if-nez v1, :cond_25

    .line 1484
    const-string p2, "createControllerOnHandler: Ignoring an unknown request."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1488
    :cond_25
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1489
    iget-object v0, v1, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1492
    if-nez p2, :cond_32

    .line 1493
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1494
    return-void

    .line 1495
    :cond_32
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1500
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual providerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1502
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1496
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1505
    return-void

    .line 1508
    :cond_72
    iget-object v1, v1, Landroid/media/MediaRouter2$ControllerCreationRequest;->mOldController:Landroid/media/MediaRouter2$RoutingController;

    .line 1511
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->scheduleRelease()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createControllerOnHandler: Ignoring controller creation for released old controller. oldController="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 1519
    new-instance p1, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {p1, p0, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 1521
    :cond_9e
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1522
    return-void

    .line 1525
    :cond_a2
    invoke-direct {p0, p2}, Landroid/media/MediaRouter2;->addRoutingController(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    .line 1526
    invoke-direct {p0, v1, p1}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 1527
    return-void
.end method

.method blacklist dispatchControllerUpdatedIfNeededOnHandler(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    .line 1415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1417
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1418
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    .line 1419
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1420
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 1421
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1422
    invoke-virtual {v4, v3}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1423
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;Z)V

    .line 1424
    goto :goto_54

    .line 1427
    :cond_53
    goto :goto_20

    .line 1428
    :cond_54
    :goto_54
    goto :goto_8

    .line 1430
    :cond_55
    iget-object v0, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1431
    iget-object v0, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1432
    return-void
.end method

.method blacklist dispatchFilteredRoutesUpdatedOnHandler(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    nop

    .line 1369
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1371
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 1372
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 1373
    if-nez v6, :cond_49

    .line 1374
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1375
    :cond_49
    invoke-virtual {v6, v5}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 1376
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_52
    :goto_52
    goto :goto_2b

    .line 1380
    :cond_53
    const/4 v4, 0x0

    :goto_54
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 1381
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 1382
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1387
    :cond_76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 1388
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    goto :goto_7a

    .line 1390
    :cond_90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 1391
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    goto :goto_94

    .line 1393
    :cond_aa
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ae
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 1394
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    goto :goto_ae

    .line 1397
    :cond_c4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_cd

    .line 1398
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V

    .line 1400
    :cond_cd
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d6

    .line 1401
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V

    .line 1403
    :cond_d6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_df

    .line 1404
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V

    .line 1408
    :cond_df
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 1409
    :cond_f1
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 1411
    :cond_f4
    return-void
.end method

.method public whitelist getAllRoutes()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 692
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .registers 5

    .line 1287
    const-string v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1288
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1289
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1290
    return-object v1

    .line 1292
    :cond_24
    goto :goto_d

    .line 1293
    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getControllers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSuggestions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getDeviceSuggestions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRouteListingPreference()Landroid/media/RouteListingPreference;
    .registers 3

    .line 967
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    monitor-exit v0

    return-object v1

    .line 969
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1025
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getSystemController()Landroid/media/MediaRouter2$RoutingController;
    .registers 2

    .line 1278
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object v0
.end method

.method public blacklist getSystemSessionOverridesAppIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/media/AppId;",
            ">;"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getSystemSessionOverridesAppIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist notifyDeviceSuggestionRequested()V
    .registers 2

    .line 954
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->notifyDeviceSuggestionRequested()V

    .line 955
    return-void
.end method

.method blacklist onRequestCreateControllerByManagerOnHandler(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;JLandroid/media/RoutingChangeInfo;)V
    .registers 14

    .line 1618
    const-string v0, "MR2"

    const-string v1, "requestCreateSessionByManager | requestId: %d, oldSession: %s, route: %s"

    .line 1622
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1620
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1618
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1625
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1626
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    move-object v3, p1

    goto :goto_30

    .line 1628
    :cond_23
    iget-object p1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1629
    :try_start_26
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1630
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_4e

    move-object v3, v1

    .line 1632
    :goto_30
    if-nez v3, :cond_46

    .line 1633
    const-string p1, "MR2"

    const-string p2, "Ignoring requestCreateSessionByManager (requestId: %d) because no controller for old session (id: %s) was found."

    .line 1638
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    .line 1635
    invoke-static {p2, p3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1633
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void

    .line 1641
    :cond_46
    move-object v2, p0

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;JLandroid/media/RoutingChangeInfo;)V

    .line 1642
    return-void

    .line 1630
    :catchall_4e
    move-exception v0

    move-object p2, v0

    :try_start_50
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4e

    throw p2
.end method

.method public whitelist registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .registers 4

    .line 1070
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1071
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1073
    new-instance v0, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 1074
    iget-object p1, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 1075
    const-string p1, "MR2"

    const-string p2, "registerControllerCallback: Ignoring the same callback"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1e
    return-void
.end method

.method public whitelist registerDeviceSuggestionsUpdatesCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;)V
    .registers 4

    .line 780
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 781
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 783
    new-instance v0, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;)V

    .line 787
    iget-object p1, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 788
    iget-object p1, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    return-void
.end method

.method public whitelist registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .registers 5

    .line 716
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 717
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    const-string v0, "preference must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 721
    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;

    move-result-object p1

    .line 723
    iget-object p2, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 726
    iget-object p2, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 728
    iget-object p1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->registerRouteCallback()V

    .line 729
    return-void
.end method

.method public whitelist registerRouteListingPreferenceUpdatedCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    .line 760
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 761
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 763
    new-instance v0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 766
    iget-object p1, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 767
    iget-object p1, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    return-void
.end method

.method public blacklist registerSystemSessionOverridesListener(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 4

    .line 1107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->registerSystemSessionOverridesListener(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V

    .line 1110
    return-void
.end method

.method public whitelist registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .registers 4

    .line 1038
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1039
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1041
    new-instance v0, Landroid/media/MediaRouter2$TransferCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    .line 1042
    iget-object p1, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 1043
    const-string p1, "MR2"

    const-string p2, "registerTransferCallback: Ignoring the same callback"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_1e
    return-void
.end method

.method blacklist releaseControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 3

    .line 1565
    if-nez p1, :cond_a

    .line 1566
    const-string p1, "MR2"

    const-string v0, "releaseControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return-void

    .line 1570
    :cond_a
    nop

    .line 1571
    const-string v0, "releaseControllerOnHandler"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaRouter2;->getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    .line 1573
    if-eqz p1, :cond_17

    .line 1574
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    .line 1576
    :cond_17
    return-void
.end method

.method blacklist requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;JLandroid/media/RoutingChangeInfo;)V
    .registers 16

    .line 1215
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1216
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 1217
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 1218
    return-void

    .line 1221
    :cond_11
    iget-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 1223
    new-instance v1, Landroid/media/MediaRouter2$ControllerCreationRequest;

    move-object v6, p1

    move-object v5, p2

    move-wide v3, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaRouter2$ControllerCreationRequest;-><init>(IJLandroid/media/MediaRoute2Info;Landroid/media/MediaRouter2$RoutingController;)V

    .line 1225
    move-object p1, v1

    iget-object p2, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    iget-object p2, p0, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 1228
    nop

    .line 1229
    if-eqz p2, :cond_39

    .line 1230
    invoke-interface {p2, v5}, Landroid/media/MediaRouter2$OnGetControllerHintsListener;->onGetControllerHints(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object p2

    .line 1231
    if-eqz p2, :cond_37

    .line 1232
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v9, p3

    goto :goto_3b

    .line 1231
    :cond_37
    move-object v9, p2

    goto :goto_3b

    .line 1229
    :cond_39
    const/4 p2, 0x0

    move-object v9, p2

    .line 1237
    :goto_3b
    iget-object p2, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1238
    move-object v7, v5

    move-wide v4, v3

    move v3, v2

    :try_start_41
    iget-object v2, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1239
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6b

    .line 1240
    if-eqz v2, :cond_6a

    .line 1242
    :try_start_46
    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 1246
    invoke-virtual {v6}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v6

    .line 1242
    move-object v8, p5

    invoke-interface/range {v1 .. v9}, Landroid/media/IMediaRouterService;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;Landroid/os/Bundle;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_50} :catch_51

    .line 1257
    goto :goto_6a

    .line 1250
    :catch_51
    move-exception v0

    move-wide v3, v4

    move-object v5, v7

    move-object p2, v0

    .line 1251
    const-string p3, "MR2"

    const-string p4, "createControllerForTransfer: Failed to request for creating a controller."

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1253
    iget-object p2, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1254
    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-nez p1, :cond_6a

    .line 1255
    invoke-direct {p0, v5}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1259
    :cond_6a
    :goto_6a
    return-void

    .line 1239
    :catchall_6b
    move-exception v0

    move-object p1, v0

    :try_start_6d
    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6b

    throw p1
.end method

.method public whitelist requestScan(Landroid/media/MediaRouter2$ScanRequest;)Landroid/media/MediaRouter2$ScanToken;
    .registers 7

    .line 548
    const-string v0, "scanRequest must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 549
    new-instance v0, Landroid/media/MediaRouter2$ScanToken;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaRouter2$ScanToken;-><init>(ILandroid/media/MediaRouter2-IA;)V

    .line 551
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 552
    :try_start_14
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 554
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_59

    if-nez v2, :cond_25

    :cond_23
    move v2, v3

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 556
    :goto_26
    if-eqz v2, :cond_3d

    .line 558
    :try_start_28
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 559
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 560
    const/4 v4, 0x2

    goto :goto_33

    .line 561
    :cond_32
    move v4, v3

    .line 558
    :goto_33
    invoke-interface {v2, v4}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_36} :catch_37
    .catchall {:try_start_28 .. :try_end_36} :catchall_59

    .line 565
    goto :goto_3d

    .line 563
    :catch_37
    move-exception p1

    .line 564
    :try_start_38
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 568
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 569
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    goto :goto_4e

    .line 571
    :cond_49
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 574
    :goto_4e
    iget-object v2, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    monitor-exit v1

    return-object v0

    .line 576
    :catchall_59
    move-exception p1

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public whitelist setDeviceSuggestions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setDeviceSuggestions(Ljava/util/List;)V

    .line 919
    return-void
.end method

.method public whitelist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 3

    .line 1134
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V

    .line 1135
    return-void
.end method

.method public whitelist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 900
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setRouteListingPreference(Landroid/media/RouteListingPreference;)V

    .line 901
    return-void
.end method

.method public whitelist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 4

    .line 1328
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1330
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    .line 1331
    return-void
.end method

.method public whitelist showSystemOutputSwitcher()Z
    .registers 3

    .line 845
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->showSystemOutputSwitcher(Landroid/media/session/MediaSession$Token;)Z

    move-result v0

    return v0
.end method

.method public whitelist showSystemOutputSwitcher(Landroid/media/session/MediaSession$Token;)Z
    .registers 3

    .line 866
    const-string v0, "sessionToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 867
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->showSystemOutputSwitcher(Landroid/media/session/MediaSession$Token;)Z

    move-result p1

    return p1
.end method

.method public whitelist startScan()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 497
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->startScan()V

    .line 498
    return-void
.end method

.method public whitelist stop()V
    .registers 2

    .line 1172
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->stop()V

    .line 1173
    return-void
.end method

.method public whitelist stopScan()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 521
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->stopScan()V

    .line 522
    return-void
.end method

.method blacklist syncRoutesOnHandler(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 1347
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    if-nez p2, :cond_b

    goto :goto_30

    .line 1353
    :cond_b
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->updateRoutesOnHandler(Ljava/util/List;)V

    .line 1355
    iget-object p1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p1

    .line 1356
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 1357
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-static {p2, v1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 1358
    invoke-virtual {p1, p2}, Landroid/media/RoutingSessionInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 1359
    iget-object p1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;Z)V

    .line 1361
    :cond_2f
    return-void

    .line 1348
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncRoutesOnHandler: Received wrong data. currentRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", currentSystemSessionInfo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MR2"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    return-void
.end method

.method public whitelist transfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    .line 1188
    return-void
.end method

.method public blacklist transfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 5

    .line 1206
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    .line 1207
    return-void
.end method

.method public whitelist transferTo(Landroid/media/MediaRoute2Info;)V
    .registers 4

    .line 1147
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transferTo(Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    .line 1148
    return-void
.end method

.method public blacklist transferTo(Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 4

    .line 1164
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transferTo(Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    .line 1165
    return-void
.end method

.method public whitelist unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V
    .registers 5

    .line 1086
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1089
    const-string p1, "MR2"

    const-string v0, "unregisterControllerCallback: Ignoring an unknown callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_1a
    return-void
.end method

.method public whitelist unregisterDeviceSuggestionsUpdatesCallback(Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;)V
    .registers 5

    .line 817
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsUpdatesCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 821
    const-string p1, "MR2"

    const-string v0, "unregisterDeviceSuggestionsUpdatesCallback: Ignoring an unknown callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1a
    return-void
.end method

.method public whitelist unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V
    .registers 5

    .line 739
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 742
    const-string p1, "MR2"

    const-string v0, "unregisterRouteCallback: Ignoring unknown callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void

    .line 746
    :cond_1b
    iget-object p1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->unregisterRouteCallback()V

    .line 747
    return-void
.end method

.method public whitelist unregisterRouteListingPreferenceUpdatedCallback(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    .line 798
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 802
    const-string p1, "MR2"

    const-string v0, "unregisterRouteListingPreferenceUpdatedCallback: Ignoring an unknown callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_1a
    return-void
.end method

.method public blacklist unregisterSystemSessionOverridesListener(Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V
    .registers 3

    .line 1122
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->unregisterSystemSessionOverridesListener(Landroid/media/MediaRouter2$SystemSessionOverridesListener;)V

    .line 1123
    return-void
.end method

.method public whitelist unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V
    .registers 5

    .line 1055
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1057
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1058
    const-string p1, "MR2"

    const-string v0, "unregisterTransferCallback: Ignoring an unknown callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_1a
    return-void
.end method

.method blacklist updateControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 4

    .line 1546
    if-nez p1, :cond_a

    .line 1547
    const-string p1, "MR2"

    const-string v0, "updateControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return-void

    .line 1551
    :cond_a
    nop

    .line 1552
    const-string v0, "updateControllerOnHandler"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaRouter2;->getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .line 1553
    if-eqz v0, :cond_2a

    .line 1554
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableMirroringInMediaRouter2()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1555
    iget-object v1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 1557
    invoke-interface {v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1556
    invoke-static {p1, v1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    .line 1559
    :cond_23
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 1560
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;Z)V

    .line 1562
    :cond_2a
    return-void
.end method

.method blacklist updateFilteredRoutesLocked()V
    .registers 5

    .line 1451
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 1453
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1452
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 1454
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableRouteVisibilityControlCompatFixes()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1455
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 1456
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1455
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1460
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1461
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1460
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1466
    :cond_3f
    return-void
.end method

.method blacklist updateRoutesOnHandler(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1436
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1437
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 1438
    iget-object v2, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    goto :goto_c

    .line 1440
    :cond_22
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 1441
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/flags/Flags;->enableRouteVisibilityControlCompatFixes()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1442
    iget-object p1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->dispatchFilteredRoutesUpdatedOnHandler(Ljava/util/List;)V

    .line 1443
    iget-object p1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->dispatchControllerUpdatedIfNeededOnHandler(Ljava/util/Map;)V

    .line 1445
    :cond_35
    monitor-exit v0

    .line 1446
    return-void

    .line 1445
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method
