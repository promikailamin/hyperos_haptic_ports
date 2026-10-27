.class public final Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;
.super Ljava/lang/Object;
.source "DemuxIpAddressIpAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist v4:I = 0x0

.field public static final blacklist v6:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    .line 22
    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 124
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 127
    return-void

    .line 125
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is available."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3

    .line 138
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    .line 139
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 130
    packed-switch p1, :pswitch_data_22

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_1c
    const-string p1, "v6"

    return-object p1

    .line 131
    :pswitch_1f
    const-string p1, "v4"

    return-object p1

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist v4([B)Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;
    .registers 3

    .line 41
    new-instance v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist v6([B)Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;
    .registers 3

    .line 56
    new-instance v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getTag()I

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    return v0
.end method

.method public blacklist getV4()[B
    .registers 2

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_assertTag(I)V

    .line 46
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getV6()[B
    .registers 2

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    packed-switch v0, :pswitch_data_30

    .line 112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 109
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 110
    return-void

    .line 103
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 104
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setV4([B)V
    .registers 3

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public blacklist setV6([B)V
    .registers 3

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 86
    iget p2, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    packed-switch p2, :pswitch_data_1c

    goto :goto_1b

    .line 92
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getV6()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1b

    .line 89
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getV4()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 90
    nop

    .line 95
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
