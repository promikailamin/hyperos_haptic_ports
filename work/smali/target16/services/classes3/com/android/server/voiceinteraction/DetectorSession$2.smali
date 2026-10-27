.class public Lcom/android/server/voiceinteraction/DetectorSession$2;
.super Ljava/lang/Object;
.source "DetectorSession.java"

# interfaces
.implements Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    .registers 3

    .line 427
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 433
    const-string p2, "DetectorSession"

    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-interface {p3}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onDetected()V

    .line 438
    :try_start_7
    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    invoke-interface {p3, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_1f

    :catch_f
    move-exception p3

    .line 440
    const-string v0, "RemoteException when sending HotwordDetectedResult to VoiceInteractionService."

    invoke-static {p2, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    iget-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-interface {p3, v0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 454
    :goto_1f
    invoke-virtual {p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordAudioStream;

    .line 456
    :try_start_33
    invoke-virtual {p1}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_27

    :catch_3b
    move-exception p1

    .line 458
    const-string p3, "Unable to close audio stream parcel file descriptor,"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_42
    return-void
.end method

.method public onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 4

    .line 469
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHotwordDetectionServiceFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2

    .line 476
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$2;->val$wearableCallback:Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    invoke-interface {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;->onRejected()V

    return-void
.end method
