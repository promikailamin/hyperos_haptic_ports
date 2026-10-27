.class public Landroid/hardware/tv/tuner/FrontendDvbtSettings;
.super Ljava/lang/Object;
.source "FrontendDvbtSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbtSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidth:I

.field public blacklist constellation:I

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist guardInterval:I

.field public blacklist hierarchy:I

.field public blacklist hpCoderate:I

.field public blacklist inversion:I

.field public blacklist isHighPriority:Z

.field public blacklist isMiso:Z

.field public blacklist lpCoderate:I

.field public blacklist plpGroupId:I

.field public blacklist plpId:I

.field public blacklist plpMode:I

.field public blacklist standard:B

.field public blacklist transmissionMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbtSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    .line 22
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    .line 23
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    .line 24
    iput-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    .line 25
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    .line 26
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    .line 27
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    .line 28
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    nop

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1d1

    .line 74
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 108
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 108
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 108
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 108
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 108
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 108
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 108
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 108
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 108
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 108
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_133

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12d

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 108
    :cond_12d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_133
    :try_start_133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13d
    .catchall {:try_start_133 .. :try_end_13d} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14e

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_148

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 108
    :cond_148
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_14e
    :try_start_14e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_169

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_163

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 108
    :cond_163
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_169
    :try_start_169
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_173
    .catchall {:try_start_169 .. :try_end_173} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_184

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17e

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 108
    :cond_17e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_184
    :try_start_184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_18e
    .catchall {:try_start_184 .. :try_end_18e} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19f

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_199

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 108
    :cond_199
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_19f
    :try_start_19f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1a9
    .catchall {:try_start_19f .. :try_end_1a9} :catchall_1cf

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ba

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b4

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 108
    :cond_1b4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1ba
    :try_start_1ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I
    :try_end_1c0
    .catchall {:try_start_1ba .. :try_end_1c0} :catchall_1cf

    .line 107
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c9

    .line 110
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    nop

    .line 112
    return-void

    .line 108
    :cond_1c9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :catchall_1cf
    move-exception v2

    goto :goto_1d9

    .line 73
    :cond_1d1
    :try_start_1d1
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d9
    .catchall {:try_start_1d1 .. :try_end_1d9} :catchall_1cf

    .line 107
    :goto_1d9
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1e2

    .line 108
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1e2
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 58
    iget-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 60
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void
.end method
