.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;
.super Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;


# direct methods
.method public static synthetic $r8$lambda$0I3wUPpT2O1jPmU7rvfsHh15TjU(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->lambda$triggerRestart$0(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0fUJo4CNumzi9DwI8-dodpsTlVs(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;Landroid/os/IBinder$DeathRecipient;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->lambda$triggerRestart$1(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eCkCVlx2Nhvqk7b5yO4sbdkZqRc(Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .registers 2

    .line 321
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;->eventReceived()V

    return-void
.end method

.method public static synthetic $r8$lambda$yK_ZP4EqOj4lTMG8hyfcaMiB1oM(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .registers 1

    .line 324
    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void
.end method

.method public static synthetic $r8$lambda$zW0J9Gdsh0Oj00E49z0mhcL3qIo(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V
    .registers 1

    .line 336
    invoke-interface {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$triggerRestart$0(Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;)V
    .registers 2

    .line 290
    invoke-interface {p1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onRestarted(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-void
.end method

.method public final synthetic lambda$triggerRestart$1(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p0

    .line 300
    const-string p1, "FakeSoundTriggerHal"

    const-string v0, "Callback dispatch threw"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V
    .registers 6

    .line 311
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 314
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_46

    .line 316
    :cond_13
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    .line 317
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v2, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fputmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Z)V

    .line 320
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmInjectionDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V

    invoke-static {p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 322
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsResourceContended(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result p1

    if-nez p1, :cond_44

    if-eqz v1, :cond_44

    .line 323
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmGlobalCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    move-result-object p0

    new-instance p1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 326
    :cond_44
    monitor-exit v0

    return-void

    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_11

    throw p0
.end method

.method public triggerOnResourcesAvailable()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-eqz v1, :cond_13

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_23

    .line 335
    :cond_13
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmGlobalCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;

    move-result-object p0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$GlobalCallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 337
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_11

    throw p0
.end method

.method public triggerRestart()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 287
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-eqz v1, :cond_13

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_4a

    .line 288
    :cond_13
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fputmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Z)V

    .line 289
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmInjectionDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$InjectionDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 291
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmModelSessionMap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 292
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 293
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    .line 294
    sget-object v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;Landroid/os/IBinder$DeathRecipient;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    :cond_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_11

    throw p0
.end method
