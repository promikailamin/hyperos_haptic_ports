.class public Landroid/media/AudioPortSys;
.super Ljava/lang/Object;
.source "AudioPortSys.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPortSys;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeConfig:Landroid/media/AudioPortConfigFw;

.field public blacklist ext:Landroid/media/AudioPortExtSys;

.field public blacklist gains:[Landroid/media/AudioGainSys;

.field public blacklist profiles:[Landroid/media/AudioProfileSys;

.field public blacklist role:I

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/media/AudioPortSys$1;

    invoke-direct {v0}, Landroid/media/AudioPortSys$1;-><init>()V

    sput-object v0, Landroid/media/AudioPortSys;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 88
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 89
    nop

    .line 90
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 91
    invoke-direct {p0, v3}, Landroid/media/AudioPortSys;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 93
    :cond_19
    return v2

    .line 95
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 96
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 98
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 79
    nop

    .line 80
    iget-object v0, p0, Landroid/media/AudioPortSys;->profiles:[Landroid/media/AudioProfileSys;

    invoke-direct {p0, v0}, Landroid/media/AudioPortSys;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 81
    iget-object v1, p0, Landroid/media/AudioPortSys;->gains:[Landroid/media/AudioGainSys;

    invoke-direct {p0, v1}, Landroid/media/AudioPortSys;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Landroid/media/AudioPortSys;->activeConfig:Landroid/media/AudioPortConfigFw;

    invoke-direct {p0, v1}, Landroid/media/AudioPortSys;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Landroid/media/AudioPortSys;->ext:Landroid/media/AudioPortExtSys;

    invoke-direct {p0, v1}, Landroid/media/AudioPortSys;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
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

    if-lt v1, v2, :cond_d3

    .line 58
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 72
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioPortSys;->role:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 72
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/AudioPortSys;->type:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 72
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_5b
    :try_start_5b
    sget-object v2, Landroid/media/AudioProfileSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioProfileSys;

    iput-object v2, p0, Landroid/media/AudioPortSys;->profiles:[Landroid/media/AudioProfileSys;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 72
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_7a
    :try_start_7a
    sget-object v2, Landroid/media/AudioGainSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioGainSys;

    iput-object v2, p0, Landroid/media/AudioPortSys;->gains:[Landroid/media/AudioGainSys;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_99

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 72
    :cond_93
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_99
    :try_start_99
    sget-object v2, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPortConfigFw;

    iput-object v2, p0, Landroid/media/AudioPortSys;->activeConfig:Landroid/media/AudioPortConfigFw;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b8

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b2

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 72
    :cond_b2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_b8
    :try_start_b8
    sget-object v2, Landroid/media/AudioPortExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPortExtSys;

    iput-object v2, p0, Landroid/media/AudioPortSys;->ext:Landroid/media/AudioPortExtSys;
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_d1

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cb

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    nop

    .line 76
    return-void

    .line 72
    :cond_cb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :catchall_d1
    move-exception v2

    goto :goto_db

    .line 57
    :cond_d3
    :try_start_d3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_d1

    .line 71
    :goto_db
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e4

    .line 72
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_e4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Landroid/media/AudioPortSys;->role:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/media/AudioPortSys;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/media/AudioPortSys;->profiles:[Landroid/media/AudioProfileSys;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 44
    iget-object v1, p0, Landroid/media/AudioPortSys;->gains:[Landroid/media/AudioGainSys;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 45
    iget-object v1, p0, Landroid/media/AudioPortSys;->activeConfig:Landroid/media/AudioPortConfigFw;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-object v1, p0, Landroid/media/AudioPortSys;->ext:Landroid/media/AudioPortExtSys;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void
.end method
