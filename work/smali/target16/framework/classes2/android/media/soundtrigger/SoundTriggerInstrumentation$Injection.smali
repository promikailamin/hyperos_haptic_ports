.class Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Injection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method public static synthetic blacklist $r8$lambda$7STV3bXHIsskGrX19VACLab-Ttg(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onSoundModelLoaded$0(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Gw5EcuilN3PqbTOHh0erJFnGHu0(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onPreempted$9()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SieEElEbNaKIlttFoufGjPLGYLM(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onClientAttached$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cOHOauLGDYdOQP_pbhcbWLpYzE4(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onRestarted$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ltfV1qBXSRSLuMu_jTKHgFOL6KU(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onFrameworkDetached$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$we6V-mcFo76WJ8aHSQjhHpZMuNs(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onClientDetached$8()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 453
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)V

    return-void
.end method

.method private synthetic blacklist lambda$onClientAttached$7()V
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onClientAttached()V

    return-void
.end method

.method private synthetic blacklist lambda$onClientDetached$8()V
    .registers 2

    .line 548
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onClientDetached()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameworkDetached$6()V
    .registers 2

    .line 530
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onFrameworkDetached()V

    return-void
.end method

.method static synthetic blacklist lambda$onParamSet$4(IILandroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 3

    .line 511
    invoke-interface {p2, p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;->onParamSet(II)V

    return-void
.end method

.method private synthetic blacklist lambda$onPreempted$9()V
    .registers 2

    .line 555
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onPreempted()V

    return-void
.end method

.method static synthetic blacklist lambda$onRecognitionStarted$2(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 2

    .line 491
    invoke-interface {p1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;->onRecognitionStarted(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRecognitionStopped$3(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 1

    .line 502
    invoke-interface {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;->onRecognitionStopped()V

    return-void
.end method

.method private synthetic blacklist lambda$onRestarted$5()V
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onRestarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onSoundModelLoaded$0(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
    .registers 3

    .line 468
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientCallback(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;->onModelLoaded(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSoundModelUnloaded$1(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V
    .registers 1

    .line 477
    invoke-interface {p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;->onModelUnloaded()V

    return-void
.end method


# virtual methods
.method public blacklist onClientAttached(Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5

    .line 536
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 537
    :try_start_7
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq p2, v1, :cond_19

    monitor-exit v0

    return-void

    .line 538
    :cond_19
    iget-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p2, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fputmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/os/IBinder;)V

    .line 539
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda4;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 540
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public blacklist onClientDetached(Landroid/os/IBinder;)V
    .registers 4

    .line 545
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 546
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_11

    monitor-exit v0

    return-void

    .line 547
    :cond_11
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fputmClientToken(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/os/IBinder;)V

    .line 548
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda3;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public blacklist onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    .line 528
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_7
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_19

    monitor-exit v0

    return-void

    .line 530
    :cond_19
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda9;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 531
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist onParamSet(IILandroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 6

    .line 508
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 509
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p3}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    .line 510
    if-nez p3, :cond_1b

    monitor-exit v0

    return-void

    .line 511
    :cond_1b
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-static {p3, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V

    .line 512
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public blacklist onPreempted()V
    .registers 3

    .line 555
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda2;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method

.method public blacklist onRecognitionStarted(ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 13

    .line 484
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 485
    :try_start_7
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p4}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    .line 486
    if-nez p4, :cond_1b

    monitor-exit v1

    return-void

    .line 487
    :cond_1b
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V

    .line 489
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v6}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance p1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V

    invoke-static {p4, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_3d
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_3d

    throw p1
.end method

.method public blacklist onRecognitionStopped(Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .registers 4

    .line 497
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 498
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    .line 499
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    .line 500
    if-nez p1, :cond_1b

    monitor-exit v0

    return-void

    .line 501
    :cond_1b
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Ljava/util/function/Consumer;)V

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public blacklist onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    .line 518
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 519
    :try_start_7
    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_19

    monitor-exit v0

    return-void

    .line 520
    :cond_19
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 521
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 522
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda5;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 523
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public blacklist onSoundModelLoaded(Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 13

    .line 464
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 465
    :try_start_7
    invoke-interface {p4}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq p4, v0, :cond_19

    monitor-exit v1

    return-void

    .line 466
    :cond_19
    new-instance v2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger/SoundModel;[Landroid/media/soundtrigger/Phrase;Landroid/media/soundtrigger_middleware/IInjectModelEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation-IA;)V

    .line 467
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v6}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmGlobalCallbackExecutor(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 469
    monitor-exit v1

    .line 470
    return-void

    .line 469
    :catchall_41
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_41

    throw p1
.end method

.method public blacklist onSoundModelUnloaded(Landroid/media/soundtrigger_middleware/IInjectModelEvent;)V
    .registers 4

    .line 474
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 475
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmModelSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/soundtrigger_middleware/IInjectModelEvent;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    .line 476
    if-nez p1, :cond_1b

    monitor-exit v0

    return-void

    .line 477
    :cond_1b
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;->-$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;Ljava/util/function/Consumer;)V

    .line 478
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public blacklist registerGlobalEventInjection(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 4

    .line 456
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_7
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fputmInjectGlobalEvent(Landroid/media/soundtrigger/SoundTriggerInstrumentation;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
