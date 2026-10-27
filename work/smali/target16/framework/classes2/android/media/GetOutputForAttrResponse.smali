.class public Landroid/media/GetOutputForAttrResponse;
.super Ljava/lang/Object;
.source "GetOutputForAttrResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/GetOutputForAttrResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist attr:Landroid/media/audio/common/AudioAttributes;

.field public blacklist configBase:Landroid/media/audio/common/AudioConfigBase;

.field public blacklist isBitPerfect:Z

.field public blacklist isSpatialized:Z

.field public blacklist output:I

.field public blacklist portId:I

.field public blacklist secondaryOutputs:[I

.field public blacklist selectedDeviceIds:[I

.field public blacklist stream:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/media/GetOutputForAttrResponse$1;

    invoke-direct {v0}, Landroid/media/GetOutputForAttrResponse$1;-><init>()V

    sput-object v0, Landroid/media/GetOutputForAttrResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/GetOutputForAttrResponse;->output:I

    .line 19
    iput v0, p0, Landroid/media/GetOutputForAttrResponse;->portId:I

    .line 23
    iput-boolean v0, p0, Landroid/media/GetOutputForAttrResponse;->isSpatialized:Z

    .line 26
    iput-boolean v0, p0, Landroid/media/GetOutputForAttrResponse;->isBitPerfect:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 98
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 100
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 102
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 92
    nop

    .line 93
    iget-object v0, p0, Landroid/media/GetOutputForAttrResponse;->configBase:Landroid/media/audio/common/AudioConfigBase;

    invoke-direct {p0, v0}, Landroid/media/GetOutputForAttrResponse;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 94
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->attr:Landroid/media/audio/common/AudioAttributes;

    invoke-direct {p0, v1}, Landroid/media/GetOutputForAttrResponse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 95
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11c

    .line 65
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 85
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->output:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 85
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->stream:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 85
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->selectedDeviceIds:[I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 85
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/GetOutputForAttrResponse;->portId:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 85
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->secondaryOutputs:[I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 85
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/GetOutputForAttrResponse;->isSpatialized:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 85
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_c7
    :try_start_c7
    sget-object v2, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioConfigBase;

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->configBase:Landroid/media/audio/common/AudioConfigBase;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 85
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_e6
    :try_start_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/GetOutputForAttrResponse;->isBitPerfect:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_11a

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 85
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_101
    :try_start_101
    sget-object v2, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioAttributes;

    iput-object v2, p0, Landroid/media/GetOutputForAttrResponse;->attr:Landroid/media/audio/common/AudioAttributes;
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_11a

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_114

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    nop

    .line 89
    return-void

    .line 85
    :cond_114
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :catchall_11a
    move-exception v2

    goto :goto_124

    .line 64
    :cond_11c
    :try_start_11c
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_124
    .catchall {:try_start_11c .. :try_end_124} :catchall_11a

    .line 84
    :goto_124
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12d

    .line 85
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_12d
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->output:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->stream:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->selectedDeviceIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 48
    iget v1, p0, Landroid/media/GetOutputForAttrResponse;->portId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->secondaryOutputs:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 50
    iget-boolean v1, p0, Landroid/media/GetOutputForAttrResponse;->isSpatialized:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 51
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->configBase:Landroid/media/audio/common/AudioConfigBase;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 52
    iget-boolean v1, p0, Landroid/media/GetOutputForAttrResponse;->isBitPerfect:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    iget-object v1, p0, Landroid/media/GetOutputForAttrResponse;->attr:Landroid/media/audio/common/AudioAttributes;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void
.end method
