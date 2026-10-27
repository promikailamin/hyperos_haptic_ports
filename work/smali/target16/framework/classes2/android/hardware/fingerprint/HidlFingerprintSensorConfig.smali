.class public final Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;
.super Landroid/hardware/biometrics/fingerprint/SensorProps;
.source "HidlFingerprintSensorConfig.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HidlFingerprintSensorConfig"


# instance fields
.field private blacklist mModality:I

.field private blacklist mSensorId:I

.field private blacklist mStrength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/SensorProps;-><init>()V

    return-void
.end method

.method private blacklist authenticatorStrengthToPropertyStrength(I)B
    .registers 5

    .line 166
    sparse-switch p1, :sswitch_data_22

    .line 174
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

    .line 168
    :sswitch_1c
    const/4 p1, 0x0

    return p1

    .line 170
    :sswitch_1e
    const/4 p1, 0x1

    return p1

    .line 172
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

.method public static blacklist getWorkaroundSensorProps(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/fingerprint/SensorLocation;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 130
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 131
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 132
    if-lez v3, :cond_30

    .line 133
    nop

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 133
    invoke-static {v3}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->parseSensorLocation(Landroid/content/res/TypedArray;)Landroid/hardware/biometrics/fingerprint/SensorLocation;

    move-result-object v3

    .line 135
    if-eqz v3, :cond_30

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 140
    :cond_33
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-object v0
.end method

.method private blacklist mapHidlToAidlSensorConfiguration(Landroid/content/Context;)V
    .registers 8

    .line 72
    new-instance v0, Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/CommonProps;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 73
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    .line 74
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mSensorId:I

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 75
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mStrength:I

    invoke-direct {p0, v1}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->authenticatorStrengthToPropertyStrength(I)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 76
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->halControlsIllumination:Z

    .line 79
    iput-boolean v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->halHandlesDisplayTouches:Z

    .line 80
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v2, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 83
    nop

    .line 84
    invoke-static {p1}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->getWorkaroundSensorProps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10700f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 88
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v4

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x11101ed

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 93
    const/4 v5, 0x3

    if-nez v4, :cond_5a

    .line 94
    iput-byte v5, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_62

    .line 95
    :cond_5a
    if-eqz p1, :cond_60

    .line 96
    const/4 p1, 0x4

    iput-byte p1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    goto :goto_62

    .line 98
    :cond_60
    iput-byte v1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorType:B

    .line 101
    :goto_62
    if-nez v4, :cond_72

    array-length p1, v3

    if-ne p1, v5, :cond_72

    .line 102
    aget p1, v3, v0

    aget v0, v3, v1

    const/4 v1, 0x2

    aget v1, v3, v1

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->setSensorLocation(III)V

    goto :goto_8f

    .line 103
    :cond_72
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_86

    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object p1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 105
    iget-object p1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_8f

    .line 107
    :cond_86
    const/16 p1, 0x664

    const/16 v0, 0x82

    const/16 v1, 0x21c

    invoke-direct {p0, v1, p1, v0}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->setSensorLocation(III)V

    .line 111
    :goto_8f
    return-void
.end method

.method private static blacklist parseSensorLocation(Landroid/content/res/TypedArray;)Landroid/hardware/biometrics/fingerprint/SensorLocation;
    .registers 5

    .line 147
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 148
    return-object v0

    .line 152
    :cond_4
    :try_start_4
    new-instance v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/SensorLocation;-><init>()V

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    .line 154
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    .line 155
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    .line 156
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    .line 157
    return-object v1

    .line 158
    :catch_26
    move-exception p0

    .line 159
    const-string v1, "HidlFingerprintSensorConfig"

    const-string v2, "malformed sensor location"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return-object v0
.end method

.method private blacklist setSensorLocation(III)V
    .registers 7

    .line 115
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    new-instance v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {v1}, Landroid/hardware/biometrics/fingerprint/SensorLocation;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 116
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    const-string v1, ""

    iput-object v1, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object v0, v0, v2

    iput p1, v0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    .line 118
    iget-object p1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object p1, p1, v2

    iput p2, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    .line 119
    iget-object p1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    aget-object p1, p1, v2

    iput p3, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    .line 120
    return-void
.end method


# virtual methods
.method public blacklist getModality()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mModality:I

    return v0
.end method

.method public blacklist parse(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 57
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_29

    .line 60
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mSensorId:I

    .line 61
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mModality:I

    .line 62
    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mStrength:I

    .line 63
    invoke-direct {p0, p2}, Landroid/hardware/fingerprint/HidlFingerprintSensorConfig;->mapHidlToAidlSensorConfiguration(Landroid/content/Context;)V

    .line 64
    return-void

    .line 58
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
