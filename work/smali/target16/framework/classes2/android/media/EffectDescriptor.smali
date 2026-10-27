.class public Landroid/media/EffectDescriptor;
.super Ljava/lang/Object;
.source "EffectDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/EffectDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist apiVersion:I

.field public blacklist cpuLoad:I

.field public blacklist flags:I

.field public blacklist implementor:Ljava/lang/String;

.field public blacklist memoryUsage:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist type:Landroid/media/audio/common/AudioUuid;

.field public blacklist uuid:Landroid/media/audio/common/AudioUuid;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/media/EffectDescriptor$1;

    invoke-direct {v0}, Landroid/media/EffectDescriptor$1;-><init>()V

    sput-object v0, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/EffectDescriptor;->apiVersion:I

    .line 20
    iput v0, p0, Landroid/media/EffectDescriptor;->flags:I

    .line 22
    iput v0, p0, Landroid/media/EffectDescriptor;->cpuLoad:I

    .line 24
    iput v0, p0, Landroid/media/EffectDescriptor;->memoryUsage:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 95
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 97
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 99
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 89
    nop

    .line 90
    iget-object v0, p0, Landroid/media/EffectDescriptor;->type:Landroid/media/audio/common/AudioUuid;

    invoke-direct {p0, v0}, Landroid/media/EffectDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 91
    iget-object v1, p0, Landroid/media/EffectDescriptor;->uuid:Landroid/media/audio/common/AudioUuid;

    invoke-direct {p0, v1}, Landroid/media/EffectDescriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 92
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

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

    if-lt v1, v2, :cond_101

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 82
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioUuid;

    iput-object v2, p0, Landroid/media/EffectDescriptor;->type:Landroid/media/audio/common/AudioUuid;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 82
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_44
    :try_start_44
    sget-object v2, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioUuid;

    iput-object v2, p0, Landroid/media/EffectDescriptor;->uuid:Landroid/media/audio/common/AudioUuid;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_63

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5d

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 82
    :cond_5d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_63
    :try_start_63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/EffectDescriptor;->apiVersion:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 82
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/EffectDescriptor;->flags:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 82
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/EffectDescriptor;->cpuLoad:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 82
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/EffectDescriptor;->memoryUsage:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cf

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c9

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 82
    :cond_c9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_cf
    :try_start_cf
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/EffectDescriptor;->name:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 82
    :cond_e4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/EffectDescriptor;->implementor:Ljava/lang/String;
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_ff

    .line 81
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f9

    .line 84
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    nop

    .line 86
    return-void

    .line 82
    :cond_f9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :catchall_ff
    move-exception v2

    goto :goto_109

    .line 63
    :cond_101
    :try_start_101
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_ff

    .line 81
    :goto_109
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_112

    .line 82
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
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
    iget-object v1, p0, Landroid/media/EffectDescriptor;->type:Landroid/media/audio/common/AudioUuid;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-object v1, p0, Landroid/media/EffectDescriptor;->uuid:Landroid/media/audio/common/AudioUuid;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    iget p2, p0, Landroid/media/EffectDescriptor;->apiVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget p2, p0, Landroid/media/EffectDescriptor;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget p2, p0, Landroid/media/EffectDescriptor;->cpuLoad:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Landroid/media/EffectDescriptor;->memoryUsage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object p2, p0, Landroid/media/EffectDescriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Landroid/media/EffectDescriptor;->implementor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
