.class public final Landroid/hardware/display/BrightnessInfo;
.super Ljava/lang/Object;
.source "BrightnessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessInfo$BrightnessMaxReason;,
        Landroid/hardware/display/BrightnessInfo$HighBrightnessMode;
    }
.end annotation


# static fields
.field public static final blacklist BRIGHTNESS_MAX_REASON_MINMODE:I = 0x5

.field public static final blacklist BRIGHTNESS_MAX_REASON_MODES:I = 0x4

.field public static final blacklist BRIGHTNESS_MAX_REASON_NONE:I = 0x0

.field public static final blacklist BRIGHTNESS_MAX_REASON_POWER_IC:I = 0x2

.field public static final blacklist BRIGHTNESS_MAX_REASON_THERMAL:I = 0x1

.field public static final blacklist BRIGHTNESS_MAX_REASON_WEAR_BEDTIME_MODE:I = 0x3

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIGH_BRIGHTNESS_MODE_HDR:I = 0x2

.field public static final blacklist HIGH_BRIGHTNESS_MODE_OFF:I = 0x0

.field public static final blacklist HIGH_BRIGHTNESS_MODE_SUNLIGHT:I = 0x1


# instance fields
.field public final blacklist adjustedBrightness:F

.field public final blacklist brightness:F

.field public final blacklist brightnessMaxReason:I

.field public final blacklist brightnessMaximum:F

.field public final blacklist brightnessMinimum:F

.field public final blacklist highBrightnessMode:I

.field public final blacklist highBrightnessTransitionPoint:F

.field public final blacklist isBrightnessOverrideByWindow:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 209
    new-instance v0, Landroid/hardware/display/BrightnessInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFIFIZ)V
    .registers 9

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 149
    iput p2, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 150
    iput p3, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    .line 151
    iput p4, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 152
    iput p5, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    .line 153
    iput p6, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    .line 154
    iput p7, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    .line 155
    iput-boolean p8, p0, Landroid/hardware/display/BrightnessInfo;->isBrightnessOverrideByWindow:Z

    .line 156
    return-void
.end method

.method public constructor blacklist <init>(FFFIFI)V
    .registers 16

    .line 139
    const/4 v8, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    .line 142
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessInfo;->isBrightnessOverrideByWindow:Z

    .line 231
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist briMaxReasonToString(I)Ljava/lang/String;
    .registers 1

    .line 177
    packed-switch p0, :pswitch_data_16

    .line 189
    const-string p0, "invalid"

    return-object p0

    .line 187
    :pswitch_6
    const-string p0, "modes"

    return-object p0

    .line 185
    :pswitch_9
    const-string p0, "wear bedtime"

    return-object p0

    .line 183
    :pswitch_c
    const-string p0, "power IC"

    return-object p0

    .line 181
    :pswitch_f
    const-string p0, "thermal"

    return-object p0

    .line 179
    :pswitch_12
    const-string p0, "none"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist hbmToString(I)Ljava/lang/String;
    .registers 1

    .line 162
    packed-switch p0, :pswitch_data_10

    .line 170
    const-string p0, "invalid"

    return-object p0

    .line 166
    :pswitch_6
    const-string p0, "hdr"

    return-object p0

    .line 168
    :pswitch_9
    const-string p0, "sunlight"

    return-object p0

    .line 164
    :pswitch_c
    const-string p0, "off"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 199
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 200
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 202
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 203
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 205
    iget p2, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-boolean p2, p0, Landroid/hardware/display/BrightnessInfo;->isBrightnessOverrideByWindow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    return-void
.end method
