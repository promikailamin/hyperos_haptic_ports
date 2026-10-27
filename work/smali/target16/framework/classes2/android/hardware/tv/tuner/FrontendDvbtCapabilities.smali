.class public Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
.super Ljava/lang/Object;
.source "FrontendDvbtCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidthCap:I

.field public blacklist coderateCap:I

.field public blacklist constellationCap:I

.field public blacklist guardIntervalCap:I

.field public blacklist hierarchyCap:I

.field public blacklist isMisoSupported:Z

.field public blacklist isT2Supported:Z

.field public blacklist transmissionModeCap:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->transmissionModeCap:I

    .line 14
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->bandwidthCap:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->constellationCap:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->coderateCap:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->hierarchyCap:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->guardIntervalCap:I

    .line 19
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isT2Supported:Z

    .line 20
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isMisoSupported:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    nop

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f9

    .line 58
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 76
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->transmissionModeCap:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 76
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->bandwidthCap:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 76
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->constellationCap:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 76
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->coderateCap:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 76
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->hierarchyCap:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 76
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->guardIntervalCap:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 76
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isT2Supported:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 76
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isMisoSupported:Z
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f7

    .line 75
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f1

    .line 78
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    nop

    .line 80
    return-void

    .line 76
    :cond_f1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :catchall_f7
    move-exception v2

    goto :goto_101

    .line 57
    :cond_f9
    :try_start_f9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_f7

    .line 75
    :goto_101
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10a

    .line 76
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_10a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->transmissionModeCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->bandwidthCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->constellationCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->coderateCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->hierarchyCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->guardIntervalCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isT2Supported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    iget-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isMisoSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void
.end method
