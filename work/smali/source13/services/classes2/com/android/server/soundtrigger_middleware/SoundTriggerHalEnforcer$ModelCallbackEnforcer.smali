.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHalEnforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelCallbackEnforcer"
.end annotation


# instance fields
.field private final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .registers 3
    .param p2, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 247
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V

    return-void
.end method


# virtual methods
.method public modelUnloaded(I)V
    .registers 7
    .param p1, "modelHandle"    # I

    .line 312
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 313
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 314
    .local v1, "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    if-nez v1, :cond_38

    .line 315
    const-string v2, "SoundTriggerHalEnforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected unload event for model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 317
    monitor-exit v0

    return-void

    .line 320
    :cond_38
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-ne v1, v2, :cond_5b

    .line 321
    const-string v2, "SoundTriggerHalEnforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unload an active model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 323
    monitor-exit v0

    return-void

    .line 325
    :cond_5b
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    nop

    .end local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_70

    .line 328
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->modelUnloaded(I)V

    .line 329
    return-void

    .line 326
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .registers 11
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 278
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 280
    .local v1, "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    if-eqz v1, :cond_91

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-ne v1, v2, :cond_1f

    goto/16 :goto_91

    .line 285
    :cond_1f
    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eqz v2, :cond_5d

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eqz v2, :cond_5d

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v7, 0x3

    if-eq v2, v7, :cond_5d

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v6, :cond_5d

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v5, :cond_5d

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v4, :cond_5d

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v3, :cond_5d

    .line 292
    const-string v2, "SoundTriggerHalEnforcer"

    const-string/jumbo v3, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 296
    monitor-exit v0

    return-void

    .line 298
    :cond_5d
    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_8a

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v6, :cond_8a

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v5, :cond_8a

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v4, :cond_8a

    iget-object v2, p2, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eq v2, v3, :cond_8a

    .line 303
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    :cond_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_b0

    .line 307
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger/PhraseRecognitionEvent;)V

    .line 308
    return-void

    .line 281
    .restart local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    :cond_91
    :goto_91
    :try_start_91
    const-string v2, "SoundTriggerHalEnforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected recognition event for model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 283
    monitor-exit v0

    return-void

    .line 305
    .end local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    :catchall_b0
    move-exception v1

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_91 .. :try_end_b2} :catchall_b0

    throw v1
.end method

.method public recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V
    .registers 8
    .param p1, "model"    # I
    .param p2, "event"    # Landroid/media/soundtrigger/RecognitionEvent;

    .line 253
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 254
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 255
    .local v1, "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    if-eqz v1, :cond_54

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    if-ne v1, v2, :cond_1e

    goto :goto_54

    .line 260
    :cond_1e
    iget-boolean v2, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-eqz v2, :cond_3a

    iget v2, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-eqz v2, :cond_3a

    iget v2, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    .line 262
    const-string v2, "SoundTriggerHalEnforcer"

    const-string/jumbo v3, "recognitionStillActive is only allowed when the recognition status is SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 266
    monitor-exit v0

    return-void

    .line 268
    :cond_3a
    iget-boolean v2, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    if-nez v2, :cond_4d

    .line 269
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->-$$Nest$fgetmModelStates(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_73

    .line 273
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger/RecognitionEvent;)V

    .line 274
    return-void

    .line 256
    .restart local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    :cond_54
    :goto_54
    :try_start_54
    const-string v2, "SoundTriggerHalEnforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected recognition event for model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelCallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer;->reboot()V

    .line 258
    monitor-exit v0

    return-void

    .line 271
    .end local v1    # "state":Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_73

    throw v1
.end method
