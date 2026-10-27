.class public Landroid/hardware/tv/tuner/FrontendDvbsSettings;
.super Ljava/lang/Object;
.source "FrontendDvbsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbsSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist inputStreamId:I

.field public blacklist inversion:I

.field public blacklist isDiseqcRxMessage:Z

.field public blacklist modulation:I

.field public blacklist pilot:I

.field public blacklist rolloff:I

.field public blacklist scanType:I

.field public blacklist standard:B

.field public blacklist symbolRate:I

.field public blacklist vcmMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbsSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    .line 20
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    .line 22
    iput-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    .line 24
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    .line 25
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 109
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 110
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 112
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 103
    nop

    .line 104
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 105
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_184

    .line 68
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 96
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 96
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 96
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 96
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 96
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_91
    :try_start_91
    sget-object v2, Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 96
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 96
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 96
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_e6
    :try_start_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 96
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_101
    :try_start_101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11c

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 96
    :cond_116
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_11c
    :try_start_11c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_126
    .catchall {:try_start_11c .. :try_end_126} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_137

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_131

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 96
    :cond_131
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_137
    :try_start_137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_141
    .catchall {:try_start_137 .. :try_end_141} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_152

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14c

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 96
    :cond_14c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_152
    :try_start_152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15c
    .catchall {:try_start_152 .. :try_end_15c} :catchall_182

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_16d

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_167

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 96
    :cond_167
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_16d
    :try_start_16d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z
    :try_end_173
    .catchall {:try_start_16d .. :try_end_173} :catchall_182

    .line 95
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17c

    .line 98
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    nop

    .line 100
    return-void

    .line 96
    :cond_17c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :catchall_182
    move-exception v2

    goto :goto_18c

    .line 67
    :cond_184
    :try_start_184
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18c
    .catchall {:try_start_184 .. :try_end_18c} :catchall_182

    .line 95
    :goto_18c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_195

    .line 96
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_195
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 49
    iget p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-byte p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean p2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void
.end method
