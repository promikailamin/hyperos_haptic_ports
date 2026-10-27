.class public Landroid/hardware/tv/tuner/DemuxCapabilities;
.super Ljava/lang/Object;
.source "DemuxCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bTimeFilter:Z

.field public blacklist filterCaps:I

.field public blacklist linkCaps:[I

.field public blacklist numAudioFilter:I

.field public blacklist numBytesInSectionFilter:J

.field public blacklist numDemux:I

.field public blacklist numPcrFilter:I

.field public blacklist numPesFilter:I

.field public blacklist numPlayback:I

.field public blacklist numRecord:I

.field public blacklist numSectionFilter:I

.field public blacklist numTsFilter:I

.field public blacklist numVideoFilter:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Landroid/hardware/tv/tuner/DemuxCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numDemux:I

    .line 14
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numRecord:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPlayback:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numTsFilter:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numSectionFilter:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numAudioFilter:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numVideoFilter:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPesFilter:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPcrFilter:I

    .line 22
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numBytesInSectionFilter:J

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->filterCaps:I

    .line 25
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->bTimeFilter:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_180

    .line 68
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 96
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numDemux:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 96
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numRecord:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 96
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPlayback:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 96
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numTsFilter:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 96
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numSectionFilter:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 96
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numAudioFilter:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 96
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numVideoFilter:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 96
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPesFilter:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 96
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPcrFilter:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 96
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numBytesInSectionFilter:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_133

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12d

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 96
    :cond_12d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_133
    :try_start_133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->filterCaps:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14e

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_148

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 96
    :cond_148
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_14e
    :try_start_14e
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->linkCaps:[I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_17e

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_169

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_163

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 96
    :cond_163
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_169
    :try_start_169
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->bTimeFilter:Z
    :try_end_16f
    .catchall {:try_start_169 .. :try_end_16f} :catchall_17e

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_178

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    nop

    .line 100
    return-void

    .line 96
    :cond_178
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :catchall_17e
    move-exception v2

    goto :goto_188

    .line 67
    :cond_180
    :try_start_180
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_188
    .catchall {:try_start_180 .. :try_end_188} :catchall_17e

    .line 95
    :goto_188
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_191

    .line 96
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_191
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numDemux:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numRecord:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPlayback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numTsFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numSectionFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numAudioFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numVideoFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPesFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numPcrFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->numBytesInSectionFilter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->filterCaps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->linkCaps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 56
    iget-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxCapabilities;->bTimeFilter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void
.end method
