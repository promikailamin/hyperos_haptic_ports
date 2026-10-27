.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 716
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 719
    :try_start_7
    invoke-interface {p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    .line 722
    nop

    .line 723
    return-void

    .line 720
    :catch_11
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 852
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public binderDied()V
    .registers 6

    .line 832
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 836
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 837
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v3, v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    if-ne v3, v4, :cond_3e

    .line 838
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 840
    :cond_3e
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    .line 841
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    goto :goto_13

    .line 843
    :cond_52
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$mdetachInternal(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_5c
    .catchall {:try_start_5 .. :try_end_57} :catchall_5a

    .line 846
    nop

    .line 847
    :try_start_58
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_5a
    move-exception v1

    goto :goto_62

    .line 844
    :catch_5c
    move-exception v1

    .line 845
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;
    throw v2

    .line 847
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;
    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_5a

    throw v1
.end method

.method detached()V
    .registers 3

    .line 726
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 727
    return-void
.end method

.method synthetic lambda$onPhraseRecognition$1$com-android-server-soundtrigger_middleware-SoundTriggerMiddlewareValidation$Session$CallbackWrapper(I)V
    .registers 3
    .param p1, "modelHandle"    # I

    .line 781
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$mrestartIfIntercepted(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;I)V

    return-void
.end method

.method synthetic lambda$onRecognition$0$com-android-server-soundtrigger_middleware-SoundTriggerMiddlewareValidation$Session$CallbackWrapper(I)V
    .registers 3
    .param p1, "modelHandle"    # I

    .line 752
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$mrestartIfIntercepted(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;I)V

    return-void
.end method

.method public onModelUnloaded(I)V
    .registers 5
    .param p1, "modelHandle"    # I

    .line 789
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 790
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 791
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->PREEMPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 792
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_29

    .line 796
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_20

    .line 799
    goto :goto_28

    .line 797
    :catch_20
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void

    .line 792
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onModuleDied()V
    .registers 4

    .line 816
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 817
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fputmState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;)V

    .line 818
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1c

    .line 821
    :try_start_d
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 826
    goto :goto_1b

    .line 822
    :catch_13
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void

    .line 818
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .param p3, "captureSession"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 762
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 763
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_1f

    .line 764
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 766
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_60

    .line 770
    :try_start_20
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    .line 784
    goto :goto_5c

    .line 771
    :catch_26
    move-exception v0

    move-object v1, v0

    .line 772
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v2, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v2

    .line 774
    :try_start_34
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 775
    .local v0, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    iget-object v3, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v3, v3, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v3, :cond_5b

    .line 776
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->INTERCEPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v3, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 781
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 783
    .end local v0    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_5b
    monitor-exit v2

    .line 785
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5c
    return-void

    .line 783
    .restart local v1    # "e":Ljava/lang/Exception;
    :catchall_5d
    move-exception v0

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_34 .. :try_end_5f} :catchall_5d

    throw v0

    .line 766
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V
    .registers 9
    .param p1, "modelHandle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;
    .param p3, "captureSession"    # I

    .line 732
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 733
    :try_start_5
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 734
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    iget-boolean v2, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_1d

    .line 735
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v2, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 737
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_5d

    .line 741
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 755
    goto :goto_59

    .line 742
    :catch_24
    move-exception v0

    move-object v1, v0

    .line 743
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    iget-object v2, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v2

    .line 745
    :try_start_32
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmLoadedModels(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 746
    .local v0, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    iget v3, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_58

    .line 747
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->INTERCEPTED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    iput-object v3, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->activityState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    .line 752
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 754
    .end local v0    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_58
    monitor-exit v2

    .line 756
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_59
    return-void

    .line 754
    .restart local v1    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v0

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_5a

    throw v0

    .line 737
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public onResourcesAvailable()V
    .registers 4

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 811
    goto :goto_e

    .line 807
    :catch_6
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 858
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;->-$$Nest$fgetmDelegate(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
