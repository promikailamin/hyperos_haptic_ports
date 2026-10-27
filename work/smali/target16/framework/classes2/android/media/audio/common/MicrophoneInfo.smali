.class public Landroid/media/audio/common/MicrophoneInfo;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/MicrophoneInfo$Location;,
        Landroid/media/audio/common/MicrophoneInfo$Directionality;,
        Landroid/media/audio/common/MicrophoneInfo$Sensitivity;,
        Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;,
        Landroid/media/audio/common/MicrophoneInfo$Coordinate;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/MicrophoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist GROUP_UNKNOWN:I = -0x1

.field public static final blacklist INDEX_IN_THE_GROUP_UNKNOWN:I = -0x1


# instance fields
.field public blacklist device:Landroid/media/audio/common/AudioDevice;

.field public blacklist directionality:I

.field public blacklist frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

.field public blacklist group:I

.field public blacklist id:Ljava/lang/String;

.field public blacklist indexInTheGroup:I

.field public blacklist location:I

.field public blacklist orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

.field public blacklist position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

.field public blacklist sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/media/audio/common/MicrophoneInfo$1;

    invoke-direct {v0}, Landroid/media/audio/common/MicrophoneInfo$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/MicrophoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/MicrophoneInfo;->location:I

    .line 16
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/audio/common/MicrophoneInfo;->group:I

    .line 17
    iput v1, p0, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    .line 19
    iput v0, p0, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 140
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 141
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 142
    nop

    .line 143
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 144
    invoke-direct {p0, v3}, Landroid/media/audio/common/MicrophoneInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 146
    :cond_19
    return v2

    .line 148
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 149
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 151
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 131
    nop

    .line 132
    iget-object v0, p0, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    invoke-direct {p0, v0}, Landroid/media/audio/common/MicrophoneInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 133
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    invoke-direct {p0, v1}, Landroid/media/audio/common/MicrophoneInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 134
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    invoke-direct {p0, v1}, Landroid/media/audio/common/MicrophoneInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 135
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-direct {p0, v1}, Landroid/media/audio/common/MicrophoneInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 136
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-direct {p0, v1}, Landroid/media/audio/common/MicrophoneInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 137
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 109
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 110
    :cond_8
    instance-of v2, p1, Landroid/media/audio/common/MicrophoneInfo;

    if-nez v2, :cond_d

    return v1

    .line 111
    :cond_d
    check-cast p1, Landroid/media/audio/common/MicrophoneInfo;

    .line 112
    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/audio/common/MicrophoneInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 113
    :cond_1a
    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    iget-object v3, p1, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 114
    :cond_25
    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/media/audio/common/MicrophoneInfo;->location:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    .line 115
    :cond_38
    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->group:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/media/audio/common/MicrophoneInfo;->group:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    return v1

    .line 116
    :cond_4b
    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    return v1

    .line 117
    :cond_5e
    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    iget-object v3, p1, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    return v1

    .line 118
    :cond_69
    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    return v1

    .line 119
    :cond_7c
    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    iget-object v3, p1, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    return v1

    .line 120
    :cond_87
    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    iget-object v3, p1, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    return v1

    .line 121
    :cond_92
    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    iget-object p1, p1, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9d

    return v1

    .line 122
    :cond_9d
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 127
    iget-object v0, p0, Landroid/media/audio/common/MicrophoneInfo;->id:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->location:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/audio/common/MicrophoneInfo;->group:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    iget v6, p0, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    iget-object v8, p0, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    iget-object v9, p0, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

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

    if-lt v1, v2, :cond_143

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_141

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->id:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_141

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
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDevice;

    iput-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 84
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/MicrophoneInfo;->location:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 84
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/MicrophoneInfo;->group:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 84
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 84
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_b0
    :try_start_b0
    sget-object v2, Landroid/media/audio/common/MicrophoneInfo$Sensitivity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    iput-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b0 .. :try_end_be} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cf

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c9

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 84
    :cond_c9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_cf
    :try_start_cf
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 84
    :cond_e4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_ea
    :try_start_ea
    sget-object v2, Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    iput-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ea .. :try_end_f8} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_109

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_103

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 84
    :cond_103
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_109
    :try_start_109
    sget-object v2, Landroid/media/audio/common/MicrophoneInfo$Coordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    iput-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_117
    .catchall {:try_start_109 .. :try_end_117} :catchall_141

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_128

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_122

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 84
    :cond_122
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_128
    :try_start_128
    sget-object v2, Landroid/media/audio/common/MicrophoneInfo$Coordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    iput-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_141

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13b

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :cond_13b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :catchall_141
    move-exception v2

    goto :goto_14b

    .line 61
    :cond_143
    :try_start_143
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14b
    .catchall {:try_start_143 .. :try_end_14b} :catchall_141

    .line 83
    :goto_14b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_154

    .line 84
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_154
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    throw v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 93
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->location:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->group:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexInTheGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensitivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directionality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequencyResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MicrophoneInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 43
    iget v1, p0, Landroid/media/audio/common/MicrophoneInfo;->location:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/media/audio/common/MicrophoneInfo;->group:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/media/audio/common/MicrophoneInfo;->indexInTheGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->sensitivity:Landroid/media/audio/common/MicrophoneInfo$Sensitivity;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    iget v1, p0, Landroid/media/audio/common/MicrophoneInfo;->directionality:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->frequencyResponse:[Landroid/media/audio/common/MicrophoneInfo$FrequencyResponsePoint;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 49
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->position:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v1, p0, Landroid/media/audio/common/MicrophoneInfo;->orientation:Landroid/media/audio/common/MicrophoneInfo$Coordinate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
