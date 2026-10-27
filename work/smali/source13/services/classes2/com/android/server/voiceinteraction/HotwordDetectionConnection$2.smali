.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->startListeningFromMicLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 418
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

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

    .line 424
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 426
    const-string v1, "HotwordDetectionConnection"

    const-string v2, "Hotword detection has already completed"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    monitor-exit v0

    return-void

    .line 429
    :cond_16
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fputmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_7e

    .line 431
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_21} :catch_72
    .catchall {:try_start_1c .. :try_end_21} :catchall_7e

    .line 435
    nop

    .line 436
    :try_start_22
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    .line 437
    if-eqz p1, :cond_70

    .line 438
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

    .line 440
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 441
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

    .line 444
    :cond_70
    monitor-exit v0

    .line 445
    return-void

    .line 432
    :catch_72
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onError()V

    .line 434
    monitor-exit v0

    return-void

    .line 444
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_22 .. :try_end_80} :catchall_7e

    throw v1
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    return-void
.end method
