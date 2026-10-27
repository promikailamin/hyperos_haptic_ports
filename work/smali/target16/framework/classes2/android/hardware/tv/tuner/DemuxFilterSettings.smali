.class public final Landroid/hardware/tv/tuner/DemuxFilterSettings;
.super Ljava/lang/Object;
.source "DemuxFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist alp:I = 0x4

.field public static final blacklist ip:I = 0x2

.field public static final blacklist mmtp:I = 0x1

.field public static final blacklist tlv:I = 0x3

.field public static final blacklist ts:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    nop

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 218
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 221
    return-void

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tagString(I)Ljava/lang/String;

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

    .line 235
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    .line 236
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    .line 237
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 224
    packed-switch p1, :pswitch_data_2c

    .line 231
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

    .line 229
    :pswitch_1c
    const-string p1, "alp"

    return-object p1

    .line 228
    :pswitch_1f
    const-string p1, "tlv"

    return-object p1

    .line 227
    :pswitch_22
    const-string p1, "ip"

    return-object p1

    .line 226
    :pswitch_25
    const-string p1, "mmtp"

    return-object p1

    .line 225
    :pswitch_28
    const-string p1, "ts"

    return-object p1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist alp(Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    .line 104
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 210
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 211
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 212
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 214
    :cond_f
    return v0
.end method

.method public static blacklist ip(Landroid/hardware/tv/tuner/DemuxIpFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    .line 74
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mmtp(Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    .line 59
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tlv(Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    .line 89
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ts(Landroid/hardware/tv/tuner/DemuxTsFilterSettings;)Landroid/hardware/tv/tuner/DemuxFilterSettings;
    .registers 3

    .line 44
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 189
    nop

    .line 190
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3e

    goto :goto_3c

    .line 204
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getAlp()Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_3c

    .line 201
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTlv()Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 202
    goto :goto_3c

    .line 198
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getIp()Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 199
    goto :goto_3c

    .line 195
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getMmtp()Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 196
    goto :goto_3c

    .line 192
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTs()Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 193
    nop

    .line 207
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_32
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getAlp()Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;
    .registers 2

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    return-object v0
.end method

.method public blacklist getIp()Landroid/hardware/tv/tuner/DemuxIpFilterSettings;
    .registers 2

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    return-object v0
.end method

.method public blacklist getMmtp()Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;
    .registers 2

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    return v0
.end method

.method public blacklist getTlv()Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;
    .registers 2

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    return-object v0
.end method

.method public blacklist getTs()Landroid/hardware/tv/tuner/DemuxTsFilterSettings;
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    packed-switch v0, :pswitch_data_5c

    .line 184
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

    .line 180
    :pswitch_20
    sget-object v1, Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    .line 181
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 182
    return-void

    .line 175
    :pswitch_2c
    sget-object v1, Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    .line 176
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 177
    return-void

    .line 170
    :pswitch_38
    sget-object v1, Landroid/hardware/tv/tuner/DemuxIpFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    .line 171
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 165
    :pswitch_44
    sget-object v1, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    .line 166
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 167
    return-void

    .line 160
    :pswitch_50
    sget-object v1, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    .line 161
    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 162
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAlp(Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;)V
    .registers 3

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public blacklist setIp(Landroid/hardware/tv/tuner/DemuxIpFilterSettings;)V
    .registers 3

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public blacklist setMmtp(Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;)V
    .registers 3

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public blacklist setTlv(Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;)V
    .registers 3

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public blacklist setTs(Landroid/hardware/tv/tuner/DemuxTsFilterSettings;)V
    .registers 3

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 134
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 149
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getAlp()Landroid/hardware/tv/tuner/DemuxAlpFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_33

    .line 146
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTlv()Landroid/hardware/tv/tuner/DemuxTlvFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    goto :goto_33

    .line 143
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getIp()Landroid/hardware/tv/tuner/DemuxIpFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    goto :goto_33

    .line 140
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getMmtp()Landroid/hardware/tv/tuner/DemuxMmtpFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_33

    .line 137
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterSettings;->getTs()Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    nop

    .line 152
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
