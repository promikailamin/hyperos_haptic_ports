.class public Landroid/hardware/gnss/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final blacklist ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final blacklist ADR_STATE_RESET:I = 0x2

.field public static final blacklist ADR_STATE_UNKNOWN:I = 0x0

.field public static final blacklist ADR_STATE_VALID:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final blacklist HAS_CARRIER_CYCLES:I = 0x400

.field public static final blacklist HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final blacklist HAS_CARRIER_PHASE:I = 0x800

.field public static final blacklist HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final blacklist HAS_CORRELATION_VECTOR:I = 0x200000

.field public static final blacklist HAS_FULL_ISB:I = 0x10000

.field public static final blacklist HAS_FULL_ISB_UNCERTAINTY:I = 0x20000

.field public static final blacklist HAS_SATELLITE_ISB:I = 0x40000

.field public static final blacklist HAS_SATELLITE_ISB_UNCERTAINTY:I = 0x80000

.field public static final blacklist HAS_SATELLITE_PVT:I = 0x100000

.field public static final blacklist HAS_SNR:I = 0x1

.field public static final blacklist STATE_2ND_CODE_LOCK:I = 0x10000

.field public static final blacklist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final blacklist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final blacklist STATE_BIT_SYNC:I = 0x2

.field public static final blacklist STATE_CODE_LOCK:I = 0x1

.field public static final blacklist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final blacklist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final blacklist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final blacklist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final blacklist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final blacklist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final blacklist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final blacklist STATE_SBAS_SYNC:I = 0x2000

.field public static final blacklist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final blacklist STATE_SYMBOL_SYNC:I = 0x20

.field public static final blacklist STATE_TOW_DECODED:I = 0x8

.field public static final blacklist STATE_TOW_KNOWN:I = 0x4000

.field public static final blacklist STATE_UNKNOWN:I


# instance fields
.field public blacklist accumulatedDeltaRangeM:D

.field public blacklist accumulatedDeltaRangeState:I

.field public blacklist accumulatedDeltaRangeUncertaintyM:D

.field public blacklist agcLevelDb:D

.field public blacklist antennaCN0DbHz:D

.field public blacklist basebandCN0DbHz:D

.field public blacklist carrierCycles:J

.field public blacklist carrierPhase:D

.field public blacklist carrierPhaseUncertainty:D

.field public blacklist correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

.field public blacklist flags:I

.field public blacklist fullInterSignalBiasNs:D

.field public blacklist fullInterSignalBiasUncertaintyNs:D

.field public blacklist multipathIndicator:I

.field public blacklist pseudorangeRateMps:D

.field public blacklist pseudorangeRateUncertaintyMps:D

.field public blacklist receivedSvTimeInNs:J

.field public blacklist receivedSvTimeUncertaintyInNs:J

.field public blacklist satelliteInterSignalBiasNs:D

.field public blacklist satelliteInterSignalBiasUncertaintyNs:D

.field public blacklist satellitePvt:Landroid/hardware/gnss/SatellitePvt;

.field public blacklist signalType:Landroid/hardware/gnss/GnssSignalType;

.field public blacklist snrDb:D

.field public blacklist state:I

.field public blacklist svid:I

.field public blacklist timeOffsetNs:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/hardware/gnss/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    .line 14
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    .line 16
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    .line 17
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    .line 18
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    .line 19
    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 20
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    .line 21
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    .line 22
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    .line 23
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 24
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    .line 25
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 26
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 27
    iput-wide v3, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    .line 28
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    .line 29
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    .line 30
    iput v0, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    .line 31
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    .line 32
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    .line 33
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    .line 34
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 35
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 36
    iput-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 197
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 198
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 199
    nop

    .line 200
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 201
    invoke-direct {p0, v3}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 203
    :cond_19
    return v2

    .line 205
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 206
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 208
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 190
    nop

    .line 191
    iget-object v0, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 192
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 193
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssMeasurement;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 194
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_2eb

    .line 94
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 148
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 148
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 148
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_5b
    :try_start_5b
    sget-object v2, Landroid/hardware/gnss/GnssSignalType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/GnssSignalType;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 148
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 148
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 148
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 148
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 148
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_e6
    :try_start_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 148
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_101
    :try_start_101
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11c

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 148
    :cond_116
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_11c
    :try_start_11c
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_126
    .catchall {:try_start_11c .. :try_end_126} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_137

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_131

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 148
    :cond_131
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_137
    :try_start_137
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_141
    .catchall {:try_start_137 .. :try_end_141} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_152

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14c

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 148
    :cond_14c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_152
    :try_start_152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15c
    .catchall {:try_start_152 .. :try_end_15c} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_16d

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_167

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    return-void

    .line 148
    :cond_167
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_16d
    :try_start_16d
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_177
    .catchall {:try_start_16d .. :try_end_177} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_188

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_182

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-void

    .line 148
    :cond_182
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_188
    :try_start_188
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_192
    .catchall {:try_start_188 .. :try_end_192} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1a3

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_19d

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 148
    :cond_19d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1a3
    :try_start_1a3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1ad
    .catchall {:try_start_1a3 .. :try_end_1ad} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1be

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b8

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 148
    :cond_1b8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1be
    :try_start_1be
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c8
    .catchall {:try_start_1be .. :try_end_1c8} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d9

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1d3

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void

    .line 148
    :cond_1d3
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1d9
    :try_start_1d9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1e3
    .catchall {:try_start_1d9 .. :try_end_1e3} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f4

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1ee

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    return-void

    .line 148
    :cond_1ee
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1f4
    :try_start_1f4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1fe
    .catchall {:try_start_1f4 .. :try_end_1fe} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_20f

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_209

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 130
    return-void

    .line 148
    :cond_209
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_20f
    :try_start_20f
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_219
    .catchall {:try_start_20f .. :try_end_219} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_22a

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_224

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 132
    return-void

    .line 148
    :cond_224
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_22a
    :try_start_22a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_234
    .catchall {:try_start_22a .. :try_end_234} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_245

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_23f

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 134
    return-void

    .line 148
    :cond_23f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_245
    :try_start_245
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_24f
    .catchall {:try_start_245 .. :try_end_24f} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_260

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_25a

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    return-void

    .line 148
    :cond_25a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_260
    :try_start_260
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_26a
    .catchall {:try_start_260 .. :try_end_26a} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_27b

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_275

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-void

    .line 148
    :cond_275
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_27b
    :try_start_27b
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_285
    .catchall {:try_start_27b .. :try_end_285} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_296

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_290

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return-void

    .line 148
    :cond_290
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_296
    :try_start_296
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2a0
    .catchall {:try_start_296 .. :try_end_2a0} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2b1

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2ab

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    return-void

    .line 148
    :cond_2ab
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2b1
    :try_start_2b1
    sget-object v2, Landroid/hardware/gnss/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatellitePvt;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2bf
    .catchall {:try_start_2b1 .. :try_end_2bf} :catchall_2e9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2d0

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2ca

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    return-void

    .line 148
    :cond_2ca
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_2d0
    :try_start_2d0
    sget-object v2, Landroid/hardware/gnss/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/CorrelationVector;

    iput-object v2, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;
    :try_end_2da
    .catchall {:try_start_2d0 .. :try_end_2da} :catchall_2e9

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2e3

    .line 150
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    nop

    .line 152
    return-void

    .line 148
    :cond_2e3
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :catchall_2e9
    move-exception v2

    goto :goto_2f3

    .line 93
    :cond_2eb
    :try_start_2eb
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2f3
    .catchall {:try_start_2eb .. :try_end_2f3} :catchall_2e9

    .line 147
    :goto_2f3
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_2fc

    .line 148
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2fc
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->signalType:Landroid/hardware/gnss/GnssSignalType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 60
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->timeOffsetNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->receivedSvTimeUncertaintyInNs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->antennaCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 65
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->basebandCN0DbHz:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 66
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 67
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->pseudorangeRateUncertaintyMps:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 68
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->accumulatedDeltaRangeUncertaintyM:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierCycles:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhase:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->carrierPhaseUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    iget v1, p0, Landroid/hardware/gnss/GnssMeasurement;->multipathIndicator:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->snrDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 76
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->agcLevelDb:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 77
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 78
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->fullInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    iget-wide v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satelliteInterSignalBiasUncertaintyNs:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->satellitePvt:Landroid/hardware/gnss/SatellitePvt;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v1, p0, Landroid/hardware/gnss/GnssMeasurement;->correlationVectors:[Landroid/hardware/gnss/CorrelationVector;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void
.end method
