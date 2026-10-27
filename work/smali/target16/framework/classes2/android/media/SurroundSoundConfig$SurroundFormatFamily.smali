.class public Landroid/media/SurroundSoundConfig$SurroundFormatFamily;
.super Ljava/lang/Object;
.source "SurroundSoundConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SurroundSoundConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurroundFormatFamily"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/SurroundSoundConfig$SurroundFormatFamily;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist primaryFormat:Landroid/media/audio/common/AudioFormatDescription;

.field public blacklist subFormats:[Landroid/media/audio/common/AudioFormatDescription;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily$1;

    invoke-direct {v0}, Landroid/media/SurroundSoundConfig$SurroundFormatFamily$1;-><init>()V

    sput-object v0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 142
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 143
    nop

    .line 144
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 145
    invoke-direct {p0, v3}, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 147
    :cond_19
    return v2

    .line 149
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 150
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 152
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 135
    nop

    .line 136
    iget-object v0, p0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->primaryFormat:Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {p0, v0}, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 137
    iget-object v1, p0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->subFormats:[Landroid/media/audio/common/AudioFormatDescription;

    invoke-direct {p0, v1}, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 138
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5f

    .line 122
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 122
    return-void

    .line 128
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioFormatDescription;

    iput-object v2, p0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->primaryFormat:Landroid/media/audio/common/AudioFormatDescription;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 128
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_44
    :try_start_44
    sget-object v2, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioFormatDescription;

    iput-object v2, p0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->subFormats:[Landroid/media/audio/common/AudioFormatDescription;
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_5d

    .line 127
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_57

    .line 130
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    nop

    .line 132
    return-void

    .line 128
    :cond_57
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :catchall_5d
    move-exception v2

    goto :goto_67

    .line 121
    :cond_5f
    :try_start_5f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5d

    .line 127
    :goto_67
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_70

    .line 128
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v1, p0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->primaryFormat:Landroid/media/audio/common/AudioFormatDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v1, p0, Landroid/media/SurroundSoundConfig$SurroundFormatFamily;->subFormats:[Landroid/media/audio/common/AudioFormatDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void
.end method
