.class public Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCanceled:Z

.field public final mExpiryTime:Ljava/time/Instant;

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Ljava/time/Instant;)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mExpiryTime:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 184
    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    .line 185
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public run()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    if-eqz v1, :cond_d

    .line 166
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_53

    .line 170
    :cond_d
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mExpiryTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 171
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 172
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$fgetmSetPowerBoostRunnable(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 173
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$fgetmFgHandler(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$fgetmSetPowerBoostRunnable(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    move-result-object p0

    sget v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->POWER_BOOST_TIMEOUT_MS:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_51

    .line 176
    :cond_40
    const-string v1, "VoiceInteractionServiceManager"

    const-string v3, "Reset power boost INTERACTION because reaching max timeout."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-static {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 179
    :cond_51
    :goto_51
    monitor-exit v0

    return-void

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_b

    throw p0
.end method
