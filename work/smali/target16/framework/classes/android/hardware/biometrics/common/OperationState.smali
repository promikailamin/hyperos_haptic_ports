.class public final Landroid/hardware/biometrics/common/OperationState;
.super Ljava/lang/Object;
.source "OperationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;,
        Landroid/hardware/biometrics/common/OperationState$FaceOperationState;,
        Landroid/hardware/biometrics/common/OperationState$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/common/OperationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist faceOperationState:I = 0x1

.field public static final blacklist fingerprintOperationState:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/hardware/biometrics/common/OperationState$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationState$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/common/OperationState;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/common/OperationState;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/common/OperationState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/common/OperationState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 137
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 140
    return-void

    .line 138
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/common/OperationState;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/biometrics/common/OperationState;->_tagString(I)Ljava/lang/String;

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

    .line 151
    iput p1, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    .line 152
    iput-object p2, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 143
    packed-switch p1, :pswitch_data_24

    .line 147
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

    .line 145
    :pswitch_1d
    const-string p1, "faceOperationState"

    return-object p1

    .line 144
    :pswitch_20
    const-string p1, "fingerprintOperationState"

    return-object p1

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 130
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 131
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 133
    :cond_f
    return v0
.end method

.method public static blacklist faceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)Landroid/hardware/biometrics/common/OperationState;
    .registers 3

    .line 56
    new-instance v0, Landroid/hardware/biometrics/common/OperationState;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/common/OperationState;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist fingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)Landroid/hardware/biometrics/common/OperationState;
    .registers 3

    .line 41
    new-instance v0, Landroid/hardware/biometrics/common/OperationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/biometrics/common/OperationState;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 123
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFaceOperationState()Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1e

    .line 120
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 121
    nop

    .line 126
    :goto_1e
    return v1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getFaceOperationState()Landroid/hardware/biometrics/common/OperationState$FaceOperationState;
    .registers 2

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    return-object v0
.end method

.method public blacklist getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;
    .registers 2

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/common/OperationState;->_assertTag(I)V

    .line 46
    iget-object v0, p0, Landroid/hardware/biometrics/common/OperationState;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    return-object v0
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
    iget v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    packed-switch v0, :pswitch_data_3a

    .line 112
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

    .line 108
    :pswitch_21
    sget-object v1, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    .line 109
    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 110
    return-void

    .line 103
    :pswitch_2d
    sget-object v1, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    .line 104
    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setFaceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)V
    .registers 3

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public blacklist setFingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)V
    .registers 3

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/biometrics/common/OperationState;->_set(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 86
    iget v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/hardware/biometrics/common/OperationState;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 92
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFaceOperationState()Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 89
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

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
