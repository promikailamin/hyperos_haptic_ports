.class public Landroid/hardware/gnss/SatellitePvt;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/SatellitePvt$SatelliteEphemerisSource;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/SatellitePvt;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_IONO:I = 0x2

.field public static final blacklist HAS_POSITION_VELOCITY_CLOCK_INFO:I = 0x1

.field public static final blacklist HAS_TROPO:I = 0x4


# instance fields
.field public blacklist ephemerisSource:I

.field public blacklist flags:I

.field public blacklist ionoDelayMeters:D

.field public blacklist issueOfDataClock:I

.field public blacklist issueOfDataEphemeris:I

.field public blacklist satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

.field public blacklist satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

.field public blacklist satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

.field public blacklist timeOfClockSeconds:J

.field public blacklist timeOfEphemerisSeconds:J

.field public blacklist tropoDelayMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/hardware/gnss/SatellitePvt$1;

    invoke-direct {v0}, Landroid/hardware/gnss/SatellitePvt$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->flags:I

    .line 17
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->ionoDelayMeters:D

    .line 18
    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->tropoDelayMeters:D

    .line 19
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfClockSeconds:J

    .line 20
    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataClock:I

    .line 21
    iput-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfEphemerisSeconds:J

    .line 22
    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataEphemeris:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/gnss/SatellitePvt;->ephemerisSource:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 105
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 106
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 107
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 109
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 98
    nop

    .line 99
    iget-object v0, p0, Landroid/hardware/gnss/SatellitePvt;->satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/SatellitePvt;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 100
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/SatellitePvt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/SatellitePvt;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 102
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

    if-lt v1, v2, :cond_156

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_154

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

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->flags:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_154

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
    sget-object v2, Landroid/hardware/gnss/SatellitePositionEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatellitePositionEcef;

    iput-object v2, p0, Landroid/hardware/gnss/SatellitePvt;->satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 88
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/hardware/gnss/SatelliteVelocityEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatelliteVelocityEcef;

    iput-object v2, p0, Landroid/hardware/gnss/SatellitePvt;->satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 88
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/hardware/gnss/SatelliteClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/SatelliteClockInfo;

    iput-object v2, p0, Landroid/hardware/gnss/SatellitePvt;->satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9d

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_97

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 88
    :cond_97
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_9d
    :try_start_9d
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->ionoDelayMeters:D

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b8

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b2

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 88
    :cond_b2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_b8
    :try_start_b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->tropoDelayMeters:D

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d3

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cd

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 88
    :cond_cd
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_d3
    :try_start_d3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfClockSeconds:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 88
    :cond_e8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataClock:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_109

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_103

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 88
    :cond_103
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_109
    :try_start_109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfEphemerisSeconds:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_113
    .catchall {:try_start_109 .. :try_end_113} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_124

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11e

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 88
    :cond_11e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_124
    :try_start_124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataEphemeris:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12e
    .catchall {:try_start_124 .. :try_end_12e} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13f

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_139

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 88
    :cond_139
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_13f
    :try_start_13f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/SatellitePvt;->ephemerisSource:I
    :try_end_145
    .catchall {:try_start_13f .. :try_end_145} :catchall_154

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14e

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    nop

    .line 92
    return-void

    .line 88
    :cond_14e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :catchall_154
    move-exception v2

    goto :goto_15e

    .line 63
    :cond_156
    :try_start_156
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_154

    .line 87
    :goto_15e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_167

    .line 88
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_167
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
    iget v1, p0, Landroid/hardware/gnss/SatellitePvt;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satPosEcef:Landroid/hardware/gnss/SatellitePositionEcef;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 44
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satVelEcef:Landroid/hardware/gnss/SatelliteVelocityEcef;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v1, p0, Landroid/hardware/gnss/SatellitePvt;->satClockInfo:Landroid/hardware/gnss/SatelliteClockInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->ionoDelayMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->tropoDelayMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfClockSeconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget p2, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataClock:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-wide v1, p0, Landroid/hardware/gnss/SatellitePvt;->timeOfEphemerisSeconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget p2, p0, Landroid/hardware/gnss/SatellitePvt;->issueOfDataEphemeris:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Landroid/hardware/gnss/SatellitePvt;->ephemerisSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

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
