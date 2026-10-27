.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHalEnforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# instance fields
.field public final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .registers 3

    .line 251
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    return-void
.end method


# virtual methods
.method public modelUnloaded(I)V
    .registers 6

    .line 309
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 310
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-nez v1, :cond_38

    .line 312
    const-string v1, "SoundTriggerHalEnforcer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected unload event for model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 314
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    goto :goto_6d

    .line 317
    :cond_38
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-ne v1, v2, :cond_59

    .line 318
    const-string v1, "SoundTriggerHalEnforcer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to unload an active model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 320
    monitor-exit v0

    return-void

    .line 322
    :cond_59
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_36

    .line 325
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    return-void

    .line 323
    :goto_6d
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_36

    throw p0
.end method

.method public phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 284
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-nez v1, :cond_38

    .line 286
    const-string p2, "SoundTriggerHalEnforcer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected recognition event for model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 288
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    goto :goto_6e

    .line 290
    :cond_38
    iget-object v1, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    iget-object v1, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-eqz v2, :cond_56

    iget v1, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eqz v1, :cond_56

    const/4 v3, 0x3

    if-eq v1, v3, :cond_56

    .line 293
    const-string p1, "SoundTriggerHalEnforcer"

    const-string/jumbo p2, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 297
    monitor-exit v0

    return-void

    :cond_56
    if-nez v2, :cond_67

    .line 300
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_36

    .line 304
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    return-void

    .line 302
    :goto_6e
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_36

    throw p0
.end method

.method public recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V
    .registers 7

    .line 257
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 258
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-nez v1, :cond_38

    .line 260
    const-string p2, "SoundTriggerHalEnforcer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected recognition event for model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 262
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    goto :goto_6c

    .line 264
    :cond_38
    iget-object v1, p2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-eqz v2, :cond_54

    iget v1, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eqz v1, :cond_54

    const/4 v3, 0x3

    if-eq v1, v3, :cond_54

    .line 267
    const-string p1, "SoundTriggerHalEnforcer"

    const-string/jumbo p2, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 271
    monitor-exit v0

    return-void

    :cond_54
    if-nez v2, :cond_65

    .line 274
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_36

    .line 278
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    return-void

    .line 276
    :goto_6c
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_36

    throw p0
.end method
