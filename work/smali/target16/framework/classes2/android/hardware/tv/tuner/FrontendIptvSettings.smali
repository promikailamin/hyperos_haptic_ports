.class public Landroid/hardware/tv/tuner/FrontendIptvSettings;
.super Ljava/lang/Object;
.source "FrontendIptvSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendIptvSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bitrate:J

.field public blacklist contentUrl:Ljava/lang/String;

.field public blacklist fec:Landroid/hardware/tv/tuner/FrontendIptvSettingsFec;

.field public blacklist igmp:I

.field public blacklist ipAddr:Landroid/hardware/tv/tuner/DemuxIpAddress;

.field public blacklist protocol:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/tv/tuner/FrontendIptvSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendIptvSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->protocol:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->igmp:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->bitrate:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 81
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 82
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 83
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 85
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 75
    nop

    .line 76
    iget-object v0, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->fec:Landroid/hardware/tv/tuner/FrontendIptvSettingsFec;

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/FrontendIptvSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 77
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->ipAddr:Landroid/hardware/tv/tuner/DemuxIpAddress;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendIptvSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

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

    if-lt v1, v2, :cond_cb

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c9

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->protocol:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c9

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
    sget-object v2, Landroid/hardware/tv/tuner/FrontendIptvSettingsFec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendIptvSettingsFec;

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->fec:Landroid/hardware/tv/tuner/FrontendIptvSettingsFec;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 68
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->igmp:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 68
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->bitrate:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 68
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_95
    :try_start_95
    sget-object v2, Landroid/hardware/tv/tuner/DemuxIpAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxIpAddress;

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->ipAddr:Landroid/hardware/tv/tuner/DemuxIpAddress;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_c9

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 68
    :cond_ae
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->contentUrl:Ljava/lang/String;
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_c9

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c3

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :cond_c3
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :catchall_c9
    move-exception v2

    goto :goto_d3

    .line 53
    :cond_cb
    :try_start_cb
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_c9

    .line 67
    :goto_d3
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_dc

    .line 68
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_dc
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->protocol:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->fec:Landroid/hardware/tv/tuner/FrontendIptvSettingsFec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->igmp:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->bitrate:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->ipAddr:Landroid/hardware/tv/tuner/DemuxIpAddress;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    iget-object p2, p0, Landroid/hardware/tv/tuner/FrontendIptvSettings;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
