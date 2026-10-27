.class public Landroid/media/AudioStatusHandler;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusHandler$ModeState;,
        Landroid/media/AudioStatusHandler$AudioState;,
        Landroid/media/AudioStatusHandler$DeviceState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DELAY:J = 0x1d4c0L

.field public static final blacklist KEY_PID:Ljava/lang/String; = "pid"

.field public static final blacklist KEY_STATE:Ljava/lang/String; = "state"

.field public static final blacklist KEY_USAGE:Ljava/lang/String; = "usage"

.field public static final blacklist MODE_MASK_FOR_NOTIFY:Ljava/lang/String; = "mode_mask_for_notify"

.field public static final blacklist MODE_MASK_FOR_NOTIFY_DEFAULT:Ljava/lang/String; = "3"

.field private static final blacklist MSG_CANCEL_MODE_NOTIFICATION:I = 0x2712

.field private static final blacklist MSG_SEND_MODE_NOTIFICATION:I = 0x2711

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sAudioStatusHandler:Landroid/media/AudioStatusHandler;


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private blacklist mAudioState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandle:Landroid/os/Handler;

.field private final blacklist mStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioManager(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioPlaybackCallback(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager$AudioPlaybackCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioState(Landroid/media/AudioStatusHandler;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/AudioStatusHandler;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Landroid/media/AudioStatusHandler;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateLock(Landroid/media/AudioStatusHandler;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelMessage(Landroid/media/AudioStatusHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelModeNotification(Landroid/media/AudioStatusHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioStatusHandler;->cancelModeNotification()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndSetToNormal(Landroid/media/AudioStatusHandler;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->checkAndSetToNormal(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/media/AudioStatusHandler;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->sendMessage(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    const-class v0, Landroid/media/AudioStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    .line 23
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/media/AudioStatusHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioStatusHandler$1;-><init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/media/AudioStatusHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler$2;-><init>(Landroid/media/AudioStatusHandler;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 58
    iput-object p1, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 60
    return-void
.end method

.method private blacklist addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;
    .registers 7
    .param p1, "usage"    # I

    .line 144
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    .line 145
    .local v0, "audioState":Landroid/media/AudioStatusHandler$AudioState;
    if-eqz v0, :cond_f

    .line 146
    return-object v0

    .line 148
    :cond_f
    packed-switch p1, :pswitch_data_4e

    goto :goto_1a

    .line 150
    :pswitch_13
    new-instance v1, Landroid/media/AudioStatusHandler$ModeState;

    invoke-direct {v1, p0}, Landroid/media/AudioStatusHandler$ModeState;-><init>(Landroid/media/AudioStatusHandler;)V

    move-object v0, v1

    .line 151
    nop

    .line 155
    :goto_1a
    if-eqz v0, :cond_4b

    .line 156
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$DeviceState;

    .line 157
    .local v1, "deviceState":Landroid/media/AudioStatusHandler$DeviceState;
    if-nez v1, :cond_2e

    .line 158
    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v1

    .line 160
    :cond_2e
    invoke-virtual {v0, v1}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    .line 161
    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 162
    :try_start_34
    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v2

    .line 165
    return-object v0

    .line 164
    :catchall_48
    move-exception v3

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_48

    throw v3

    .line 167
    .end local v1    # "deviceState":Landroid/media/AudioStatusHandler$DeviceState;
    :cond_4b
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method private blacklist addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;
    .registers 6
    .param p1, "usage"    # I

    .line 171
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$DeviceState;

    .line 172
    .local v0, "deviceState":Landroid/media/AudioStatusHandler$DeviceState;
    if-eqz v0, :cond_f

    .line 173
    return-object v0

    .line 175
    :cond_f
    new-instance v1, Landroid/media/AudioStatusHandler$DeviceState;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioStatusHandler$DeviceState;-><init>(Landroid/media/AudioStatusHandler;I)V

    move-object v0, v1

    .line 176
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_18
    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    monitor-exit v1

    .line 179
    return-object v0

    .line 178
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private blacklist cancelMessage(I)V
    .registers 3
    .param p1, "msg"    # I

    .line 183
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    :cond_d
    return-void
.end method

.method private blacklist cancelModeNotification()V
    .registers 3

    .line 402
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 409
    return-void
.end method

.method private blacklist checkAndSetToNormal(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "hasCommunicationAudio":Z
    if-eqz p1, :cond_29

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 85
    .local v2, "playbackConfiguration":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 86
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 87
    .local v3, "audioAttributes":Landroid/media/AudioAttributes;
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    if-ne v5, v4, :cond_28

    .line 88
    const/4 v0, 0x1

    .line 89
    goto :goto_29

    .line 92
    .end local v2    # "playbackConfiguration":Landroid/media/AudioPlaybackConfiguration;
    .end local v3    # "audioAttributes":Landroid/media/AudioAttributes;
    :cond_28
    goto :goto_7

    .line 94
    :cond_29
    :goto_29
    if-nez v0, :cond_34

    .line 95
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 96
    invoke-direct {p0}, Landroid/media/AudioStatusHandler;->cancelModeNotification()V

    .line 98
    :cond_34
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_17

    .line 64
    const-class v0, Landroid/media/AudioStatusHandler;

    monitor-enter v0

    .line 65
    :try_start_7
    sget-object v1, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v1, :cond_12

    .line 66
    new-instance v1, Landroid/media/AudioStatusHandler;

    invoke-direct {v1, p0}, Landroid/media/AudioStatusHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    .line 68
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 70
    :cond_17
    :goto_17
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    return-object v0
.end method

.method private blacklist sendMessage(IJ)V
    .registers 6
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .line 189
    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    .line 190
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    return-void
.end method


# virtual methods
.method public blacklist handleAudioStatusChanged(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 100
    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_70

    .line 104
    :cond_9
    const-string v0, "usage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "usage":I
    invoke-direct {p0, v0}, Landroid/media/AudioStatusHandler;->addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;

    move-result-object v1

    .line 107
    .local v1, "audioState":Landroid/media/AudioStatusHandler$AudioState;
    if-eqz v1, :cond_53

    invoke-virtual {v1, p1}, Landroid/media/AudioStatusHandler$AudioState;->update(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_53

    .line 114
    :cond_1c
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_52

    .line 115
    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAudioStatusChanged type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_52
    return-void

    .line 108
    :cond_53
    :goto_53
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_6f

    .line 109
    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAudioStatusChanged no update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_6f
    return-void

    .line 101
    .end local v0    # "usage":I
    .end local v1    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    :cond_70
    :goto_70
    return-void
.end method

.method public blacklist handleSetForceUse(IILjava/lang/String;)V
    .registers 9
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v0

    .line 122
    .local v0, "deviceState":Landroid/media/AudioStatusHandler$DeviceState;
    if-eqz v0, :cond_61

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler$DeviceState;->update(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_61

    .line 129
    :cond_d
    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_4c

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetForceUse("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string v2, ") due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "forceUse":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetForceUse type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "forceUse":Ljava/lang/String;
    :cond_4c
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$AudioState;

    .line 137
    .local v1, "audioState":Landroid/media/AudioStatusHandler$AudioState;
    if-eqz v1, :cond_60

    .line 138
    invoke-virtual {v1, v0}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    .line 139
    invoke-virtual {v1}, Landroid/media/AudioStatusHandler$AudioState;->onConfigChanaged()Z

    .line 141
    :cond_60
    return-void

    .line 123
    .end local v1    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    :cond_61
    :goto_61
    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_7d

    .line 124
    sget-object v1, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetForceUse no update for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_7d
    return-void
.end method
