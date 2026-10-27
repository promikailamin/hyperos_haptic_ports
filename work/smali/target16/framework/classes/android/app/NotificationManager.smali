.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$RateLimiter;,
        Landroid/app/NotificationManager$NotificationKey;,
        Landroid/app/NotificationManager$KnownNotification;,
        Landroid/app/NotificationManager$NotificationChannelQuery;,
        Landroid/app/NotificationManager$Policy;,
        Landroid/app/NotificationManager$CallNotificationEventCallbackStub;,
        Landroid/app/NotificationManager$CallNotificationEventListener;,
        Landroid/app/NotificationManager$BubblePreference;,
        Landroid/app/NotificationManager$Importance;,
        Landroid/app/NotificationManager$InterruptionFilter;,
        Landroid/app/NotificationManager$AutomaticZenRuleStatus;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.APP_BLOCK_STATE_CHANGED"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE:Ljava/lang/String; = "android.app.action.AUTOMATIC_ZEN_RULE"

.field public static final whitelist ACTION_AUTOMATIC_ZEN_RULE_STATUS_CHANGED:Ljava/lang/String; = "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

.field public static final whitelist ACTION_CLOSE_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.CLOSE_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CONSOLIDATED_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

.field public static final greylist-max-o ACTION_EFFECTS_SUPPRESSOR_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

.field public static final whitelist ACTION_INTERRUPTION_FILTER_CHANGED:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED"

.field public static final greylist-max-o ACTION_INTERRUPTION_FILTER_CHANGED_INTERNAL:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

.field public static final whitelist ACTION_NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

.field public static final whitelist ACTION_NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

.field public static final blacklist ACTION_NOTIFICATION_LISTENER_ENABLED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_LISTENER_ENABLED_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final whitelist ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field public static final whitelist ACTION_OPEN_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.OPEN_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TOGGLE_NOTIFICATION_HANDLER_PANEL:Ljava/lang/String; = "android.app.action.TOGGLE_NOTIFICATION_HANDLER_PANEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_ZEN_CONFIGURATION_CHANGED_INTERNAL:Ljava/lang/String; = "android.app.action.ZEN_CONFIGURATION_CHANGED_INTERNAL"

.field public static final whitelist AUTOMATIC_RULE_STATUS_ACTIVATED:I = 0x4

.field public static final whitelist AUTOMATIC_RULE_STATUS_DEACTIVATED:I = 0x5

.field public static final whitelist AUTOMATIC_RULE_STATUS_DISABLED:I = 0x2

.field public static final whitelist AUTOMATIC_RULE_STATUS_ENABLED:I = 0x1

.field public static final whitelist AUTOMATIC_RULE_STATUS_REMOVED:I = 0x3

.field public static final whitelist AUTOMATIC_RULE_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist BUBBLE_PREFERENCE_ALL:I = 0x1

.field public static final whitelist BUBBLE_PREFERENCE_NONE:I = 0x0

.field public static final whitelist BUBBLE_PREFERENCE_SELECTED:I = 0x2

.field public static final whitelist EXTRA_AUTOMATIC_RULE_ID:Ljava/lang/String; = "android.app.extra.AUTOMATIC_RULE_ID"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_ID:Ljava/lang/String; = "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

.field public static final whitelist EXTRA_AUTOMATIC_ZEN_RULE_STATUS:Ljava/lang/String; = "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

.field public static final whitelist EXTRA_BLOCKED_STATE:Ljava/lang/String; = "android.app.extra.BLOCKED_STATE"

.field public static final whitelist EXTRA_NOTIFICATION_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

.field public static final whitelist EXTRA_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "android.app.extra.NOTIFICATION_CHANNEL_ID"

.field public static final whitelist EXTRA_NOTIFICATION_POLICY:Ljava/lang/String; = "android.app.extra.NOTIFICATION_POLICY"

.field public static final whitelist IMPORTANCE_DEFAULT:I = 0x3

.field public static final whitelist IMPORTANCE_HIGH:I = 0x4

.field public static final whitelist IMPORTANCE_LOW:I = 0x2

.field public static final whitelist IMPORTANCE_MAX:I = 0x5

.field public static final whitelist IMPORTANCE_MIN:I = 0x1

.field public static final whitelist IMPORTANCE_NONE:I = 0x0

.field public static final whitelist IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final whitelist INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final whitelist INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final whitelist INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final whitelist INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field private static final blacklist KNOWN_STATUS_CANCELLED:I = 0x2

.field private static final blacklist KNOWN_STATUS_ENQUEUED:I = 0x1

.field private static final blacklist MAX_NOTIFICATION_UNNECESSARY_CANCEL_RATE:F = 5.0f

.field private static final blacklist MAX_NOTIFICATION_UPDATE_RATE:F = 5.0f

.field public static blacklist MAX_SERVICE_COMPONENT_NAME_LENGTH:I = 0x0

.field public static final whitelist META_DATA_AUTOMATIC_RULE_TYPE:Ljava/lang/String; = "android.service.zen.automatic.ruleType"

.field public static final whitelist META_DATA_RULE_INSTANCE_LIMIT:Ljava/lang/String; = "android.service.zen.automatic.ruleInstanceLimit"

.field private static final blacklist NOTIFICATION_CHANNELS_CACHE_API:Ljava/lang/String; = "getNotificationChannels"

.field private static final blacklist NOTIFICATION_CHANNELS_CACHE_SIZE:I = 0xa

.field private static final blacklist NOTIFICATION_CHANNEL_GROUPS_CACHE_API:Ljava/lang/String; = "getNotificationChannelGroups"

.field private static final blacklist NOTIFICATION_CHANNEL_GROUPS_CACHE_SIZE:I = 0xa

.field public static final blacklist SET_LISTENER_ACCESS_GRANTED_IS_USER_AWARE:J = 0x1208c096L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final greylist-max-o VISIBILITY_NO_OVERRIDE:I = -0x3e8

.field private static greylist-max-o localLOGV:Z

.field private static greylist sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallNotificationEventCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/NotificationManager$CallNotificationEventListener;",
            "Landroid/app/NotificationManager$CallNotificationEventCallbackStub;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClock:Ljava/time/InstantSource;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mKnownNotifications:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/app/NotificationManager$NotificationKey;",
            "Landroid/app/NotificationManager$KnownNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelListCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/NotificationManager$NotificationChannelQuery;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mThrottleLock:Ljava/lang/Object;

.field private final blacklist mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

.field private final blacklist mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Landroid/app/NotificationManager;)Ljava/time/InstantSource;
    .registers 1

    iget-object p0, p0, Landroid/app/NotificationManager;->mClock:Ljava/time/InstantSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    const-string v0, "NotificationManager"

    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    .line 675
    const/16 v0, 0x1f4

    sput v0, Landroid/app/NotificationManager;->MAX_SERVICE_COMPONENT_NAME_LENGTH:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Ljava/time/InstantSource;)V

    .line 721
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/time/InstantSource;)V
    .registers 10

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    .line 687
    new-instance v0, Landroid/app/NotificationManager$RateLimiter;

    const-string/jumbo v1, "notify (update)"

    const/high16 v2, 0x40a00000    # 5.0f

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V

    iput-object v0, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    .line 689
    new-instance v0, Landroid/app/NotificationManager$RateLimiter;

    const-string v1, "cancel (dupe)"

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/NotificationManager$RateLimiter;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;FLandroid/app/NotificationManager-IA;)V

    iput-object v0, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    .line 693
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    .line 695
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    .line 1533
    new-instance v0, Landroid/app/NotificationManager$1;

    invoke-direct {v0, p0}, Landroid/app/NotificationManager$1;-><init>(Landroid/app/NotificationManager;)V

    iput-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    .line 1559
    new-instance v1, Landroid/os/IpcDataCache;

    const-string v5, "getNotificationChannels"

    iget-object v6, p0, Landroid/app/NotificationManager;->mNotificationChannelListQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v2, 0xa

    const-string/jumbo v3, "system_server"

    const-string v4, "getNotificationChannels"

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    .line 1570
    new-instance v0, Landroid/app/NotificationManager$2;

    invoke-direct {v0, p0}, Landroid/app/NotificationManager$2;-><init>(Landroid/app/NotificationManager;)V

    iput-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    .line 1603
    new-instance v1, Landroid/os/IpcDataCache;

    const-string v5, "getNotificationChannelGroups"

    iget-object v6, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsQueryHandler:Landroid/os/IpcDataCache$QueryHandler;

    const-string/jumbo v3, "system_server"

    const-string v4, "getNotificationChannelGroups"

    invoke-direct/range {v1 .. v6}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    iput-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    .line 726
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 727
    iput-object p2, p0, Landroid/app/NotificationManager;->mClock:Ljava/time/InstantSource;

    .line 728
    return-void
.end method

.method private static greylist-max-o checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 2532
    if-eqz p1, :cond_3

    .line 2535
    return-void

    .line 2533
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is required"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    .line 1053
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1054
    new-instance v1, Landroid/app/NotificationManager$NotificationKey;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1055
    iget-object p1, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1056
    :try_start_13
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {p2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager$KnownNotification;

    .line 1057
    const/4 p3, 0x2

    if-eqz p2, :cond_39

    invoke-static {p2}, Landroid/app/NotificationManager$KnownNotification;->-$$Nest$fgetknownStatus(Landroid/app/NotificationManager$KnownNotification;)I

    move-result p2

    if-ne p2, p3, :cond_39

    .line 1058
    iget-object p2, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1059
    iget-object p2, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2, v1}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    .line 1060
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 1062
    :cond_34
    iget-object p2, p0, Landroid/app/NotificationManager;->mUnnecessaryCancelRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    .line 1064
    :cond_39
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    new-instance p4, Landroid/app/NotificationManager$KnownNotification;

    .line 1065
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p4, p3, v0, v2}, Landroid/app/NotificationManager$KnownNotification;-><init>(ILjava/util/OptionalInt;Landroid/app/NotificationManager-IA;)V

    .line 1064
    invoke-virtual {p2, v1, p4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    monitor-exit p1

    goto :goto_4e

    :catchall_4a
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_4a

    throw p2

    .line 1069
    :cond_4e
    :goto_4e
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z
    .registers 14

    .line 845
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 846
    invoke-virtual {p5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 847
    return v1

    .line 850
    :cond_14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 851
    new-instance v2, Landroid/app/NotificationManager$NotificationKey;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 852
    iget-object p1, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 853
    :try_start_27
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {p2, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager$KnownNotification;

    .line 854
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationUpdateSheddingAllowProgressCompletion()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_74

    .line 855
    if-eqz p2, :cond_61

    invoke-static {p2}, Landroid/app/NotificationManager$KnownNotification;->-$$Nest$fgetknownStatus(Landroid/app/NotificationManager$KnownNotification;)I

    move-result p3

    if-ne p3, v1, :cond_61

    invoke-static {p2}, Landroid/app/NotificationManager$KnownNotification;->-$$Nest$fgetprogressState(Landroid/app/NotificationManager$KnownNotification;)Ljava/util/OptionalInt;

    move-result-object p2

    .line 856
    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p2

    invoke-virtual {p5}, Landroid/app/Notification;->getProgressState()I

    move-result p3

    if-ne p2, p3, :cond_61

    .line 857
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 858
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2, v2}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    .line 859
    monitor-exit p1

    return v1

    .line 861
    :cond_5c
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    .line 863
    :cond_61
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    new-instance p3, Landroid/app/NotificationManager$KnownNotification;

    .line 864
    invoke-virtual {p5}, Landroid/app/Notification;->getProgressState()I

    move-result p5

    invoke-static {p5}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p5

    invoke-direct {p3, v1, p5, p4}, Landroid/app/NotificationManager$KnownNotification;-><init>(ILjava/util/OptionalInt;Landroid/app/NotificationManager-IA;)V

    .line 863
    invoke-virtual {p2, v2, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 866
    :cond_74
    if-eqz p2, :cond_96

    invoke-static {p2}, Landroid/app/NotificationManager$KnownNotification;->-$$Nest$fgetknownStatus(Landroid/app/NotificationManager$KnownNotification;)I

    move-result p2

    if-ne p2, v1, :cond_96

    .line 867
    invoke-virtual {p5}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result p2

    if-nez p2, :cond_96

    .line 868
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->eventExceedsRate()Z

    move-result p2

    if-eqz p2, :cond_91

    .line 869
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2, v2}, Landroid/app/NotificationManager$RateLimiter;->recordRejected(Landroid/app/NotificationManager$NotificationKey;)V

    .line 870
    monitor-exit p1

    return v1

    .line 872
    :cond_91
    iget-object p2, p0, Landroid/app/NotificationManager;->mUpdateRateLimiter:Landroid/app/NotificationManager$RateLimiter;

    invoke-virtual {p2}, Landroid/app/NotificationManager$RateLimiter;->recordAccepted()V

    .line 874
    :cond_96
    iget-object p2, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    new-instance p3, Landroid/app/NotificationManager$KnownNotification;

    .line 875
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p5

    invoke-direct {p3, v1, p5, p4}, Landroid/app/NotificationManager$KnownNotification;-><init>(ILjava/util/OptionalInt;Landroid/app/NotificationManager-IA;)V

    .line 874
    invoke-virtual {p2, v2, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    :goto_a4
    monitor-exit p1

    goto :goto_aa

    :catchall_a6
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_27 .. :try_end_a9} :catchall_a6

    throw p2

    .line 880
    :cond_aa
    :goto_aa
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .registers 4

    .line 956
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_13

    iget v0, p1, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_13

    .line 957
    iget v0, p1, Landroid/app/Notification;->icon:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 959
    :cond_13
    return-void
.end method

.method private blacklist fixNotification(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 5

    .line 932
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 934
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 936
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v1, :cond_24

    .line 937
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 938
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 939
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v2, "Notification.sound"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 943
    :cond_24
    invoke-direct {p0, p1, v0}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_53

    .line 945
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_3a

    goto :goto_53

    .line 946
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid notification (no valid small icon): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_53
    :goto_53
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 952
    invoke-static {p1}, Landroid/app/Notification$Builder;->maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2

    .line 733
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method private static blacklist getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Landroid/app/NotificationChannel;"
        }
    .end annotation

    .line 1381
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1382
    return-object v0

    .line 1384
    :cond_4
    if-nez p0, :cond_9

    .line 1385
    const-string/jumbo p0, "miscellaneous"

    .line 1387
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1388
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1389
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    .line 1391
    :cond_28
    goto :goto_d

    .line 1392
    :cond_29
    return-object v0
.end method

.method private static blacklist getConversationChannelFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Landroid/app/NotificationChannel;"
        }
    .end annotation

    .line 1397
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1398
    return-object v0

    .line 1400
    :cond_4
    if-nez p0, :cond_9

    .line 1401
    const-string/jumbo p0, "miscellaneous"

    .line 1403
    :cond_9
    if-nez p1, :cond_10

    .line 1404
    invoke-static {p0, p2}, Landroid/app/NotificationManager;->getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    .line 1406
    :cond_10
    nop

    .line 1407
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v1, v0

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1408
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1409
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1410
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    .line 1411
    :cond_3b
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1412
    move-object v1, v2

    .line 1414
    :cond_46
    goto :goto_16

    .line 1415
    :cond_47
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v0

    :cond_4d
    return-object v0
.end method

.method public static greylist getService()Landroid/app/INotificationManager;
    .registers 1

    .line 704
    sget-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 705
    sget-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v0

    .line 707
    :cond_7
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 709
    sget-object v0, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static blacklist invalidateNotificationChannelCache()V
    .registers 2

    .line 1613
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1614
    const-string/jumbo v0, "system_server"

    const-string v1, "getNotificationChannels"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1618
    :cond_f
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v1, "invalidateNotificationChannelCache called without flag"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :goto_16
    return-void
.end method

.method public static blacklist invalidateNotificationChannelGroupCache()V
    .registers 2

    .line 1626
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1627
    const-string/jumbo v0, "system_server"

    const-string v1, "getNotificationChannelGroups"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1631
    :cond_f
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v1, "invalidateNotificationChannelGroupCache called without flag"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :goto_16
    return-void
.end method

.method public static greylist-max-o zenModeFromInterruptionFilter(II)I
    .registers 2

    .line 3459
    packed-switch p0, :pswitch_data_c

    .line 3464
    return p1

    .line 3462
    :pswitch_4
    const/4 p0, 0x3

    return p0

    .line 3463
    :pswitch_6
    const/4 p0, 0x2

    return p0

    .line 3461
    :pswitch_8
    const/4 p0, 0x1

    return p0

    .line 3460
    :pswitch_a
    const/4 p0, 0x0

    return p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o zenModeToInterruptionFilter(I)I
    .registers 1

    .line 3448
    packed-switch p0, :pswitch_data_e

    .line 3453
    const/4 p0, 0x0

    return p0

    .line 3451
    :pswitch_5
    const/4 p0, 0x4

    return p0

    .line 3452
    :pswitch_7
    const/4 p0, 0x3

    return p0

    .line 3450
    :pswitch_9
    const/4 p0, 0x2

    return p0

    .line 3449
    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .registers 3

    .line 1843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addAutomaticZenRule(Landroid/app/AutomaticZenRule;Z)Ljava/lang/String;
    .registers 5

    .line 1851
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1853
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1854
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1853
    invoke-interface {v0, p1, v1, p2}, Landroid/app/INotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 1855
    :catch_f
    move-exception p1

    .line 1856
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist allowAssistantAdjustment(Ljava/lang/String;)V
    .registers 4

    .line 2241
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2243
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->allowAssistantAdjustment(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 2246
    nop

    .line 2247
    return-void

    .line 2244
    :catch_f
    move-exception p1

    .line 2245
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist areAutomaticZenRulesUserManaged()Z
    .registers 3

    .line 1782
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1783
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1784
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1785
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1783
    :goto_21
    return v0
.end method

.method public whitelist areBubblesAllowed()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2045
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2047
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 2048
    :catch_f
    move-exception v0

    .line 2049
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist areBubblesEnabled()Z
    .registers 3

    .line 2061
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2063
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 2064
    :catch_f
    move-exception v0

    .line 2065
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist areNotificationsEnabled()Z
    .registers 3

    .line 2021
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfPermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2022
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 2024
    :cond_14
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2026
    :try_start_18
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    return v0

    .line 2027
    :catch_23
    move-exception v0

    .line 2028
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist areNotificationsPaused()Z
    .registers 3

    .line 2124
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2126
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->isPackagePaused(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 2127
    :catch_f
    move-exception v0

    .line 2128
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist canNotifyAsPackage(Ljava/lang/String;)Z
    .registers 5

    .line 1147
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1149
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/app/INotificationManager;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return p1

    .line 1150
    :catch_15
    move-exception p1

    .line 1151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist canPostPromotedNotifications()Z
    .registers 3

    .line 1183
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1185
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->canBePromoted(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1186
    :catch_f
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist canUseFullScreenIntent()Z
    .registers 3

    .line 1165
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1167
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->canUseFullScreenIntent(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 1168
    :catch_f
    move-exception v0

    .line 1169
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist cancel(I)V
    .registers 3

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 974
    return-void
.end method

.method public whitelist cancel(Ljava/lang/String;I)V
    .registers 4

    .line 989
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 990
    return-void
.end method

.method public whitelist cancelAll()V
    .registers 11

    .line 1079
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 1082
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfThrottleNotify()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1083
    iget-object v2, p0, Landroid/app/NotificationManager;->mThrottleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1084
    :try_start_15
    iget-object v3, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager$NotificationKey;

    .line 1085
    invoke-static {v4}, Landroid/app/NotificationManager$NotificationKey;->-$$Nest$fgetpkg(Landroid/app/NotificationManager$NotificationKey;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-static {v4}, Landroid/app/NotificationManager$NotificationKey;->-$$Nest$fgetuser(Landroid/app/NotificationManager$NotificationKey;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1086
    iget-object v5, p0, Landroid/app/NotificationManager;->mKnownNotifications:Landroid/util/LruCache;

    new-instance v6, Landroid/app/NotificationManager$KnownNotification;

    .line 1087
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-direct {v6, v9, v7, v8}, Landroid/app/NotificationManager$KnownNotification;-><init>(ILjava/util/OptionalInt;Landroid/app/NotificationManager-IA;)V

    .line 1086
    invoke-virtual {v5, v4, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :cond_53
    goto :goto_23

    .line 1090
    :cond_54
    monitor-exit v2

    goto :goto_59

    :catchall_56
    move-exception v0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_56

    throw v0

    .line 1093
    :cond_59
    :goto_59
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 1094
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_79

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancelAll()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_79
    :try_start_79
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_82} :catch_84

    .line 1099
    nop

    .line 1100
    return-void

    .line 1097
    :catch_84
    move-exception v0

    .line 1098
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist cancelAsPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 1014
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/NotificationManager;->discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1015
    return-void

    .line 1018
    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 1020
    :try_start_11
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1021
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1020
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_27} :catch_29

    .line 1024
    nop

    .line 1025
    return-void

    .line 1022
    :catch_29
    move-exception v0

    move-object p1, v0

    .line 1023
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .registers 11

    .line 1033
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1034
    invoke-direct {p0, p3, v2, p1, p2}, Landroid/app/NotificationManager;->discardCancel(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1035
    return-void

    .line 1038
    :cond_d
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v1

    .line 1039
    sget-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v0, :cond_37

    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_37
    :try_start_37
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1042
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1041
    move-object v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_46} :catch_48

    .line 1045
    nop

    .line 1046
    return-void

    .line 1043
    :catch_48
    move-exception v0

    move-object p1, v0

    .line 1044
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist cleanUpCallersAfter(J)V
    .registers 4

    .line 1677
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1679
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->cleanUpCallersAfter(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1682
    nop

    .line 1683
    return-void

    .line 1680
    :catch_9
    move-exception p1

    .line 1681
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 4

    .line 1266
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 1267
    return-void
.end method

.method public whitelist createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .registers 4

    .line 1224
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannelGroup;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    .line 1225
    return-void
.end method

.method public whitelist createNotificationChannelGroups(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    .line 1233
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1235
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    .line 1239
    nop

    .line 1240
    return-void

    .line 1237
    :catch_14
    move-exception p1

    .line 1238
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createNotificationChannels(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    .line 1276
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1278
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_14

    .line 1282
    nop

    .line 1283
    return-void

    .line 1280
    :catch_14
    move-exception p1

    .line 1281
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist deleteNotificationChannel(Ljava/lang/String;)V
    .registers 4

    .line 1426
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 1427
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1428
    return-void

    .line 1430
    :cond_f
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1432
    :try_start_13
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1e

    .line 1435
    nop

    .line 1436
    return-void

    .line 1433
    :catch_1e
    move-exception p1

    .line 1434
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist deleteNotificationChannelGroup(Ljava/lang/String;)V
    .registers 4

    .line 1505
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1507
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 1510
    nop

    .line 1511
    return-void

    .line 1508
    :catch_f
    move-exception p1

    .line 1509
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist disallowAssistantAdjustment(Ljava/lang/String;)V
    .registers 4

    .line 2255
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2257
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->disallowAssistantAdjustment(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 2260
    nop

    .line 2261
    return-void

    .line 2258
    :catch_f
    move-exception p1

    .line 2259
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 4

    .line 3331
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3332
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3334
    :try_start_a
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 3335
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3336
    if-eqz v0, :cond_27

    .line 3337
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 3338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/notification/StatusBarNotification;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_26} :catch_2c

    return-object v0

    .line 3342
    :cond_27
    nop

    .line 3343
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    return-object v0

    .line 3340
    :catch_2c
    move-exception v0

    .line 3341
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAllowedAssistantAdjustments()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2227
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2229
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 2230
    :catch_f
    move-exception v0

    .line 2231
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2504
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2506
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 2507
    :catch_9
    move-exception v0

    .line 2508
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 3

    .line 1824
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1826
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 1827
    :catch_9
    move-exception p1

    .line 1828
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAutomaticZenRuleState(Ljava/lang/String;)I
    .registers 3

    .line 1904
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1906
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getAutomaticZenRuleState(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1907
    :catch_9
    move-exception p1

    .line 1908
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAutomaticZenRules()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 1796
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1798
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1799
    nop

    .line 1800
    invoke-interface {v0}, Landroid/app/INotificationManager;->getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1801
    if-eqz v0, :cond_2c

    .line 1802
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule$AzrWithId;

    .line 1803
    iget-object v3, v2, Landroid/app/AutomaticZenRule$AzrWithId;->mId:Ljava/lang/String;

    iget-object v2, v2, Landroid/app/AutomaticZenRule$AzrWithId;->mRule:Landroid/app/AutomaticZenRule;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2d

    .line 1804
    goto :goto_18

    .line 1806
    :cond_2c
    return-object v1

    .line 1807
    :catch_2d
    move-exception v0

    .line 1808
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getBubblePreference()I
    .registers 4

    .line 2088
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2090
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2090
    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return v0

    .line 2092
    :catch_13
    move-exception v0

    .line 2093
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2

    .line 1751
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1753
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 1754
    :catch_9
    move-exception v0

    .line 1755
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist getCurrentInterruptionFilter()I
    .registers 2

    .line 3354
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3356
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 3357
    :catch_d
    move-exception v0

    .line 3358
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 2379
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2381
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 2382
    :catch_9
    move-exception v0

    .line 2383
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 2

    .line 1652
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1654
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 1655
    :catch_9
    move-exception v0

    .line 1656
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getEnabledNotificationListenerPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2300
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2302
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 2303
    :catch_9
    move-exception v0

    .line 2304
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getEnabledNotificationListeners()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2487
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 2493
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2495
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 2496
    :catch_9
    move-exception p1

    .line 2497
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getImportance()I
    .registers 3

    .line 2009
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2011
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 2012
    :catch_f
    move-exception v0

    .line 2013
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 8

    .line 1295
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1296
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1298
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1299
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1300
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1297
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1296
    invoke-static {p1, v0}, Landroid/app/NotificationManager;->getChannelFromList(Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1

    .line 1302
    :cond_2b
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1304
    :try_start_2f
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1305
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1304
    invoke-interface {v0, v1, v2, v3, p1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_45} :catch_46

    return-object p1

    .line 1306
    :catch_46
    move-exception p1

    .line 1307
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 10

    .line 1328
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1329
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1331
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1332
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1333
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1330
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1329
    invoke-static {p1, p2, v0}, Landroid/app/NotificationManager;->getConversationChannelFromList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1

    .line 1335
    :cond_2b
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1337
    :try_start_2f
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1338
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1337
    const/4 v5, 0x1

    move-object v4, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_48} :catch_49

    return-object p1

    .line 1340
    :catch_49
    move-exception v0

    move-object p1, v0

    .line 1341
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 7

    .line 1445
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1446
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1448
    iget-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v2, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1449
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1448
    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1450
    iget-object v2, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    .line 1451
    invoke-virtual {v2, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1452
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    .line 1454
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v4

    :cond_33
    return-object v4

    .line 1456
    :cond_34
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1458
    :try_start_38
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p1
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43

    return-object p1

    .line 1460
    :catch_43
    move-exception p1

    .line 1461
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getNotificationChannelGroups()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1471
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1472
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1473
    iget-object v1, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v2, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1474
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1473
    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1475
    iget-object v2, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    .line 1476
    invoke-virtual {v2, v0}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1477
    nop

    .line 1479
    invoke-static {}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->forAllGroups()Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    move-result-object v2

    .line 1478
    invoke-static {v1, v0, v2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;

    move-result-object v0

    .line 1480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 1482
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    goto :goto_3a

    .line 1484
    :cond_4e
    return-object v1

    .line 1486
    :cond_4f
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1488
    :try_start_53
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1489
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1490
    if-eqz v0, :cond_64

    .line 1491
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_63} :catch_6b

    return-object v0

    .line 1495
    :cond_64
    nop

    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1493
    :catch_6b
    move-exception v0

    .line 1494
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNotificationChannels()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 1356
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1357
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1358
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1359
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V

    .line 1357
    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    if-eqz v0, :cond_45

    .line 1362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 1363
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    goto :goto_31

    .line 1366
    :cond_45
    return-object v1

    .line 1368
    :cond_46
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1370
    :try_start_4a
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 1371
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1370
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_64} :catch_65

    .line 1370
    return-object v0

    .line 1372
    :catch_65
    move-exception v0

    .line 1373
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNotificationDelegate()Ljava/lang/String;
    .registers 3

    .line 1130
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1133
    :try_start_a
    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 1134
    :catch_f
    move-exception v0

    .line 1135
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 3

    .line 2317
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2319
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 2320
    :catch_f
    move-exception v0

    .line 2321
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 3

    .line 1763
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1765
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1766
    :catch_9
    move-exception p1

    .line 1767
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getUnsupportedAdjustmentTypes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3598
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3600
    :try_start_4
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getUnsupportedAdjustmentTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    .line 3601
    :catch_e
    move-exception v0

    .line 3602
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getZenMode()I
    .registers 2

    .line 1720
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1722
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 1723
    :catch_9
    move-exception v0

    .line 1724
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-r getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .line 1733
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1735
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 1736
    :catch_9
    move-exception v0

    .line 1737
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist hasEnabledNotificationListener(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2524
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2526
    :try_start_4
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return p1

    .line 2527
    :catch_d
    move-exception p1

    .line 2528
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2192
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2194
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 2195
    :catch_9
    move-exception p1

    .line 2196
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 3

    .line 2168
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2170
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 2171
    :catch_9
    move-exception p1

    .line 2172
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isNotificationPolicyAccessGranted()Z
    .registers 3

    .line 2147
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2149
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 2150
    :catch_f
    move-exception v0

    .line 2151
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 3

    .line 2266
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2268
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 2269
    :catch_9
    move-exception p1

    .line 2270
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 1689
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1691
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1692
    :catch_9
    move-exception p1

    .line 1693
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist matchesCallFilter(Landroid/net/Uri;)Z
    .registers 5

    .line 3438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3440
    new-instance v2, Landroid/app/Person$Builder;

    invoke-direct {v2}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3441
    const-string p1, "android.people.list"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3443
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 3

    .line 1664
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1666
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1667
    :catch_9
    move-exception p1

    .line 1668
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist notify(ILandroid/app/Notification;)V
    .registers 4

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 749
    return-void
.end method

.method public whitelist notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 5

    .line 773
    iget-object v0, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 774
    return-void
.end method

.method public whitelist notifyAsPackage(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 14

    .line 801
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 802
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 804
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/app/NotificationManager;->discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    move-object v1, v5

    move v4, v7

    if-eqz p1, :cond_1e

    .line 805
    return-void

    .line 809
    :cond_1e
    :try_start_1e
    sget-boolean p1, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz p1, :cond_4e

    sget-object p1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": notify("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_4e
    nop

    .line 811
    invoke-direct {p0, v8}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v5

    iget-object p1, v3, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 810
    move-object v3, v6

    move v6, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_62} :catch_64

    .line 814
    nop

    .line 815
    return-void

    .line 812
    :catch_64
    move-exception v0

    move-object p1, v0

    .line 813
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .registers 13

    .line 824
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 825
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 826
    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v3, p4

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager;->discardNotify(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result p1

    move-object p2, v3

    move-object v3, v5

    move v4, v6

    if-eqz p1, :cond_1a

    .line 827
    return-void

    .line 831
    :cond_1a
    :try_start_1a
    sget-boolean p1, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz p1, :cond_4a

    sget-object p1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": notify("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_4a
    iget-object p1, v2, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 833
    invoke-direct {p0, v7}, Landroid/app/NotificationManager;->fixNotification(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 832
    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_5c} :catch_5e

    .line 836
    nop

    .line 837
    return-void

    .line 834
    :catch_5e
    move-exception v0

    move-object p1, v0

    .line 835
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3540
    const-string/jumbo v0, "packageName"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3541
    const-string/jumbo v0, "userHandle"

    invoke-static {v0, p2}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3542
    const-string v0, "executor"

    invoke-static {v0, p3}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3543
    const-string/jumbo v0, "listener"

    invoke-static {v0, p4}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3544
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3546
    :try_start_1b
    iget-object v1, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    monitor-enter v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_31

    .line 3547
    :try_start_1e
    new-instance v2, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V

    .line 3550
    iget-object p3, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    invoke-interface {p3, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3552
    invoke-interface {v0, p1, p2, v2}, Landroid/app/INotificationManager;->registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3554
    monitor-exit v1

    .line 3557
    nop

    .line 3558
    return-void

    .line 3554
    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_31} :catch_31

    .line 3555
    :catch_31
    move-exception p1

    .line 3556
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeAutomaticZenRule(Ljava/lang/String;)Z
    .registers 3

    .line 1971
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist removeAutomaticZenRule(Ljava/lang/String;Z)Z
    .registers 4

    .line 1977
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1979
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1980
    :catch_9
    move-exception p1

    .line 1981
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o removeAutomaticZenRules(Ljava/lang/String;)Z
    .registers 3

    .line 1991
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist removeAutomaticZenRules(Ljava/lang/String;Z)Z
    .registers 4

    .line 1996
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1998
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1999
    :catch_9
    move-exception p1

    .line 2000
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected blacklist service()Landroid/app/INotificationManager;
    .registers 2

    .line 714
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setAssistantAdjustmentKeyTypeState(IZ)V
    .registers 3

    .line 2280
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->setAssistantClassificationTypeState(IZ)V

    .line 2281
    return-void
.end method

.method public blacklist setAssistantClassificationTypeState(IZ)V
    .registers 4

    .line 2288
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2290
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setAssistantClassificationTypeState(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2293
    nop

    .line 2294
    return-void

    .line 2291
    :catch_9
    move-exception p1

    .line 2292
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 4

    .line 1950
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1952
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1955
    nop

    .line 1956
    return-void

    .line 1953
    :catch_9
    move-exception p1

    .line 1954
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setCanPostPromotedNotifications(Ljava/lang/String;IZ)V
    .registers 6

    .line 1198
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1200
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/INotificationManager;->setCanBePromoted(Ljava/lang/String;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 1203
    nop

    .line 1204
    return-void

    .line 1201
    :catch_a
    move-exception p1

    .line 1202
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setChannelCachesToTestMode()V
    .registers 2

    .line 1643
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelListCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->testPropertyName()V

    .line 1644
    iget-object v0, p0, Landroid/app/NotificationManager;->mNotificationChannelGroupsCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->testPropertyName()V

    .line 1645
    return-void
.end method

.method public final whitelist setInterruptionFilter(I)V
    .registers 3

    .line 3380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setInterruptionFilter(IZ)V

    .line 3381
    return-void
.end method

.method public final blacklist setInterruptionFilter(IZ)V
    .registers 5

    .line 3386
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3388
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    .line 3392
    nop

    .line 3393
    return-void

    .line 3390
    :catch_f
    move-exception p1

    .line 3391
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .registers 3

    .line 2391
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2393
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2396
    nop

    .line 2397
    return-void

    .line 2394
    :catch_9
    move-exception p1

    .line 2395
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2467
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2469
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2472
    nop

    .line 2473
    return-void

    .line 2470
    :catch_9
    move-exception p1

    .line 2471
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setNotificationDelegate(Ljava/lang/String;)V
    .registers 7

    .line 1115
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1116
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1117
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_26

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": setNotificationDelegate()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_26
    :try_start_26
    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2b

    .line 1122
    nop

    .line 1123
    return-void

    .line 1120
    :catch_2b
    move-exception p1

    .line 1121
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 2371
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    .line 2372
    return-void
.end method

.method public whitelist setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2430
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2432
    const-wide/32 v1, 0x1208c096

    :try_start_7
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2433
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto :goto_1a

    .line 2436
    :cond_17
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1c

    .line 2440
    :goto_1a
    nop

    .line 2441
    return-void

    .line 2438
    :catch_1c
    move-exception p1

    .line 2439
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 6

    .line 2446
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2448
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 2451
    nop

    .line 2452
    return-void

    .line 2449
    :catch_a
    move-exception p1

    .line 2450
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 3

    .line 2341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V

    .line 2342
    return-void
.end method

.method public blacklist setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V
    .registers 5

    .line 2346
    const-string/jumbo v0, "policy"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2347
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2349
    :try_start_a
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 2352
    nop

    .line 2353
    return-void

    .line 2350
    :catch_15
    move-exception p1

    .line 2351
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2360
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2362
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2365
    nop

    .line 2366
    return-void

    .line 2363
    :catch_9
    move-exception p1

    .line 2364
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setToastRateLimitingEnabled(Z)V
    .registers 3

    .line 2546
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2548
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setToastRateLimitingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2551
    nop

    .line 2552
    return-void

    .line 2549
    :catch_9
    move-exception p1

    .line 2550
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 1702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 1703
    return-void
.end method

.method public blacklist setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 6

    .line 1707
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1709
    :try_start_4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1712
    nop

    .line 1713
    return-void

    .line 1710
    :catch_9
    move-exception p1

    .line 1711
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist shouldHideSilentStatusBarIcons()Z
    .registers 3

    .line 2208
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2210
    :try_start_4
    iget-object v1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    .line 2211
    :catch_f
    move-exception v0

    .line 2212
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist silenceNotificationSound()V
    .registers 2

    .line 2108
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 2110
    :try_start_4
    invoke-interface {v0}, Landroid/app/INotificationManager;->silenceNotificationSound()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 2113
    nop

    .line 2114
    return-void

    .line 2111
    :catch_9
    move-exception v0

    .line 2112
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist unregisterCallNotificationEventListener(Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3574
    const-string/jumbo v0, "listener"

    invoke-static {v0, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3575
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 3577
    :try_start_a
    iget-object v1, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    monitor-enter v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_24

    .line 3578
    :try_start_d
    iget-object v2, p0, Landroid/app/NotificationManager;->mCallNotificationEventCallbacks:Ljava/util/Map;

    .line 3579
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;

    .line 3580
    if-eqz p1, :cond_1e

    .line 3581
    iget-object v2, p1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v2, v3, p1}, Landroid/app/INotificationManager;->unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3584
    :cond_1e
    monitor-exit v1

    .line 3587
    nop

    .line 3588
    return-void

    .line 3584
    :catchall_21
    move-exception p1

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_24} :catch_24

    .line 3585
    :catch_24
    move-exception p1

    .line 3586
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .registers 4

    .line 1878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z
    .registers 5

    .line 1885
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1887
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 1888
    :catch_9
    move-exception p1

    .line 1889
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 5

    .line 1519
    invoke-virtual {p0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1521
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    .line 1524
    nop

    .line 1525
    return-void

    .line 1522
    :catch_9
    move-exception p1

    .line 1523
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
