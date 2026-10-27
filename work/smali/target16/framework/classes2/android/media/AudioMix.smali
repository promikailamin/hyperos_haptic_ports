.class public Landroid/media/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioMix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist allowPrivilegedMediaPlaybackCapture:Z

.field public blacklist cbFlags:I

.field public blacklist criteria:[Landroid/media/AudioMixMatchCriterion;

.field public blacklist device:Landroid/media/audio/common/AudioDevice;

.field public blacklist format:Landroid/media/audio/common/AudioConfig;

.field public blacklist mToken:Landroid/os/IBinder;

.field public blacklist mVirtualDeviceId:I

.field public blacklist mixType:I

.field public blacklist routeFlags:I

.field public blacklist voiceCommunicationCaptureAllowed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/media/AudioMix$1;

    invoke-direct {v0}, Landroid/media/AudioMix$1;-><init>()V

    sput-object v0, Landroid/media/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioMix;->routeFlags:I

    .line 20
    iput v0, p0, Landroid/media/AudioMix;->cbFlags:I

    .line 22
    iput-boolean v0, p0, Landroid/media/AudioMix;->allowPrivilegedMediaPlaybackCapture:Z

    .line 24
    iput-boolean v0, p0, Landroid/media/AudioMix;->voiceCommunicationCaptureAllowed:Z

    .line 28
    iput v0, p0, Landroid/media/AudioMix;->mVirtualDeviceId:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 103
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 104
    nop

    .line 105
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 106
    invoke-direct {p0, v3}, Landroid/media/AudioMix;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 108
    :cond_19
    return v2

    .line 110
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 111
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 113
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 95
    nop

    .line 96
    iget-object v0, p0, Landroid/media/AudioMix;->criteria:[Landroid/media/AudioMixMatchCriterion;

    invoke-direct {p0, v0}, Landroid/media/AudioMix;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 97
    iget-object v1, p0, Landroid/media/AudioMix;->format:Landroid/media/audio/common/AudioConfig;

    invoke-direct {p0, v1}, Landroid/media/AudioMix;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Landroid/media/AudioMix;->device:Landroid/media/audio/common/AudioDevice;

    invoke-direct {p0, v1}, Landroid/media/AudioMix;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

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
    sget-object v2, Landroid/media/AudioMixMatchCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioMixMatchCriterion;

    iput-object v2, p0, Landroid/media/AudioMix;->criteria:[Landroid/media/AudioMixMatchCriterion;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 88
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioMix;->mixType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_139

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
    sget-object v2, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioConfig;

    iput-object v2, p0, Landroid/media/AudioMix;->format:Landroid/media/audio/common/AudioConfig;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 88
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioMix;->routeFlags:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 88
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_99
    :try_start_99
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDevice;

    iput-object v2, p0, Landroid/media/AudioMix;->device:Landroid/media/audio/common/AudioDevice;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_139

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b8

    .line 87
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b2

    .line 90
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 88
    :cond_b2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_b8
    :try_start_b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioMix;->cbFlags:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_139

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioMix;->allowPrivilegedMediaPlaybackCapture:Z

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioMix;->voiceCommunicationCaptureAllowed:Z

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioMix;->mToken:Landroid/os/IBinder;

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

    iput v2, p0, Landroid/media/AudioMix;->mVirtualDeviceId:I
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
    .registers 5

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v1, p0, Landroid/media/AudioMix;->criteria:[Landroid/media/AudioMixMatchCriterion;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 46
    iget v1, p0, Landroid/media/AudioMix;->mixType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/media/AudioMix;->format:Landroid/media/audio/common/AudioConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 48
    iget v1, p0, Landroid/media/AudioMix;->routeFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v1, p0, Landroid/media/AudioMix;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    iget p2, p0, Landroid/media/AudioMix;->cbFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean p2, p0, Landroid/media/AudioMix;->allowPrivilegedMediaPlaybackCapture:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    iget-boolean p2, p0, Landroid/media/AudioMix;->voiceCommunicationCaptureAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    iget-object p2, p0, Landroid/media/AudioMix;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    iget p2, p0, Landroid/media/AudioMix;->mVirtualDeviceId:I

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
