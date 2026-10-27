.class public Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "SoftwareTrustedHotwordDetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 8

    .line 110
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {v3, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 115
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->-$$Nest$fgetmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 116
    const-string p1, "SoftwareTrustedHotwordDetectorSession"

    const-string v1, "Hotword detection has already completed"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p1, 0x7

    invoke-static {v3, p1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    goto/16 :goto_f5

    .line 123
    :cond_2a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->-$$Nest$fputmPerformingSoftwareHotwordDetection(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;Z)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_27

    const/16 v1, 0xf

    .line 125
    :try_start_32
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionsForDataDelivery()V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_37} :catch_c4
    .catchall {:try_start_32 .. :try_end_37} :catchall_27

    .line 147
    :try_start_37
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_27

    .line 150
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_9b
    .catchall {:try_start_3c .. :try_end_44} :catchall_27

    .line 170
    :try_start_44
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_8b
    .catchall {:try_start_44 .. :try_end_4e} :catchall_27

    .line 179
    :try_start_4e
    const-string v1, "SoftwareTrustedHotwordDetectorSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Egressed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bits from hotword trusted process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    if-eqz p0, :cond_89

    .line 182
    const-string p0, "SoftwareTrustedHotwordDetectorSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_89
    monitor-exit v0

    return-void

    :catch_8b
    move-exception p1

    .line 172
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 173
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v1, 0x11

    invoke-static {v3, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 177
    throw p1

    :catch_9b
    move-exception p1

    .line 152
    const-string v2, "SoftwareTrustedHotwordDetectorSession"

    const-string v4, "Ignoring #onDetected due to a IOException"

    invoke-static {v2, v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_4e .. :try_end_a3} :catchall_27

    .line 155
    :try_start_a3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object p1

    new-instance v2, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v4, "Copy audio stream failure."

    const/4 v5, 0x6

    invoke-direct {v2, v5, v4}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_b4} :catch_b6
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_27

    .line 167
    :try_start_b4
    monitor-exit v0

    goto :goto_e6

    :catch_b6
    move-exception p1

    .line 160
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 161
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v3, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 165
    throw p1

    :catch_c4
    move-exception p1

    .line 127
    const-string v4, "SoftwareTrustedHotwordDetectorSession"

    const-string v5, "Ignoring #onDetected due to a SecurityException"

    invoke-static {v4, v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p1, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/16 v4, 0x8

    invoke-static {v3, v4, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V
    :try_end_d5
    .catchall {:try_start_b4 .. :try_end_d5} :catchall_27

    .line 133
    :try_start_d5
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->-$$Nest$fgetmSoftwareCallback(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-result-object p1

    new-instance v4, Landroid/service/voice/HotwordDetectionServiceFailure;

    const-string v5, "Security exception occurs in #onDetected method."

    invoke-direct {v4, v2, v5}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_e5} :catch_e7
    .catchall {:try_start_d5 .. :try_end_e5} :catchall_27

    .line 145
    :try_start_e5
    monitor-exit v0

    :goto_e6
    return-void

    :catch_e7
    move-exception p1

    .line 138
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 139
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    invoke-static {v3, v1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 143
    throw p1

    .line 184
    :goto_f5
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_e5 .. :try_end_f6} :catchall_27

    throw p0
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 3

    .line 192
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    const/4 p1, 0x2

    const/4 v0, 0x6

    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    return-void
.end method
