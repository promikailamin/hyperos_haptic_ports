.class public Landroid/hardware/power/LatchedFrameData;
.super Ljava/lang/Object;
.source "LatchedFrameData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/LatchedFrameData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bufferSubmissionTimestampNanos:J

.field public blacklist frameStartTimestampNanos:J

.field public blacklist gpuAcquireFence:Landroid/os/ParcelFileDescriptor;

.field public blacklist gpuSignalTimestampNanos:J

.field public blacklist intendedPresentTimestampNanos:J

.field public blacklist usedGpu:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/power/LatchedFrameData$1;

    invoke-direct {v0}, Landroid/hardware/power/LatchedFrameData$1;-><init>()V

    sput-object v0, Landroid/hardware/power/LatchedFrameData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/power/LatchedFrameData;->frameStartTimestampNanos:J

    .line 13
    iput-wide v0, p0, Landroid/hardware/power/LatchedFrameData;->intendedPresentTimestampNanos:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/power/LatchedFrameData;->bufferSubmissionTimestampNanos:J

    .line 15
    iput-wide v0, p0, Landroid/hardware/power/LatchedFrameData;->gpuSignalTimestampNanos:J

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/power/LatchedFrameData;->usedGpu:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 79
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 81
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 83
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    nop

    .line 75
    iget-object v0, p0, Landroid/hardware/power/LatchedFrameData;->gpuAcquireFence:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/hardware/power/LatchedFrameData;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 76
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

    if-lt v1, v2, :cond_c7

    .line 53
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c5

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

    iput-wide v5, p0, Landroid/hardware/power/LatchedFrameData;->frameStartTimestampNanos:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c5

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/LatchedFrameData;->intendedPresentTimestampNanos:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c5

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

    iput-wide v5, p0, Landroid/hardware/power/LatchedFrameData;->bufferSubmissionTimestampNanos:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_c5

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/LatchedFrameData;->gpuSignalTimestampNanos:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/LatchedFrameData;->usedGpu:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_ac
    :try_start_ac
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/hardware/power/LatchedFrameData;->gpuAcquireFence:Landroid/os/ParcelFileDescriptor;
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_c5

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bf

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_bf
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :catchall_c5
    move-exception v2

    goto :goto_cf

    .line 52
    :cond_c7
    :try_start_c7
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_c5

    .line 66
    :goto_cf
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_d8

    .line 67
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_d8
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
    iget-wide v1, p0, Landroid/hardware/power/LatchedFrameData;->frameStartTimestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v1, p0, Landroid/hardware/power/LatchedFrameData;->intendedPresentTimestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v1, p0, Landroid/hardware/power/LatchedFrameData;->bufferSubmissionTimestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-wide v1, p0, Landroid/hardware/power/LatchedFrameData;->gpuSignalTimestampNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-boolean v1, p0, Landroid/hardware/power/LatchedFrameData;->usedGpu:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 41
    iget-object v1, p0, Landroid/hardware/power/LatchedFrameData;->gpuAcquireFence:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
