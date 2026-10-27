.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$handleExternalSourceHotwordDetection$10$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/IHotwordDetectionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field final synthetic val$audioSource:Ljava/io/InputStream;

.field final synthetic val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field final synthetic val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 890
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$audioSource:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDetected$1(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .registers 4
    .param p0, "serviceAudioSink"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "audioSource"    # Ljava/io/InputStream;

    .line 917
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smbestEffortClose([Ljava/io/Closeable;)V

    .line 918
    return-void
.end method

.method static synthetic lambda$onRejected$0(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .registers 4
    .param p0, "serviceAudioSink"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "audioSource"    # Ljava/io/InputStream;

    .line 896
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smbestEffortClose([Ljava/io/Closeable;)V

    .line 897
    return-void
.end method


# virtual methods
.method public onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .registers 8
    .param p1, "triggerResult"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmScheduledExecutorService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$audioSource:Ljava/io/InputStream;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v0, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 923
    :try_start_16
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$menforcePermissionsForDataDelivery(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1b} :catch_65

    .line 927
    nop

    .line 928
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    .line 930
    if-eqz p1, :cond_64

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Egressed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 932
    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bits from hotword trusted process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_64
    return-void

    .line 924
    :catch_65
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onError()V

    .line 926
    return-void
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 8
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmScheduledExecutorService(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$audioSource:Ljava/io/InputStream;

    new-instance v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v0, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 901
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 903
    if-eqz p1, :cond_42

    .line 904
    const-string v0, "HotwordDetectionConnection"

    const-string v1, "Egressed \'hotword rejected result\' from hotword trusted process"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDebugHotwordLogging(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Egressed detected result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_42
    return-void
.end method
