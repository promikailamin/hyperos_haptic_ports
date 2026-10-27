.class public Landroid/hardware/power/SupportInfo;
.super Ljava/lang/Object;
.source "SupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;,
        Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/SupportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist boosts:J

.field public blacklist compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

.field public blacklist headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

.field public blacklist modes:J

.field public blacklist sessionHints:J

.field public blacklist sessionModes:J

.field public blacklist sessionTags:J

.field public blacklist usesSessions:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Landroid/hardware/power/SupportInfo$1;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/power/SupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/power/SupportInfo;->boosts:J

    .line 14
    iput-wide v0, p0, Landroid/hardware/power/SupportInfo;->modes:J

    .line 15
    iput-wide v0, p0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 16
    iput-wide v0, p0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 17
    iput-wide v0, p0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 90
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 92
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 82
    nop

    .line 83
    iget-object v0, p0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-direct {p0, v0}, Landroid/hardware/power/SupportInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 84
    iget-object v1, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    invoke-direct {p0, v1}, Landroid/hardware/power/SupportInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_101

    .line 57
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 75
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 75
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/SupportInfo;->boosts:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 75
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/SupportInfo;->modes:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 75
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 75
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 75
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 75
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_c7
    :try_start_c7
    sget-object v2, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    iput-object v2, p0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_ff

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 75
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_e6
    :try_start_e6
    sget-object v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iput-object v2, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_ff

    .line 74
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f9

    .line 77
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    nop

    .line 79
    return-void

    .line 75
    :cond_f9
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :catchall_ff
    move-exception v2

    goto :goto_109

    .line 56
    :cond_101
    :try_start_101
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_ff

    .line 74
    :goto_109
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_112

    .line 75
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_112
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-boolean v1, p0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    iget-wide v1, p0, Landroid/hardware/power/SupportInfo;->boosts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-wide v1, p0, Landroid/hardware/power/SupportInfo;->modes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v1, p0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object v1, p0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v1, p0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void
.end method
