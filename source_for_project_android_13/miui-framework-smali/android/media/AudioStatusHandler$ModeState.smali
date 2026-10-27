.class Landroid/media/AudioStatusHandler$ModeState;
.super Landroid/media/AudioStatusHandler$AudioState;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeState"
.end annotation


# instance fields
.field private blacklist mModeMask:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/media/AudioStatusHandler;)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;

    .line 306
    iput-object p1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    .line 308
    invoke-static {p1}, Landroid/media/AudioStatusHandler;->-$$Nest$fgetmContext(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    const-string v1, "mode_mask_for_notify"

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    .line 310
    if-nez v0, :cond_1d

    .line 311
    const-string v0, "3"

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    .line 313
    :cond_1d
    return-void
.end method

.method private blacklist isSpeakerOn()Z
    .registers 3

    .line 382
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    iget v0, v0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private blacklist sendModeNotification()V
    .registers 4

    .line 386
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v0

    if-nez v0, :cond_23

    .line 387
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendModeStatusNotification not communication mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 391
    :cond_23
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 392
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendModeStatusNotification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mUsage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speakerOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->isSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_6b
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0}, Landroid/media/AudioStatusHandler;->-$$Nest$fgetmAudioManager(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v1}, Landroid/media/AudioStatusHandler;->-$$Nest$fgetmAudioPlaybackCallback(Landroid/media/AudioStatusHandler;)Landroid/media/AudioManager$AudioPlaybackCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v2}, Landroid/media/AudioStatusHandler;->-$$Nest$fgetmHandle(Landroid/media/AudioStatusHandler;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 398
    return-void
.end method

.method private blacklist sendOrUpdateModeMsg()V
    .registers 11

    .line 360
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v0

    const/16 v1, 0x2711

    const-wide/16 v2, 0x0

    if-nez v0, :cond_17

    .line 361
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0, v1}, Landroid/media/AudioStatusHandler;->-$$Nest$mcancelMessage(Landroid/media/AudioStatusHandler;I)V

    .line 362
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    const/16 v1, 0x2712

    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioStatusHandler;->-$$Nest$msendMessage(Landroid/media/AudioStatusHandler;IJ)V

    .line 363
    return-void

    .line 367
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 368
    .local v4, "currentTime":J
    iget-wide v6, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_23

    .line 369
    iput-wide v4, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    .line 372
    :cond_23
    const-wide/32 v6, 0x1d4c0

    iget-wide v8, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    sub-long v8, v4, v8

    sub-long/2addr v6, v8

    .line 373
    .local v6, "delay":J
    cmp-long v0, v6, v2

    if-gez v0, :cond_31

    .line 374
    const-wide/16 v6, 0x0

    .line 378
    :cond_31
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0, v1, v6, v7}, Landroid/media/AudioStatusHandler;->-$$Nest$msendMessage(Landroid/media/AudioStatusHandler;IJ)V

    .line 379
    return-void
.end method

.method private blacklist showNotifyForMode()Z
    .registers 4

    .line 321
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 322
    invoke-static {}, Landroid/media/AudioStatusHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNotifyForMode mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_2e
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 326
    const/4 v0, 0x1

    return v0

    .line 329
    :cond_3e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist isActive()Z
    .registers 2

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onConfigChanaged()Z
    .registers 2

    .line 354
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onMessageReceived(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_10

    .line 339
    :pswitch_6
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0}, Landroid/media/AudioStatusHandler;->-$$Nest$mcancelModeNotification(Landroid/media/AudioStatusHandler;)V

    .line 340
    goto :goto_10

    .line 336
    :pswitch_c
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendModeNotification()V

    .line 337
    nop

    .line 344
    :goto_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x2711
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist onStateChanged()V
    .registers 1

    .line 349
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    .line 350
    return-void
.end method
