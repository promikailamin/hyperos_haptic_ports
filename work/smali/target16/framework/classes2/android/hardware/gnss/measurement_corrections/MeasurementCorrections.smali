.class public Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;
.super Ljava/lang/Object;
.source "MeasurementCorrections.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist environmentBearingDegrees:F

.field public blacklist environmentBearingUncertaintyDegrees:F

.field public blacklist hasEnvironmentBearing:Z

.field public blacklist horizontalPositionUncertaintyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

.field public blacklist toaGpsNanosecondsOfWeek:J

.field public blacklist verticalPositionUncertaintyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections$1;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->latitudeDegrees:D

    .line 14
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->longitudeDegrees:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->altitudeMeters:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 17
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingDegrees:F

    .line 22
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 98
    nop

    .line 99
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 100
    invoke-direct {p0, v3}, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 102
    :cond_19
    return v2

    .line 104
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 105
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 107
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    nop

    .line 92
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 93
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_133

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 84
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->latitudeDegrees:D

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 84
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->longitudeDegrees:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 84
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->altitudeMeters:D

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 84
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 84
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 84
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 84
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_c7
    :try_start_c7
    sget-object v2, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    iput-object v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 84
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_e6
    :try_start_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->hasEnvironmentBearing:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 84
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_101
    :try_start_101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingDegrees:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11c

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 84
    :cond_116
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_11c
    :try_start_11c
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F
    :try_end_122
    .catchall {:try_start_11c .. :try_end_122} :catchall_131

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12b

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :cond_12b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :catchall_131
    move-exception v2

    goto :goto_13b

    .line 61
    :cond_133
    :try_start_133
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13b
    .catchall {:try_start_133 .. :try_end_13b} :catchall_131

    .line 83
    :goto_13b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_144

    .line 84
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_144
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->latitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->longitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->altitudeMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->satCorrections:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 48
    iget-boolean p2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->hasEnvironmentBearing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget p2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    iget p2, p0, Landroid/hardware/gnss/measurement_corrections/MeasurementCorrections;->environmentBearingUncertaintyDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void
.end method
