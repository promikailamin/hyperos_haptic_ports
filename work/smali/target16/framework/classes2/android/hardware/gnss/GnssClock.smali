.class public Landroid/hardware/gnss/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_BIAS:I = 0x8

.field public static final blacklist HAS_BIAS_UNCERTAINTY:I = 0x10

.field public static final blacklist HAS_DRIFT:I = 0x20

.field public static final blacklist HAS_DRIFT_UNCERTAINTY:I = 0x40

.field public static final blacklist HAS_FULL_BIAS:I = 0x4

.field public static final blacklist HAS_LEAP_SECOND:I = 0x1

.field public static final blacklist HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field public blacklist biasNs:D

.field public blacklist biasUncertaintyNs:D

.field public blacklist driftNsps:D

.field public blacklist driftUncertaintyNsps:D

.field public blacklist fullBiasNs:J

.field public blacklist gnssClockFlags:I

.field public blacklist hwClockDiscontinuityCount:I

.field public blacklist leapSecond:I

.field public blacklist referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;

.field public blacklist timeNs:J

.field public blacklist timeUncertaintyNs:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/hardware/gnss/GnssClock$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssClock$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssClock;->gnssClockFlags:I

    .line 14
    iput v0, p0, Landroid/hardware/gnss/GnssClock;->leapSecond:I

    .line 15
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/GnssClock;->timeNs:J

    .line 16
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->timeUncertaintyNs:D

    .line 17
    iput-wide v1, p0, Landroid/hardware/gnss/GnssClock;->fullBiasNs:J

    .line 18
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->biasNs:D

    .line 19
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->biasUncertaintyNs:D

    .line 20
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->driftNsps:D

    .line 21
    iput-wide v3, p0, Landroid/hardware/gnss/GnssClock;->driftUncertaintyNsps:D

    .line 22
    iput v0, p0, Landroid/hardware/gnss/GnssClock;->hwClockDiscontinuityCount:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 107
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 108
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 109
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 111
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    nop

    .line 103
    iget-object v0, p0, Landroid/hardware/gnss/GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/GnssClock;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 104
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_14e

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 88
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssClock;->gnssClockFlags:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 88
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssClock;->leapSecond:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 88
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->timeNs:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 88
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->timeUncertaintyNs:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 88
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->fullBiasNs:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 88
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->biasNs:D

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 88
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->biasUncertaintyNs:D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 88
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->driftNsps:D

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 88
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssClock;->driftUncertaintyNsps:D

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 88
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssClock;->hwClockDiscontinuityCount:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_14c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_133

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12d

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 88
    :cond_12d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_133
    :try_start_133
    sget-object v2, Landroid/hardware/gnss/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssSignalType;

    iput-object v2, p0, Landroid/hardware/gnss/GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_14c

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_146

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    nop

    .line 92
    return-void

    .line 88
    :cond_146
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :catchall_14c
    move-exception v2

    goto :goto_156

    .line 63
    :cond_14e
    :try_start_14e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_156
    .catchall {:try_start_14e .. :try_end_156} :catchall_14c

    .line 87
    :goto_156
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_15f

    .line 88
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_15f
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/hardware/gnss/GnssClock;->gnssClockFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Landroid/hardware/gnss/GnssClock;->leapSecond:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->timeNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->timeUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->fullBiasNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->biasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->biasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 49
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->driftNsps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 50
    iget-wide v1, p0, Landroid/hardware/gnss/GnssClock;->driftUncertaintyNsps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    iget v1, p0, Landroid/hardware/gnss/GnssClock;->hwClockDiscontinuityCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v1, p0, Landroid/hardware/gnss/GnssClock;->referenceSignalTypeForIsb:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
