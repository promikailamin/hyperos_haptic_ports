.class public Lcom/android/server/location/contexthub/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# instance fields
.field public final mCallbacksList:Landroid/os/RemoteCallbackList;

.field public mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public mContextHubIdToInfoMap:Ljava/util/Map;

.field public mContextHubInfoList:Ljava/util/List;

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public mDefaultClientMap:Ljava/util/Map;

.field public mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

.field public final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public mIsBtMainEnabled:Z

.field public mIsBtScanningEnabled:Z

.field public final mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsWifiAvailable:Z

.field public mIsWifiMainEnabled:Z

.field public mIsWifiScanningEnabled:Z

.field public final mLastRestartTimestampMap:Ljava/util/Map;

.field public final mMetricQueryPendingContextHubIds:Ljava/util/Set;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

.field public final mSendWifiSettingUpdateLock:Ljava/lang/Object;

.field public mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public mSupportedContextHubPerms:Ljava/util/List;

.field public final mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;

.field public mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$5GSozA6c48-Bh-6EVaeMfCxFKQw(Ljava/lang/String;JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 10

    .line 1595
    invoke-virtual {p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1597
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p1

    move-object v0, p3

    .line 1596
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    :cond_13
    return-void
.end method

.method public static synthetic $r8$lambda$TB7eVzf-rARmrgzh4SrZkX7lAhM(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$scheduleDailyMetricSnapshot$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bctfr7Wm6zM1mt5FwQ_kHaH8yCA(Lcom/android/server/location/contexthub/ContextHubService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->lambda$initMicrophoneSettingNotifications$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$oZBCHNRjaf6Cw4wdWNHDMe-IVbc(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 3

    .line 981
    invoke-virtual {p0, p2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 982
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$zC9jl1nDfno9HebZ0ZkC3fCokaw(Landroid/util/proto/ProtoOutputStream;Landroid/hardware/location/ContextHubInfo;)V
    .registers 4

    const-wide v0, 0x20b00000001L

    .line 1605
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1606
    invoke-virtual {p1, p0}, Landroid/hardware/location/ContextHubInfo;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1607
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/ContextHubClientManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultClientMap(Lcom/android/server/location/contexthub/ContextHubService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEndpointManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHubInfoRegistry(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/HubInfoRegistry;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/NanoAppStateManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAppAbortCallback(Lcom/android/server/location/contexthub/ContextHubService;IJI)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubService;->handleClientMessageCallback(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleHubEventCallback(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLoadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMessageDeliveryStatusCallback(Lcom/android/server/location/contexthub/ContextHubService;Landroid/hardware/contexthub/MessageDeliveryStatus;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->handleMessageDeliveryStatusCallback(Landroid/hardware/contexthub/MessageDeliveryStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleQueryAppsCallback(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleTransactionResultCallback(Lcom/android/server/location/contexthub/ContextHubService;IIZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->handleTransactionResultCallback(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUnloadResponseOldApi(Lcom/android/server/location/contexthub/ContextHubService;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitExistingCallbacks(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initExistingCallbacks()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monMessageReceiptOldApi(Lcom/android/server/location/contexthub/ContextHubService;III[B)I
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetSettings(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->resetSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendAirplaneModeSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBtSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendLocationSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendWifiSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .registers 8

    .line 323
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 146
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 165
    new-instance v0, Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 168
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 172
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda1;-><init>()V

    .line 174
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 177
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubTestModeManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 185
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 188
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 192
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 196
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    .line 324
    const-string v1, "Starting Context Hub Service init"

    const-string v2, "ContextHubService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 327
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 329
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/contexthub/ContextHubService;->initContextHubServiceState(J)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 330
    const-string p1, "Failed to initialize the Context Hub Service"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    return-void

    .line 338
    :cond_7b
    :try_start_7b
    new-instance v1, Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    .line 339
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-direct {v3, p1, p2, v1, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 342
    invoke-virtual {v3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->init()V

    .line 343
    const-string p1, "Enabling generic offload API"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/InstantiationException; {:try_start_7b .. :try_end_91} :catch_93
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7b .. :try_end_91} :catch_93

    move-object v0, v1

    goto :goto_9f

    :catch_93
    move-exception p1

    .line 345
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 347
    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_9f

    .line 348
    const-string p1, "Generic offload API not supported by HAL"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_9f
    :goto_9f
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 358
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initDefaultClientMap()V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initLocationSettingNotifications()V

    .line 361
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initWifiSettingNotifications()V

    .line 362
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initAirplaneModeSettingNotifications()V

    .line 363
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initMicrophoneSettingNotifications()V

    .line 364
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->initBtSettingNotifications()V

    .line 366
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 367
    const-string p0, "Finished Context Hub Service init"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final checkEndpointDiscoveryPreconditions()V
    .registers 2

    .line 833
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    if-eqz p0, :cond_5

    return-void

    .line 834
    :cond_5
    const-string p0, "ContextHubService"

    const-string v0, "Hub endpoint registry failed to initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Endpoint discovery is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .registers 8

    .line 1688
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const-string v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_14

    const/16 p0, 0x8

    .line 1690
    :try_start_b
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 1693
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return v2

    .line 1697
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result p0

    if-nez p0, :cond_44

    .line 1698
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot start "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " transaction for invalid hub ID "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1698
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 1702
    :try_start_3b
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p0

    .line 1704
    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    return v2

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public final checkHubDiscoveryPreconditions()V
    .registers 2

    .line 840
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    if-eqz p0, :cond_5

    return-void

    .line 841
    :cond_5
    const-string p0, "ContextHubService"

    const-string v0, "Hub registry failed to initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Hub discovery is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cleanupReliableMessageRecordQueue()V
    .registers 3

    .line 1149
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    monitor-enter v0

    .line 1150
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    .line 1151
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1152
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_3

    :catchall_1f
    move-exception p0

    goto :goto_23

    .line 1154
    :cond_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1f

    throw p0
.end method

.method public createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 11

    .line 1319
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->createClient_enforcePermission()V

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p2, :cond_24

    .line 1328
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 1329
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p0

    return-object p0

    .line 1325
    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot register client with null callback"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1322
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid context hub ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3

    .line 377
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$1;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method public final createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 4

    .line 855
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService$8;-><init>(Lcom/android/server/location/contexthub/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method public createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 13

    .line 1349
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->createPendingIntentClient_enforcePermission()V

    .line 1351
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1355
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 1356
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/location/IContextHubClient;

    move-result-object p0

    return-object p0

    .line 1352
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid context hub ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3

    .line 893
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$10;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method public final createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3

    .line 874
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService$9;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    return-object v0
.end method

.method public denyClientAuthState(ILjava/lang/String;J)V
    .registers 7

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Denying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " access to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on context hub # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12

    .line 1448
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp_enforcePermission()V

    const/4 v0, 0x3

    .line 1450
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1455
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 1456
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move-object v5, p2

    move-wide v3, p3

    .line 1455
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 1457
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    .line 1604
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda5;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    const-wide v0, 0x10b00000002L

    .line 1610
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1611
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 1612
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1614
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1534
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1536
    :cond_b
    array-length v0, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_25

    aget-object v2, p3, v1

    .line 1537
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1538
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1543
    :cond_25
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1545
    const-string p2, "Dumping ContextHub Service"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    const-string p3, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_45
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 1551
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_45

    .line 1553
    :cond_55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Supported permissions: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 1554
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1553
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    if-eqz p3, :cond_7d

    .line 1558
    invoke-virtual {p3, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1561
    :cond_7d
    const-string p3, "=================== NANOAPPS ===================="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p3, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 1565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    const-string p3, "=================== PRELOADED NANOAPPS ===================="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->dumpPreloadedNanoapps(Ljava/io/PrintWriter;)V

    .line 1569
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    const-string p3, "=================== CLIENTS ===================="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1573
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    if-eqz p3, :cond_b5

    .line 1574
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1575
    const-string p3, "=================== ENDPOINTS ===================="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1579
    :cond_b5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    const-string p3, "=================== TRANSACTIONS ===================="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    const-string p0, "=================== EVENTS ===================="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpPreloadedNanoapps(Ljava/io/PrintWriter;)V
    .registers 9

    .line 1619
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez v0, :cond_5

    goto :goto_4a

    .line 1623
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1624
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v2, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getPreloadedNanoappIds(I)[J

    move-result-object v2

    if-nez v2, :cond_28

    goto :goto_4a

    .line 1629
    :cond_28
    const-string v3, "Context Hub (id="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1631
    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    array-length v1, v2

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v1, :cond_f

    aget-wide v4, v2, v3

    .line 1633
    const-string v6, "  ID: 0x"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_4a
    :goto_4a
    return-void
.end method

.method public enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12

    .line 1425
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp_enforcePermission()V

    const/4 v0, 0x2

    .line 1427
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1432
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 1433
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move-object v5, p2

    move-wide v3, p3

    .line 1432
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 1434
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public findEndpoints(J)Ljava/util/List;
    .registers 3

    .line 763
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->findEndpoints_enforcePermission()V

    .line 764
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    .line 765
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->findEndpoints(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 771
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->findEndpointsWithService_enforcePermission()V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    .line 773
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .registers 4

    .line 976
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub_enforcePermission()V

    .line 978
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_14

    .line 980
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 987
    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 p2, 0x0

    .line 988
    :goto_1b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_30

    .line 989
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_30
    return-object p0
.end method

.method public final findReliableMessageRecord(II)Ljava/util/Optional;
    .registers 5

    .line 1136
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 1137
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->getContextHubId()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 1138
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->getMessageSequenceNumber()I

    move-result v1

    if-ne v1, p2, :cond_6

    .line 1139
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 1142
    :cond_23
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 1837
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContextHubHandles()[I
    .registers 1

    .line 724
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles_enforcePermission()V

    .line 725
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createPrimitiveIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .registers 4

    .line 731
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo_enforcePermission()V

    .line 732
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 733
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Context Hub handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in getContextHubInfo"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 736
    :cond_2c
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/location/ContextHubInfo;

    return-object p0
.end method

.method public getContextHubs()Ljava/util/List;
    .registers 1

    .line 747
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs_enforcePermission()V

    .line 749
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getCurrentUserId()I
    .registers 3

    .line 1841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1843
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 1844
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1848
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1849
    throw p0

    .line 1848
    :catch_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public getHubs()Ljava/util/List;
    .registers 1

    .line 755
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->getHubs_enforcePermission()V

    .line 756
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHubDiscoveryPreconditions()V

    .line 757
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->getHubs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 2

    .line 966
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo_enforcePermission()V

    .line 968
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J
    .registers 3

    .line 1491
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->getPreloadedNanoAppIds_enforcePermission()V

    .line 1492
    const-string v0, "hubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1494
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getPreloadedNanoappIds(I)[J

    move-result-object p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    .line 1496
    new-array p0, p0, [J

    :cond_17
    return-object p0
.end method

.method public final handleAppAbortCallback(IJI)V
    .registers 5

    .line 1268
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onNanoAppAborted(IJI)V

    return-void
.end method

.method public final handleClientMessageCallback(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 14

    .line 1080
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1081
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    :cond_14
    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1089
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    monitor-enter p1

    .line 1092
    :try_start_1c
    invoke-virtual {v5}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p2

    .line 1091
    invoke-virtual {p0, v3, p2}, Lcom/android/server/location/contexthub/ContextHubService;->findReliableMessageRecord(II)Ljava/util/Optional;

    move-result-object p2

    .line 1094
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_91

    .line 1095
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-virtual {p3}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->getErrorCode()B

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_70

    .line 1097
    const-string p3, "ContextHubService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-virtual {p5}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->getMessageSequenceNumber()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ": retrying"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1097
    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result p3

    .line 1102
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-virtual {p2, p3}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->setErrorCode(B)V

    :goto_6b
    move-object p2, v5

    goto :goto_ab

    :catchall_6d
    move-exception v0

    move-object p0, v0

    goto :goto_b7

    .line 1104
    :cond_70
    const-string p4, "ContextHubService"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found duplicate reliable message with message sequence number: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    invoke-virtual {p2}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->getMessageSequenceNumber()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1104
    invoke-static {p4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1108
    :cond_91
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    move-result v7

    move-object p2, v5

    .line 1111
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mReliableMessageRecordQueue:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;

    .line 1113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1114
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;-><init>(IJIB)V

    .line 1111
    invoke-virtual {p3, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move p3, v7

    .line 1117
    :goto_ab
    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_1c .. :try_end_ac} :catchall_6d

    .line 1120
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p1

    .line 1119
    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/location/contexthub/ContextHubService;->sendMessageDeliveryStatusToContextHub(IIB)V

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->cleanupReliableMessageRecordQueue()V

    return-void

    .line 1117
    :goto_b7
    :try_start_b7
    monitor-exit p1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_6d

    throw p0
.end method

.method public final handleHubEventCallback(II)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3b

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1240
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 1241
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v0, v2

    .line 1243
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/16 p2, 0x18f

    .line 1241
    invoke-static {p2, v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJI)V

    .line 1246
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logContextHubRestart(I)V

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->resetSettings()V

    .line 1250
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onHubReset()V

    .line 1251
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    .line 1253
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager;->onHubReset(I)V

    return-void

    .line 1255
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received unknown hub event (hub ID = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .registers 7

    if-nez p3, :cond_a

    .line 1183
    const-string p0, "ContextHubService"

    const-string p1, "Nanoapp binary field was null for a load transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v0, 0x5

    .line 1187
    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p2, p2

    .line 1188
    aput-byte p2, v0, v1

    .line 1189
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 1190
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v1

    .line 1189
    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result p2

    const/4 p3, 0x1

    const/4 v1, 0x4

    .line 1191
    invoke-static {v0, p3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p2, 0x3

    const/4 p3, -0x1

    .line 1193
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    return-void
.end method

.method public final handleMessageDeliveryStatusCallback(Landroid/hardware/contexthub/MessageDeliveryStatus;)V
    .registers 5

    .line 1225
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;

    move-result-object v0

    iget v1, p1, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iget-byte v2, p1, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEventLogger;->logReliableMessageToNanoappStatus(IB)V

    .line 1227
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget v0, p1, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iget-byte p1, p1, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    return-void
.end method

.method public final handleQueryAppsCallback(ILjava/util/List;)V
    .registers 9

    .line 1278
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1279
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppState;

    .line 1282
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v2

    .line 1283
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppState;->getNanoAppVersion()J

    move-result-wide v4

    long-to-int v1, v4

    const/16 v4, 0x190

    .line 1280
    invoke-static {v4, p1, v2, v3, v1}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IIJI)V

    goto :goto_10

    .line 1285
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1286
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->scheduleDailyMetricSnapshot()V

    .line 1290
    :cond_3f
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/contexthub/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    .line 1291
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    return-void
.end method

.method public final handleTransactionResultCallback(IIZ)V
    .registers 4

    .line 1216
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onTransactionResponse(IZ)V

    return-void
.end method

.method public final handleUnloadResponseOldApi(II)V
    .registers 5

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 1203
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x4

    const/4 v1, -0x1

    .line 1204
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    return-void
.end method

.method public final initAirplaneModeSettingNotifications()V
    .registers 5

    .line 607
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz v0, :cond_25

    .line 608
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsAirplaneModeSettingNotifications()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 612
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 613
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 614
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/contexthub/ContextHubService$5;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    const/4 p0, -0x1

    const/4 v3, 0x1

    .line 613
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public final initBtSettingNotifications()V
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsBtSettingNotifications()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3a

    :cond_b
    const/4 v0, 0x1

    .line 665
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    .line 667
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$6;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$6;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 675
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 676
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ble_scan_always_enabled"

    .line 680
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/contexthub/ContextHubService$7;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    const/4 p0, -0x1

    const/4 v3, 0x0

    .line 679
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final initContextHubServiceState(J)Z
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez v0, :cond_19

    const/4 p1, 0x0

    .line 460
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 461
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 462
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 463
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 464
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 465
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 466
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    const/4 p0, 0x0

    return p0

    .line 472
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getContextHubs()Landroid/util/Pair;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_2d

    :catch_1e
    move-exception v0

    .line 474
    const-string v1, "ContextHubService"

    const-string v2, "RemoteException while getting Context Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    :goto_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 479
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x18e

    .line 480
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/location/contexthub/ContextHubStatsLog;->write(IJI)V

    .line 483
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 484
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    .line 483
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 485
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSupportedContextHubPerms:Ljava/util/List;

    .line 486
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 487
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-direct {p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 489
    new-instance p1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 493
    const-class p1, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 494
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    const/4 p0, 0x1

    return p0
.end method

.method public final initDefaultClientMap()V
    .registers 12

    .line 503
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 504
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 505
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/location/ContextHubInfo;

    .line 508
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mLastRestartTimestampMap:Ljava/util/Map;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 508
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v5, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v5, p0, v4}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService;I)V

    invoke-virtual {v0, v4, v5}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_45

    goto :goto_61

    :catch_45
    move-exception v0

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ContextHubService"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    :goto_61
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubService;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 520
    invoke-virtual {p0, v4}, Lcom/android/server/location/contexthub/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 521
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    .line 519
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/contexthub/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    .line 522
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {p0, v4}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_f

    .line 528
    :cond_7b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    return-void
.end method

.method public final initExistingCallbacks()V
    .registers 7

    .line 535
    const-string v0, "ContextHubService"

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 537
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerExistingCallback(I)V

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-registered callback to context hub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_35} :catch_36

    goto :goto_c

    :catch_36
    move-exception v3

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException while registering existing service callback for hub (ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_51
    return-void
.end method

.method public final initLocationSettingNotifications()V
    .registers 5

    .line 550
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz v0, :cond_25

    .line 551
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsLocationSettingNotifications()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 555
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 556
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    .line 557
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/location/contexthub/ContextHubService$2;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    const/4 p0, -0x1

    const/4 v3, 0x1

    .line 556
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public final initMicrophoneSettingNotifications()V
    .registers 4

    .line 628
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz v0, :cond_3b

    .line 629
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsMicrophoneSettingNotifications()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 633
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    const-string v1, "ContextHubService"

    if-nez v0, :cond_25

    .line 634
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_25

    .line 636
    const-string p0, "Unable to get the UserManager service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 641
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 642
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    if-nez v0, :cond_32

    .line 643
    const-string p0, "Unable to add a sensor privacy listener for all users"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 647
    :cond_32
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorPrivacyManagerInternal;->addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final initWifiSettingNotifications()V
    .registers 6

    .line 571
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->supportsWifiSettingNotifications()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3f

    :cond_b
    const/4 v0, 0x1

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 577
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubService$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/contexthub/ContextHubService$3;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 587
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 588
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v3, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    .line 593
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/location/contexthub/ContextHubService$4;-><init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V

    const/4 p0, -0x1

    .line 592
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final isValidContextHubId(I)Z
    .registers 2

    .line 1299
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$initMicrophoneSettingNotifications$0(IZ)V
    .registers 5

    .line 650
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 651
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mic privacy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextHubService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdate(Z)V

    return-void
.end method

.method public final synthetic lambda$scheduleDailyMetricSnapshot$4()V
    .registers 5

    .line 1823
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1824
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mMetricQueryPendingContextHubIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1825
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_a

    :cond_23
    return-void
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .registers 6

    .line 909
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp_enforcePermission()V

    .line 911
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 914
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_2b

    .line 915
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid Context Hub handle "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in loadNanoApp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2b
    if-nez p2, :cond_33

    .line 919
    const-string p0, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 924
    :cond_33
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 926
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p2

    .line 928
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 929
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 931
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .registers 6

    .line 1372
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub_enforcePermission()V

    const/4 v0, 0x0

    .line 1374
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-nez p3, :cond_19

    .line 1379
    const-string p0, "ContextHubService"

    const-string p1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 1380
    invoke-interface {p2, p0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    return-void

    .line 1385
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 1386
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 1387
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public onDiscoveryCallbackFinished()V
    .registers 1

    .line 828
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->onDiscoveryCallbackFinished_enforcePermission()V

    .line 829
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->onDiscoveryCallbackFinished()V

    return-void
.end method

.method public final onMessageReceiptOldApi(III[B)I
    .registers 13

    if-nez p4, :cond_4

    const/4 p0, -0x1

    return p0

    .line 1648
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1649
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_15

    .line 1660
    monitor-exit v0

    return v3

    :catchall_13
    move-exception p0

    goto :goto_57

    .line 1663
    :cond_15
    new-instance v2, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v2, p1, v3, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    move p1, v3

    :goto_1b
    if-ge p1, v1, :cond_50

    .line 1665
    iget-object p4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p4, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Landroid/hardware/location/IContextHubCallback;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_13

    .line 1667
    :try_start_25
    invoke-interface {p4, p2, p3, v2}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_13

    goto :goto_4d

    :catch_29
    move-exception v4

    .line 1669
    :try_start_2a
    const-string v5, "ContextHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") calling remote callback ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")."

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 1672
    :cond_50
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1673
    monitor-exit v0

    return v3

    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_2a .. :try_end_58} :catchall_13

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 706
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

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserChanged()V
    .registers 3

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed to id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    return-void
.end method

.method public queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 5

    .line 1470
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps_enforcePermission()V

    const/4 v0, 0x4

    .line 1472
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1477
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1477
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 1479
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public final queryNanoAppsInternal(I)Z
    .registers 5

    .line 1004
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1009
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1010
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 1013
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .registers 3

    .line 712
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback_enforcePermission()V

    .line 714
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 716
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added callback, total callbacks "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 717
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 716
    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .registers 6

    .line 784
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpoint_enforcePermission()V

    .line 785
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const-string v0, "ContextHubService"

    if-eqz p0, :cond_1e

    if-eqz p2, :cond_10

    .line 793
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object p0

    return-object p0

    .line 790
    :cond_10
    const-string p0, "Endpoint callback is invalid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "registerEndpoint must have a non-null callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 786
    :cond_1e
    const-string p0, "Endpoint manager failed to initialize"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Endpoint registration is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerEndpointDiscoveryCallbackDescriptor(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 3

    .line 811
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackDescriptor_enforcePermission()V

    .line 812
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    .line 813
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->registerEndpointDiscoveryCallback(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    return-void
.end method

.method public registerEndpointDiscoveryCallbackId(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 4

    .line 801
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackId_enforcePermission()V

    .line 802
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    .line 803
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->registerEndpointDiscoveryCallback(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    return-void
.end method

.method public final resetSettings()V
    .registers 3

    .line 694
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 696
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    const/4 v0, 0x1

    .line 697
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendWifiSettingUpdate(Z)V

    .line 698
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendAirplaneModeSettingUpdate()V

    .line 699
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 700
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubService;->sendBtSettingUpdate(Z)V

    return-void
.end method

.method public final scheduleDailyMetricSnapshot()V
    .registers 5

    .line 1822
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 1829
    :try_start_5
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDailyMetricTimer:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 1832
    const-string v0, "ContextHubService"

    const-string v1, "Error when schedule a timer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendAirplaneModeSettingUpdate()V
    .registers 4

    .line 1789
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    .line 1790
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    .line 1793
    :cond_11
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onAirplaneModeSettingChanged(Z)V

    return-void
.end method

.method public final sendBtSettingUpdate(Z)V
    .registers 7

    .line 1755
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1758
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 1759
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-nez p1, :cond_14

    .line 1760
    iget-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eq v2, v0, :cond_1b

    .line 1761
    :cond_14
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 1762
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v2, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    :cond_1b
    if-nez p1, :cond_21

    .line 1764
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    if-eq p1, v1, :cond_66

    .line 1765
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 1766
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    return-void

    .line 1769
    :cond_29
    const-string v0, "ContextHubService"

    const-string v1, "BT adapter not available. Getting permissions from user settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    move v0, v1

    goto :goto_43

    :cond_42
    move v0, v2

    .line 1772
    :goto_43
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_52

    move v2, v1

    :cond_52
    if-nez p1, :cond_58

    .line 1774
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    if-eq v1, v0, :cond_5f

    .line 1775
    :cond_58
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtMainEnabled:Z

    .line 1776
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtMainSettingChanged(Z)V

    :cond_5f
    if-nez p1, :cond_67

    .line 1778
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    if-eq p1, v2, :cond_66

    goto :goto_67

    :cond_66
    return-void

    .line 1779
    :cond_67
    :goto_67
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsBtScanningEnabled:Z

    .line 1780
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onBtScanningSettingChanged(Z)V

    return-void
.end method

.method public final sendLocationSettingUpdate()V
    .registers 3

    .line 1716
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1717
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1718
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onLocationSettingChanged(Z)V

    return-void
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .registers 9

    .line 1021
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage_enforcePermission()V

    .line 1023
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 1026
    :cond_9
    const-string v0, "ContextHubService"

    if-nez p3, :cond_13

    .line 1027
    const-string p0, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1030
    :cond_13
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1f

    .line 1031
    const-string p0, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1034
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->isValidContextHubId(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1035
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid Context Hub handle "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in sendMessage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    const/4 v2, 0x0

    if-ne p2, v1, :cond_67

    .line 1041
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p2

    const/4 v3, 0x5

    if-ne p2, v3, :cond_4e

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    move-result p0

    goto :goto_ab

    .line 1044
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid OS message params of type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 1047
    :cond_67
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 1050
    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object p3

    .line 1049
    invoke-static {v3, v4, p2, p3}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object p2

    .line 1052
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/location/IContextHubClient;

    .line 1053
    invoke-interface {p0, p2}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result p0

    if-nez p0, :cond_aa

    const/4 p0, 0x1

    goto :goto_ab

    .line 1056
    :cond_91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send nanoapp message - nanoapp with handle "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    move p0, v2

    :goto_ab
    if-eqz p0, :cond_ae

    return v2

    :cond_ae
    return v1
.end method

.method public final sendMessageDeliveryStatusToContextHub(IIB)V
    .registers 5

    .line 1166
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 1167
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 1168
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 1169
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I

    move-result p0

    if-eqz p0, :cond_2f

    .line 1171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send the reliable message status for message sequence number: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with error code: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public final sendMicrophoneDisableSettingUpdate(Z)V
    .registers 4

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mic Disabled Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onMicrophoneSettingChanged(Z)V

    return-void
.end method

.method public final sendMicrophoneDisableSettingUpdateForCurrentUser()V
    .registers 4

    .line 1812
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    if-eqz v0, :cond_10

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x1

    .line 1813
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 1815
    :goto_11
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdate(Z)V

    return-void
.end method

.method public final sendWifiSettingUpdate(Z)V
    .registers 7

    .line 1728
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mSendWifiSettingUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1730
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 1731
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v2, :cond_1c

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v3, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v3, 0x1

    :goto_1d
    if-nez p1, :cond_26

    .line 1733
    iget-boolean v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    if-eq v4, v3, :cond_2d

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_49

    .line 1734
    :cond_26
    :goto_26
    iput-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiAvailable:Z

    .line 1735
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v4, v3}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiSettingChanged(Z)V

    :cond_2d
    if-nez p1, :cond_33

    .line 1737
    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    if-eq v3, v1, :cond_3a

    .line 1738
    :cond_33
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiScanningEnabled:Z

    .line 1739
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiScanningSettingChanged(Z)V

    :cond_3a
    if-nez p1, :cond_40

    .line 1741
    iget-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    if-eq p1, v2, :cond_47

    .line 1742
    :cond_40
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsWifiMainEnabled:Z

    .line 1743
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onWifiMainSettingChanged(Z)V

    .line 1745
    :cond_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_24

    throw p0
.end method

.method public setTestMode(Z)Z
    .registers 4

    .line 1519
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->setTestMode_enforcePermission()V

    .line 1520
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->setTestMode(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1522
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1526
    :cond_10
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1527
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubService;->queryNanoAppsInternal(I)Z

    goto :goto_1a

    :cond_2e
    return v0
.end method

.method public unloadNanoApp(I)I
    .registers 10

    .line 938
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp_enforcePermission()V

    .line 940
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 944
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 945
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 947
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid nanoapp handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in unloadNanoApp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 951
    :cond_2d
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v3

    .line 952
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v4

    .line 954
    invoke-virtual {p0, v3}, Lcom/android/server/location/contexthub/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v6

    .line 955
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 956
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v7

    .line 955
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 958
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    const/4 p0, 0x0

    return p0
.end method

.method public unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 12

    .line 1402
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub_enforcePermission()V

    const/4 v0, 0x1

    .line 1404
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1409
    :cond_b
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 1410
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v6

    move v2, p1

    move-object v5, p2

    move-wide v3, p3

    .line 1409
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1

    .line 1411
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .registers 2

    .line 820
    invoke-super {p0}, Landroid/hardware/location/IContextHubService$Stub;->unregisterEndpointDiscoveryCallback_enforcePermission()V

    .line 821
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->checkEndpointDiscoveryPreconditions()V

    .line 822
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    return-void
.end method
