.class final Lcom/android/server/hdmi/HotplugDetectionAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "HotplugDetectionAction.java"


# static fields
.field private static final AVR_COUNT_MAX:I = 0x3

.field private static final NUM_OF_ADDRESS:I = 0xf

.field public static final POLLING_INTERVAL_MS_FOR_PLAYBACK:I = 0xea60

.field public static final POLLING_INTERVAL_MS_FOR_TV:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_POLLING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HotPlugDetectionAction"

.field public static final TIMEOUT_COUNT:I = 0x3


# instance fields
.field private mAvrStatusCount:I

.field private final mIsTvDevice:Z

.field private mTimeoutCount:I


# direct methods
.method static bridge synthetic -$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HotplugDetectionAction;->checkHotplug(Ljava/util/List;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 59
    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 70
    return-void
.end method

.method private addDevice(I)V
    .registers 3
    .param p1, "addedAddress"    # I

    .line 229
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 231
    return-void
.end method

.method private static addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 212
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 213
    .local v0, "set":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 214
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 215
    .end local v2    # "value":Ljava/lang/Integer;
    goto :goto_b

    .line 216
    :cond_1f
    return-object v0
.end method

.method private checkHotplug(Ljava/util/List;Z)V
    .registers 14
    .param p2, "audioOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 158
    .local p1, "ackedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 159
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "deviceInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-static {v0, p2, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    move-result-object v2

    .line 161
    .local v2, "currentInfos":Ljava/util/BitSet;
    invoke-static {p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addressListToBitSet(Ljava/util/List;)Ljava/util/BitSet;

    move-result-object v3

    .line 164
    .local v3, "polledResult":Ljava/util/BitSet;
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v4

    .line 165
    .local v4, "removed":Ljava/util/BitSet;
    const/4 v5, -0x1

    .line 166
    .local v5, "index":I
    :goto_1d
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    move v5, v6

    const/4 v7, 0x5

    const/4 v8, -0x1

    const-string v9, "HotPlugDetectionAction"

    const/4 v10, 0x1

    if-eq v6, v8, :cond_86

    .line 167
    iget-boolean v6, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v6, :cond_6c

    if-ne v5, v7, :cond_6c

    .line 168
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v6

    .line 169
    .local v6, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v6, :cond_6c

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v7

    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnected(I)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 170
    iget v7, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    add-int/2addr v7, v10

    iput v7, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ack not returned from AVR. count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v7, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_6c

    .line 173
    goto :goto_1d

    .line 177
    .end local v6    # "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_6c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove device by hot-plug detection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeDevice(I)V

    goto :goto_1d

    .line 182
    :cond_86
    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 183
    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mAvrStatusCount:I

    .line 187
    :cond_8e
    invoke-static {v0, p2, v10}, Lcom/android/server/hdmi/HotplugDetectionAction;->infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;

    move-result-object v1

    .line 188
    .local v1, "currentInfosWithPhysicalAddress":Ljava/util/BitSet;
    invoke-static {v3, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v6

    .line 189
    .local v6, "added":Ljava/util/BitSet;
    const/4 v5, -0x1

    .line 190
    :goto_97
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    move v5, v7

    if-eq v7, v8, :cond_ba

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add device by hot-plug detection:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, v5}, Lcom/android/server/hdmi/HotplugDetectionAction;->addDevice(I)V

    goto :goto_97

    .line 194
    :cond_ba
    return-void
.end method

.method private static complement(Ljava/util/BitSet;Ljava/util/BitSet;)Ljava/util/BitSet;
    .registers 3
    .param p0, "first"    # Ljava/util/BitSet;
    .param p1, "second"    # Ljava/util/BitSet;

    .line 222
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 223
    .local v0, "clone":Ljava/util/BitSet;
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 224
    return-object v0
.end method

.method private getPollingInterval()I
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x1388

    goto :goto_a

    :cond_7
    const v0, 0xea60

    :goto_a
    return v0
.end method

.method private static infoListToBitSet(Ljava/util/List;ZZ)Ljava/util/BitSet;
    .registers 11
    .param p1, "audioOnly"    # Z
    .param p2, "requirePhysicalAddress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;ZZ)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 198
    .local p0, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 199
    .local v0, "set":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 200
    .local v2, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_25

    .line 201
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_23

    goto :goto_25

    :cond_23
    move v5, v3

    goto :goto_26

    :cond_25
    :goto_25
    move v5, v4

    .line 202
    .local v5, "audioOnlyConditionMet":Z
    :goto_26
    if-eqz p2, :cond_31

    .line 203
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v6

    const v7, 0xffff

    if-eq v6, v7, :cond_32

    :cond_31
    move v3, v4

    .line 204
    .local v3, "requirePhysicalAddressConditionMet":Z
    :cond_32
    if-eqz v5, :cond_3d

    if-eqz v3, :cond_3d

    .line 205
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 207
    .end local v2    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "requirePhysicalAddressConditionMet":Z
    .end local v5    # "audioOnlyConditionMet":Z
    :cond_3d
    goto :goto_b

    .line 208
    :cond_3e
    return-object v0
.end method

.method private mayCancelDeviceSelect(I)V
    .registers 7
    .param p1, "address"    # I

    .line 251
    const-class v0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "actionsFromTv":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/DeviceSelectActionFromTv;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 253
    .local v2, "action":Lcom/android/server/hdmi/DeviceSelectActionFromTv;
    invoke-virtual {v2}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result v3

    if-ne v3, p1, :cond_21

    .line 254
    const-class v3, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Ljava/lang/Class;)V

    .line 256
    .end local v2    # "action":Lcom/android/server/hdmi/DeviceSelectActionFromTv;
    :cond_21
    goto :goto_a

    .line 258
    :cond_22
    const-class v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "actionsFromPlayback":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 261
    .local v3, "action":Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;
    invoke-virtual {v3}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetAddress()I

    move-result v4

    if-ne v4, p1, :cond_43

    .line 262
    const-class v4, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Ljava/lang/Class;)V

    .line 264
    .end local v3    # "action":Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;
    :cond_43
    goto :goto_2c

    .line 265
    :cond_44
    return-void
.end method

.method private mayCancelOneTouchRecord(I)V
    .registers 6
    .param p1, "address"    # I

    .line 268
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchRecordAction;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 270
    .local v2, "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    invoke-virtual {v2}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v3

    if-ne v3, p1, :cond_1f

    .line 271
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 273
    .end local v2    # "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    :cond_1f
    goto :goto_a

    .line 274
    :cond_20
    return-void
.end method

.method private mayChangeRoutingPath(I)V
    .registers 5
    .param p1, "address"    # I

    .line 244
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 245
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1b

    .line 246
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleRemoveActiveRoutingPath(I)V

    .line 248
    :cond_1b
    return-void
.end method

.method private mayDisableSystemAudioAndARC(I)V
    .registers 4
    .param p1, "address"    # I

    .line 277
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 278
    return-void

    .line 281
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 283
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel(Z)V

    .line 284
    new-instance v0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 286
    :cond_2d
    return-void
.end method

.method private pollAllDevices()V
    .registers 4

    .line 134
    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Poll all devices."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$1;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10001

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 143
    return-void
.end method

.method private pollAudioSystem()V
    .registers 4

    .line 146
    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Poll audio system."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HotplugDetectionAction$2;-><init>(Lcom/android/server/hdmi/HotplugDetectionAction;)V

    const v1, 0x10002

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 155
    return-void
.end method

.method private removeDevice(I)V
    .registers 4
    .param p1, "removedAddress"    # I

    .line 234
    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v0, :cond_d

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayChangeRoutingPath(I)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelOneTouchRecord(I)V

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayDisableSystemAudioAndARC(I)V

    .line 239
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;->mayCancelDeviceSelect(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 241
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 98
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 99
    return-void

    .line 102
    :cond_5
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 103
    iget-boolean v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    if-eqz v0, :cond_30

    .line 104
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 105
    if-nez v0, :cond_1b

    .line 106
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    goto :goto_28

    .line 107
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 108
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAudioSystem()V

    .line 110
    :cond_28
    :goto_28
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 111
    return-void

    .line 113
    :cond_30
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 114
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    const v1, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 116
    :cond_3b
    return-void
.end method

.method pollAllDevicesNow()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    .line 128
    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 130
    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getPollingInterval()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 131
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method start()Z
    .registers 4

    .line 78
    const-string v0, "HotPlugDetectionAction"

    const-string v1, "Hot-plug detection started."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 86
    iget v1, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mState:I

    invoke-direct {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->getPollingInterval()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HotplugDetectionAction;->addTimer(II)V

    .line 87
    return v0
.end method
