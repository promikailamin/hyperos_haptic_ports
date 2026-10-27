.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 177
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$mnotifyPendingShowCallbacksFailedLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onShown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_5
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$mnotifyPendingShowCallbacksShownLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
