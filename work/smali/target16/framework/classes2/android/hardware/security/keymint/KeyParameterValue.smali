.class public final Landroid/hardware/security/keymint/KeyParameterValue;
.super Ljava/lang/Object;
.source "KeyParameterValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/KeyParameterValue$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/security/keymint/KeyParameterValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist algorithm:I = 0x1

.field public static final blacklist blob:I = 0xe

.field public static final blacklist blockMode:I = 0x2

.field public static final blacklist boolValue:I = 0xa

.field public static final blacklist dateTime:I = 0xd

.field public static final blacklist digest:I = 0x4

.field public static final blacklist ecCurve:I = 0x5

.field public static final blacklist hardwareAuthenticatorType:I = 0x8

.field public static final blacklist integer:I = 0xb

.field public static final blacklist invalid:I = 0x0

.field public static final blacklist keyPurpose:I = 0x7

.field public static final blacklist longInteger:I = 0xc

.field public static final blacklist origin:I = 0x6

.field public static final blacklist paddingMode:I = 0x3

.field public static final blacklist securityLevel:I = 0x9


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue$1;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameterValue$1;-><init>()V

    sput-object v0, Landroid/hardware/security/keymint/KeyParameterValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    nop

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    .line 44
    iput-object p2, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/security/keymint/KeyParameterValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 436
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 439
    return-void

    .line 437
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/security/keymint/KeyParameterValue;->_tagString(I)Ljava/lang/String;

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

    .line 463
    iput p1, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    .line 464
    iput-object p2, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    .line 465
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 442
    packed-switch p1, :pswitch_data_4a

    .line 459
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

    .line 457
    :pswitch_1c
    const-string p1, "blob"

    return-object p1

    .line 456
    :pswitch_1f
    const-string p1, "dateTime"

    return-object p1

    .line 455
    :pswitch_22
    const-string p1, "longInteger"

    return-object p1

    .line 454
    :pswitch_25
    const-string p1, "integer"

    return-object p1

    .line 453
    :pswitch_28
    const-string p1, "boolValue"

    return-object p1

    .line 452
    :pswitch_2b
    const-string p1, "securityLevel"

    return-object p1

    .line 451
    :pswitch_2e
    const-string p1, "hardwareAuthenticatorType"

    return-object p1

    .line 450
    :pswitch_31
    const-string p1, "keyPurpose"

    return-object p1

    .line 449
    :pswitch_34
    const-string p1, "origin"

    return-object p1

    .line 448
    :pswitch_37
    const-string p1, "ecCurve"

    return-object p1

    .line 447
    :pswitch_3a
    const-string p1, "digest"

    return-object p1

    .line 446
    :pswitch_3d
    const-string p1, "paddingMode"

    return-object p1

    .line 445
    :pswitch_40
    const-string p1, "blockMode"

    return-object p1

    .line 444
    :pswitch_43
    const-string p1, "algorithm"

    return-object p1

    .line 443
    :pswitch_46
    const-string p1, "invalid"

    return-object p1

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 69
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist blob([B)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 264
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist blockMode(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 84
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 204
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0xa

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 4

    .line 249
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0xd

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist digest(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 114
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 129
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hardwareAuthenticatorType(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 174
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist integer(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 219
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist invalid(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 54
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 159
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 4

    .line 234
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0xc

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist origin(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 144
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist paddingMode(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 99
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist securityLevel(I)Landroid/hardware/security/keymint/KeyParameterValue;
    .registers 3

    .line 189
    new-instance v0, Landroid/hardware/security/keymint/KeyParameterValue;

    const/16 v1, 0x9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/hardware/security/keymint/KeyParameterValue;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 429
    nop

    .line 430
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getTag()I

    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlgorithm()I
    .registers 2

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 74
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBlob()[B
    .registers 2

    .line 268
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 269
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getBlockMode()I
    .registers 2

    .line 88
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 89
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getBoolValue()Z
    .registers 2

    .line 208
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 209
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getDateTime()J
    .registers 3

    .line 253
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 254
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDigest()I
    .registers 2

    .line 118
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 119
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getEcCurve()I
    .registers 2

    .line 133
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 134
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getHardwareAuthenticatorType()I
    .registers 2

    .line 178
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 179
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInteger()I
    .registers 2

    .line 223
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 224
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getInvalid()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 59
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getKeyPurpose()I
    .registers 2

    .line 163
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 164
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getLongInteger()J
    .registers 3

    .line 238
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 239
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOrigin()I
    .registers 2

    .line 148
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 149
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingMode()I
    .registers 2

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 104
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityLevel()I
    .registers 2

    .line 193
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/security/keymint/KeyParameterValue;->_assertTag(I)V

    .line 194
    iget-object v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 48
    iget v0, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 347
    packed-switch v0, :pswitch_data_d0

    .line 424
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

    .line 420
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 421
    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 422
    return-void

    .line 415
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 417
    return-void

    .line 410
    :pswitch_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 411
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 412
    return-void

    .line 405
    :pswitch_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 407
    return-void

    .line 400
    :pswitch_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 402
    return-void

    .line 395
    :pswitch_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 397
    return-void

    .line 390
    :pswitch_64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 392
    return-void

    .line 385
    :pswitch_70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 387
    return-void

    .line 380
    :pswitch_7c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 382
    return-void

    .line 375
    :pswitch_88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 377
    return-void

    .line 370
    :pswitch_94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 372
    return-void

    .line 365
    :pswitch_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 367
    return-void

    .line 360
    :pswitch_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 362
    return-void

    .line 355
    :pswitch_b8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 357
    return-void

    .line 350
    :pswitch_c4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 352
    return-void

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_b8
        :pswitch_ac
        :pswitch_a0
        :pswitch_94
        :pswitch_88
        :pswitch_7c
        :pswitch_70
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setAlgorithm(I)V
    .registers 3

    .line 78
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public blacklist setBlob([B)V
    .registers 3

    .line 273
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method public blacklist setBlockMode(I)V
    .registers 3

    .line 93
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public blacklist setBoolValue(Z)V
    .registers 3

    .line 213
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public blacklist setDateTime(J)V
    .registers 4

    .line 258
    const/16 v0, 0xd

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public blacklist setDigest(I)V
    .registers 3

    .line 123
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method public blacklist setEcCurve(I)V
    .registers 3

    .line 138
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public blacklist setHardwareAuthenticatorType(I)V
    .registers 3

    .line 183
    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public blacklist setInteger(I)V
    .registers 3

    .line 228
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method public blacklist setInvalid(I)V
    .registers 3

    .line 63
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public blacklist setKeyPurpose(I)V
    .registers 3

    .line 168
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 169
    return-void
.end method

.method public blacklist setLongInteger(J)V
    .registers 4

    .line 243
    const/16 v0, 0xc

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public blacklist setOrigin(I)V
    .registers 3

    .line 153
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method public blacklist setPaddingMode(I)V
    .registers 3

    .line 108
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public blacklist setSecurityLevel(I)V
    .registers 3

    .line 198
    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/security/keymint/KeyParameterValue;->_set(ILjava/lang/Object;)V

    .line 199
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 294
    iget p2, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget p2, p0, Landroid/hardware/security/keymint/KeyParameterValue;->_tag:I

    packed-switch p2, :pswitch_data_88

    goto/16 :goto_86

    .line 339
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_86

    .line 336
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    goto/16 :goto_86

    .line 333
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    goto :goto_86

    .line 330
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    goto :goto_86

    .line 327
    :pswitch_2e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBoolValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    goto :goto_86

    .line 324
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getSecurityLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    goto :goto_86

    .line 321
    :pswitch_3e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getHardwareAuthenticatorType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    goto :goto_86

    .line 318
    :pswitch_46
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    goto :goto_86

    .line 315
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    goto :goto_86

    .line 312
    :pswitch_56
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    goto :goto_86

    .line 309
    :pswitch_5e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto :goto_86

    .line 306
    :pswitch_66
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    goto :goto_86

    .line 303
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    goto :goto_86

    .line 300
    :pswitch_76
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    goto :goto_86

    .line 297
    :pswitch_7e
    invoke-virtual {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->getInvalid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    nop

    .line 342
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_76
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_46
        :pswitch_3e
        :pswitch_36
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method
