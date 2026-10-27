.class public Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;
.super Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.source "VisualQueryDetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkDetectedResultDataLocked(Landroid/service/voice/VisualQueryDetectedResult;)Z
    .registers 2

    .line 320
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmEnableAccessibilityDataEgress(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    .registers 5

    .line 129
    const-string v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onAttentionGained"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    .line 132
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 133
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_47

    .line 136
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_1c

    goto :goto_45

    :catch_28
    move-exception p1

    .line 138
    :try_start_29
    const-string v1, "VisualQueryDetectorSession"

    const-string v2, "Error delivering attention gained event."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_1c

    .line 140
    :try_start_30
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Attention listener fails to switch to GAINED state."

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3d} :catch_3e
    .catchall {:try_start_30 .. :try_end_3d} :catchall_1c

    goto :goto_45

    .line 145
    :catch_3e
    :try_start_3e
    const-string p0, "VisualQueryDetectorSession"

    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_1c

    throw p0
.end method

.method public onAttentionLost(I)V
    .registers 5

    .line 153
    const-string v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onAttentionLost"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    .line 156
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 157
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_47

    .line 160
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionLost(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_1c

    goto :goto_45

    :catch_28
    move-exception p1

    .line 162
    :try_start_29
    const-string v1, "VisualQueryDetectorSession"

    const-string v2, "Error delivering attention lost event."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_1c

    .line 164
    :try_start_30
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Attention listener fails to switch to LOST state."

    const/4 v2, 0x3

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3d} :catch_3e
    .catchall {:try_start_30 .. :try_end_3d} :catchall_1c

    goto :goto_45

    .line 169
    :catch_3e
    :try_start_3e
    const-string p0, "VisualQueryDetectorSession"

    const-string p1, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_1c

    throw p0
.end method

.method public onQueryDetected(Ljava/lang/String;)V
    .registers 8

    .line 177
    const-string v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_c
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_2f

    .line 181
    const-string p1, "VisualQueryDetectorSession"

    const-string v1, "Query should not be egressed within the unattention state."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream queries without attention signals."

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 186
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_6b

    .line 189
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string v3, "android.permission.RECORD_AUDIO"

    const-string v4, "Providing query detection result from VisualQueryDetectionService to VoiceInteractionService"

    const/16 v5, 0x1b

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->enforcePermissionsForVisualQueryDelivery(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_3a} :catch_4e
    .catchall {:try_start_2f .. :try_end_3a} :catchall_2d

    .line 204
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    .line 205
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryDetected(Ljava/lang/String;)V

    .line 206
    const-string p0, "VisualQueryDetectorSession"

    const-string p1, "Egressed from visual query detection process."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-exit v0

    return-void

    :catch_4e
    move-exception p1

    .line 192
    const-string v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_2d

    .line 194
    :try_start_56
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream queries without audio permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_62} :catch_64
    .catchall {:try_start_56 .. :try_end_62} :catchall_2d

    .line 202
    :try_start_62
    monitor-exit v0

    return-void

    :catch_64
    move-exception p1

    .line 199
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 200
    throw p1

    .line 207
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_2d

    throw p0
.end method

.method public onQueryFinished()V
    .registers 5

    .line 284
    const-string v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 287
    const-string v1, "VisualQueryDetectorSession"

    const-string v2, "Query streaming state signal FINISHED is block since there is no active query being streamed."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Cannot send FINISHED signal with no query streamed."

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 293
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_39

    .line 295
    :cond_2c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryFinished()V

    .line 296
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    .line 297
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_2a

    throw p0
.end method

.method public onQueryRejected()V
    .registers 5

    .line 302
    const-string v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onQueryRejected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 305
    const-string v1, "VisualQueryDetectorSession"

    const-string v2, "Query streaming state signal REJECTED is block since there is no active query being streamed."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Cannot send REJECTED signal with no query streamed."

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 311
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_39

    .line 313
    :cond_2c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryRejected()V

    .line 314
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    .line 315
    monitor-exit v0

    return-void

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_2a

    throw p0
.end method

.method public onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 8

    .line 213
    const-string v0, "VisualQueryDetectorSession"

    const-string v1, "BinderCallback#onResultDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_c
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_30

    .line 217
    const-string p1, "VisualQueryDetectorSession"

    const-string v1, "Result should not be egressed within the unattention state."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream results without attention signals."

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 222
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    goto/16 :goto_c1

    .line 224
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->checkDetectedResultDataLocked(Landroid/service/voice/VisualQueryDetectedResult;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 225
    const-string p1, "VisualQueryDetectorSession"

    const-string v1, "Accessibility data can be egressed only when the isAccessibilityDetectionEnabled() is true."

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v1, "Cannot stream accessibility data without enabling the setting."

    invoke-direct {p1, v2, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 232
    monitor-exit v0

    return-void

    .line 236
    :cond_4b
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getAccessibilityDetectionData()[B

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_2d

    if-eqz v1, :cond_7a

    .line 238
    :try_start_51
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string v3, "android.permission.CAMERA"

    const-string v4, "Providing query detection result from VisualQueryDetectionService to VoiceInteractionService"

    const/16 v5, 0x1a

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->enforcePermissionsForVisualQueryDelivery(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_51 .. :try_end_5c} :catch_5d
    .catchall {:try_start_51 .. :try_end_5c} :catchall_2d

    goto :goto_7a

    :catch_5d
    move-exception p1

    .line 241
    :try_start_5e
    const-string v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_2d

    .line 243
    :try_start_65
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream visual only accessibility data without camera permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_71} :catch_73
    .catchall {:try_start_65 .. :try_end_71} :catchall_2d

    .line 252
    :try_start_71
    monitor-exit v0

    goto :goto_a5

    :catch_73
    move-exception p1

    .line 249
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 250
    throw p1

    .line 257
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Landroid/service/voice/VisualQueryDetectedResult;->getPartialQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_82
    .catchall {:try_start_71 .. :try_end_82} :catchall_2d

    if-nez v1, :cond_ad

    .line 259
    :try_start_84
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const-string v3, "android.permission.RECORD_AUDIO"

    const-string v4, "Providing query detection result from VisualQueryDetectionService to VoiceInteractionService"

    const/16 v5, 0x1b

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->enforcePermissionsForVisualQueryDelivery(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/SecurityException; {:try_start_84 .. :try_end_8f} :catch_90
    .catchall {:try_start_84 .. :try_end_8f} :catchall_2d

    goto :goto_ad

    :catch_90
    move-exception p1

    .line 262
    :try_start_91
    const-string v1, "VisualQueryDetectorSession"

    const-string v3, "Ignoring #onQueryDetected due to a SecurityException"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_2d

    .line 264
    :try_start_98
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v3, "Cannot stream queries without audio permission."

    invoke-direct {v1, v2, v3}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a4} :catch_a6
    .catchall {:try_start_98 .. :try_end_a4} :catchall_2d

    .line 272
    :try_start_a4
    monitor-exit v0

    :goto_a5
    return-void

    :catch_a6
    move-exception p1

    .line 269
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 270
    throw p1

    .line 276
    :cond_ad
    :goto_ad
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    .line 277
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V

    .line 278
    const-string p0, "VisualQueryDetectorSession"

    const-string p1, "Egressed from visual query detection process."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-exit v0

    return-void

    :goto_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_2d

    throw p0
.end method
