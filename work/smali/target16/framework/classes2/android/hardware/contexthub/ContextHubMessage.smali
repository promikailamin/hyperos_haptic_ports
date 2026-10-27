.class public Landroid/hardware/contexthub/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist hostEndPoint:C

.field public blacklist isReliable:Z

.field public blacklist messageBody:[B

.field public blacklist messageSequenceNumber:I

.field public blacklist messageType:I

.field public blacklist nanoappId:J

.field public blacklist permissions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 13
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 14
    iput v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 17
    iput-boolean v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 18
    iput v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    nop

    .line 79
    const/4 v0, 0x0

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

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_df

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 71
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 71
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5c

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_56

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 71
    :cond_56
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5c
    :try_start_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_77

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_71

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 71
    :cond_71
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_77
    :try_start_77
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_92

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8c

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 71
    :cond_8c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_92
    :try_start_92
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ad

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a7

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 71
    :cond_a7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_ad
    :try_start_ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_dd

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 71
    :cond_c2
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_dd

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_d7

    .line 73
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    nop

    .line 75
    return-void

    .line 71
    :cond_d7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :catchall_dd
    move-exception v2

    goto :goto_e7

    .line 54
    :cond_df
    :try_start_df
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e7
    .catchall {:try_start_df .. :try_end_e7} :catchall_dd

    .line 70
    :goto_e7
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f0

    .line 71
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_f0
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-char v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 41
    iget-object v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->isReliable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 43
    iget v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
