.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewareValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;

.field private mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field private final mHandle:I

.field private final mLoadedModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginatorIdentity:Landroid/media/permission/Identity;

.field private mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetachInternal(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->detachInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestartIfIntercepted(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->restartIfIntercepted(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .registers 4
    .param p2, "handle"    # I
    .param p3, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 342
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 336
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 338
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 343
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;

    invoke-direct {p1, p0, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;

    .line 344
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mHandle:I

    .line 345
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 346
    return-void
.end method

.method private detachInternal()V
    .registers 3

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 681
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 682
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->detached()V

    .line 683
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->-$$Nest$fgetmModules(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_27

    .line 686
    nop

    .line 687
    return-void

    .line 684
    :catch_27
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private restartIfIntercepted(I)V
    .registers 8
    .param p1, "modelHandle"    # I

    .line 520
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-ne v1, v2, :cond_b

    .line 523
    monitor-exit v0

    return-void

    .line 525
    :cond_b
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 526
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_5f

    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->INTERCEPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_61

    if-eq v2, v3, :cond_20

    goto :goto_5f

    .line 531
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    iget-object v3, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->config:Landroid/media/soundtrigger/RecognitionConfig;

    invoke-interface {v2, p1, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 532
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 533
    const-string v2, "SoundTriggerMiddlewareValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarted intercepted model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_44
    .catchall {:try_start_20 .. :try_end_43} :catchall_61

    .line 536
    goto :goto_5d

    .line 534
    :catch_44
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v3, "SoundTriggerMiddlewareValidation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restart intercepted model "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5d
    monitor-exit v0

    .line 538
    return-void

    .line 528
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    .line 537
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_45 .. :try_end_63} :catchall_61

    throw v1
.end method


# virtual methods
.method attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .registers 4
    .param p1, "delegate"    # Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 353
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 354
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->-$$Nest$fgetmModules(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method public detach()V
    .registers 4

    .line 654
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_2c

    .line 659
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_20

    .line 660
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot detach while models are loaded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    throw v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_34

    .line 665
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    :cond_20
    :goto_20
    :try_start_20
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->detachInternal()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_26
    .catchall {:try_start_20 .. :try_end_23} :catchall_34

    .line 668
    nop

    .line 669
    :try_start_24
    monitor-exit v0

    .line 670
    return-void

    .line 666
    :catch_26
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    throw v2

    .line 657
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has already been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    throw v1

    .line 669
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 690
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_77

    .line 691
    const-string v0, "-------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const/16 v4, 0x10

    .line 693
    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 692
    const-string v2, "Session %s, client: %s\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 694
    const-string v1, "Loaded models (handle, active, description):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 696
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 698
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 699
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 700
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 702
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->description:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 704
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    goto :goto_3a

    .line 705
    :cond_73
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_87

    .line 707
    :cond_77
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Session %s is dead"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 708
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 710
    :goto_87
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 7
    .param p1, "modelHandle"    # I

    .line 544
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_44

    .line 549
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 549
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_4c

    .line 551
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_2b

    .line 560
    :try_start_17
    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v2, v3, :cond_22

    .line 561
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_25
    .catchall {:try_start_17 .. :try_end_22} :catchall_4c

    .line 565
    :cond_22
    nop

    .line 566
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_23
    monitor-exit v0

    .line 567
    return-void

    .line 563
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_25
    move-exception v2

    .line 564
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v3

    .line 552
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v2

    .line 547
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v1

    .line 566
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method getCallbackWrapper()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;

    return-object v0
.end method

.method public getModelParameter(II)I
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 598
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModelParameter(I)V

    .line 600
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 602
    :try_start_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_44

    .line 605
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 605
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 607
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_2b

    .line 610
    invoke-virtual {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->checkSupported(I)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_4c

    .line 614
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_25
    .catchall {:try_start_1d .. :try_end_23} :catchall_4c

    :try_start_23
    monitor-exit v0

    return v2

    .line 615
    :catch_25
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v3

    .line 608
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v2

    .line 603
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v1

    .line 618
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .registers 7
    .param p1, "model"    # Landroid/media/soundtrigger/SoundModel;

    .line 360
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateGenericModel(Landroid/media/soundtrigger/SoundModel;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 364
    :try_start_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_30

    if-eq v1, v2, :cond_28

    .line 370
    :try_start_c
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v1

    .line 371
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    invoke-direct {v4, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;-><init>(Landroid/media/soundtrigger/SoundModel;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_22
    .catchall {:try_start_c .. :try_end_20} :catchall_30

    .line 372
    :try_start_20
    monitor-exit v0

    return v1

    .line 373
    .end local v1    # "handle":I
    :catch_22
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    throw v2

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    throw v1

    .line 376
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger/SoundModel;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .registers 7
    .param p1, "model"    # Landroid/media/soundtrigger/PhraseSoundModel;

    .line 382
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validatePhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 386
    :try_start_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_30

    if-eq v1, v2, :cond_28

    .line 392
    :try_start_c
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v1

    .line 393
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    invoke-direct {v4, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;-><init>(Landroid/media/soundtrigger/PhraseSoundModel;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_22
    .catchall {:try_start_c .. :try_end_20} :catchall_30

    .line 394
    :try_start_20
    monitor-exit v0

    return v1

    .line 395
    .end local v1    # "handle":I
    :catch_22
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "model":Landroid/media/soundtrigger/PhraseSoundModel;
    throw v2

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger/PhraseSoundModel;
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "model":Landroid/media/soundtrigger/PhraseSoundModel;
    throw v1

    .line 398
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger/PhraseSoundModel;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 8
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 625
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModelParameter(I)V

    .line 627
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 629
    :try_start_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_4c

    .line 632
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 633
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 632
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_54

    .line 634
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_33

    .line 640
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v2

    .line 642
    .local v2, "result":Landroid/media/soundtrigger/ModelParameterRange;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->-$$Nest$fgetparameterSupport(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2d
    .catchall {:try_start_1a .. :try_end_2b} :catchall_54

    .line 643
    :try_start_2b
    monitor-exit v0

    return-object v2

    .line 644
    .end local v2    # "result":Landroid/media/soundtrigger/ModelParameterRange;
    :catch_2d
    move-exception v2

    .line 645
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v3

    .line 635
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_33
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v2

    .line 630
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v1

    .line 647
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_54

    throw v1
.end method

.method public setModelParameter(III)V
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 572
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModelParameter(I)V

    .line 574
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 576
    :try_start_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_44

    .line 579
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 579
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 581
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_2b

    .line 584
    invoke-virtual {v1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->checkSupported(II)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_4c

    .line 588
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_25
    .catchall {:try_start_1d .. :try_end_22} :catchall_4c

    .line 591
    nop

    .line 592
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_23
    monitor-exit v0

    .line 593
    return-void

    .line 589
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_25
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    throw v3

    .line 582
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    throw v2

    .line 577
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    throw v1

    .line 592
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger/RecognitionConfig;

    .line 438
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 442
    :try_start_6
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_71

    .line 445
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 445
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 447
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_58

    .line 450
    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 452
    .local v2, "activityState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-eq v2, v3, :cond_44

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->PREEMPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v2, v3, :cond_25

    goto :goto_44

    .line 454
    :cond_25
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model with handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has invalid state for starting recognition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    throw v3
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_79

    .line 460
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    :cond_44
    :goto_44
    :try_start_44
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 461
    iput-object p2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->config:Landroid/media/soundtrigger/RecognitionConfig;

    .line 462
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v3, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_52
    .catchall {:try_start_44 .. :try_end_4f} :catchall_79

    .line 465
    nop

    .line 466
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .end local v2    # "activityState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :try_start_50
    monitor-exit v0

    .line 467
    return-void

    .line 463
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local v2    # "activityState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :catch_52
    move-exception v3

    .line 464
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    throw v4

    .line 448
    .end local v2    # "activityState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    :cond_58
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    throw v2

    .line 443
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    :cond_71
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    throw v1

    .line 466
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger/RecognitionConfig;
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_50 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public stopRecognition(I)V
    .registers 7
    .param p1, "modelHandle"    # I

    .line 473
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_72

    .line 478
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 478
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_7a

    .line 480
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_59

    .line 489
    :try_start_17
    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->INTERCEPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v2, v3, :cond_23

    .line 490
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_53
    .catchall {:try_start_17 .. :try_end_21} :catchall_7a

    .line 491
    :try_start_21
    monitor-exit v0

    return-void

    .line 495
    :cond_23
    nop

    .line 496
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_7a

    .line 500
    :try_start_25
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_4d

    .line 503
    nop

    .line 505
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 506
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 507
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-nez v1, :cond_3e

    .line 509
    monitor-exit v0

    return-void

    .line 513
    :cond_3e
    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->PREEMPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-eq v2, v3, :cond_48

    .line 514
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 516
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_48
    monitor-exit v0

    .line 517
    return-void

    .line 516
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_4a

    throw v1

    .line 501
    :catch_4d
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_53
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    :try_start_54
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v3

    .line 481
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :cond_59
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v2

    .line 476
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :cond_72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v1

    .line 496
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_54 .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 675
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unloadModel(I)V
    .registers 7
    .param p1, "modelHandle"    # I

    .line 404
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_7a

    .line 409
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 409
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 411
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_61

    .line 415
    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-eq v2, v3, :cond_43

    iget-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->PREEMPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v2, v3, :cond_24

    goto :goto_43

    .line 417
    :cond_24
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model with handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has invalid state for unloading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v2

    .line 420
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :cond_43
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_82

    .line 425
    :try_start_44
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_5b

    .line 428
    nop

    .line 430
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 431
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_58

    throw v1

    .line 426
    :catch_5b
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_61
    :try_start_61
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v2

    .line 407
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :cond_7a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .end local p1    # "modelHandle":I
    throw v1

    .line 420
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .restart local p1    # "modelHandle":I
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_61 .. :try_end_84} :catchall_82

    throw v1
.end method
