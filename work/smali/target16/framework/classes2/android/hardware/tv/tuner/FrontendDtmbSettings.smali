.class public Landroid/hardware/tv/tuner/FrontendDtmbSettings;
.super Ljava/lang/Object;
.source "FrontendDtmbSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDtmbSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidth:I

.field public blacklist codeRate:I

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist guardInterval:I

.field public blacklist interleaveMode:I

.field public blacklist inversion:I

.field public blacklist modulation:I

.field public blacklist transmissionMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDtmbSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDtmbSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->frequency:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->endFrequency:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->inversion:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->transmissionMode:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->bandwidth:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->modulation:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->codeRate:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->guardInterval:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->interleaveMode:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    nop

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_114

    .line 60
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 80
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->frequency:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 80
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->endFrequency:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 80
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->inversion:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 80
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->transmissionMode:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 80
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->bandwidth:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 80
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->modulation:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 80
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->codeRate:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 80
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->guardInterval:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_112

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 80
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->interleaveMode:I
    :try_end_103
    .catchall {:try_start_fd .. :try_end_103} :catchall_112

    .line 79
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10c

    .line 82
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    nop

    .line 84
    return-void

    .line 80
    :cond_10c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :catchall_112
    move-exception v2

    goto :goto_11c

    .line 59
    :cond_114
    :try_start_114
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_112

    .line 79
    :goto_11c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_125

    .line 80
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_125
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->frequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->endFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->inversion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->transmissionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->bandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->modulation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->codeRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->guardInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDtmbSettings;->interleaveMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
