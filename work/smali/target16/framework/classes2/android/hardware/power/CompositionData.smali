.class public Landroid/hardware/power/CompositionData;
.super Ljava/lang/Object;
.source "CompositionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/CompositionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist latchTimestampNanos:J

.field public blacklist outputIds:[J

.field public blacklist producers:[Landroid/hardware/power/FrameProducer;

.field public blacklist scheduledPresentTimestampsNanos:[J

.field public blacklist timestampNanos:J

.field public blacklist updateData:Landroid/hardware/power/CompositionUpdate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/power/CompositionData$1;

    invoke-direct {v0}, Landroid/hardware/power/CompositionData$1;-><init>()V

    sput-object v0, Landroid/hardware/power/CompositionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/power/CompositionData;->timestampNanos:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/power/CompositionData;->latchTimestampNanos:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 81
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 82
    nop

    .line 83
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 84
    invoke-direct {p0, v3}, Landroid/hardware/power/CompositionData;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 86
    :cond_19
    return v2

    .line 88
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 89
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 91
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 74
    nop

    .line 75
    iget-object v0, p0, Landroid/hardware/power/CompositionData;->producers:[Landroid/hardware/power/FrameProducer;

    invoke-direct {p0, v0}, Landroid/hardware/power/CompositionData;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 76
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->updateData:Landroid/hardware/power/CompositionUpdate;

    invoke-direct {p0, v1}, Landroid/hardware/power/CompositionData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_cb

    .line 53
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 67
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/CompositionData;->timestampNanos:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->scheduledPresentTimestampsNanos:[J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/CompositionData;->latchTimestampNanos:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_76
    :try_start_76
    sget-object v2, Landroid/hardware/power/FrameProducer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/FrameProducer;

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->producers:[Landroid/hardware/power/FrameProducer;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_95
    :try_start_95
    sget-object v2, Landroid/hardware/power/CompositionUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/CompositionUpdate;

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->updateData:Landroid/hardware/power/CompositionUpdate;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/power/CompositionData;->outputIds:[J
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_c9

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c3

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_c3
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :catchall_c9
    move-exception v2

    goto :goto_d3

    .line 52
    :cond_cb
    :try_start_cb
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_c9

    .line 66
    :goto_d3
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_dc

    .line 67
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_dc
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-wide v1, p0, Landroid/hardware/power/CompositionData;->timestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->scheduledPresentTimestampsNanos:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 38
    iget-wide v1, p0, Landroid/hardware/power/CompositionData;->latchTimestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->producers:[Landroid/hardware/power/FrameProducer;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/power/CompositionData;->updateData:Landroid/hardware/power/CompositionUpdate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    iget-object p2, p0, Landroid/hardware/power/CompositionData;->outputIds:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
