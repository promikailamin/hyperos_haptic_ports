.class public Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
.super Landroid/hardware/contexthub/IContextHubEndpoint$Stub;
.source "ContextHubEndpointBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# static fields
.field static final OPEN_SESSION_REQUEST_TIMEOUT_SECONDS:J = 0xaL


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttributionTag:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field public final mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field public final mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

.field public mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field public mIsRegistered:Z

.field public final mOpenSessionLock:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mRegistrationLock:Ljava/lang/Object;

.field public final mSessionMap:Landroid/util/SparseArray;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUid:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$0gBVO1ZU0Ino--h-2pDw-GTQRvk(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Ljava/lang/Exception;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$openSession$0(Ljava/lang/Exception;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Cyfh_opPOtboqpqp_Zp2LlXM5k(IBLandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .registers 3

    .line 607
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result p1

    .line 606
    invoke-interface {p2, p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionClosed(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$2k4CTsmkf-6yPJ1ytm8gqw5Jalk(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$releaseWakeLock$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$8OKw21a82GVMtonVbwvTb8HhrZQ(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onEndpointSessionOpenRequest$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NsS0-hMxPEi2jfauChoBahOGZNc(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onMessageReceivedInternal$5(Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RrLuYZbJe5RdBeSgBAnxnRnTB7I(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$acquireWakeLock$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vj1CX2L4TSF7F2Ni-qHhjV3v0ZM(ILandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .registers 2

    .line 619
    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenComplete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcTKWmcN1THnQae382yqAqvy0o0(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$cleanupSessionResources$7(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oDYgZVQat4syToJdI2i-FFwJGrg(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .registers 4

    .line 740
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rfbZxhHKvrzlxVirlUWcIokl2L0(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .registers 3

    .line 798
    invoke-interface {p2, p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u8T0KIKnLVjsfgMfVg3s4ifivIU(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$releaseWakeLockOnExit$10()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySessionClosedToBoth(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;IB)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 11

    .line 271
    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    .line 272
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    .line 273
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 274
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 275
    new-instance p2, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-direct {p2, p4}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 276
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    .line 277
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    .line 278
    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    .line 279
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAttributionTag:Ljava/lang/String;

    .line 280
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 281
    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    .line 286
    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 p4, -0x1

    .line 287
    invoke-virtual {p3, p4, p6, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 289
    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 290
    const-string p3, "ContextHubEndpointBroker"

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p2, p6}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 292
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final acquireWakeLock()V
    .registers 2

    .line 850
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public attachDeathRecipient()V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 514
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 515
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    :cond_9
    return-void
.end method

.method public final cleanupSessionResources(I)Z
    .registers 5

    .line 813
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v1, :cond_28

    .line 816
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isRemoteInitiated()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 817
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->returnSessionId(I)V

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_2f

    .line 819
    :cond_1b
    :goto_1b
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->forEachPendingReliableMessage(Ljava/util/function/Consumer;)V

    .line 824
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_28
    if-eqz v1, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    .line 826
    :goto_2d
    monitor-exit v0

    return p0

    .line 827
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_19

    throw p0
.end method

.method public closeSession(II)V
    .registers 5

    .line 348
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->closeSession_enforcePermission()V

    .line 349
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSession: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 356
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHalReason(I)B

    move-result p2

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSession(IB)V

    return-void

    .line 351
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown session ID in closeSession: id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Endpoint is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method public final getHubInterface()Landroid/hardware/contexthub/IEndpointCommunication;
    .registers 2

    .line 942
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 944
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .registers 4

    .line 845
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object p1

    .line 846
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public hasSessionId(I)Z
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 658
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z
    .registers 4

    .line 892
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->acquireWakeLock()V

    .line 894
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    move-exception p1

    .line 896
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "RemoteException while calling endpoint callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    const/4 p0, 0x0

    return p0
.end method

.method public final isRegistered()Z
    .registers 2

    .line 904
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 905
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 906
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isSessionActive(I)Z
    .registers 4

    .line 835
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v0

    return p0

    .line 837
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public final synthetic lambda$acquireWakeLock$8()V
    .registers 3

    .line 852
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 853
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_d
    return-void
.end method

.method public final synthetic lambda$cleanupSessionResources$7(Ljava/lang/Integer;)V
    .registers 3

    .line 821
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 822
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 821
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    return-void
.end method

.method public final synthetic lambda$onEndpointSessionOpenRequest$3(I)V
    .registers 2

    .line 721
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenRequestTimeout(I)V

    return-void
.end method

.method public final synthetic lambda$onMessageReceivedInternal$5(Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 5

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notePermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 784
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have permission"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic lambda$openSession$0(Ljava/lang/Exception;I)V
    .registers 3

    .line 334
    instance-of p1, p1, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 337
    :goto_8
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method

.method public final synthetic lambda$releaseWakeLock$9()V
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 863
    :try_start_8
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 865
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "Releasing the wakelock fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public final synthetic lambda$releaseWakeLockOnExit$10()V
    .registers 3

    .line 874
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 876
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_0

    :catch_e
    move-exception p0

    .line 878
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "Releasing the wakelock for all acquisitions fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    return-void
.end method

.method public final notePermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .registers 9

    .line 916
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAttributionTag:Ljava/lang/String;

    .line 921
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContextHubEndpointMessageDelivery-0x"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-0x"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 916
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final notifySessionClosedToBoth(IB)V
    .registers 5

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySessionClosedToBoth: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 938
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method

.method public onCallbackFinished()V
    .registers 1

    .line 507
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->onCallbackFinished_enforcePermission()V

    .line 508
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    return-void
.end method

.method public onCloseEndpointSession(IB)V
    .registers 4

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 600
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown session ID in onCloseEndpointSession: id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 604
    :cond_1d
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;-><init>(IB)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 613
    const-string p0, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown session ID in onEndpointSessionOpenComplete: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_3a

    .line 616
    :cond_23
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    sget-object v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V

    .line 617
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_21

    .line 619
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    return-void

    .line 617
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_21

    throw p0
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/Optional;
    .registers 12

    .line 688
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 689
    const-string p3, "ContextHubEndpointBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEndpointSessionOpenRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t have permission for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x9

    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    .line 697
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 701
    :cond_35
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_38
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6e

    .line 707
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v1

    .line 708
    const-string v4, "ContextHubEndpointBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEndpointSessionOpenRequest: Existing session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isActive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :catchall_6c
    move-exception p0

    goto :goto_b8

    .line 718
    :cond_6e
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-direct {v1, p2, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    .line 719
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    .line 720
    invoke-interface {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 719
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionOpenTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V

    .line 724
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v3

    move v2, v1

    :goto_8c
    if-eqz v2, :cond_99

    if-eqz v1, :cond_93

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->openSessionRequestComplete(I)V

    .line 733
    :cond_93
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 735
    :cond_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_38 .. :try_end_9a} :catchall_6c

    .line 737
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda7;-><init>(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    move-result p2

    if-nez p2, :cond_a8

    .line 744
    invoke-virtual {p0, p1, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    :cond_a8
    if-eqz p2, :cond_af

    .line 746
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_af
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 735
    :goto_b8
    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_6c

    throw p0
.end method

.method public final onEndpointSessionOpenRequestTimeout(I)V
    .registers 6

    .line 750
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v1, :cond_38

    .line 752
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_38

    .line 755
    :cond_14
    const-string v1, "ContextHubEndpointBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEndpointSessionOpenRequestTimeout: clean up session, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    .line 759
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 760
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    goto :goto_3a

    .line 753
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    .line 760
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_36

    throw p0
.end method

.method public onHalRestart(Landroid/hardware/contexthub/IEndpointCommunication;)V
    .registers 5

    .line 667
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 669
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    .line 670
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 672
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->registerLocked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_12
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception p0

    goto :goto_3c

    :catch_12
    move-exception p1

    .line 674
    :try_start_13
    const-string v1, "ContextHubEndpointBroker"

    const-string v2, "RemoteException while calling HAL registerEndpoint"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    :cond_1a
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_10

    .line 678
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 679
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_38

    .line 680
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/16 v2, 0x8

    .line 681
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :catchall_36
    move-exception p0

    goto :goto_3a

    .line 683
    :cond_38
    monitor-exit p1

    return-void

    :goto_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_36

    throw p0

    .line 677
    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_10

    throw p0
.end method

.method public onMessageDeliveryStatusReceived(IIB)V
    .registers 7

    .line 640
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v1, :cond_43

    .line 642
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_43

    .line 646
    :cond_14
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isReliableMessagePending(I)Z

    move-result p1

    if-nez p1, :cond_34

    .line 647
    const-string p0, "ContextHubEndpointBroker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received delivery status for unknown seq: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    goto :goto_5b

    .line 650
    :cond_34
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setReliableMessageCompleted(I)V

    .line 651
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_32

    .line 652
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    if-nez p3, :cond_3e

    const/4 p1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    return-void

    .line 643
    :cond_43
    :goto_43
    :try_start_43
    const-string p0, "ContextHubEndpointBroker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received delivery status for invalid session: id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    monitor-exit v0

    return-void

    .line 651
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_32

    throw p0
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .registers 6

    .line 623
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageReceivedInternal(ILandroid/hardware/contexthub/HubMessage;)B

    move-result v0

    if-eqz v0, :cond_39

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send message to endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", closing session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 627
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->sendMessageDeliveryStatus(IIB)V

    return-void

    :cond_2f
    const/4 p2, 0x3

    if-ne v0, p2, :cond_35

    const/16 p2, 0x9

    goto :goto_36

    :cond_35
    const/4 p2, 0x0

    .line 629
    :goto_36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    :cond_39
    return-void
.end method

.method public final onMessageReceivedInternal(ILandroid/hardware/contexthub/HubMessage;)B
    .registers 7

    .line 764
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isSessionActive(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 766
    const-string p0, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping message for inactive session (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 772
    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_8e

    .line 774
    :cond_2c
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    .line 775
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v2, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isInReliableMessageHistory(Landroid/hardware/contexthub/HubMessage;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5f

    .line 776
    const-string p0, "ContextHubEndpointBroker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping duplicate message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_2a

    return v3

    .line 781
    :cond_5f
    :try_start_5f
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_67} :catch_81
    .catchall {:try_start_5f .. :try_end_67} :catchall_2a

    .line 797
    :try_start_67
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    .line 798
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 800
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->addReliableMessageToHistory(Landroid/hardware/contexthub/HubMessage;)V

    :cond_7d
    xor-int/lit8 p0, v1, 0x1

    .line 802
    monitor-exit v0

    return p0

    :catch_81
    move-exception p0

    .line 793
    const-string p1, "ContextHubEndpointBroker"

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    monitor-exit v0

    const/4 p0, 0x3

    return p0

    .line 803
    :goto_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_67 .. :try_end_8f} :catchall_2a

    throw p0
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 521
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 522
    const-string p1, "ContextHubEndpointBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOpChanged called with invalid package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 529
    :cond_2a
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 531
    :try_start_2d
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_35
    if-ltz p2, :cond_5a

    .line 532
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    .line 534
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v1

    if-nez v1, :cond_57

    const/16 v1, 0x9

    .line 535
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_5c

    :cond_57
    :goto_57
    add-int/lit8 p2, p2, -0x1

    goto :goto_35

    .line 538
    :cond_5a
    monitor-exit p1

    return-void

    :goto_5c
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_2d .. :try_end_5d} :catchall_55

    throw p0
.end method

.method public openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I
    .registers 9

    .line 304
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSession_enforcePermission()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 311
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->reserveSessionId()I

    move-result v0

    .line 312
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->convertHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v1

    .line 313
    const-string v2, "ContextHubEndpointBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openSession: sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    :try_start_33
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->getHubInterface()Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object p1

    iget-object v1, v1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    iget-object v3, v3, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    .line 319
    invoke-interface {p1, v0, v1, v3, p2}, Landroid/hardware/contexthub/IEndpointCommunication;->openEndpointSession(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4b} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_4b} :catch_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_33 .. :try_end_4b} :catch_4e
    .catchall {:try_start_33 .. :try_end_4b} :catchall_4c

    goto :goto_7b

    :catchall_4c
    move-exception p0

    goto :goto_7d

    :catch_4e
    move-exception p1

    .line 325
    :try_start_4f
    const-string p2, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on HAL openEndpointSession (id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), closing session: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Ljava/lang/Exception;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 341
    :goto_7b
    monitor-exit v2

    return v0

    .line 342
    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_4f .. :try_end_7e} :catchall_4c

    throw p0

    .line 307
    :cond_7f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Insufficient permission to open a session with endpoint: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 305
    :cond_96
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Endpoint is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openSessionRequestComplete(I)V
    .registers 5

    .line 390
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSessionRequestComplete_enforcePermission()V

    .line 391
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_20

    if-eqz v1, :cond_2c

    .line 398
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->getHubInterface()Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IEndpointCommunication;->endpointSessionOpenComplete(I)V

    .line 399
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->cancelSessionOpenTimeoutFuture()V

    .line 400
    sget-object p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v1, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1f} :catch_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_1f} :catch_22
    .catchall {:try_start_10 .. :try_end_1f} :catchall_20

    goto :goto_2a

    :catchall_20
    move-exception p0

    goto :goto_44

    :catch_22
    move-exception p0

    .line 402
    :try_start_23
    const-string p1, "ContextHubEndpointBroker"

    const-string v1, "Exception while calling endpointSessionOpenComplete"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    :goto_2a
    monitor-exit v0

    return-void

    .line 394
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openSessionRequestComplete for invalid session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 404
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_20

    throw p0
.end method

.method public register()V
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->registerLocked()V

    .line 580
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final registerLocked()V
    .registers 3

    .line 585
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    if-eqz v0, :cond_c

    .line 586
    const-string p0, "ContextHubEndpointBroker"

    const-string v0, "Attempting to register when already registered"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 588
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    invoke-interface {v0, v1}, Landroid/hardware/contexthub/IEndpointCommunication;->registerEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    return-void
.end method

.method public final releaseWakeLock()V
    .registers 2

    .line 859
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final releaseWakeLockOnExit()V
    .registers 2

    .line 872
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 13

    .line 411
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessage_enforcePermission()V

    .line 412
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_6
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v0, :cond_b9

    .line 418
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 423
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/contexthub/Message;

    move-result-object v6
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    if-nez p3, :cond_59

    .line 426
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->getHubInterface()Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object p2

    invoke-interface {p2, p1, v6}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_29
    .catchall {:try_start_1c .. :try_end_23} :catchall_25

    goto/16 :goto_99

    :catchall_25
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d2

    :catch_29
    move-exception v0

    move-object p2, v0

    .line 429
    :try_start_2b
    instance-of p3, p2, Landroid/os/DeadObjectException;

    if-eqz p3, :cond_32

    const/16 p3, 0x8

    goto :goto_33

    :cond_32
    const/4 p3, 0x0

    .line 432
    :goto_33
    const-string v0, "ContextHubEndpointBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while sending message on session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", closing session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 432
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    goto :goto_99

    .line 441
    :cond_59
    new-instance v8, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;

    invoke-direct {v8, p0, p3, p2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/contexthub/HubMessage;I)V

    .line 462
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 464
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->getHubInterface()Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    move v5, p1

    .line 463
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_2b .. :try_end_6b} :catchall_25

    .line 470
    :try_start_6b
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 471
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setReliableMessagePending(I)V
    :try_end_77
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_77} :catch_78
    .catchall {:try_start_6b .. :try_end_77} :catchall_25

    goto :goto_99

    :catch_78
    move-exception v0

    move-object p0, v0

    .line 473
    :try_start_7a
    const-string p2, "ContextHubEndpointBroker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add a transaction in sendMessageToEndpoint (session ID = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 480
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 484
    :goto_99
    monitor-exit v1

    return-void

    :cond_9b
    move v5, p1

    .line 419
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendMessage called on inactive session (id= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    move v5, p1

    .line 415
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendMessage for invalid session id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :goto_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_7a .. :try_end_d3} :catchall_25

    throw p0
.end method

.method public sendMessageDeliveryStatus(IIB)V
    .registers 5

    .line 490
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessageDeliveryStatus_enforcePermission()V

    .line 491
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 492
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 493
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 495
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->getHubInterface()Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 497
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while sending message delivery status on session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubEndpointBroker"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 548
    :try_start_22
    const-string/jumbo v2, "wakelock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_a0

    .line 550
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 551
    :try_start_31
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 552
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, " sessions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :catchall_4d
    move-exception p0

    goto :goto_9e

    :cond_4f
    :goto_4f
    const/4 v1, 0x0

    .line 556
    :goto_50
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_98

    .line 557
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remote:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    .line 565
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 568
    :cond_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_31 .. :try_end_99} :catchall_4d

    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 568
    :goto_9e
    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_4d

    throw p0

    :catchall_a0
    move-exception p0

    .line 549
    :try_start_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public unregister()V
    .registers 6

    .line 362
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->unregister_enforcePermission()V

    .line 363
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_24

    .line 366
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 367
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v2, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 368
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :catchall_22
    move-exception p0

    goto :goto_60

    .line 370
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_22

    .line 371
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_28
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    if-nez v0, :cond_37

    .line 373
    const-string p0, "ContextHubEndpointBroker"

    const-string v0, "Attempting to unregister when already unregistered"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v1

    return-void

    :catchall_35
    move-exception p0

    goto :goto_5e

    :cond_37
    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_35

    .line 378
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    invoke-interface {v0, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->unregisterEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42
    .catchall {:try_start_3a .. :try_end_41} :catchall_35

    goto :goto_4a

    :catch_42
    move-exception v0

    .line 380
    :try_start_43
    const-string v2, "ContextHubEndpointBroker"

    const-string v3, "RemoteException while calling HAL unregisterEndpoint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    :goto_4a
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterEndpoint(J)V

    .line 383
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_35

    .line 384
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLockOnExit()V

    return-void

    .line 383
    :goto_5e
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_35

    throw p0

    .line 370
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_22

    throw p0
.end method
