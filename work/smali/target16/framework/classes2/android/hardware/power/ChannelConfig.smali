.class public Landroid/hardware/power/ChannelConfig;
.super Ljava/lang/Object;
.source "ChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/power/ChannelConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist channelDescriptor:Landroid/hardware/common/fmq/MQDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Landroid/hardware/power/ChannelMessage;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/common/fmq/MQDescriptor<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist readFlagBitmask:I

.field public blacklist writeFlagBitmask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Landroid/hardware/power/ChannelConfig$1;

    invoke-direct {v0}, Landroid/hardware/power/ChannelConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/power/ChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/power/ChannelConfig;->readFlagBitmask:I

    .line 15
    iput v0, p0, Landroid/hardware/power/ChannelConfig;->writeFlagBitmask:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 74
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 76
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 66
    nop

    .line 67
    iget-object v0, p0, Landroid/hardware/power/ChannelConfig;->channelDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {p0, v0}, Landroid/hardware/power/ChannelConfig;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 68
    iget-object v1, p0, Landroid/hardware/power/ChannelConfig;->eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {p0, v1}, Landroid/hardware/power/ChannelConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_95

    .line 49
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_93

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 58
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 61
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 59
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/common/fmq/MQDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/fmq/MQDescriptor;

    iput-object v2, p0, Landroid/hardware/power/ChannelConfig;->channelDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_93

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 58
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 61
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 59
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_44
    :try_start_44
    sget-object v2, Landroid/hardware/common/fmq/MQDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/fmq/MQDescriptor;

    iput-object v2, p0, Landroid/hardware/power/ChannelConfig;->eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_93

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_63

    .line 58
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5d

    .line 61
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 59
    :cond_5d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_63
    :try_start_63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/ChannelConfig;->readFlagBitmask:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_93

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 58
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 61
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 59
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_7e
    :try_start_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/power/ChannelConfig;->writeFlagBitmask:I
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_93

    .line 58
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8d

    .line 61
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    nop

    .line 63
    return-void

    .line 59
    :cond_8d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :catchall_93
    move-exception v2

    goto :goto_9d

    .line 48
    :cond_95
    :try_start_95
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_93

    .line 58
    :goto_9d
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a6

    .line 59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_a6
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v1, p0, Landroid/hardware/power/ChannelConfig;->channelDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 35
    iget-object v1, p0, Landroid/hardware/power/ChannelConfig;->eventFlagDescriptor:Landroid/hardware/common/fmq/MQDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    iget p2, p0, Landroid/hardware/power/ChannelConfig;->readFlagBitmask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Landroid/hardware/power/ChannelConfig;->writeFlagBitmask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void
.end method
