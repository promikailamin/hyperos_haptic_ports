.class public final Landroid/hardware/vibrator/PrimitivePwle;
.super Ljava/lang/Object;
.source "PrimitivePwle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/PrimitivePwle$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/vibrator/PrimitivePwle;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist active:I = 0x0

.field public static final blacklist braking:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle$1;

    invoke-direct {v0}, Landroid/hardware/vibrator/PrimitivePwle$1;-><init>()V

    sput-object v0, Landroid/hardware/vibrator/PrimitivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    nop

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    .line 30
    iput-object p2, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/vibrator/PrimitivePwle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 136
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 139
    return-void

    .line 137
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/vibrator/PrimitivePwle;->_tagString(I)Ljava/lang/String;

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

    .line 150
    iput p1, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    .line 151
    iput-object p2, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 142
    packed-switch p1, :pswitch_data_22

    .line 146
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

    .line 144
    :pswitch_1c
    const-string p1, "braking"

    return-object p1

    .line 143
    :pswitch_1f
    const-string p1, "active"

    return-object p1

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist active(Landroid/hardware/vibrator/ActivePwle;)Landroid/hardware/vibrator/PrimitivePwle;
    .registers 3

    .line 40
    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist braking(Landroid/hardware/vibrator/BrakingPwle;)Landroid/hardware/vibrator/PrimitivePwle;
    .registers 3

    .line 55
    new-instance v0, Landroid/hardware/vibrator/PrimitivePwle;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/vibrator/PrimitivePwle;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 128
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 129
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 130
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 132
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 116
    nop

    .line 117
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 122
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getBraking()Landroid/hardware/vibrator/BrakingPwle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1e

    .line 119
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getActive()Landroid/hardware/vibrator/ActivePwle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 120
    nop

    .line 125
    :goto_1e
    return v1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getActive()Landroid/hardware/vibrator/ActivePwle;
    .registers 2

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->_assertTag(I)V

    .line 45
    iget-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/vibrator/ActivePwle;

    return-object v0
.end method

.method public blacklist getBraking()Landroid/hardware/vibrator/BrakingPwle;
    .registers 2

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/vibrator/PrimitivePwle;->_assertTag(I)V

    .line 60
    iget-object v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/vibrator/BrakingPwle;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 34
    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    packed-switch v0, :pswitch_data_38

    .line 111
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

    .line 107
    :pswitch_20
    sget-object v1, Landroid/hardware/vibrator/BrakingPwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/vibrator/BrakingPwle;

    .line 108
    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 109
    return-void

    .line 102
    :pswitch_2c
    sget-object v1, Landroid/hardware/vibrator/ActivePwle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/vibrator/ActivePwle;

    .line 103
    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 104
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setActive(Landroid/hardware/vibrator/ActivePwle;)V
    .registers 3

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public blacklist setBraking(Landroid/hardware/vibrator/BrakingPwle;)V
    .registers 3

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/vibrator/PrimitivePwle;->_set(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 85
    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/hardware/vibrator/PrimitivePwle;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 91
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getBraking()Landroid/hardware/vibrator/BrakingPwle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 88
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/vibrator/PrimitivePwle;->getActive()Landroid/hardware/vibrator/ActivePwle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    nop

    .line 94
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
