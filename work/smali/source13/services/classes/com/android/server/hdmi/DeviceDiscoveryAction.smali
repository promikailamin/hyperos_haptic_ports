.class final Lcom/android/server/hdmi/DeviceDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;,
        Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;
    }
.end annotation


# static fields
.field private static final STATE_WAITING_FOR_DEVICES:I = 0x5

.field private static final STATE_WAITING_FOR_DEVICE_POLLING:I = 0x1

.field private static final STATE_WAITING_FOR_OSD_NAME:I = 0x3

.field private static final STATE_WAITING_FOR_PHYSICAL_ADDRESS:I = 0x2

.field private static final STATE_WAITING_FOR_POWER:I = 0x6

.field private static final STATE_WAITING_FOR_VENDOR_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DeviceDiscoveryAction"


# instance fields
.field private final mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

.field private final mDelayPeriod:I

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTvDevice:Z

.field private mProcessedDeviceCount:I

.field private mTimeoutRetry:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelayPeriod(Lcom/android/server/hdmi/DeviceDiscoveryAction;)I
    .registers 1

    iget p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mallocateDevices(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPhysicalAddressStage(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartToDelayAction(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startToDelayAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwrapUpAndFinish(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V
    .registers 4
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;I)V

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;I)V
    .registers 5
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "callback"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;
    .param p3, "delay"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 105
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 106
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 118
    iput p3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    .line 119
    return-void
.end method

.method private allocateDevices(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 159
    .local v1, "i":Ljava/lang/Integer;
    new-instance v2, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo-IA;)V

    .line 160
    .local v2, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    goto :goto_4

    .line 162
    :cond_20
    return-void
.end method

.method private checkAndProceedStage()V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 453
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 454
    return-void

    .line 458
    :cond_c
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 460
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    packed-switch v0, :pswitch_data_34

    .line 474
    :pswitch_1e
    return-void

    .line 471
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 472
    return-void

    .line 468
    :pswitch_23
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPowerStatusStage()V

    .line 469
    return-void

    .line 465
    :pswitch_27
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startVendorIdStage()V

    .line 466
    return-void

    .line 462
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startOsdNameStage()V

    .line 463
    return-void

    .line 477
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 479
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method private delayActionWithTimePeriod(I)V
    .registers 3
    .param p1, "timeDelay"    # I

    .line 200
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 201
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 202
    return-void
.end method

.method private getPortId(I)I
    .registers 3
    .param p1, "physicalAddress"    # I

    .line 358
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v0

    goto :goto_15

    .line 359
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getPortId(I)I

    move-result v0

    .line 358
    :goto_15
    return v0
.end method

.method private handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 331
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 334
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4f

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v2, "DeviceDiscoveryAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 340
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 341
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmPhysicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 342
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmPhysicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getPortId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmPortId(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 343
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmDeviceType(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 345
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmDisplayName(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)V

    .line 348
    iget-boolean v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v2, :cond_8f

    .line 349
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v3

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmDeviceType(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v4

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmPhysicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    .line 353
    :cond_8f
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 355
    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 406
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 409
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v1, v3, :cond_50

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    const-string v2, "DeviceDiscoveryAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 415
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_61

    .line 416
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 417
    .local v1, "params":[B
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    .line 418
    .local v2, "powerStatus":I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmPowerStatus(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 421
    .end local v1    # "params":[B
    .end local v2    # "powerStatus":I
    :cond_61
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 422
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 423
    return-void
.end method

.method private handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 8
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 363
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 366
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    const-string v3, "DeviceDiscoveryAction"

    if-eq v1, v2, :cond_4f

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 372
    :cond_4f
    const-string v1, ""

    .line 374
    .local v1, "displayName":Ljava/lang/String;
    :try_start_51
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-eqz v2, :cond_63

    .line 375
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    const-string v5, "US-ASCII"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_51 .. :try_end_62} :catch_64

    move-object v1, v2

    .line 379
    :cond_63
    goto :goto_7f

    .line 377
    :catch_64
    move-exception v2

    .line 378
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode display name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_7f
    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmDisplayName(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 382
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 383
    return-void
.end method

.method private handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 386
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 389
    .local v0, "current":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-eq v1, v2, :cond_4f

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched address[expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v2, "DeviceDiscoveryAction"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 395
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    if-eqz v1, :cond_60

    .line 396
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 397
    .local v1, "params":[B
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result v2

    .line 398
    .local v2, "vendorId":I
    invoke-static {v0, v2}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fputmVendorId(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)V

    .line 401
    .end local v1    # "params":[B
    .end local v2    # "vendorId":I
    :cond_60
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 402
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 403
    return-void
.end method

.method private increaseProcessedDeviceCount()V
    .registers 2

    .line 426
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 428
    return-void
.end method

.method private mayProcessMessageIfCached(II)Z
    .registers 5
    .param p1, "address"    # I
    .param p2, "opcode"    # I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 277
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_f

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 279
    const/4 v1, 0x1

    return v1

    .line 281
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private queryOsdName(I)V
    .registers 4
    .param p1, "address"    # I

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 214
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 215
    return-void

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 220
    const/16 v0, 0x47

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 221
    return-void

    .line 223
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 224
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 225
    return-void
.end method

.method private queryPhysicalAddress(I)V
    .registers 4
    .param p1, "address"    # I

    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 185
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 186
    return-void

    .line 189
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 192
    const/16 v0, 0x84

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 193
    return-void

    .line 195
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 196
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 197
    return-void
.end method

.method private queryPowerStatus(I)V
    .registers 4
    .param p1, "address"    # I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 262
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 263
    return-void

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 268
    const/16 v0, 0x90

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 269
    return-void

    .line 271
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 272
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 273
    return-void
.end method

.method private queryVendorId(I)V
    .registers 4
    .param p1, "address"    # I

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->verifyValidLogicalAddress(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 238
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 239
    return-void

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    .line 244
    const/16 v0, 0x87

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 245
    return-void

    .line 247
    :cond_18
    nop

    .line 248
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 249
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->addTimer(II)V

    .line 250
    return-void
.end method

.method private removeDevice(I)V
    .registers 3
    .param p1, "index"    # I

    .line 431
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method private sendQueryCommand()V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$fgetmLogicalAddress(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I

    move-result v0

    .line 483
    .local v0, "address":I
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    packed-switch v1, :pswitch_data_2a

    .line 500
    return-void

    .line 497
    :pswitch_14
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPowerStatus(I)V

    .line 498
    return-void

    .line 485
    :pswitch_18
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDelayPeriod:I

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->delayActionWithTimePeriod(I)V

    .line 486
    return-void

    .line 494
    :pswitch_1e
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryVendorId(I)V

    .line 495
    return-void

    .line 491
    :pswitch_22
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryOsdName(I)V

    .line 492
    return-void

    .line 488
    :pswitch_26
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->queryPhysicalAddress(I)V

    .line 489
    return-void

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method private startOsdNameStage()V
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Osd Name Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 207
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 209
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 210
    return-void
.end method

.method private startPhysicalAddressStage()V
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Physical Address Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 176
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 177
    return-void
.end method

.method private startPowerStatusStage()V
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Power Status Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 255
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 257
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 258
    return-void
.end method

.method private startToDelayAction()V
    .registers 3

    .line 165
    const-string v0, "DeviceDiscoveryAction"

    const-string v1, "Waiting for connected devices to be ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 168
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 169
    return-void
.end method

.method private startVendorIdStage()V
    .registers 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start [Vendor Id Stage]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 231
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 233
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 234
    return-void
.end method

.method private verifyValidLogicalAddress(I)Z
    .registers 3
    .param p1, "address"    # I

    .line 180
    if-ltz p1, :cond_8

    const/16 v0, 0xf

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private wrapUpAndFinish()V
    .registers 8

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------Wrap up Device Discovery:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]---------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 438
    .local v3, "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    invoke-static {v3}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->-$$Nest$mtoHdmiDeviceInfo(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    .line 439
    .local v4, "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " DeviceInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v3    # "info":Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .end local v4    # "cecDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_2f

    .line 442
    :cond_59
    const-string v2, "--------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    invoke-interface {v1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;->onDeviceDiscoveryDone(Ljava/util/List;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->finish()V

    .line 446
    iget-boolean v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    if-eqz v1, :cond_71

    .line 447
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processAllDelayedMessages()V

    .line 449
    :cond_71
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 506
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    if-eqz v0, :cond_5e

    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    if-eq v0, p1, :cond_9

    goto :goto_5e

    .line 510
    :cond_9
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 511
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    .line 512
    return-void

    .line 514
    :cond_12
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    if-ge v0, v1, :cond_1e

    .line 515
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 516
    return-void

    .line 518
    :cond_1e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout[State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Processed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceDiscoveryAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_57

    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    .line 524
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->removeDevice(I)V

    goto :goto_5a

    .line 526
    :cond_57
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 528
    :goto_5a
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 529
    return-void

    .line 507
    :cond_5e
    :goto_5e
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 286
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_7c

    .line 326
    :pswitch_7
    return v2

    .line 314
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_14

    .line 315
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 316
    return v1

    .line 317
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_28

    .line 318
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_28

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 320
    return v1

    .line 322
    :cond_28
    return v2

    .line 304
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x87

    if-ne v0, v3, :cond_35

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 306
    return v1

    .line 307
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_4b

    .line 308
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x8c

    if-ne v0, v3, :cond_4b

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 310
    return v1

    .line 312
    :cond_4b
    return v2

    .line 294
    :pswitch_4c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_58

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 296
    return v1

    .line 297
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_6e

    .line 298
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x46

    if-ne v0, v3, :cond_6e

    .line 299
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 300
    return v1

    .line 302
    :cond_6e
    return v2

    .line 288
    :pswitch_6f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_7b

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 290
    return v1

    .line 292
    :cond_7b
    return v2

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_6f
        :pswitch_4c
        :pswitch_29
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method start()Z
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mState:I

    .line 135
    new-instance v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;-><init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    const v2, 0x20001

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V

    .line 154
    return v0
.end method
