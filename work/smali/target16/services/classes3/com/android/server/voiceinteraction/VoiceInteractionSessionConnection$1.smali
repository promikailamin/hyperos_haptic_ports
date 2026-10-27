.class public Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "VoiceInteractionSessionConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$mnotifyPendingShowCallbacksFailedLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 195
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onShown()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$mnotifyPendingShowCallbacksShownLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 204
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method
