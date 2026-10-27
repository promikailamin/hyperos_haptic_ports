.class public Landroid/hardware/tv/tuner/AudioExtraMetaData;
.super Ljava/lang/Object;
.source "AudioExtraMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/AudioExtraMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist adFade:B

.field public blacklist adGainCenter:B

.field public blacklist adGainFront:B

.field public blacklist adGainSurround:B

.field public blacklist adPan:B

.field public blacklist versionTextTag:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/tv/tuner/AudioExtraMetaData$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/AudioExtraMetaData$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adFade:B

    .line 14
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adPan:B

    .line 15
    iput-char v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->versionTextTag:C

    .line 16
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainCenter:B

    .line 17
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainFront:B

    .line 18
    iput-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainSurround:B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    nop

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_c4

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 68
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adFade:B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 68
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adPan:B

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 68
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->versionTextTag:C

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_c2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_77

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_71

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 68
    :cond_71
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_77
    :try_start_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainCenter:B

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_c2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_92

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8c

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 68
    :cond_8c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_92
    :try_start_92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainFront:B

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_c2

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ad

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a7

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 68
    :cond_a7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_ad
    :try_start_ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainSurround:B
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_c2

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bc

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :cond_bc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :catchall_c2
    move-exception v2

    goto :goto_cc

    .line 53
    :cond_c4
    :try_start_c4
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_c2

    .line 67
    :goto_cc
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_d5

    .line 68
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_d5
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adFade:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adPan:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-char v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->versionTextTag:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainCenter:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainFront:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    iget-byte v0, p0, Landroid/hardware/tv/tuner/AudioExtraMetaData;->adGainSurround:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
