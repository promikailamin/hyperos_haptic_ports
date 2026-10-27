.class public Landroid/media/AudioIoDescriptor;
.super Ljava/lang/Object;
.source "AudioIoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioIoDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist channelMask:Landroid/media/audio/common/AudioChannelLayout;

.field public blacklist format:Landroid/media/audio/common/AudioFormatDescription;

.field public blacklist frameCount:J

.field public blacklist frameCountHAL:J

.field public blacklist ioHandle:I

.field public blacklist isInput:Z

.field public blacklist latency:I

.field public blacklist patch:Landroid/media/AudioPatchFw;

.field public blacklist portId:I

.field public blacklist samplingRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/media/AudioIoDescriptor$1;

    invoke-direct {v0}, Landroid/media/AudioIoDescriptor$1;-><init>()V

    sput-object v0, Landroid/media/AudioIoDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioIoDescriptor;->ioHandle:I

    .line 16
    iput-boolean v0, p0, Landroid/media/AudioIoDescriptor;->isInput:Z

    .line 17
    iput v0, p0, Landroid/media/AudioIoDescriptor;->samplingRate:I

    .line 20
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCount:J

    .line 21
    iput-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCountHAL:J

    .line 23
    iput v0, p0, Landroid/media/AudioIoDescriptor;->latency:I

    .line 28
    iput v0, p0, Landroid/media/AudioIoDescriptor;->portId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 103
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 104
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 106
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 95
    nop

    .line 96
    iget-object v0, p0, Landroid/media/AudioIoDescriptor;->patch:Landroid/media/AudioPatchFw;

    invoke-direct {p0, v0}, Landroid/media/AudioIoDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 97
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {p0, v1}, Landroid/media/AudioIoDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-direct {p0, v1}, Landroid/media/AudioIoDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_13b

    .line 66
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 88
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->ioHandle:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 88
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_40
    :try_start_40
    sget-object v2, Landroid/media/AudioPatchFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPatchFw;

    iput-object v2, p0, Landroid/media/AudioIoDescriptor;->patch:Landroid/media/AudioPatchFw;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 88
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioIoDescriptor;->isInput:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 88
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->samplingRate:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 88
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_95
    :try_start_95
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    iput-object v2, p0, Landroid/media/AudioIoDescriptor;->format:Landroid/media/audio/common/AudioFormatDescription;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 88
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_b4
    :try_start_b4
    sget-object v2, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioChannelLayout;

    iput-object v2, p0, Landroid/media/AudioIoDescriptor;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c2
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d3

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cd

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 88
    :cond_cd
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_d3
    :try_start_d3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/AudioIoDescriptor;->frameCount:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 88
    :cond_e8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/AudioIoDescriptor;->frameCountHAL:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_109

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_103

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 88
    :cond_103
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_109
    :try_start_109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->latency:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_113
    .catchall {:try_start_109 .. :try_end_113} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_124

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11e

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 88
    :cond_11e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_124
    :try_start_124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioIoDescriptor;->portId:I
    :try_end_12a
    .catchall {:try_start_124 .. :try_end_12a} :catchall_139

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_133

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    nop

    .line 92
    return-void

    .line 88
    :cond_133
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :catchall_139
    move-exception v2

    goto :goto_143

    .line 65
    :cond_13b
    :try_start_13b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_143
    .catchall {:try_start_13b .. :try_end_143} :catchall_139

    .line 87
    :goto_143
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_14c

    .line 88
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_14c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/media/AudioIoDescriptor;->ioHandle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->patch:Landroid/media/AudioPatchFw;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    iget-boolean v1, p0, Landroid/media/AudioIoDescriptor;->isInput:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    iget v1, p0, Landroid/media/AudioIoDescriptor;->samplingRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v1, p0, Landroid/media/AudioIoDescriptor;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    iget-wide v1, p0, Landroid/media/AudioIoDescriptor;->frameCountHAL:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget p2, p0, Landroid/media/AudioIoDescriptor;->latency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget p2, p0, Landroid/media/AudioIoDescriptor;->portId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void
.end method
