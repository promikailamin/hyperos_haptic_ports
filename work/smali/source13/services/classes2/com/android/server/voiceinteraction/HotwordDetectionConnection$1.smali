.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateStateAfterProcessStart$1$com-android-server-voiceinteraction-HotwordDetectionConnection(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/IHotwordDetectionService;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

.field final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 278
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmUpdateStateAfterStartFinished(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v2, "HotwordDetectionConnection"

    if-eqz v0, :cond_29

    .line 286
    const-string v0, "call callback after timeout"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v2, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 290
    return-void

    .line 292
    :cond_29
    invoke-static {p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$smgetInitStatusAndMetricsResult(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v0

    .line 293
    .local v0, "statusResultPair":Landroid/util/Pair;
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 294
    .local v3, "status":I
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 296
    .local v4, "initResultMetricsResult":I
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v5}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmCallback(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 297
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v5}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v5

    invoke-static {v5, v4}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(II)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4f} :catch_50

    .line 305
    goto :goto_70

    .line 299
    :catch_50
    move-exception v5

    .line 302
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to report initialization status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeServiceInitResultEvent(II)V

    .line 306
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_70
    return-void
.end method
