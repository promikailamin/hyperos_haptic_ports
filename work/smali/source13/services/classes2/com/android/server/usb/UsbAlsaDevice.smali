.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaDevice.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbAlsaDevice"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardNum:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private mDeviceDescription:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private final mDeviceNum:I

.field private final mHasInput:Z

.field private final mHasOutput:Z

.field private mInputState:I

.field private final mIsDock:Z

.field private final mIsInputHeadset:Z

.field private final mIsOutputHeadset:Z

.field private mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field private mOutputState:I

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V
    .registers 11
    .param p1, "audioService"    # Landroid/media/IAudioService;
    .param p2, "card"    # I
    .param p3, "device"    # I
    .param p4, "deviceAddress"    # Ljava/lang/String;
    .param p5, "hasOutput"    # Z
    .param p6, "hasInput"    # Z
    .param p7, "isInputHeadset"    # Z
    .param p8, "isOutputHeadset"    # Z
    .param p9, "isDock"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    .line 60
    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    .line 61
    iput p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    .line 62
    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    .line 64
    iput-boolean p6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    .line 65
    iput-boolean p7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    .line 66
    iput-boolean p8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    .line 67
    iput-boolean p9, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    .line 68
    return-void
.end method

.method private declared-synchronized isInputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    .line 143
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 145
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 141
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isOutputJackConnected()Z
    .registers 2

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    .line 153
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 155
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 151
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startJackDetect()V
    .registers 2

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 162
    monitor-exit p0

    return-void

    .line 160
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopJackDetect()V
    .registers 2

    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_8

    .line 167
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    .line 169
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 170
    monitor-exit p0

    return-void

    .line 165
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    monitor-enter p0

    .line 260
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 262
    .local v0, "token":J
    const-string v2, "card"

    const-wide v3, 0x10500000001L

    iget v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 263
    const-string v2, "device"

    const-wide v3, 0x10500000002L

    iget v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 264
    const-string/jumbo v2, "name"

    const-wide v3, 0x10900000003L

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 265
    const-string v2, "has_output"

    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 266
    const-string v2, "has_input"

    const-wide v3, 0x10800000005L

    iget-boolean v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 267
    const-string v2, "address"

    const-wide v3, 0x10900000006L

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 269
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 270
    monitor-exit p0

    return-void

    .line 259
    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    .end local p1    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local p2    # "idName":Ljava/lang/String;
    .end local p3    # "id":J
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 291
    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 292
    return v1

    .line 294
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 295
    .local v0, "other":Lcom/android/server/usb/UsbAlsaDevice;
    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    iget v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-ne v2, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public getAlsaCardDeviceString()Ljava/lang/String;
    .registers 3

    .line 95
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz v0, :cond_e

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    if-gez v1, :cond_9

    goto :goto_e

    .line 100
    :cond_9
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alsaDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbAlsaDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardNum()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getDeviceName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 278
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceNum()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    return v0
.end method

.method public hasInput()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    return v0
.end method

.method public hasOutput()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 309
    const/16 v0, 0x1f

    .line 310
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 311
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    add-int/2addr v2, v3

    .line 312
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    add-int/2addr v1, v3

    .line 313
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 314
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 315
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 316
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 317
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 319
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public isDock()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    return v0
.end method

.method public isInputHeadset()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    return v0
.end method

.method public isOutputHeadset()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    return v0
.end method

.method declared-synchronized setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "deviceDescription"    # Ljava/lang/String;

    monitor-enter p0

    .line 282
    :try_start_1
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceDescription:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 284
    monitor-exit p0

    return-void

    .line 281
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "deviceDescription":Ljava/lang/String;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 174
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 176
    iput v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 177
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->startJackDetect()V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 179
    monitor-exit p0

    return-void

    .line 173
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 183
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopJackDetect()V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(Z)V

    .line 185
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 186
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 274
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[card:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object v0

    .line 274
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 249
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAlsaDevice: [card: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasOutput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-object v0

    .line 249
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateWiredDeviceConnectionState(Z)V
    .registers 11
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 192
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mSelected:Z

    if-nez v0, :cond_f

    .line 193
    const-string v0, "UsbAlsaDevice"

    const-string/jumbo v1, "updateWiredDeviceConnectionState on unselected AlsaDevice!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b5

    .line 194
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_b5

    .line 197
    .local v0, "alsaCardDeviceString":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 198
    monitor-exit p0

    return-void

    .line 202
    .restart local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_17
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasOutput:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_65

    .line 203
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-eqz v1, :cond_24

    const/16 v1, 0x1000

    goto :goto_2d

    .line 204
    :cond_24
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsOutputHeadset:Z

    if-eqz v1, :cond_2b

    .line 205
    const/high16 v1, 0x4000000

    goto :goto_2d

    .line 206
    :cond_2b
    const/16 v1, 0x4000

    :goto_2d
    nop

    .line 212
    .local v1, "device":I
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isOutputJackConnected()Z

    move-result v4

    .line 213
    .local v4, "connected":Z
    const-string v5, "UsbAlsaDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OUTPUT JACK connected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p1, :cond_50

    if-eqz v4, :cond_50

    move v5, v2

    goto :goto_51

    :cond_50
    move v5, v3

    .line 215
    .local v5, "outputState":I
    :goto_51
    iget v6, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    if-eq v5, v6, :cond_65

    .line 216
    iput v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mOutputState:I

    .line 217
    new-instance v6, Landroid/media/AudioDeviceAttributes;

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v6, v1, v0, v7}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v6, "attributes":Landroid/media/AudioDeviceAttributes;
    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v8, "UsbAlsaDevice"

    invoke-interface {v7, v6, v5, v8}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 224
    .end local v1    # "device":I
    .end local v4    # "connected":Z
    .end local v5    # "outputState":I
    .end local v6    # "attributes":Landroid/media/AudioDeviceAttributes;
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_65
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasInput:Z

    if-eqz v1, :cond_aa

    .line 225
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsInputHeadset:Z

    if-eqz v1, :cond_70

    .line 226
    const/high16 v1, -0x7e000000

    goto :goto_73

    .line 227
    :cond_70
    const v1, -0x7ffff000

    :goto_73
    nop

    .line 228
    .restart local v1    # "device":I
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaDevice;->isInputJackConnected()Z

    move-result v4

    .line 229
    .restart local v4    # "connected":Z
    const-string v5, "UsbAlsaDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INPUT JACK connected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz p1, :cond_95

    if-eqz v4, :cond_95

    goto :goto_96

    :cond_95
    move v2, v3

    .line 231
    .local v2, "inputState":I
    :goto_96
    iget v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    if-eq v2, v3, :cond_aa

    .line 232
    iput v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mInputState:I

    .line 233
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v3, v1, v0, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v3, "attributes":Landroid/media/AudioDeviceAttributes;
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string v6, "UsbAlsaDevice"

    invoke-interface {v5, v3, v2, v6}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_aa} :catch_ab
    .catchall {:try_start_17 .. :try_end_aa} :catchall_b5

    .line 240
    .end local v1    # "device":I
    .end local v2    # "inputState":I
    .end local v3    # "attributes":Landroid/media/AudioDeviceAttributes;
    .end local v4    # "connected":Z
    :cond_aa
    goto :goto_b3

    .line 238
    :catch_ab
    move-exception v1

    .line 239
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_ac
    const-string v2, "UsbAlsaDevice"

    const-string v3, "RemoteException in setWiredDeviceConnectionState"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_b5

    .line 241
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_b3
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "alsaCardDeviceString":Ljava/lang/String;
    .end local p1    # "enable":Z
    :catchall_b5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
