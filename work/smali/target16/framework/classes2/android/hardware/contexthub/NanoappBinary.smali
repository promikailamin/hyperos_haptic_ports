.class public Landroid/hardware/contexthub/NanoappBinary;
.super Ljava/lang/Object;
.source "NanoappBinary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/NanoappBinary;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ENCRYPTED:I = 0x2

.field public static final blacklist FLAG_SIGNED:I = 0x1

.field public static final blacklist FLAG_TCM_CAPABLE:I = 0x4


# instance fields
.field public blacklist customBinary:[B

.field public blacklist flags:I

.field public blacklist nanoappId:J

.field public blacklist nanoappVersion:I

.field public blacklist targetChreApiMajorVersion:B

.field public blacklist targetChreApiMinorVersion:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/hardware/contexthub/NanoappBinary$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/NanoappBinary$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/NanoappBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    .line 14
    iput v0, p0, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    .line 15
    iput-byte v0, p0, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    .line 16
    iput-byte v0, p0, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    nop

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_c3

    .line 53
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 67
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 67
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 67
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 67
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 67
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 67
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_c1

    .line 66
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bb

    .line 69
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    nop

    .line 71
    return-void

    .line 67
    :cond_bb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :catchall_c1
    move-exception v2

    goto :goto_cb

    .line 52
    :cond_c3
    :try_start_c3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_c1

    .line 66
    :goto_cb
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_d4

    .line 67
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_d4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-wide v0, p0, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget v0, p0, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-byte v0, p0, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-byte v0, p0, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object v0, p0, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
