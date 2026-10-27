.class public Landroid/media/ClientConfigParcel;
.super Ljava/lang/Object;
.source "ClientConfigParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/ClientConfigParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist clientInfo:Landroid/media/ClientInfoParcel;

.field public blacklist codecType:I

.field public blacklist height:I

.field public blacklist id:J

.field public blacklist isEncoder:Z

.field public blacklist timeStamp:J

.field public blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/media/ClientConfigParcel$1;

    invoke-direct {v0}, Landroid/media/ClientConfigParcel$1;-><init>()V

    sput-object v0, Landroid/media/ClientConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ClientConfigParcel;->codecType:I

    .line 22
    iput-boolean v0, p0, Landroid/media/ClientConfigParcel;->isEncoder:Z

    .line 24
    iput v0, p0, Landroid/media/ClientConfigParcel;->width:I

    .line 25
    iput v0, p0, Landroid/media/ClientConfigParcel;->height:I

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ClientConfigParcel;->timeStamp:J

    .line 34
    iput-wide v0, p0, Landroid/media/ClientConfigParcel;->id:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 97
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 98
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 99
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 101
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    nop

    .line 93
    iget-object v0, p0, Landroid/media/ClientConfigParcel;->clientInfo:Landroid/media/ClientInfoParcel;

    invoke-direct {p0, v0}, Landroid/media/ClientConfigParcel;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 94
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e2

    .line 69
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 85
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/ClientInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ClientInfoParcel;

    iput-object v2, p0, Landroid/media/ClientConfigParcel;->clientInfo:Landroid/media/ClientInfoParcel;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 85
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/ClientConfigParcel;->codecType:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 85
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/ClientConfigParcel;->isEncoder:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 85
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/ClientConfigParcel;->width:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 85
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/ClientConfigParcel;->height:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 85
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/ClientConfigParcel;->timeStamp:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 85
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/ClientConfigParcel;->id:J
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_e0

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    .line 87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    nop

    .line 89
    return-void

    .line 85
    :cond_da
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :catchall_e0
    move-exception v2

    goto :goto_ea

    .line 68
    :cond_e2
    :try_start_e2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e0

    .line 84
    :goto_ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f3

    .line 85
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_f3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v1, p0, Landroid/media/ClientConfigParcel;->clientInfo:Landroid/media/ClientInfoParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 52
    iget p2, p0, Landroid/media/ClientConfigParcel;->codecType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean p2, p0, Landroid/media/ClientConfigParcel;->isEncoder:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 54
    iget p2, p0, Landroid/media/ClientConfigParcel;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Landroid/media/ClientConfigParcel;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-wide v1, p0, Landroid/media/ClientConfigParcel;->timeStamp:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v1, p0, Landroid/media/ClientConfigParcel;->id:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void
.end method
