.class public Landroid/hardware/location/ContextHubTransaction;
.super Ljava/lang/Object;
.source "ContextHubTransaction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;,
        Landroid/hardware/location/ContextHubTransaction$Response;,
        Landroid/hardware/location/ContextHubTransaction$Result;,
        Landroid/hardware/location/ContextHubTransaction$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final whitelist RESULT_FAILED_AT_HUB:I = 0x5

.field public static final whitelist RESULT_FAILED_BAD_PARAMS:I = 0x2

.field public static final whitelist RESULT_FAILED_BUSY:I = 0x4

.field public static final whitelist RESULT_FAILED_HAL_UNAVAILABLE:I = 0x8

.field public static final whitelist RESULT_FAILED_NOT_SUPPORTED:I = 0x9

.field public static final whitelist RESULT_FAILED_SERVICE_INTERNAL_FAILURE:I = 0x7

.field public static final whitelist RESULT_FAILED_TIMEOUT:I = 0x6

.field public static final whitelist RESULT_FAILED_UNINITIALIZED:I = 0x3

.field public static final whitelist RESULT_FAILED_UNKNOWN:I = 0x1

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContextHubTransaction"

.field public static final whitelist TYPE_DISABLE_NANOAPP:I = 0x3

.field public static final whitelist TYPE_ENABLE_NANOAPP:I = 0x2

.field public static final whitelist TYPE_HUB_MESSAGE_DEFAULT:I = 0x6

.field public static final whitelist TYPE_HUB_MESSAGE_REQUIRES_RESPONSE:I = 0x7

.field public static final whitelist TYPE_LOAD_NANOAPP:I = 0x0

.field public static final whitelist TYPE_QUERY_NANOAPPS:I = 0x4

.field public static final whitelist TYPE_RELIABLE_MESSAGE:I = 0x5

.field public static final whitelist TYPE_UNLOAD_NANOAPP:I = 0x1


# instance fields
.field private final greylist-max-o mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mIsResponseSet:Z

.field private greylist-max-o mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/location/ContextHubTransaction$OnCompleteListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mResponse:Landroid/hardware/location/ContextHubTransaction$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/location/ContextHubTransaction$Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransactionType:I


# direct methods
.method public static synthetic blacklist $r8$lambda$0V0DMzAZ2PAh1Uyp7ynoCz0j7BU(Landroid/hardware/location/ContextHubTransaction;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/location/ContextHubTransaction;->lambda$setOnCompleteListener$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9HSEUOYt10ngJ7zM1yDAoQEaNzc(Landroid/hardware/location/ContextHubTransaction;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/location/ContextHubTransaction;->lambda$setResponse$1()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mExecutor:Ljava/util/concurrent/Executor;

    .line 214
    iput-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;

    .line 219
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/ContextHubTransaction;->mIsResponseSet:Z

    .line 228
    iput p1, p0, Landroid/hardware/location/ContextHubTransaction;->mTransactionType:I

    .line 229
    return-void
.end method

.method private synthetic blacklist lambda$setOnCompleteListener$0()V
    .registers 3

    .line 332
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;

    iget-object v1, p0, Landroid/hardware/location/ContextHubTransaction;->mResponse:Landroid/hardware/location/ContextHubTransaction$Response;

    invoke-interface {v0, p0, v1}, Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;->onComplete(Landroid/hardware/location/ContextHubTransaction;Landroid/hardware/location/ContextHubTransaction$Response;)V

    return-void
.end method

.method private synthetic blacklist lambda$setResponse$1()V
    .registers 3

    .line 380
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;

    iget-object v1, p0, Landroid/hardware/location/ContextHubTransaction;->mResponse:Landroid/hardware/location/ContextHubTransaction$Response;

    invoke-interface {v0, p0, v1}, Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;->onComplete(Landroid/hardware/location/ContextHubTransaction;Landroid/hardware/location/ContextHubTransaction$Response;)V

    return-void
.end method

.method public static whitelist typeToString(IZ)Ljava/lang/String;
    .registers 2

    .line 239
    packed-switch p0, :pswitch_data_3c

    .line 253
    if-eqz p1, :cond_38

    const-string p0, "Unknown"

    goto :goto_3a

    .line 251
    :pswitch_8
    if-eqz p1, :cond_d

    const-string p0, "Reliable Message"

    goto :goto_f

    :cond_d
    const-string p0, "reliable message"

    :goto_f
    return-object p0

    .line 249
    :pswitch_10
    if-eqz p1, :cond_15

    const-string p0, "Query"

    goto :goto_17

    :cond_15
    const-string p0, "query"

    :goto_17
    return-object p0

    .line 247
    :pswitch_18
    if-eqz p1, :cond_1d

    const-string p0, "Disable"

    goto :goto_1f

    :cond_1d
    const-string p0, "disable"

    :goto_1f
    return-object p0

    .line 245
    :pswitch_20
    if-eqz p1, :cond_25

    const-string p0, "Enable"

    goto :goto_27

    :cond_25
    const-string p0, "enable"

    :goto_27
    return-object p0

    .line 243
    :pswitch_28
    if-eqz p1, :cond_2d

    const-string p0, "Unload"

    goto :goto_2f

    :cond_2d
    const-string p0, "unload"

    :goto_2f
    return-object p0

    .line 241
    :pswitch_30
    if-eqz p1, :cond_35

    const-string p0, "Load"

    goto :goto_37

    :cond_35
    const-string p0, "load"

    :goto_37
    return-object p0

    .line 253
    :cond_38
    const-string p0, "unknown"

    :goto_3a
    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_28
        :pswitch_20
        :pswitch_18
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist getType()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/hardware/location/ContextHubTransaction;->mTransactionType:I

    return v0
.end method

.method public whitelist setOnCompleteListener(Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction$OnCompleteListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 353
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubTransaction;->setOnCompleteListener(Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;Ljava/util/concurrent/Executor;)V

    .line 354
    return-void
.end method

.method public whitelist setOnCompleteListener(Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction$OnCompleteListener<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 320
    monitor-enter p0

    .line 321
    :try_start_1
    const-string v0, "OnCompleteListener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;

    if-nez v0, :cond_2b

    .line 328
    iput-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;

    .line 329
    iput-object p2, p0, Landroid/hardware/location/ContextHubTransaction;->mExecutor:Ljava/util/concurrent/Executor;

    .line 331
    iget-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_29

    .line 332
    iget-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/location/ContextHubTransaction;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 334
    :cond_29
    monitor-exit p0

    .line 335
    return-void

    .line 324
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set ContextHubTransaction listener multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 334
    :catchall_33
    move-exception p1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public greylist-max-o setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction$Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    const-string v0, "Response cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    iget-boolean v0, p0, Landroid/hardware/location/ContextHubTransaction;->mIsResponseSet:Z

    if-eqz v0, :cond_13

    .line 371
    const-string p1, "ContextHubTransaction"

    const-string v0, "Cannot set response of ContextHubTransaction multiple times"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit p0

    return-void

    .line 375
    :cond_13
    iput-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mResponse:Landroid/hardware/location/ContextHubTransaction$Response;

    .line 376
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/hardware/location/ContextHubTransaction;->mIsResponseSet:Z

    .line 378
    iget-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 379
    iget-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mListener:Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;

    if-eqz p1, :cond_2b

    .line 380
    iget-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubTransaction$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/ContextHubTransaction;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 382
    :cond_2b
    monitor-exit p0

    .line 383
    return-void

    .line 382
    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public whitelist waitForResponse(JLjava/util/concurrent/TimeUnit;)Landroid/hardware/location/ContextHubTransaction$Response;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction$Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 287
    if-eqz p1, :cond_b

    .line 291
    iget-object p1, p0, Landroid/hardware/location/ContextHubTransaction;->mResponse:Landroid/hardware/location/ContextHubTransaction$Response;

    return-object p1

    .line 288
    :cond_b
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Timed out while waiting for transaction"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
