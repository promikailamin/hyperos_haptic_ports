.class public final Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mDeviceAddress:Ljava/lang/String;

.field public mDeviceForStream:I

.field public final mDeviceNativeType:Ljava/lang/String;

.field public final mEvent:I

.field public mIsCurDevice:Z

.field public mSkipped:Z

.field public final mStream:I

.field public final mVolIndex:I


# direct methods
.method public constructor <init>(IILandroid/media/AudioDeviceAttributes;ILjava/lang/String;ZLjava/lang/String;)V
    .registers 10

    .line 191
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mEvent:I

    .line 193
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    .line 194
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    .line 196
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    .line 197
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    .line 198
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    .line 199
    iput-boolean p6, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mSkipped:Z

    .line 201
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p4, "audio.volume.event"

    invoke-direct {p0, p4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 202
    invoke-virtual {p0, p4, p7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p4, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 204
    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p4, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 206
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 207
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 208
    invoke-virtual {p0, p1, p5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public constructor <init>(IILandroid/media/AudioDeviceAttributes;Ljava/lang/String;Z)V
    .registers 8

    .line 213
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 v0, 0x1

    .line 214
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mEvent:I

    .line 215
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    .line 216
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    .line 218
    invoke-virtual {p3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    .line 220
    iput-boolean p5, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mIsCurDevice:Z

    .line 222
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p5, "audio.volume.event"

    invoke-direct {p0, p5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p5, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v1, "notifyAbsoluteVolumeChanged"

    .line 223
    invoke-virtual {p0, p5, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p5, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 225
    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p0, p5, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 226
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 227
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 228
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 229
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 8

    .line 235
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mEvent:I

    const-string v1, ") from "

    const-string v2, " addr:"

    const-string v3, " device:"

    const-string v4, " index:"

    const-string v5, "(stream:"

    if-eqz v0, :cond_60

    const/4 v6, 0x1

    if-eq v0, v6, :cond_15

    .line 261
    const-string/jumbo p0, "wrong event"

    return-object p0

    .line 252
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "notifyAbsoluteVolumeChanged"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mIsCurDevice:Z

    if-eqz v2, :cond_4d

    const-string v2, "curr dev]"

    goto :goto_50

    :cond_4d
    const-string/jumbo v2, "not curr dev]"

    :goto_50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setDeviceVolume"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mStream:I

    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mVolIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceNativeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-boolean v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mSkipped:Z

    if-eqz v1, :cond_9e

    .line 244
    const-string p0, " skipped [device in use]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0

    .line 245
    :cond_9e
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    if-eqz v1, :cond_b0

    .line 246
    const-string v1, " currDevForStream:Ox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$DeviceVolumeEvent;->mDeviceForStream:I

    .line 247
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_b0
    :goto_b0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
