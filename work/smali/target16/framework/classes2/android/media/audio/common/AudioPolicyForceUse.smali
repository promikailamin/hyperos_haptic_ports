.class public final Landroid/media/audio/common/AudioPolicyForceUse;
.super Ljava/lang/Object;
.source "AudioPolicyForceUse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPolicyForceUse$MediaDeviceCategory;,
        Landroid/media/audio/common/AudioPolicyForceUse$Tag;,
        Landroid/media/audio/common/AudioPolicyForceUse$EncodedSurroundConfig;,
        Landroid/media/audio/common/AudioPolicyForceUse$DockType;,
        Landroid/media/audio/common/AudioPolicyForceUse$CommunicationDeviceCategory;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPolicyForceUse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist dock:I = 0x4

.field public static final blacklist encodedSurround:I = 0x7

.field public static final blacklist forCommunication:I = 0x1

.field public static final blacklist forMedia:I = 0x0

.field public static final blacklist forRecord:I = 0x2

.field public static final blacklist forVibrateRinging:I = 0x3

.field public static final blacklist hdmiSystemAudio:I = 0x6

.field public static final blacklist systemSounds:I = 0x5


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPolicyForceUse$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    nop

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    .line 28
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    .line 37
    iput-object p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPolicyForceUse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 268
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 271
    return-void

    .line 269
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioPolicyForceUse;->_tagString(I)Ljava/lang/String;

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

    .line 288
    iput p1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    .line 289
    iput-object p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 274
    packed-switch p1, :pswitch_data_34

    .line 284
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

    .line 282
    :pswitch_1c
    const-string p1, "encodedSurround"

    return-object p1

    .line 281
    :pswitch_1f
    const-string p1, "hdmiSystemAudio"

    return-object p1

    .line 280
    :pswitch_22
    const-string p1, "systemSounds"

    return-object p1

    .line 279
    :pswitch_25
    const-string p1, "dock"

    return-object p1

    .line 278
    :pswitch_28
    const-string p1, "forVibrateRinging"

    return-object p1

    .line 277
    :pswitch_2b
    const-string p1, "forRecord"

    return-object p1

    .line 276
    :pswitch_2e
    const-string p1, "forCommunication"

    return-object p1

    .line 275
    :pswitch_31
    const-string p1, "forMedia"

    return-object p1

    :pswitch_data_34
    .packed-switch 0x0
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

.method public static blacklist dock(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 107
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist encodedSurround(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 152
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forCommunication(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 62
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forMedia(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 47
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forRecord(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 77
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forVibrateRinging(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 92
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hdmiSystemAudio(Z)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 137
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist systemSounds(Z)Landroid/media/audio/common/AudioPolicyForceUse;
    .registers 3

    .line 122
    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 261
    nop

    .line 262
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDock()B
    .registers 2

    .line 111
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 112
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getEncodedSurround()B
    .registers 2

    .line 156
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 157
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForCommunication()B
    .registers 2

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 67
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForMedia()B
    .registers 2

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 52
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForRecord()B
    .registers 2

    .line 81
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 82
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getForVibrateRinging()B
    .registers 2

    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 97
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public blacklist getHdmiSystemAudio()Z
    .registers 2

    .line 141
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 142
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getSystemSounds()Z
    .registers 2

    .line 126
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    .line 127
    iget-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    packed-switch v0, :pswitch_data_80

    .line 256
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

    .line 252
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 253
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 254
    return-void

    .line 247
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 249
    return-void

    .line 242
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 244
    return-void

    .line 237
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 238
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 239
    return-void

    .line 232
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 233
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 234
    return-void

    .line 227
    :pswitch_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 228
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 229
    return-void

    .line 222
    :pswitch_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 223
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 224
    return-void

    .line 217
    :pswitch_74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 218
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 219
    return-void

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_74
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setDock(B)V
    .registers 3

    .line 116
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method public blacklist setEncodedSurround(B)V
    .registers 3

    .line 161
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method public blacklist setForCommunication(B)V
    .registers 3

    .line 71
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public blacklist setForMedia(B)V
    .registers 3

    .line 56
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public blacklist setForRecord(B)V
    .registers 3

    .line 86
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public blacklist setForVibrateRinging(B)V
    .registers 3

    .line 101
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public blacklist setHdmiSystemAudio(Z)V
    .registers 3

    .line 146
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 147
    return-void
.end method

.method public blacklist setSystemSounds(Z)V
    .registers 3

    .line 131
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 182
    iget p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    packed-switch p2, :pswitch_data_4c

    goto :goto_4b

    .line 206
    :pswitch_b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getEncodedSurround()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4b

    .line 203
    :pswitch_13
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getHdmiSystemAudio()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    goto :goto_4b

    .line 200
    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getSystemSounds()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto :goto_4b

    .line 197
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getDock()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    goto :goto_4b

    .line 194
    :pswitch_2b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForVibrateRinging()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    goto :goto_4b

    .line 191
    :pswitch_33
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForRecord()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    goto :goto_4b

    .line 188
    :pswitch_3b
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForCommunication()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 189
    goto :goto_4b

    .line 185
    :pswitch_43
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForMedia()B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    nop

    .line 209
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
