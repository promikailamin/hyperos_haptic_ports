.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->detectFromDspSourceForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field final synthetic val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field final synthetic val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 518
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 6
    .param p1, "result"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "onDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 524
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Ignored hotword detected since trigger has been handled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    monitor-exit v0

    return-void

    .line 527
    :cond_1e
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_80

    .line 529
    :try_start_24
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_29} :catch_77
    .catchall {:try_start_24 .. :try_end_29} :catchall_80

    .line 533
    nop

    .line 534
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 535
    if-eqz p1, :cond_75

    .line 536
    const-string v1, "HotwordDetectionConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits from hotword trusted process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 539
    const-string v1, "HotwordDetectionConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed detected result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_75
    monitor-exit v0

    .line 543
    return-void

    .line 530
    :catch_77
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    const/4 v3, -0x2

    invoke-interface {v2, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onError(I)V

    .line 532
    monitor-exit v0

    return-void

    .line 542
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_2a .. :try_end_82} :catchall_80

    throw v1
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 6
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    const-string v0, "HotwordDetectionConnection"

    const-string/jumbo v1, "onRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_d
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 550
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmValidatingDspTrigger(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V

    .line 551
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 552
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$3;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 553
    const-string v1, "HotwordDetectionConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed rejected result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 556
    :cond_43
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Ignored hotword rejected since trigger has been handled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_d .. :try_end_4e} :catchall_4c

    throw v1
.end method
