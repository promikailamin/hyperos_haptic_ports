.class public Lcom/android/server/location/contexthub/ContextHubEndpointManager;
.super Ljava/lang/Object;
.source "ContextHubEndpointManager.java"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mEndpointLock:Ljava/lang/Object;

.field public final mEndpointMap:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mHalRestartLock:Ljava/lang/Object;

.field public final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field public mIsRegistered:Z

.field public mMaxSessionId:I

.field public mMinSessionId:I

.field public mNextEndpointId:J

.field public mNextSessionId:I

.field public final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

.field public final mReservedSessionIds:Ljava/util/Set;

.field public final mSessionIdLock:Ljava/lang/Object;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method public static synthetic $r8$lambda$OWRa1Jn5HYJRDs5lF1mTT5O2FIg(IIBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 4

    .line 495
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageDeliveryStatusReceived(IIB)V

    return-void
.end method

.method public static synthetic $r8$lambda$YzNH-jeYrQeazVxITaZzjFNUp8U(IBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 3

    .line 457
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJGOhns4Ixacuy38h8vf778rRUE(Lcom/android/server/location/contexthub/ContextHubEndpointManager;ILjava/lang/Byte;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onEndpointSessionOpenRequest$0(ILjava/lang/Byte;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzVmXdCoL_V7elGjwTC8L0QiIMY(ILcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 2

    .line 467
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenComplete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkdvg5qEIF2gVUNpPPsZavfkKmc(ILandroid/hardware/contexthub/HubMessage;Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 3

    .line 477
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .registers 11

    .line 184
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 8

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    const-wide/16 v0, -0x2

    .line 91
    iput-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    .line 98
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHalRestartLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 115
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mIsRegistered:Z

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 127
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 172
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 174
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 175
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 176
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final getNewEndpointId()J
    .registers 6

    .line 581
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_15

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    .line 585
    iput-wide v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    monitor-exit v0

    return-wide v1

    :catchall_13
    move-exception p0

    goto :goto_1d

    .line 583
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many endpoints connected"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 586
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_13

    throw p0
.end method

.method public getNumAvailableSessions()I
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    sub-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_13
    move-exception p0

    .line 615
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getNumRegisteredClients()I
    .registers 1

    .line 620
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public halCloseEndpointSession(IB)V
    .registers 3

    .line 511
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IEndpointCommunication;->closeEndpointSession(IB)V

    return-void
.end method

.method public halCloseEndpointSessionNoThrow(IB)V
    .registers 3

    .line 520
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSession(IB)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 522
    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Exception while calling HAL closeEndpointSession"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public init()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHalRestartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->initLocked()V

    .line 206
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final initLocked()V
    .registers 6

    .line 212
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mIsRegistered:Z

    if-nez v0, :cond_da

    .line 216
    :try_start_4
    new-instance v0, Landroid/hardware/contexthub/HubInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubInfo;-><init>()V

    const-wide v1, 0x416e64726f696400L    # 1.5934355481615067E7

    .line 217
    iput-wide v1, v0, Landroid/hardware/contexthub/HubInfo;->hubId:J

    .line 219
    new-instance v1, Landroid/hardware/contexthub/ContextHubInfo;

    invoke-direct {v1}, Landroid/hardware/contexthub/ContextHubInfo;-><init>()V

    .line 220
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    .line 221
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    .line 222
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    const/4 v2, 0x0

    .line 223
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    .line 224
    invoke-static {v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->contextHubInfo(Landroid/hardware/contexthub/ContextHubInfo;)Landroid/hardware/contexthub/HubInfo$HubDetails;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 225
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-direct {v3, v4, p0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;)V

    .line 226
    invoke-virtual {v1, v3, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_3b} :catch_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_3b} :catch_cc
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_3b} :catch_cc

    if-eqz v0, :cond_c4

    const/16 v1, 0x400

    .line 239
    :try_start_3f
    invoke-interface {v0, v1}, Landroid/hardware/contexthub/IEndpointCommunication;->requestSessionIdRange(I)[I

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 240
    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_4a

    goto :goto_6c

    .line 241
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID range: range array size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 244
    new-instance v1, Ljava/lang/InstantiationException;

    invoke-direct {v1, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_6a} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_6a} :catch_6a
    .catch Landroid/os/ServiceSpecificException; {:try_start_3f .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception v0

    goto :goto_b4

    .line 253
    :cond_6c
    :goto_6c
    aget v1, v0, v2

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    const/4 v2, 0x1

    .line 254
    aget v0, v0, v2

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    .line 255
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->isSessionIdRangeValid(II)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 263
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_7e
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 265
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_86

    .line 266
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mIsRegistered:Z

    return-void

    :catchall_86
    move-exception p0

    .line 265
    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p0

    .line 256
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid session ID range: max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 260
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :goto_b4
    const-string v1, "Exception while calling HAL requestSessionIdRange"

    .line 248
    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 250
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_c4
    :try_start_c4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received null IEndpointCommunication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_cc} :catch_cc
    .catch Ljava/lang/IllegalStateException; {:try_start_c4 .. :try_end_cc} :catch_cc
    .catch Landroid/os/ServiceSpecificException; {:try_start_c4 .. :try_end_cc} :catch_cc

    :catch_cc
    move-exception p0

    .line 232
    const-string v0, "Failed to register ContextHubService as message hub"

    .line 233
    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_da
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z
    .registers 5

    .line 555
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 556
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 558
    :try_start_1c
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    .line 560
    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Exception while invoking callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final isSessionIdAllocatedForService(I)Z
    .registers 3

    .line 361
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt p1, v0, :cond_b

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    if-ge p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final isSessionIdRangeValid(II)Z
    .registers 3

    .line 0
    if-gt p1, p2, :cond_8

    if-ltz p1, :cond_8

    if-ltz p2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onEndpointSessionOpenRequest$0(ILjava/lang/Byte;)V
    .registers 3

    .line 450
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    return-void
.end method

.method public onCloseEndpointSession(IB)V
    .registers 4

    .line 455
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;-><init>(IB)V

    .line 456
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCloseEndpointSession: unknown session ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .registers 3

    .line 465
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEndpointSessionOpenComplete: unknown session ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)V
    .registers 5

    .line 448
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->onEndpointSessionOpenRequestInternal(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p2

    .line 450
    new-instance p3, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onEndpointSessionOpenRequestInternal(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)Ljava/util/Optional;
    .registers 10

    const/4 v0, 0x5

    .line 412
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 407
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v1

    const-wide v3, 0x416e64726f696400L    # 1.5934355481615067E7

    cmp-long v1, v1, v3

    const-string v2, "ContextHubEndpointManager"

    if-eqz v1, :cond_32

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEndpointSessionOpenRequest: invalid destination hub ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 408
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 414
    :cond_32
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    if-nez v1, :cond_62

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEndpointSessionOpenRequest: unknown destination endpoint ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 422
    :cond_62
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p2, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->getEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object p2

    if-nez p2, :cond_88

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEndpointSessionOpenRequest: unknown initiator endpoint ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 430
    :cond_88
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->isSessionIdAllocatedForService(I)Z

    move-result p0

    if-nez p0, :cond_ad

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEndpointSessionOpenRequest: invalid session ID, rejected: sessionId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 436
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 438
    :cond_ad
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public onHalRestart()V
    .registers 6

    .line 380
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHalRestartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    const-string v1, "ContextHubEndpointManager"

    const-string/jumbo v2, "onHalRestart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 382
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mIsRegistered:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    .line 384
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->initLocked()V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_11} :catch_14
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_11} :catch_14
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_11} :catch_14
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_2f

    :catchall_12
    move-exception p0

    goto :goto_55

    :catch_14
    move-exception v1

    .line 388
    :try_start_15
    const-string v2, "ContextHubEndpointManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to re-register ContextHubService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_2f
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 392
    iget-boolean v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mIsRegistered:Z

    if-eqz v3, :cond_4f

    .line 394
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-virtual {v2, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onHalRestart(Landroid/hardware/contexthub/IEndpointCommunication;)V

    goto :goto_39

    .line 396
    :cond_4f
    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    goto :goto_39

    .line 399
    :cond_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_12

    throw p0
.end method

.method public onMessageDeliveryStatusReceived(IIB)V
    .registers 5

    .line 491
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;-><init>(IIB)V

    .line 492
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_22

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onMessageDeliveryStatusReceived: unknown session ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .registers 5

    .line 475
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    .line 476
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessageReceived: unknown session ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 483
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p2

    const/4 v0, 0x4

    .line 481
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->sendMessageDeliveryStatus(IIB)V

    :cond_30
    return-void
.end method

.method public registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .registers 19

    .line 284
    iget-object v11, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHalRestartLock:Ljava/lang/Object;

    monitor-enter v11

    .line 285
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mIsRegistered:Z

    if-eqz v0, :cond_72

    .line 289
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->getNewEndpointId()J

    move-result-wide v12

    const-wide v0, 0x416e64726f696400L    # 1.5934355481615067E7

    .line 291
    invoke-static {p1, v12, v13, v0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v5

    .line 293
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v9, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v10, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 304
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->register()V

    .line 305
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_62

    .line 308
    :try_start_34
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->attachDeathRecipient()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_64
    .catchall {:try_start_34 .. :try_end_37} :catchall_62

    .line 316
    :try_start_37
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    .line 317
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v5}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v0, "ContextHubEndpointManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered endpoint with ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {v1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    monitor-exit v11

    return-object v0

    :catchall_62
    move-exception v0

    goto :goto_7a

    :catch_64
    move-exception v0

    .line 311
    const-string v2, "ContextHubEndpointManager"

    const-string v3, "Failed to attach death recipient to client"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    .line 313
    monitor-exit v11

    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContextHubEndpointManager failed to initialize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :goto_7a
    monitor-exit v11
    :try_end_7b
    .catchall {:try_start_37 .. :try_end_7b} :catchall_62

    throw v0
.end method

.method public reserveSessionId()I
    .registers 6

    .line 331
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 333
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v2, v1, :cond_4b

    .line 337
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 338
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    :goto_16
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt v2, v3, :cond_40

    .line 339
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 340
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-ne v1, v2, :cond_2f

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    goto :goto_31

    :catchall_2d
    move-exception p0

    goto :goto_53

    :cond_2f
    add-int/lit8 v2, v1, 0x1

    :goto_31
    iput v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    goto :goto_40

    .line 344
    :cond_34
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-ne v1, v3, :cond_3b

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    goto :goto_3d

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 347
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    monitor-exit v0

    return v1

    .line 334
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many sessions reserved"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_2d

    throw p0
.end method

.method public returnSessionId(I)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 356
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final sendMessageDeliveryStatus(IIB)V
    .registers 5

    .line 598
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 599
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 600
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 602
    :try_start_9
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 604
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while sending message delivery status on session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubEndpointManager"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    goto :goto_11

    .line 536
    :cond_3d
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "Registration History:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 540
    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 541
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 544
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterEndpoint(J)V
    .registers 5

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering endpoint with ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    if-eqz p1, :cond_33

    .line 373
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    .line 374
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V

    .line 373
    invoke-virtual {p2, v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method public final unregisterHub()V
    .registers 3

    .line 571
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0}, Landroid/hardware/contexthub/IEndpointCommunication;->unregister()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 573
    const-string v0, "ContextHubEndpointManager"

    const-string v1, "Failed to unregister from HAL on init failure"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
