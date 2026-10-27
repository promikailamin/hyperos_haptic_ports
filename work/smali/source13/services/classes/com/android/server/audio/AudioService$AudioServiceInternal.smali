.class final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 11243
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssistantServiceUid(I)V
    .registers 10
    .param p1, "uid"    # I

    .line 11281
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x2c

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 11283
    return-void
.end method

.method public getRingerModeInternal()I
    .registers 2

    .line 11257
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public removeAssistantServiceUid(I)V
    .registers 10
    .param p1, "uid"    # I

    .line 11287
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x2d

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 11289
    return-void
.end method

.method public setAccessibilityServiceUids(Landroid/util/IntArray;)V
    .registers 11
    .param p1, "uids"    # Landroid/util/IntArray;

    .line 11318
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUidsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11319
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 11320
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto :goto_57

    .line 11322
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    .line 11323
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    .line 11324
    .local v1, "changed":Z
    :goto_2d
    if-nez v1, :cond_4c

    .line 11325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4c

    .line 11326
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v3, v4, :cond_49

    .line 11327
    const/4 v1, 0x1

    .line 11328
    goto :goto_4c

    .line 11325
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 11332
    .end local v2    # "i":I
    :cond_4c
    :goto_4c
    if-eqz v1, :cond_57

    .line 11333
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 11336
    .end local v1    # "changed":Z
    :cond_57
    :goto_57
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 11338
    monitor-exit v0

    .line 11339
    return-void

    .line 11338
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public setActiveAssistantServicesUids(Landroid/util/IntArray;)V
    .registers 10
    .param p1, "activeUids"    # Landroid/util/IntArray;

    .line 11293
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11294
    :try_start_7
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 11295
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Lcom/android/server/audio/AudioService;->-$$Nest$sfgetNO_ACTIVE_ASSISTANT_SERVICE_UIDS()[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    goto :goto_5a

    .line 11297
    :cond_17
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v1

    array-length v1, v1

    .line 11298
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    .line 11299
    .local v1, "changed":Z
    :goto_30
    if-nez v1, :cond_4f

    .line 11300
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4f

    .line 11301
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    if-eq v3, v4, :cond_4c

    .line 11302
    const/4 v1, 0x1

    .line 11303
    goto :goto_4f

    .line 11300
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 11307
    .end local v2    # "i":I
    :cond_4f
    :goto_4f
    if-eqz v1, :cond_5a

    .line 11308
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmActiveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 11311
    .end local v1    # "changed":Z
    :cond_5a
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_6c

    .line 11312
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 11314
    return-void

    .line 11311
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public setInputMethodServiceUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 11346
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmInputMethodServiceUidLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11347
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmInputMethodServiceUid(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, p1, :cond_1d

    .line 11348
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    .line 11349
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmInputMethodServiceUid(Lcom/android/server/audio/AudioService;I)V

    .line 11351
    :cond_1d
    monitor-exit v0

    .line 11352
    return-void

    .line 11351
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 11246
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmRingerModeDelegate(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)V

    .line 11247
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRingerModeDelegate(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 11248
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11249
    :try_start_14
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateRingerAndZenModeAffectedStreams(Lcom/android/server/audio/AudioService;)Z

    .line 11250
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    .line 11251
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v0

    const-string v1, "AS.AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_27

    .line 11250
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 11253
    :cond_27
    :goto_27
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 11262
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 11263
    return-void
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 11267
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 11268
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .registers 5

    .line 11272
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11273
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateRingerAndZenModeAffectedStreams(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 11274
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$msetRingerModeInt(Lcom/android/server/audio/AudioService;IZ)V

    .line 11276
    :cond_19
    monitor-exit v0

    .line 11277
    return-void

    .line 11276
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method
