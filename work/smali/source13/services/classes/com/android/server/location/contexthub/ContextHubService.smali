.class public Lcom/android/server/location/contexthub/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;,
        Lcom/android/server/location/contexthub/ContextHubService$Type;
    }
.end annotation


# static fields
.field public static final CONTEXT_HUB_EVENT_RESTARTED:I = 0x1

.field public static final CONTEXT_HUB_EVENT_UNKNOWN:I = 0x0

.field private static final DEBUG_LOG_ENABLED:Z = false

.field public static final MSG_DISABLE_NANO_APP:I = 0x2

.field public static final MSG_ENABLE_NANO_APP:I = 0x1

.field public static final MSG_HUB_RESET:I = 0x7

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_QUERY_MEMORY:I = 0x6

.field public static final MSG_QUERY_NANO_APPS:I = 0x5

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final PERIOD_METRIC_QUERY_DAYS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubIdToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field private final mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mDefaultClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/IContextHubClient;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBtMainEnabled:Z

.field private mIsBtScanningEnabled:Z

.field private mIsWifiAvailable:Z

.field private mIsWifiMainEnabled:Z

.field private mIsWifiScanningEnabled:Z

.field private final mLastRestartTimestampMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricQueryPendingContextHubIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field private final mSendWifiSettingUpdateLock:Ljava/lang/Object;

.field private final mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field private final mSupportedContextHubPerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/NanoAppStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAppAbortCallback(Lcom/android/server/location/contexthub/ContextHubService;IJI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubService;->handleClientMessageCallback(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHubEventCallback(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLoadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleQueryAppsCallback(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTransactionResultCallback(Lcom/android/server/location/contexthub/ContextHubService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->handleTransactionResultCallback(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnloadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendAirplaneModeSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBtSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendLocationSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendWifiSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    move-object/from16 v1, p0

    const-string v2, "ContextHubService"

    invoke-direct/range {p0 .. p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 127
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 143
    new-instance v0, Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;-><init>()V

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 146
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 155
    iput-boolean v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 156
    iput-boolean v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 159
    iput-boolean v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 160
    iput-boolean v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 213
    .local v4, "startTimeNs":J
    move-object/from16 v6, p1

    iput-object v6, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubService;->getContextHubWrapper()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 216
    const/4 v7, 0x0

    if-nez v0, :cond_71

    .line 217
    iput-object v7, v1, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 218
    iput-object v7, v1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 219
    iput-object v7, v1, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 224
    return-void

    .line 229
    :cond_71
    :try_start_71
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Landroid/util/Pair;

    move-result-object v0
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_75} :catch_77

    .line 233
    .local v0, "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v8, v0

    goto :goto_8c

    .line 230
    .end local v0    # "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_77
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "RemoteException while getting Context Hub info"

    invoke-static {v2, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    new-instance v8, Landroid/util/Pair;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v8, "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_8c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 235
    .local v9, "bootTimeNs":J
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 236
    .local v11, "numContextHubs":I
    const/16 v0, 0x18e

    invoke-static {v0, v9, v10, v11}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJI)V

    .line 238
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 239
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 238
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 240
    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iput-object v12, v1, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 241
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 242
    new-instance v12, Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v13, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-direct {v12, v13, v14}, Lcom/android/server/location/contexthub/ContextHubClientManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    iput-object v12, v1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 243
    new-instance v13, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v14, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object v15, v1, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {v13, v14, v12, v15}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V

    iput-object v13, v1, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 245
    const-class v12, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 246
    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object v12, v1, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 248
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v12, "defaultClientMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/location/IContextHubClient;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_ea
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 250
    .local v14, "contextHubId":I
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 251
    move-object/from16 v16, v8

    .end local v8    # "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    .local v16, "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 250
    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/location/ContextHubInfo;

    .line 254
    .local v3, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 255
    invoke-direct {v1, v14}, Lcom/android/server/location/contexthub/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v19

    const/16 v20, 0x0

    iget-object v7, v1, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v8, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 254
    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v21, v7

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v7

    .line 257
    .local v7, "client":Landroid/hardware/location/IContextHubClient;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :try_start_13c
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v8, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v8, v1, v14}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {v0, v14, v8}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_146} :catch_147

    .line 265
    goto :goto_164

    .line 262
    :catch_147
    move-exception v0

    .line 263
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_164
    invoke-direct {v1, v14}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 270
    .end local v3    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    .end local v7    # "client":Landroid/hardware/location/IContextHubClient;
    .end local v14    # "contextHubId":I
    move-object/from16 v8, v16

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_ea

    .line 271
    .end local v16    # "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v8    # "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_16d
    move-object/from16 v16, v8

    .end local v8    # "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v16    # "hubInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/hardware/location/ContextHubInfo;>;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 273
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsLocationSettingNotifications()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_199

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 275
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    const-string/jumbo v3, "location_mode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v7, Lcom/android/server/location/contexthub/ContextHubService$1;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/android/server/location/contexthub/ContextHubService$1;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    .line 275
    const/4 v8, 0x1

    invoke-virtual {v0, v3, v8, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_19a

    .line 273
    :cond_199
    const/4 v8, 0x1

    .line 286
    :goto_19a
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsWifiSettingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 287
    invoke-direct {v1, v8}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 289
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$2;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 299
    .local v0, "wifiReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v7, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v7, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    iget-object v7, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 305
    const-string/jumbo v8, "wifi_scan_always_enabled"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v13, Lcom/android/server/location/contexthub/ContextHubService$3;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    .line 304
    const/4 v14, 0x1

    invoke-virtual {v7, v8, v14, v13, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    .end local v0    # "wifiReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1d5
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsAirplaneModeSettingNotifications()Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 317
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 318
    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v7, Lcom/android/server/location/contexthub/ContextHubService$4;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/android/server/location/contexthub/ContextHubService$4;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    .line 317
    const/4 v8, 0x1

    invoke-virtual {v0, v3, v8, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 328
    :cond_1f6
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsMicrophoneSettingNotifications()Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 331
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V

    goto :goto_20e

    .line 328
    :cond_20d
    const/4 v3, 0x1

    .line 341
    :goto_20e
    iget-object v0, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsBtSettingNotifications()Z

    move-result v0

    if-eqz v0, :cond_232

    .line 342
    invoke-direct {v1, v3}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 344
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$5;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ContextHubService$5;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 354
    .local v0, "btReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v3, v1, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    .end local v0    # "btReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_232
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 361
    return-void
.end method

.method private checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .registers 9
    .param p1, "contextHubId"    # I
    .param p2, "callback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "transactionType"    # I

    .line 1104
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const-string v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_14

    .line 1106
    const/16 v0, 0x8

    :try_start_b
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1110
    goto :goto_13

    .line 1108
    :catch_f
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return v2

    .line 1113
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1115
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " transaction for invalid hub ID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x2

    :try_start_3f
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43

    .line 1121
    goto :goto_47

    .line 1119
    :catch_43
    move-exception v0

    .line 1120
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_47
    return v2

    .line 1125
    :cond_48
    const/4 v0, 0x1

    return v0
.end method

.method private checkPermissions()V
    .registers 2

    .line 1051
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 1052
    return-void
.end method

.method private createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3
    .param p1, "contextHubId"    # I

    .line 370
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$6;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method private createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 4
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 484
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService$7;-><init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method private createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3
    .param p1, "contextHubId"    # I

    .line 522
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method private createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3
    .param p1, "contextHubId"    # I

    .line 503
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$8;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1037
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1043
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1044
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1045
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1047
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1048
    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 3

    .line 1248
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextHubWrapper()Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 2

    .line 417
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidl()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    .line 418
    .local v0, "wrapper":Lcom/android/server/location/contexthub/IContextHubWrapper;
    if-nez v0, :cond_a

    .line 419
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectTo1_2()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    .line 421
    :cond_a
    if-nez v0, :cond_10

    .line 422
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectTo1_1()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    .line 424
    :cond_10
    if-nez v0, :cond_16

    .line 425
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectTo1_0()Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-result-object v0

    .line 428
    :cond_16
    return-object v0
.end method

.method private getCurrentUserId()I
    .registers 5

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1254
    .local v0, "id":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1255
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    return v3

    .line 1259
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    throw v2

    .line 1256
    :catch_17
    move-exception v2

    .line 1259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    nop

    .line 1261
    const/4 v2, 0x0

    return v2
.end method

.method private handleAppAbortCallback(IJI)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 782
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppAborted(IJI)V

    .line 783
    return-void
.end method

.method private handleClientMessageCallback(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "hostEndpointId"    # S
    .param p3, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 696
    .local p4, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 698
    return-void
.end method

.method private handleHubEventCallback(II)V
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "eventType"    # I

    .line 750
    const/4 v0, 0x1

    if-ne p2, v0, :cond_41

    .line 751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 752
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 753
    .local v3, "lastRestartTimeNs":J
    const/16 v5, 0x18f

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v7, v1, v3

    .line 755
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 753
    invoke-static {v5, v6, v7, p1}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJI)V

    .line 758
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 759
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 760
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 761
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 762
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 764
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onHubReset()V

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 767
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onHubReset(I)V

    .line 768
    .end local v1    # "now":J
    .end local v3    # "lastRestartTimeNs":J
    goto :goto_69

    .line 769
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown hub event (hub ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_69
    return-void
.end method

.method private handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .registers 8
    .param p1, "contextHubId"    # I
    .param p2, "result"    # I
    .param p3, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;

    .line 706
    if-nez p3, :cond_a

    .line 707
    const-string v0, "ContextHubService"

    const-string v1, "Nanoapp binary field was null for a load transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void

    .line 711
    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 712
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 713
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 714
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    .line 713
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v1

    .line 715
    .local v1, "nanoAppHandle":I
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 717
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 718
    return-void
.end method

.method private handleQueryAppsCallback(ILjava/util/List;)V
    .registers 10
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p2, "nanoappStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 793
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppState;

    .line 794
    .local v1, "nanoappState":Landroid/hardware/location/NanoAppState;
    const/16 v2, 0x190

    .line 796
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v3

    .line 797
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppVersion()J

    move-result-wide v5

    long-to-int v5, v5

    .line 794
    invoke-static {v2, p1, v3, v4, v5}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IIJI)V

    .line 798
    .end local v1    # "nanoappState":Landroid/hardware/location/NanoAppState;
    goto :goto_10

    .line 799
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 801
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 804
    :cond_3f
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    .line 805
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v0, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    .line 806
    return-void
.end method

.method private handleTransactionResultCallback(IIZ)V
    .registers 5
    .param p1, "contextHubId"    # I
    .param p2, "transactionId"    # I
    .param p3, "success"    # Z

    .line 740
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onTransactionResponse(IZ)V

    .line 741
    return-void
.end method

.method private handleUnloadResponseOldApi(II)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "result"    # I

    .line 726
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 727
    .local v0, "data":[B
    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 728
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 729
    return-void
.end method

.method private isValidContextHubId(I)Z
    .registers 4
    .param p1, "contextHubId"    # I

    .line 813
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$denyClientAuthState$3(Ljava/lang/String;JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "nanoAppId"    # J
    .param p3, "client"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 1028
    invoke-virtual {p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1029
    nop

    .line 1030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1029
    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    .line 1033
    :cond_16
    return-void
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 1013
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dump$4(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V
    .registers 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;

    .line 1038
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1039
    .local v0, "token":J
    invoke-virtual {p1, p0}, Landroid/hardware/location/ContextHubInfo;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1040
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1041
    return-void
.end method

.method static synthetic lambda$findNanoAppOnHub$1(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 4
    .param p0, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .param p1, "foundInstances"    # Ljava/util/ArrayList;
    .param p2, "info"    # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 602
    invoke-virtual {p0, p2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 603
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_11
    return-void
.end method

.method private onMessageReceiptOldApi(III[B)I
    .registers 16
    .param p1, "msgType"    # I
    .param p2, "contextHubHandle"    # I
    .param p3, "appInstance"    # I
    .param p4, "data"    # [B

    .line 1056
    if-nez p4, :cond_4

    .line 1057
    const/4 v0, -0x1

    return v0

    .line 1060
    :cond_4
    const/4 v0, 0x0

    .line 1063
    .local v0, "msgVersion":I
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 1064
    :try_start_8
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1071
    .local v2, "callbacksCount":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_14

    .line 1075
    monitor-exit v1

    return v3

    .line 1078
    :cond_14
    new-instance v4, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v4, p1, v0, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 1079
    .local v4, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    if-ge v5, v2, :cond_55

    .line 1080
    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IContextHubCallback;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_5c

    .line 1082
    .local v6, "callback":Landroid/hardware/location/IContextHubCallback;
    :try_start_24
    invoke-interface {v6, p2, p3, v4}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_5c

    .line 1086
    goto :goto_52

    .line 1083
    :catch_28
    move-exception v7

    .line 1084
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v8, "ContextHubService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") calling remote callback ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    nop

    .line 1079
    .end local v6    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1088
    .end local v5    # "i":I
    :cond_55
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1089
    .end local v2    # "callbacksCount":I
    .end local v4    # "msg":Landroid/hardware/location/ContextHubMessage;
    monitor-exit v1

    .line 1090
    return v3

    .line 1089
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_5c

    throw v2
.end method

.method private queryNanoAppsInternal(I)Z
    .registers 5
    .param p1, "contextHubId"    # I

    .line 626
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez v0, :cond_6

    .line 627
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_6
    nop

    .line 631
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 632
    .local v0, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 633
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v1

    .line 635
    .local v1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 636
    const/4 v2, 0x1

    return v2
.end method

.method private scheduleDailyMetricSnapshot()V
    .registers 6

    .line 1233
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 1240
    .local v0, "queryAllContextHub":Ljava/lang/Runnable;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 1244
    goto :goto_17

    .line 1242
    :catch_f
    move-exception v1

    .line 1243
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ContextHubService"

    const-string v3, "Error when schedule a timer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1245
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method private sendAirplaneModeSettingUpdate()V
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 1202
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    move v0, v2

    .line 1205
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onAirplaneModeSettingChanged(Z)V

    .line 1206
    return-void
.end method

.method private sendBtSettingUpdate(Z)V
    .registers 6
    .param p1, "forceUpdate"    # Z

    .line 1171
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1173
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_29

    .line 1174
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 1175
    .local v1, "btEnabled":Z
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v2

    .line 1176
    .local v2, "btScanEnabled":Z
    if-nez p1, :cond_14

    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eq v3, v2, :cond_1b

    .line 1177
    :cond_14
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 1178
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    .line 1180
    :cond_1b
    if-nez p1, :cond_21

    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    if-eq v3, v1, :cond_28

    .line 1181
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 1182
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    .line 1184
    .end local v1    # "btEnabled":Z
    .end local v2    # "btScanEnabled":Z
    :cond_28
    goto :goto_47

    .line 1185
    :cond_29
    const-string v1, "ContextHubService"

    const-string v2, "BT adapter not available. Defaulting to disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 1187
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 1188
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    .line 1190
    :cond_3c
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eqz v1, :cond_47

    .line 1191
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 1192
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    .line 1195
    :cond_47
    :goto_47
    return-void
.end method

.method private sendLocationSettingUpdate()V
    .registers 3

    .line 1132
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1133
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1134
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onLocationSettingChanged(Z)V

    .line 1135
    return-void
.end method

.method private sendMicrophoneDisableSettingUpdate(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mic Disabled Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onMicrophoneSettingChanged(Z)V

    .line 1217
    return-void
.end method

.method private sendMicrophoneDisableSettingUpdateForCurrentUser()V
    .registers 4

    .line 1224
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 1225
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v1

    .line 1224
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    .line 1226
    .local v0, "isEnabled":Z
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdate(Z)V

    .line 1227
    return-void
.end method

.method private sendWifiSettingUpdate(Z)V
    .registers 8
    .param p1, "forceUpdate"    # Z

    .line 1144
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1146
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 1147
    .local v2, "wifiEnabled":Z
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v3

    .line 1148
    .local v3, "wifiScanEnabled":Z
    if-nez v2, :cond_1c

    if-eqz v3, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v4, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v4, 0x1

    .line 1149
    .local v4, "wifiAvailable":Z
    :goto_1d
    if-nez p1, :cond_23

    iget-boolean v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    if-eq v5, v4, :cond_2a

    .line 1150
    :cond_23
    iput-boolean v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 1151
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v5, v4}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiSettingChanged(Z)V

    .line 1153
    :cond_2a
    if-nez p1, :cond_30

    iget-boolean v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    if-eq v5, v3, :cond_37

    .line 1154
    :cond_30
    iput-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 1155
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v5, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiScanningSettingChanged(Z)V

    .line 1157
    :cond_37
    if-nez p1, :cond_3d

    iget-boolean v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    if-eq v5, v2, :cond_44

    .line 1158
    :cond_3d
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 1159
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v5, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiMainSettingChanged(Z)V

    .line 1161
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v2    # "wifiEnabled":Z
    .end local v3    # "wifiScanEnabled":Z
    .end local v4    # "wifiAvailable":Z
    :cond_44
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method


# virtual methods
.method public createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "clientCallback"    # Landroid/hardware/location/IContextHubClientCallback;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 833
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 836
    if-eqz p2, :cond_24

    .line 840
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 841
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 837
    .end local v0    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot register client with null callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 14
    .param p1, "contextHubId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 861
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 865
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 866
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v7, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, v0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 862
    .end local v0    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method denyClientAuthState(ILjava/lang/String;J)V
    .registers 7
    .param p1, "contextHubId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "nanoAppId"    # J

    .line 1027
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 1034
    return-void
.end method

.method public disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 958
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 960
    return-void

    .line 963
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 964
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 963
    move v2, p1

    move-wide v3, p3

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 965
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 966
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 993
    :cond_b
    array-length v0, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_25

    aget-object v2, p3, v1

    .line 994
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 995
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 996
    return-void

    .line 993
    .end local v2    # "arg":Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1000
    :cond_25
    const-string v0, "Dumping ContextHub Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    const-string v1, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 1006
    .local v2, "hubInfo":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1007
    .end local v2    # "hubInfo":Landroid/hardware/location/ContextHubInfo;
    goto :goto_3e

    .line 1008
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 1009
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    const-string v1, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 1015
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    const-string v1, "=================== CLIENTS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1019
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    const-string v0, "=================== TRANSACTIONS ===================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1024
    return-void
.end method

.method public enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 935
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 937
    return-void

    .line 940
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 941
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 940
    move v2, p1

    move-wide v3, p3

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 942
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 943
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .registers 7
    .param p1, "contextHubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_14

    .line 601
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 608
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 609
    .local v1, "retArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 610
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 612
    .end local v2    # "i":I
    :cond_30
    return-object v1
.end method

.method public getContextHubHandles()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 450
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createPrimitiveIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .registers 4
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 456
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Context Hub handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in getContextHubInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_2f
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public getContextHubs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 472
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 3
    .param p1, "nanoAppHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 591
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-server-location-contexthub-ContextHubService(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 333
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_2c

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mic privacy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdate(Z)V

    .line 337
    :cond_2c
    return-void
.end method

.method synthetic lambda$scheduleDailyMetricSnapshot$5$com-android-server-location-contexthub-ContextHubService()V
    .registers 5

    .line 1234
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1235
    .local v1, "contextHubId":I
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-direct {p0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 1237
    .end local v1    # "contextHubId":I
    goto :goto_a

    .line 1238
    :cond_27
    return-void
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .registers 7
    .param p1, "contextHubHandle"    # I
    .param p2, "nanoApp"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 538
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 539
    return v1

    .line 541
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_2e

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in loadNanoApp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return v1

    .line 545
    :cond_2e
    if-nez p2, :cond_36

    .line 546
    const-string v0, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v1

    .line 551
    :cond_36
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 552
    .local v0, "nanoAppBinary":Landroid/hardware/location/NanoAppBinary;
    nop

    .line 553
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 555
    .local v1, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 556
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v2

    .line 558
    .local v2, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 559
    const/4 v3, 0x0

    return v3
.end method

.method public loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 885
    return-void

    .line 887
    :cond_b
    if-nez p3, :cond_19

    .line 888
    const-string v0, "ContextHubService"

    const-string v1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 891
    return-void

    .line 894
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 895
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 896
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 897
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "result"    # Landroid/os/ResultReceiver;

    .line 434
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubShellCommand;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/ContextHubService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/contexthub/ContextHubShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 435
    return-void
.end method

.method public onUserChanged()V
    .registers 3

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed to id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 1272
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 1273
    return-void
.end method

.method public queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 5
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 978
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 979
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 981
    return-void

    .line 984
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 985
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 986
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 987
    return-void
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 440
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added callback, total callbacks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 443
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .registers 12
    .param p1, "contextHubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 643
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 644
    return v1

    .line 646
    :cond_9
    const-string v0, "ContextHubService"

    if-nez p3, :cond_13

    .line 647
    const-string v2, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v1

    .line 650
    :cond_13
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1f

    .line 651
    const-string v2, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v1

    .line 654
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v2

    if-nez v2, :cond_42

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in sendMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v1

    .line 659
    :cond_42
    const/4 v2, 0x0

    .line 660
    .local v2, "success":Z
    const/4 v3, 0x0

    if-ne p2, v1, :cond_6d

    .line 661
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_52

    .line 662
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    move-result v2

    goto :goto_b7

    .line 664
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid OS message params of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 667
    :cond_6d
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v4

    .line 668
    .local v4, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-eqz v4, :cond_9b

    .line 669
    nop

    .line 670
    invoke-virtual {v4}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v0

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v7

    .line 669
    invoke-static {v5, v6, v0, v7}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 672
    .local v0, "message":Landroid/hardware/location/NanoAppMessage;
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/IContextHubClient;

    .line 673
    .local v5, "client":Landroid/hardware/location/IContextHubClient;
    invoke-interface {v5, v0}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v6

    if-nez v6, :cond_98

    const/4 v6, 0x1

    goto :goto_99

    :cond_98
    move v6, v3

    :goto_99
    move v2, v6

    .line 675
    .end local v0    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v5    # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_b7

    .line 676
    :cond_9b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send nanoapp message - nanoapp with handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v4    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    :goto_b7
    if-eqz v2, :cond_ba

    move v1, v3

    :cond_ba
    return v1
.end method

.method public unloadNanoApp(I)I
    .registers 13
    .param p1, "nanoAppHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 565
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 566
    return v1

    .line 569
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 570
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    .line 571
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_30

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid nanoapp handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unloadNanoApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v1

    .line 576
    :cond_30
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v1

    .line 577
    .local v1, "contextHubId":I
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    .line 578
    .local v2, "nanoAppId":J
    nop

    .line 579
    invoke-direct {p0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v10

    .line 580
    .local v10, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 581
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    .line 580
    move v5, v1

    move-wide v6, v2

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v4

    .line 583
    .local v4, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v5, v4}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 584
    const/4 v5, 0x0

    return v5
.end method

.method public unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkPermissions()V

    .line 912
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 914
    return-void

    .line 917
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 918
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    .line 917
    move v2, p1

    move-wide v3, p3

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 919
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 920
    return-void
.end method
