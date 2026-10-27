.class public Landroid/hardware/biometrics/fingerprint/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public blacklist halControlsIllumination:Z

.field public blacklist halHandlesDisplayTouches:Z

.field public blacklist sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

.field public blacklist sensorType:B

.field public blacklist supportsDetectInteraction:Z

.field public blacklist supportsNavigationGestures:Z

.field public blacklist touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Landroid/hardware/biometrics/fingerprint/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 26
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 28
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 38
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 48
    iput-boolean v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 120
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 121
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 122
    nop

    .line 123
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 124
    invoke-direct {p0, v3}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 126
    :cond_19
    return v2

    .line 128
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 129
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 131
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 113
    nop

    .line 114
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 115
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 117
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_105

    .line 88
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 106
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 106
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 106
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/biometrics/fingerprint/SensorLocation;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 106
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 106
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 106
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cf

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c9

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 106
    :cond_c9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_cf
    :try_start_cf
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_103

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 106
    :cond_e4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_ea
    :try_start_ea
    sget-object v2, Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;

    iput-object v2, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_103

    .line 105
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fd

    .line 108
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    nop

    .line 110
    return-void

    .line 106
    :cond_fd
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :catchall_103
    move-exception v2

    goto :goto_10d

    .line 87
    :cond_105
    :try_start_105
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_103

    .line 105
    :goto_10d
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_116

    .line 106
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_116
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 70
    iget-byte v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 72
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsNavigationGestures:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 73
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halHandlesDisplayTouches:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 75
    iget-boolean v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 76
    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorProps;->touchDetectionParameters:Landroid/hardware/biometrics/fingerprint/TouchDetectionParameters;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void
.end method
