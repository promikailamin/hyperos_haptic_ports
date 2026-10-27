.class final Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadSoundEffectReply"
.end annotation


# static fields
.field private static final SOUND_EFFECTS_ERROR:I = -0x1

.field private static final SOUND_EFFECTS_LOADED:I = 0x0

.field private static final SOUND_EFFECTS_LOADING:I = 0x1

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mStatus:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5872
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService$LoadSoundEffectReply-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run(Z)V
    .registers 3
    .param p1, "success"    # Z

    monitor-enter p0

    .line 5876
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    :goto_6
    :try_start_6
    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5877
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 5878
    monitor-exit p0

    return-void

    .line 5875
    .end local p0    # "this":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    .end local p1    # "success":Z
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForLoaded(I)Z
    .registers 5
    .param p1, "attempts"    # I

    monitor-enter p0

    .line 5881
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    add-int/lit8 v2, p1, -0x1

    .end local p1    # "attempts":I
    .local v2, "attempts":I
    if-lez p1, :cond_1b

    .line 5883
    const-wide/16 v0, 0x1388

    :try_start_c
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10
    .catchall {:try_start_c .. :try_end_f} :catchall_22

    .line 5886
    goto :goto_19

    .line 5884
    .end local p0    # "this":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :catch_10
    move-exception p1

    .line 5885
    .local p1, "e":Ljava/lang/InterruptedException;
    :try_start_11
    const-string v0, "AS.AudioService"

    const-string v1, "Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_22

    .line 5886
    nop

    .line 5881
    .end local p1    # "e":Ljava/lang/InterruptedException;
    :goto_19
    move p1, v2

    goto :goto_1

    :cond_1b
    move p1, v2

    .line 5888
    .end local v2    # "attempts":I
    .local p1, "attempts":I
    :cond_1c
    if-nez v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    monitor-exit p0

    return v1

    .line 5880
    .end local p1    # "attempts":I
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
