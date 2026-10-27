.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xe


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .line 308
    nop

    .line 309
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 308
    const/16 v1, 0xf

    const/16 v2, 0x82

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "version"    # I

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 189
    .local v0, "params":[B
    const/16 v1, 0x9e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 667
    const/16 v0, 0x33

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 655
    const/16 v0, 0x99

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 679
    const/16 v0, 0xa1

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method private static buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "opcode"    # I
    .param p3, "param"    # Z

    .line 699
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 700
    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 702
    .local v0, "params":[B
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5
    .param p0, "src"    # I
    .param p1, "vendorId"    # I

    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 172
    .local v0, "params":[B
    const/16 v1, 0xf

    const/16 v2, 0x87

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 8
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "originalOpcode"    # I
    .param p3, "reason"    # I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 50
    .local v0, "params":[B
    invoke-static {p0, p1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 480
    const/16 v0, 0x71

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 379
    const/16 v0, 0x8f

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 83
    const/16 v0, 0x8c

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveFeatures(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 683
    const/16 v0, 0xa5

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 72
    const/16 v0, 0x46

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 61
    const/16 v0, 0x83

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 542
    const/16 v0, 0x7d

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .line 320
    nop

    .line 321
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 320
    const/4 v1, 0x0

    const/16 v2, 0x9d

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 211
    const/16 v0, 0xc0

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 607
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 596
    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 244
    const/16 v0, 0xc1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 255
    const/16 v0, 0xc2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 7
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "volume"    # I
    .param p3, "mute"    # Z

    .line 493
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    const/16 v1, 0x80

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    int-to-byte v1, v1

    int-to-byte v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 494
    .local v1, "status":B
    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v1, v2, v0

    move-object v0, v2

    .line 495
    .local v0, "params":[B
    const/16 v2, 0x7a

    invoke-static {p0, p1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "menuStatus"    # I

    .line 406
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 409
    .local v0, "param":[B
    const/16 v1, 0x8e

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "address"    # I
    .param p2, "deviceType"    # I

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 151
    .local v0, "params":[B
    const/16 v1, 0xf

    const/16 v2, 0x84

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "powerStatus"    # I

    .line 391
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 394
    .local v0, "param":[B
    const/16 v1, 0x90

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "sadBytes"    # [B

    .line 468
    const/16 v0, 0xa3

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "systemAudioStatus"    # Z

    .line 454
    const/16 v0, 0x7e

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I

    .line 296
    const/16 v0, 0xf

    const/16 v1, 0x85

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 200
    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 233
    const/16 v0, 0xc4

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "audioFormats"    # [I

    .line 269
    array-length v0, p2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 270
    .local v0, "params":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 271
    aget v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 273
    .end local v1    # "i":I
    :cond_16
    const/16 v1, 0xa4

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I

    .line 349
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 353
    .local v0, "param":[B
    const/16 v1, 0xf

    const/16 v2, 0x80

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5
    .param p0, "src"    # I
    .param p1, "physicalAddress"    # I

    .line 367
    nop

    .line 368
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 367
    const/16 v1, 0xf

    const/16 v2, 0x81

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 631
    const/16 v0, 0x34

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 619
    const/16 v0, 0x97

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 643
    const/16 v0, 0xa2

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "language"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "normalized":Ljava/lang/String;
    new-array v1, v1, [B

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 105
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 108
    .local v1, "params":[B
    const/16 v2, 0xf

    const/16 v3, 0x32

    invoke-static {p0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .local v0, "length":I
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_1d

    .line 127
    .local v1, "params":[B
    nop

    .line 128
    const/16 v2, 0x47

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2

    .line 125
    .end local v1    # "params":[B
    :catch_1d
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    return-object v2
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 5
    .param p0, "src"    # I
    .param p1, "streamPath"    # I

    .line 334
    nop

    .line 335
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v0

    .line 334
    const/16 v1, 0xf

    const/16 v2, 0x86

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "des"    # I
    .param p2, "systemAudioStatus"    # Z

    .line 440
    const/16 v0, 0x72

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 553
    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "avr"    # I
    .param p2, "avrPhysicalAddress"    # I
    .param p3, "enableSystemAudio"    # Z

    .line 423
    const/16 v0, 0x70

    if-eqz p3, :cond_e

    .line 424
    nop

    .line 425
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v1

    .line 424
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0

    .line 427
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 222
    const/16 v0, 0xc5

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 286
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 6
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "uiCommand"    # I

    .line 507
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "commandParam"    # [B

    .line 519
    const/16 v0, 0x44

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3
    .param p0, "src"    # I
    .param p1, "dest"    # I

    .line 531
    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 4
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "params"    # [B

    .line 565
    const/16 v0, 0x89

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 9
    .param p0, "src"    # I
    .param p1, "dest"    # I
    .param p2, "vendorId"    # I
    .param p3, "operands"    # [B

    .line 579
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 580
    .local v0, "params":[B
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 581
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 582
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v0, v4

    .line 583
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    const/16 v1, 0xa0

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method private static physicalAddressToParam(I)[B
    .registers 4
    .param p0, "physicalAddress"    # I

    .line 706
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
