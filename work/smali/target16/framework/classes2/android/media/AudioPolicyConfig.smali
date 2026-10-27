.class public Landroid/media/AudioPolicyConfig;
.super Ljava/lang/Object;
.source "AudioPolicyConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPolicyConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist engineConfig:Landroid/media/audio/common/AudioHalEngineConfig;

.field public blacklist modules:[Landroid/media/AudioHwModule;

.field public blacklist supportedModes:[I

.field public blacklist surroundSoundConfig:Landroid/media/SurroundSoundConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/media/AudioPolicyConfig$1;

    invoke-direct {v0}, Landroid/media/AudioPolicyConfig$1;-><init>()V

    sput-object v0, Landroid/media/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 75
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 76
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 77
    nop

    .line 78
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 79
    invoke-direct {p0, v3}, Landroid/media/AudioPolicyConfig;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 81
    :cond_19
    return v2

    .line 83
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 84
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 86
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 68
    nop

    .line 69
    iget-object v0, p0, Landroid/media/AudioPolicyConfig;->modules:[Landroid/media/AudioHwModule;

    invoke-direct {p0, v0}, Landroid/media/AudioPolicyConfig;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 70
    iget-object v1, p0, Landroid/media/AudioPolicyConfig;->surroundSoundConfig:Landroid/media/SurroundSoundConfig;

    invoke-direct {p0, v1}, Landroid/media/AudioPolicyConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Landroid/media/AudioPolicyConfig;->engineConfig:Landroid/media/audio/common/AudioHalEngineConfig;

    invoke-direct {p0, v1}, Landroid/media/AudioPolicyConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 72
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_99

    .line 51
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 61
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/AudioHwModule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioHwModule;

    iput-object v2, p0, Landroid/media/AudioPolicyConfig;->modules:[Landroid/media/AudioHwModule;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 61
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioPolicyConfig;->supportedModes:[I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 61
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/media/SurroundSoundConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SurroundSoundConfig;

    iput-object v2, p0, Landroid/media/AudioPolicyConfig;->surroundSoundConfig:Landroid/media/SurroundSoundConfig;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_97

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 61
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/media/audio/common/AudioHalEngineConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioHalEngineConfig;

    iput-object v2, p0, Landroid/media/AudioPolicyConfig;->engineConfig:Landroid/media/audio/common/AudioHalEngineConfig;
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_97

    .line 60
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_91

    .line 63
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    nop

    .line 65
    return-void

    .line 61
    :cond_91
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :catchall_97
    move-exception v2

    goto :goto_a1

    .line 50
    :cond_99
    :try_start_99
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_97

    .line 60
    :goto_a1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_aa

    .line 61
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_aa
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/media/AudioPolicyConfig;->modules:[Landroid/media/AudioHwModule;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 37
    iget-object v1, p0, Landroid/media/AudioPolicyConfig;->supportedModes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 38
    iget-object v1, p0, Landroid/media/AudioPolicyConfig;->surroundSoundConfig:Landroid/media/SurroundSoundConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v1, p0, Landroid/media/AudioPolicyConfig;->engineConfig:Landroid/media/audio/common/AudioHalEngineConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void
.end method
