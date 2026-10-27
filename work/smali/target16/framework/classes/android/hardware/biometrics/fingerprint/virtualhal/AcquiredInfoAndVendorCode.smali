.class public final Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
.super Ljava/lang/Object;
.source "AcquiredInfoAndVendorCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist acquiredInfo:I = 0x0

.field public static final blacklist vendorCode:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    nop

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    .line 22
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 121
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 124
    return-void

    .line 122
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tagString(I)Ljava/lang/String;

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

    .line 135
    iput p1, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    .line 136
    iput-object p2, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 127
    packed-switch p1, :pswitch_data_24

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_1d
    const-string/jumbo p1, "vendorCode"

    return-object p1

    .line 128
    :pswitch_21
    const-string p1, "acquiredInfo"

    return-object p1

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist acquiredInfo(B)Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    .registers 3

    .line 42
    new-instance v0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist vendorCode(I)Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;
    .registers 3

    .line 58
    new-instance v0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->getTag()I

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAcquiredInfo()B
    .registers 2

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 35
    iget v0, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    return v0
.end method

.method public blacklist getVendorCode()I
    .registers 2

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_assertTag(I)V

    .line 63
    iget-object v0, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    packed-switch v0, :pswitch_data_3a

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 107
    return-void

    .line 100
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 101
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 102
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setAcquiredInfo(B)V
    .registers 3

    .line 51
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public blacklist setVendorCode(I)V
    .registers 3

    .line 67
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_set(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 83
    iget p2, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->_tag:I

    packed-switch p2, :pswitch_data_1c

    goto :goto_1b

    .line 89
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->getVendorCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 86
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/virtualhal/AcquiredInfoAndVendorCode;->getAcquiredInfo()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    nop

    .line 92
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
