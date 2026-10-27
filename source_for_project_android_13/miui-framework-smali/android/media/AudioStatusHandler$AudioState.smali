.class abstract Landroid/media/AudioStatusHandler$AudioState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AudioState"
.end annotation


# instance fields
.field final blacklist DEFAULT_STATE:I

.field blacklist mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

.field blacklist mPid:I

.field blacklist mStartTime:J

.field blacklist mState:I

.field blacklist mUsage:I

.field final synthetic blacklist this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/media/AudioStatusHandler;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;
    .param p2, "usage"    # I

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    .line 251
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/AudioStatusHandler;II)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;
    .param p2, "usage"    # I
    .param p3, "defaultState"    # I

    .line 253
    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    .line 255
    iput p2, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 258
    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    .line 259
    return-void
.end method


# virtual methods
.method public blacklist isActive()Z
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist onConfigChanaged()Z
.end method

.method public abstract blacklist onMessageReceived(Landroid/os/Message;)Z
.end method

.method public abstract blacklist onStateChanged()V
.end method

.method public blacklist update(Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 271
    const/4 v0, 0x0

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4b

    .line 275
    :cond_a
    iget v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const-string v2, "usage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 276
    return v0

    .line 279
    :cond_15
    const-string v1, "pid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "inPid":I
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    const-string v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 281
    .local v2, "inState":I
    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    if-ne v1, v3, :cond_2c

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    if-ne v2, v3, :cond_2c

    .line 282
    return v0

    .line 285
    :cond_2c
    iput v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    .line 286
    iput v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    .line 287
    iget-wide v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3e

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 290
    :cond_3e
    iget v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    if-ne v0, v3, :cond_46

    .line 291
    iput-wide v5, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 294
    :cond_46
    invoke-virtual {p0}, Landroid/media/AudioStatusHandler$AudioState;->onStateChanged()V

    .line 296
    const/4 v0, 0x1

    return v0

    .line 272
    .end local v1    # "inPid":I
    .end local v2    # "inState":I
    :cond_4b
    :goto_4b
    return v0
.end method

.method public blacklist updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z
    .registers 3
    .param p1, "deviceState"    # Landroid/media/AudioStatusHandler$DeviceState;

    .line 266
    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    .line 267
    const/4 v0, 0x1

    return v0
.end method
