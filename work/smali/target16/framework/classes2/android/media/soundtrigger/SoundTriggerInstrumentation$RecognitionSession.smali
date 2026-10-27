.class public Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionSession"
.end annotation


# instance fields
.field private final blacklist mAudioSession:I

.field private final blacklist mDroppedConsumerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

.field private blacklist mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

.field private final blacklist mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private blacklist mRecognitionExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->wrap(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    .line 444
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 446
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    .line 422
    iput p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mAudioSession:I

    .line 423
    invoke-static {p3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 424
    iput-object p4, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    .line 425
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$setRecognitionCallback$0(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 2

    .line 398
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrap$1(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 2

    .line 431
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist wrap(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;",
            ">;)V"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 429
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    if-eqz v1, :cond_18

    .line 430
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 431
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 432
    goto :goto_1d

    .line 433
    :cond_18
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_1d
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw p1
.end method


# virtual methods
.method public blacklist clearRecognitionCallback()V
    .registers 3

    .line 413
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 414
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 415
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getAudioSession()I
    .registers 2

    .line 325
    iget v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mAudioSession:I

    return v0
.end method

.method public blacklist getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    return-object v0
.end method

.method public blacklist setRecognitionCallback(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 7

    .line 393
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_d
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    if-nez v1, :cond_31

    .line 397
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 398
    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 399
    goto :goto_17

    .line 400
    :cond_2c
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 402
    :cond_31
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    .line 403
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw p1
.end method

.method public blacklist triggerAbortRecognition()V
    .registers 4

    .line 374
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 375
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_24

    .line 377
    :try_start_16
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->triggerAbortRecognition()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1e
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    .line 380
    nop

    .line 381
    :try_start_1c
    monitor-exit v0

    .line 382
    return-void

    .line 378
    :catch_1e
    move-exception v1

    .line 379
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 381
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist triggerRecognitionEvent([BLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    .line 347
    nop

    .line 348
    if-eqz p2, :cond_25

    .line 349
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 350
    nop

    .line 351
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 352
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v2

    aput-object v2, v0, v1

    .line 353
    move v1, v3

    goto :goto_f

    .line 348
    :cond_25
    const/4 v0, 0x0

    .line 355
    :cond_26
    iget-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 356
    :try_start_2d
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_4a

    .line 358
    :try_start_3c
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v1, p1, v0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->triggerRecognitionEvent([B[Landroid/media/soundtrigger/PhraseRecognitionExtra;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_44
    .catchall {:try_start_3c .. :try_end_41} :catchall_4a

    .line 361
    nop

    .line 362
    :try_start_42
    monitor-exit p2

    .line 363
    return-void

    .line 359
    :catch_44
    move-exception p1

    .line 360
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 362
    :catchall_4a
    move-exception p1

    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw p1
.end method
