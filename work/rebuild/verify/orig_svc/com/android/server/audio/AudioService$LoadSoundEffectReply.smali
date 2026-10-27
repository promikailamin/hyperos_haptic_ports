.class public final Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7532
    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run(Z)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_6

    :cond_5
    const/4 p1, -0x1

    .line 7536
    :goto_6
    :try_start_6
    iput p1, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 7537
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 7538
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized waitForLoaded(I)Z
    .registers 5

    monitor-enter p0

    .line 7541
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_1b

    const-wide/16 v0, 0x1388

    .line 7543
    :try_start_c
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_12
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_19

    :catchall_10
    move-exception p1

    goto :goto_21

    .line 7545
    :catch_12
    :try_start_12
    const-string p1, "AS.AudioService"

    const-string v0, "Interrupted while waiting sound pool loaded."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_10

    :goto_19
    move p1, v2

    goto :goto_1

    :cond_1b
    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 7548
    :goto_1f
    monitor-exit p0

    return v1

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_10

    throw p1
.end method
