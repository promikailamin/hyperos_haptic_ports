.class public Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;
.super Ljava/lang/Object;
.source "SingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_COMBINED_ATTENUATION:I = 0x10

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_COMBINED_EXCESS_PATH_LENGTH:I = 0x2

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_COMBINED_EXCESS_PATH_LENGTH_UNC:I = 0x4

.field public static final blacklist SINGLE_SAT_CORRECTION_HAS_SAT_IS_LOS_PROBABILITY:I = 0x1


# instance fields
.field public blacklist carrierFrequencyHz:J

.field public blacklist combinedAttenuationDb:F

.field public blacklist combinedExcessPathLengthMeters:F

.field public blacklist combinedExcessPathLengthUncertaintyMeters:F

.field public blacklist constellation:I

.field public blacklist excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

.field public blacklist probSatIsLos:F

.field public blacklist singleSatCorrectionFlags:I

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$1;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->singleSatCorrectionFlags:I

    .line 15
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->svid:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->carrierFrequencyHz:J

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->probSatIsLos:F

    .line 18
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthMeters:F

    .line 19
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthUncertaintyMeters:F

    .line 20
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedAttenuationDb:F

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
    invoke-direct {p0, v3}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->describeContents(Ljava/lang/Object;)I

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
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 93
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_118

    .line 60
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 80
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->singleSatCorrectionFlags:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 80
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->constellation:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 80
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->svid:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 80
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->carrierFrequencyHz:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 80
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->probSatIsLos:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 80
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthMeters:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 80
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthUncertaintyMeters:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 80
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedAttenuationDb:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_116

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 80
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_fd
    :try_start_fd
    sget-object v2, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

    iput-object v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_116

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_110

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    nop

    .line 84
    return-void

    .line 80
    :cond_110
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :catchall_116
    move-exception v2

    goto :goto_120

    .line 59
    :cond_118
    :try_start_118
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_116

    .line 79
    :goto_120
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_129

    .line 80
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_129
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->singleSatCorrectionFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->probSatIsLos:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 45
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 46
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 47
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->combinedAttenuationDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;->excessPathInfos:[Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
