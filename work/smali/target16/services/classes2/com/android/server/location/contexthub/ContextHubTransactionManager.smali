.class public Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# static fields
.field public static final RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

.field public static final RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field public final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mReliableMessageLock:Ljava/lang/Object;

.field public final mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

.field public mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mReliableMessageTransactionMap:Ljava/util/Map;

.field public mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mTransactionLock:Ljava/lang/Object;

.field public final mTransactionQueue:Ljava/util/ArrayDeque;

.field public final mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

.field public final mTransactionRecordLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$-_A7-jtJBtX07WeEVw72q-7mQ3A(ILcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .registers 4

    .line 591
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v0

    if-eq v0, p0, :cond_2a

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected transaction: expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", received "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 592
    const-string p1, "ContextHubTransactionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$6fLeYs3DT1OB8-kFOtAJMFQG3HM(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$processMessageTransactions$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$T_Zkcv-k5bEjE3ey9swzRft6ykg(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$startNextTransaction$6(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCtIJd9AwzrlEFOMQPzWpR6W608(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z
    .registers 2

    .line 710
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$tjjTCHBW_xG1agdQ2-hBcJtOquw(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$addTransaction$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wnSFTZC-Cn5wbUL1uekoJmeZFPI(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->lambda$onMessageDeliveryResponse$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->toStatsTransactionResult(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v0, 0x1

    .line 62
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v1, 0x3

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v0, 0xfa

    .line 71
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    const-wide/16 v0, 0x3e8

    .line 73
    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .registers 7

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x3fffffff    # 1.9999999f

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 110
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 117
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    .line 159
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 160
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 161
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-void
.end method


# virtual methods
.method public addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 535
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_8a

    .line 538
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_20

    move v0, v3

    goto :goto_21

    :cond_20
    move v0, v2

    .line 540
    :goto_21
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_29

    move v2, v3

    :cond_29
    const/16 v1, 0x2710

    if-nez v0, :cond_5a

    if-eqz v2, :cond_30

    goto :goto_5a

    .line 558
    :cond_30
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_33
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-ge v2, v1, :cond_50

    .line 564
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    if-ne p1, v3, :cond_4e

    .line 566
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    goto :goto_4e

    :catchall_4c
    move-exception p0

    goto :goto_58

    .line 568
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    .line 560
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Transaction queue is full (capacity = 10000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 568
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_4c

    throw p0

    .line 543
    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 544
    :try_start_5d
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v1, :cond_80

    .line 551
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 552
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 551
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_7e

    .line 554
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_7e
    move-exception p0

    goto :goto_88

    .line 545
    :cond_80
    :try_start_80
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reliable message transaction queue is full (capacity = 10000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 553
    :goto_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_7e

    throw p0

    :catchall_8a
    move-exception p0

    .line 535
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public final cancelTimeoutFuture()V
    .registers 3

    .line 818
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 819
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 820
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method public final completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V
    .registers 4

    .line 973
    invoke-virtual {p1, p2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 974
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 982
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully completed reliable message transaction with message sequence number = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 982
    const-string p1, "ContextHubTransactionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 15

    .line 356
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x3

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 15

    .line 313
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 314
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x2

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 15

    .line 177
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    move-object v1, p0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createMessageTransaction(SILandroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 17

    .line 402
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 403
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 406
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const/4 v3, 0x5

    move v8, p1

    move-object v1, p0

    move v6, p1

    move v9, p2

    move-object v7, p3

    move-object v10, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 11

    .line 487
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 488
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x4

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 17

    .line 447
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 448
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableMessageSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 451
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const/4 v3, 0x7

    move v9, p2

    move-object v1, p0

    move-object v8, p1

    move v6, p2

    move-object v7, p3

    move-object v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/contexthub/Message;Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 17

    .line 249
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 250
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    move-wide v8, p2

    move-object v1, p0

    move v7, p1

    move-wide v4, p2

    move-object v10, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    return-object v0
.end method

.method public final getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 4

    .line 771
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-eqz v1, :cond_2d

    if-eqz p1, :cond_18

    .line 774
    invoke-interface {p1, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;->acceptTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_2d

    :catchall_16
    move-exception p0

    goto :goto_30

    .line 778
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->cancelTimeoutFuture()V

    .line 779
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 780
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 781
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    .line 783
    :cond_2b
    monitor-exit v0

    return-object v1

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    .line 775
    monitor-exit v0

    return-object p0

    .line 783
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_16

    throw p0
.end method

.method public final synthetic lambda$addTransaction$0()V
    .registers 1

    .line 554
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method public final synthetic lambda$onMessageDeliveryResponse$3()V
    .registers 1

    .line 696
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method public final synthetic lambda$processMessageTransactions$7()V
    .registers 1

    .line 954
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->processMessageTransactions()V

    return-void
.end method

.method public final synthetic lambda$startNextTransaction$6(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 6

    .line 844
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->isComplete()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 846
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " timed out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    .line 847
    invoke-virtual {p1, v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 849
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 850
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_2e

    .line 852
    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2a

    throw p0
.end method

.method public numReliableMessageTransactionPending()I
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 576
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onHubReset()V
    .registers 5

    .line 742
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 744
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 745
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 747
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    const/4 v3, 0x5

    .line 746
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    goto :goto_d

    :catchall_24
    move-exception p0

    goto :goto_3f

    .line 749
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_24

    .line 751
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v0, :cond_38

    .line 754
    monitor-exit v1

    return-void

    :catchall_36
    move-exception p0

    goto :goto_3d

    .line 757
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 758
    monitor-exit v1

    return-void

    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_36

    throw p0

    .line 749
    :goto_3f
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_24

    throw p0
.end method

.method public onMessageDeliveryResponse(IZ)V
    .registers 6

    .line 654
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    if-nez v1, :cond_2b

    .line 657
    const-string p0, "ContextHubTransactionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find reliable message transaction with message sequence number = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    goto :goto_42

    .line 665
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    if-eqz p2, :cond_32

    const/4 p1, 0x0

    goto :goto_33

    :cond_32
    const/4 p1, 0x5

    .line 667
    :goto_33
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    .line 672
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_29

    .line 696
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 672
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_29

    throw p0
.end method

.method public onQueryResponse(Ljava/util/List;)V
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda3;-><init>()V

    .line 712
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p0

    if-nez p0, :cond_19

    .line 714
    const-string p0, "ContextHubTransactionManager"

    const-string p1, "Received unexpected query response"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_22

    :cond_19
    const/4 v1, 0x0

    .line 718
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 720
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_17

    throw p0
.end method

.method public onTransactionResponse(IZ)V
    .registers 5

    .line 588
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda2;-><init>(I)V

    .line 602
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->getTransactionAndHandleNext(Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionAcceptConditions;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p0

    if-nez p0, :cond_19

    .line 604
    const-string p0, "ContextHubTransactionManager"

    const-string p1, "Received unexpected transaction response"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_26

    :cond_19
    if-eqz p2, :cond_1d

    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x5

    .line 608
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 612
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 613
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_17

    throw p0
.end method

.method public final processMessageTransactions()V
    .registers 18

    move-object/from16 v0, p0

    .line 906
    iget-object v1, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 907
    :try_start_5
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 908
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 909
    iput-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_14

    :catchall_11
    move-exception v0

    goto/16 :goto_b9

    .line 912
    :cond_14
    :goto_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v6

    .line 917
    :cond_1e
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    .line 918
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v3

    .line 919
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_93

    .line 920
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 921
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v12

    .line 922
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v14

    if-nez v14, :cond_52

    .line 923
    iget-object v15, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    .line 924
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    goto :goto_29

    .line 928
    :cond_52
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v12

    .line 929
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v15

    cmp-long v15, v15, v4

    const/16 v16, 0x1

    if-gtz v15, :cond_63

    move/from16 v15, v16

    goto :goto_64

    :cond_63
    move v15, v3

    :goto_64
    cmp-long v12, v12, v4

    if-gtz v12, :cond_6e

    const/4 v13, 0x3

    if-le v14, v13, :cond_6e

    move/from16 v13, v16

    goto :goto_6f

    :cond_6e
    move v13, v3

    :goto_6f
    if-nez v15, :cond_8c

    if-eqz v13, :cond_74

    goto :goto_8c

    :cond_74
    if-lez v12, :cond_78

    if-gtz v14, :cond_7b

    .line 940
    :cond_78
    invoke-virtual {v0, v11, v4, v5}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V

    .line 944
    :cond_7b
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNextRetryTime()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 946
    invoke-virtual {v11}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_29

    :cond_8c
    :goto_8c
    const/4 v10, 0x6

    .line 935
    invoke-virtual {v0, v11, v10, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V

    move/from16 v10, v16

    goto :goto_29

    :cond_93
    if-nez v10, :cond_1e

    cmp-long v2, v8, v6

    if-gez v2, :cond_b7

    .line 952
    iget-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v8, v4

    sget-object v4, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_MIN_WAIT_TIME:Ljava/time/Duration;

    .line 957
    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    move-result-wide v4

    .line 955
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 953
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 960
    :cond_b7
    monitor-exit v1

    return-void

    :goto_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_5 .. :try_end_ba} :catchall_11

    throw v0
.end method

.method public final removeAndCompleteMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;ILjava/util/Iterator;)V
    .registers 4

    .line 1002
    invoke-virtual {p0, p1, p3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    .line 1003
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->completeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;I)V

    return-void
.end method

.method public final removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 3

    const/4 v0, 0x0

    .line 1013
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V

    return-void
.end method

.method public final removeMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;Ljava/util/Iterator;)V
    .registers 4

    if-nez p2, :cond_10

    .line 1027
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1029
    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 1031
    :goto_13
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTransactionAndStartNext()V
    .registers 2

    .line 799
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->cancelTimeoutFuture()V

    .line 801
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 803
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 810
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 811
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    :cond_19
    return-void
.end method

.method public final startMessageTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;J)V
    .registers 9

    .line 1042
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getNumCompletedStartCalls()I

    move-result v0

    .line 1043
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    .line 1044
    const-string v2, "ContextHubTransactionManager"

    if-nez v1, :cond_36

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1c

    .line 1048
    const-string/jumbo v3, "started"

    goto :goto_1f

    :cond_1c
    const-string/jumbo v3, "retried"

    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reliable message transaction with message sequence number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 1052
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start reliable message transaction with message sequence number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_56
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_RETRY_WAIT_TIME:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNextRetryTime(J)V

    .line 1062
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeoutTime()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_77

    .line 1063
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toNanos()J

    move-result-wide v1

    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setTimeoutTime(J)V

    :cond_77
    add-int/lit8 v0, v0, 0x1

    .line 1065
    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setNumCompletedStartCalls(I)V

    .line 1066
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageOwnerIdActiveSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final startNextTransaction()V
    .registers 7

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_47

    .line 836
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 837
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 838
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v1

    if-nez v1, :cond_36

    .line 841
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 869
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 871
    :try_start_24
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 872
    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_45

    :catch_2d
    move-exception v0

    .line 874
    const-string v2, "ContextHubTransactionManager"

    const-string v3, "Error when schedule a timer"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 879
    :cond_36
    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v2

    .line 878
    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 880
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 889
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :goto_45
    move v0, v1

    goto :goto_1

    :cond_47
    return-void
.end method

.method public final toStatsTransactionResult(I)I
    .registers 2

    .line 0
    if-eqz p1, :cond_16

    packed-switch p1, :pswitch_data_18

    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_a
    const/4 p0, 0x7

    return p0

    :pswitch_c
    const/4 p0, 0x6

    return p0

    :pswitch_e
    const/4 p0, 0x5

    return p0

    :pswitch_10
    const/4 p0, 0x4

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_14
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1107
    :try_start_8
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 1108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1109
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :catchall_32
    move-exception p0

    goto :goto_95

    .line 1114
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_32

    .line 1116
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1118
    :try_start_38
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mReliableMessageTransactionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 1119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :catchall_65
    move-exception p0

    goto :goto_93

    .line 1125
    :cond_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_38 .. :try_end_68} :catchall_65

    .line 1127
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    :try_start_6b
    const-string v2, "Transaction History:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1130
    :goto_76
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1132
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :catchall_89
    move-exception p0

    goto :goto_91

    .line 1134
    :cond_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_6b .. :try_end_8c} :catchall_89

    .line 1136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1134
    :goto_91
    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_89

    throw p0

    .line 1125
    :goto_93
    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_65

    throw p0

    .line 1114
    :goto_95
    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_32

    throw p0
.end method
