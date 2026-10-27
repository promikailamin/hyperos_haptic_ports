.class public Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
.super Ljava/lang/Object;
.source "DemuxFilterMediaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist avDataId:J

.field public blacklist avMemory:Landroid/hardware/common/NativeHandle;

.field public blacklist dataGroupId:I

.field public blacklist dataLength:J

.field public blacklist dts:J

.field public blacklist extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

.field public blacklist indexInDataGroup:I

.field public blacklist isDtsPresent:Z

.field public blacklist isPesPrivateData:Z

.field public blacklist isPtsPresent:Z

.field public blacklist isSecureMemory:Z

.field public blacklist mpuSequenceNumber:I

.field public blacklist numDataPieces:I

.field public blacklist offset:J

.field public blacklist pts:J

.field public blacklist scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

.field public blacklist streamId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    .line 14
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    .line 15
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    .line 16
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    .line 17
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    .line 18
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    .line 19
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    .line 21
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    .line 22
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    .line 24
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    .line 27
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->numDataPieces:I

    .line 28
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->indexInDataGroup:I

    .line 29
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataGroupId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 128
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 130
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 119
    nop

    .line 120
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 121
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 122
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 123
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1f8

    .line 76
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 112
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 112
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 112
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 112
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 112
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 112
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 112
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 112
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_e2
    :try_start_e2
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e2 .. :try_end_f0} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 112
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_101
    :try_start_101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11c

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 112
    :cond_116
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_11c
    :try_start_11c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_126
    .catchall {:try_start_11c .. :try_end_126} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_137

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_131

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 112
    :cond_131
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_137
    :try_start_137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_141
    .catchall {:try_start_137 .. :try_end_141} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_152

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14c

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 112
    :cond_14c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_152
    :try_start_152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15c
    .catchall {:try_start_152 .. :try_end_15c} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_16d

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_167

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 112
    :cond_167
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_16d
    :try_start_16d
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17b
    .catchall {:try_start_16d .. :try_end_17b} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_18c

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_186

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 112
    :cond_186
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_18c
    :try_start_18c
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19a
    .catchall {:try_start_18c .. :try_end_19a} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ab

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a5

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 112
    :cond_1a5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1ab
    :try_start_1ab
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->numDataPieces:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1b5
    .catchall {:try_start_1ab .. :try_end_1b5} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1c6

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c0

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 112
    :cond_1c0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1c6
    :try_start_1c6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->indexInDataGroup:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d0
    .catchall {:try_start_1c6 .. :try_end_1d0} :catchall_1f6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1e1

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1db

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 112
    :cond_1db
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1e1
    :try_start_1e1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataGroupId:I
    :try_end_1e7
    .catchall {:try_start_1e1 .. :try_end_1e7} :catchall_1f6

    .line 111
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f0

    .line 114
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    nop

    .line 116
    return-void

    .line 112
    :cond_1f0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :catchall_1f6
    move-exception v2

    goto :goto_200

    .line 75
    :cond_1f8
    :try_start_1f8
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_200
    .catchall {:try_start_1f8 .. :try_end_200} :catchall_1f6

    .line 111
    :goto_200
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_209

    .line 112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_209
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 62
    iget p2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->numDataPieces:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->indexInDataGroup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget p2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void
.end method
