.class public final Landroid/media/AudioPortExtSys;
.super Ljava/lang/Object;
.source "AudioPortExtSys.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPortExtSys$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPortExtSys;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist device:I = 0x1

.field public static final blacklist mix:I = 0x2

.field public static final blacklist session:I = 0x3

.field public static final blacklist unspecified:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Landroid/media/AudioPortExtSys$1;

    invoke-direct {v0}, Landroid/media/AudioPortExtSys$1;-><init>()V

    sput-object v0, Landroid/media/AudioPortExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    nop

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/media/AudioPortExtSys;->_tag:I

    .line 33
    iput-object p2, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/media/AudioPortExtSys;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioPortExtSys-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioPortExtSys;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 184
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 187
    return-void

    .line 185
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/AudioPortExtSys;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/AudioPortExtSys;->_tagString(I)Ljava/lang/String;

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

    .line 200
    iput p1, p0, Landroid/media/AudioPortExtSys;->_tag:I

    .line 201
    iput-object p2, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 190
    packed-switch p1, :pswitch_data_28

    .line 196
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

    .line 194
    :pswitch_1c
    const-string p1, "session"

    return-object p1

    .line 193
    :pswitch_1f
    const-string p1, "mix"

    return-object p1

    .line 192
    :pswitch_22
    const-string p1, "device"

    return-object p1

    .line 191
    :pswitch_25
    const-string p1, "unspecified"

    return-object p1

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 176
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 177
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 178
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 180
    :cond_f
    return v0
.end method

.method public static blacklist device(Landroid/media/AudioPortDeviceExtSys;)Landroid/media/AudioPortExtSys;
    .registers 3

    .line 60
    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist mix(Landroid/media/AudioPortMixExtSys;)Landroid/media/AudioPortExtSys;
    .registers 3

    .line 76
    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist session(I)Landroid/media/AudioPortExtSys;
    .registers 3

    .line 92
    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist unspecified(Z)Landroid/media/AudioPortExtSys;
    .registers 3

    .line 44
    new-instance v0, Landroid/media/AudioPortExtSys;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/AudioPortExtSys;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 164
    nop

    .line 165
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 170
    :pswitch_a
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getMix()Landroid/media/AudioPortMixExtSys;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1e

    .line 167
    :pswitch_14
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getDevice()Landroid/media/AudioPortDeviceExtSys;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 168
    nop

    .line 173
    :goto_1e
    return v1

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getDevice()Landroid/media/AudioPortDeviceExtSys;
    .registers 2

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    .line 65
    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioPortDeviceExtSys;

    return-object v0
.end method

.method public blacklist getMix()Landroid/media/AudioPortMixExtSys;
    .registers 2

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioPortMixExtSys;

    return-object v0
.end method

.method public blacklist getSession()I
    .registers 2

    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    .line 97
    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 37
    iget v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    return v0
.end method

.method public blacklist getUnspecified()Z
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioPortExtSys;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/media/AudioPortExtSys;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    packed-switch v0, :pswitch_data_50

    .line 159
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

    .line 155
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    .line 150
    :pswitch_2c
    sget-object v1, Landroid/media/AudioPortMixExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPortMixExtSys;

    .line 151
    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 152
    return-void

    .line 145
    :pswitch_38
    sget-object v1, Landroid/media/AudioPortDeviceExtSys;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioPortDeviceExtSys;

    .line 146
    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 147
    return-void

    .line 140
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 141
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 142
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setDevice(Landroid/media/AudioPortDeviceExtSys;)V
    .registers 3

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public blacklist setMix(Landroid/media/AudioPortMixExtSys;)V
    .registers 3

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public blacklist setSession(I)V
    .registers 3

    .line 101
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public blacklist setUnspecified(Z)V
    .registers 3

    .line 53
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/AudioPortExtSys;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 117
    iget v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/media/AudioPortExtSys;->_tag:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_2b

    .line 129
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getSession()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 126
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getMix()Landroid/media/AudioPortMixExtSys;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    goto :goto_2b

    .line 123
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getDevice()Landroid/media/AudioPortDeviceExtSys;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    goto :goto_2b

    .line 120
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/AudioPortExtSys;->getUnspecified()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    nop

    .line 132
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
