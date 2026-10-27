.class Lcom/android/server/location/contexthub/ContextHubTransactionManager;
.super Ljava/lang/Object;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final MAX_PENDING_REQUESTS:I = 0x2710

.field private static final NUM_TRANSACTION_RECORDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ContextHubTransactionManager"


# instance fields
.field private final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field private final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field private final mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

.field private final mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTransactionQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/location/contexthub/ContextHubServiceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/ContextHubClientManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContextHubProxy(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/IContextHubWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNanoAppStateManager(Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Lcom/android/server/location/contexthub/NanoAppStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtoStatsTransactionResult(Lcom/android/server/location/contexthub/ContextHubTransactionManager;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->toStatsTransactionResult(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Lcom/android/server/location/contexthub/NanoAppStateManager;)V
    .registers 6
    .param p1, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p2, "clientManager"    # Lcom/android/server/location/contexthub/ContextHubClientManager;
    .param p3, "nanoAppStateManager"    # Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 96
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 122
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 123
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 124
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 125
    return-void
.end method

.method private removeTransactionAndStartNext()V
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 444
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->setComplete()V

    .line 446
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 447
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V

    .line 449
    :cond_1c
    return-void
.end method

.method private startNextTransaction()V
    .registers 9

    .line 462
    const/4 v0, 0x1

    .line 463
    .local v0, "result":I
    :goto_1
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 464
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 465
    .local v1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransact()I

    move-result v0

    .line 467
    if-nez v0, :cond_38

    .line 468
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 480
    .local v2, "onTimeoutFunc":Ljava/lang/Runnable;
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTimeout(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 482
    .local v3, "timeoutSeconds":J
    :try_start_24
    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v4, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    .line 486
    goto :goto_37

    .line 484
    :catch_2f
    move-exception v5

    .line 485
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ContextHubTransactionManager"

    const-string v7, "Error when schedule a timer"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    .end local v2    # "onTimeoutFunc":Ljava/lang/Runnable;
    .end local v3    # "timeoutSeconds":J
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_37
    goto :goto_45

    .line 488
    :cond_38
    nop

    .line 489
    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v2

    .line 488
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 490
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 492
    .end local v1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_45
    goto :goto_1

    .line 493
    :cond_46
    return-void
.end method

.method private toStatsTransactionResult(I)I
    .registers 3
    .param p1, "result"    # I

    .line 496
    packed-switch p1, :pswitch_data_16

    .line 515
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 512
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 510
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 508
    :pswitch_a
    const/4 v0, 0x6

    return v0

    .line 506
    :pswitch_c
    const/4 v0, 0x5

    return v0

    .line 504
    :pswitch_e
    const/4 v0, 0x4

    return v0

    .line 502
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 500
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 498
    :pswitch_14
    const/4 v0, 0x0

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 5
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_2c

    .line 364
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 368
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->startNextTransaction()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    .line 370
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    :cond_2a
    monitor-exit p0

    return-void

    .line 361
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction queue is full (capacity = 10000)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 359
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 16
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 281
    new-instance v9, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x3

    move-object v0, v9

    move-object v1, p0

    move-object v4, p5

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$4;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 281
    return-object v9
.end method

.method createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 16
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 244
    new-instance v9, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x2

    move-object v0, v9

    move-object v1, p0

    move-object v4, p5

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$3;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 244
    return-object v9
.end method

.method createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 16
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppBinary"    # Landroid/hardware/location/NanoAppBinary;
    .param p3, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 138
    new-instance v10, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 140
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v6, p4

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$1;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 138
    return-object v10
.end method

.method createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 12
    .param p1, "contextHubId"    # I
    .param p2, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 317
    new-instance v7, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x4

    move-object v0, v7

    move-object v1, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 317
    return-object v7
.end method

.method createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .registers 19
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "onCompleteCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 194
    new-instance v11, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;

    move-object v12, p0

    iget-object v0, v12, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mNextAvailableId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, v11

    move-object v1, p0

    move-wide v4, p2

    move-object/from16 v6, p5

    move v7, p1

    move-wide v8, p2

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$2;-><init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IIJLjava/lang/String;IJLandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 194
    return-object v11
.end method

.method synthetic lambda$startNextTransaction$0$com-android-server-location-contexthub-ContextHubTransactionManager(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .registers 5
    .param p1, "transaction"    # Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 469
    monitor-enter p0

    .line 470
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->isComplete()Z

    move-result v0

    if-nez v0, :cond_26

    .line 471
    const-string v0, "ContextHubTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 475
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V

    .line 477
    :cond_26
    monitor-exit p0

    .line 478
    return-void

    .line 477
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method declared-synchronized onHubReset()V
    .registers 2

    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    .line 423
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_d

    .line 424
    monitor-exit p0

    return-void

    .line 427
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 428
    monitor-exit p0

    return-void

    .line 421
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onQueryResponse(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .local p1, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 404
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_14

    .line 405
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "Received unexpected query response (no transaction pending)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_44

    .line 406
    monitor-exit p0

    return-void

    .line 408
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3b

    .line 409
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected query response (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_44

    .line 410
    monitor-exit p0

    return-void

    .line 413
    :cond_3b
    const/4 v1, 0x0

    :try_start_3c
    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onQueryResponse(ILjava/util/List;)V

    .line 414
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_44

    .line 415
    monitor-exit p0

    return-void

    .line 402
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p1    # "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onTransactionResponse(IZ)V
    .registers 7
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    .line 381
    .local v0, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    if-nez v0, :cond_14

    .line 382
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "Received unexpected transaction response (no transaction pending)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_55

    .line 383
    monitor-exit p0

    return-void

    .line 385
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v1

    if-eq v1, p1, :cond_48

    .line 386
    const-string v1, "ContextHubTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unexpected transaction response (expected ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getTransactionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", received ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_55

    .line 388
    monitor-exit p0

    return-void

    .line 391
    :cond_48
    if-eqz p2, :cond_4c

    const/4 v1, 0x0

    goto :goto_4d

    .line 392
    :cond_4c
    const/4 v1, 0x5

    .line 391
    :goto_4d
    :try_start_4d
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 393
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->removeTransactionAndStartNext()V
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_55

    .line 394
    monitor-exit p0

    return-void

    .line 379
    .end local v0    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    .end local p1    # "transactionId":I
    .end local p2    # "success":Z
    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 523
    .local v0, "sb":Ljava/lang/StringBuilder;
    monitor-enter p0

    .line 524
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionQueue:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;

    .line 525
    .local v1, "arr":[Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_6e

    .line 526
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v1

    if-ge v2, v3, :cond_3d

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 530
    .end local v2    # "i":I
    :cond_3d
    const-string v2, "Transaction History:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mTransactionRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 532
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 535
    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 525
    .end local v1    # "arr":[Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubTransactionManager$TransactionRecord;>;"
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method
