.class public Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;
.super Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;
.source "FakeSoundTriggerHal.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;


# direct methods
.method public static synthetic $r8$lambda$64sjqgD4sp65UsgVinjblnckP_g(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger/RecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->lambda$triggerRecognitionEvent$1(Landroid/media/soundtrigger/RecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EMcy5W6yFUWOLq6cqxfHmLsvK-o(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->lambda$triggerAbortRecognition$3(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbWqbYP3Z9bKdBjIPxI3tqNU4jU(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->lambda$triggerAbortRecognition$2(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pTiAeDwF6qkw5-M0rGvKKO9owKA(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->lambda$triggerRecognitionEvent$0(Landroid/media/soundtrigger/PhraseRecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$triggerAbortRecognition$2(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 3

    .line 257
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmModelHandle(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I

    move-result p0

    const/4 v0, 0x1

    .line 258
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v0

    .line 257
    invoke-interface {p1, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    return-void
.end method

.method public final synthetic lambda$triggerAbortRecognition$3(Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmModelHandle(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I

    move-result p0

    const/4 v0, 0x1

    .line 262
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    .line 261
    invoke-interface {p1, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    return-void
.end method

.method public final synthetic lambda$triggerRecognitionEvent$0(Landroid/media/soundtrigger/PhraseRecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 3

    .line 237
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmModelHandle(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    return-void
.end method

.method public final synthetic lambda$triggerRecognitionEvent$1(Landroid/media/soundtrigger/RecognitionEvent;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)V
    .registers 3

    .line 242
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmModelHandle(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)I

    move-result p0

    invoke-interface {p2, p0, p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    return-void
.end method

.method public triggerAbortRecognition()V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_9
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmRecognitionSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object v1

    if-eq v1, p0, :cond_1c

    goto :goto_4b

    .line 253
    :cond_1c
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fputmRecognitionSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmIsKeyphrase(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 256
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    goto :goto_49

    :catchall_39
    move-exception p0

    goto :goto_4d

    .line 260
    :cond_3b
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 264
    :goto_49
    monitor-exit v0

    return-void

    .line 251
    :cond_4b
    :goto_4b
    monitor-exit v0

    return-void

    .line 264
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_39

    throw p0
.end method

.method public triggerRecognitionEvent([B[Landroid/media/soundtrigger/PhraseRecognitionExtra;)V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmLock(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 227
    :try_start_9
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$fgetmIsDead(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;)Z

    move-result v1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmRecognitionSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;

    move-result-object v1

    if-eq v1, p0, :cond_1c

    goto :goto_5f

    .line 229
    :cond_1c
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fputmRecognitionSession(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;)V

    .line 231
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmIsKeyphrase(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 233
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultKeyphraseEvent(I)Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v1

    .line 234
    iget-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iput-object p1, v2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    if-eqz p2, :cond_3a

    .line 235
    iput-object p2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_61

    .line 236
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    move-result-object p1

    new-instance p2, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V

    invoke-static {p1, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    goto :goto_5d

    .line 239
    :cond_49
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->-$$Nest$smcreateDefaultEvent(I)Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object p2

    .line 240
    iput-object p1, p2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    .line 241
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;->this$1:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;->-$$Nest$fgetmCallbackDispatcher(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession;)Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    move-result-object p1

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ModelSession$RecognitionSession;Landroid/media/soundtrigger/RecognitionEvent;)V

    invoke-static {p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->-$$Nest$mwrap(Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 244
    :goto_5d
    monitor-exit v0

    return-void

    .line 227
    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    .line 244
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_9 .. :try_end_62} :catchall_38

    throw p0
.end method
