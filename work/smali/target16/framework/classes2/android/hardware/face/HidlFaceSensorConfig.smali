.class public final Landroid/hardware/face/HidlFaceSensorConfig;
.super Landroid/hardware/biometrics/face/SensorProps;
.source "HidlFaceSensorConfig.java"


# instance fields
.field private blacklist mModality:I

.field private blacklist mSensorId:I

.field private blacklist mStrength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/hardware/biometrics/face/SensorProps;-><init>()V

    return-void
.end method

.method private blacklist authenticatorStrengthToPropertyStrength(I)B
    .registers 5

    .line 74
    sparse-switch p1, :sswitch_data_22

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :sswitch_1c
    const/4 p1, 0x0

    return p1

    .line 78
    :sswitch_1e
    const/4 p1, 0x1

    return p1

    .line 80
    :sswitch_20
    const/4 p1, 0x2

    return p1

    :sswitch_data_22
    .sparse-switch
        0xf -> :sswitch_20
        0xff -> :sswitch_1e
        0xfff -> :sswitch_1c
    .end sparse-switch
.end method

.method private blacklist mapHidlToAidlFaceSensorConfigurations(Landroid/content/Context;)V
    .registers 4

    .line 61
    new-instance v0, Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 62
    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mSensorId:I

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 63
    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mStrength:I

    invoke-direct {p0, v1}, Landroid/hardware/face/HidlFaceSensorConfig;->authenticatorStrengthToPropertyStrength(I)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->halControlsPreview:Z

    .line 66
    iget-object v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e00b7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    .line 68
    iget-object p1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    .line 69
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->supportsDetectInteraction:Z

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist getModality()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mModality:I

    return v0
.end method

.method public blacklist parse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 45
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_29

    .line 49
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mSensorId:I

    .line 50
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mModality:I

    .line 51
    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/face/HidlFaceSensorConfig;->mStrength:I

    .line 52
    invoke-direct {p0, p2}, Landroid/hardware/face/HidlFaceSensorConfig;->mapHidlToAidlFaceSensorConfigurations(Landroid/content/Context;)V

    .line 53
    return-void

    .line 47
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
