.class public Landroid/gamepad/BsGameKey;
.super Ljava/lang/Object;
.source "BsGameKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gamepad/BsGameKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIRECTION_PAD_HAT:I = -0x1

.field public static final whitelist DIRECTION_PAD_L:I = -0x3

.field public static final whitelist DIRECTION_PAD_R:I = -0x2

.field public static final whitelist FLAG_HAT_DOWN_KEY:I = 0x5

.field public static final whitelist FLAG_HAT_LEFT_KEY:I = 0x6

.field public static final whitelist FLAG_HAT_RIGHT_KEY:I = 0x7

.field public static final whitelist FLAG_HAT_UP_KEY:I = 0x4

.field public static final whitelist FLAG_MOUSE_DRAG_KEY:I = 0x3

.field public static final whitelist FLAG_MOUSE_QUICK_SWITCH_KEY:I = 0x2

.field public static final whitelist FLAG_MOUSE_SWITCH_KEY:I = 0x1

.field public static final whitelist FLAG_NONE:I = 0x0

.field public static final whitelist GYROSCOPE_KEY:Ljava/lang/String; = "gyroscope_key"

.field public static final whitelist GYROSCOPE_RADIAN_THRESHOLD:Ljava/lang/String; = "gyroscope_radian_threshold"

.field public static final whitelist INVAIABLE_INDEX:I = -0x5

.field public static final whitelist MOUSE_HORIZONTAL_SENSITIVITY:Ljava/lang/String; = "mouse_horizontal_sensitivity"

.field public static final whitelist MOUSE_KEY:Ljava/lang/String; = "mouse_key"

.field public static final whitelist MOUSE_TRACKER:I = -0x4

.field public static final whitelist MOUSE_VERTICAL_SENSITIVITY:Ljava/lang/String; = "mouse_vertical_sensitivity"


# instance fields
.field private blacklist keycode:I

.field private blacklist mExtra:Landroid/os/Bundle;

.field private blacklist productid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/gamepad/BsGameKey$1;

    invoke-direct {v0}, Landroid/gamepad/BsGameKey$1;-><init>()V

    sput-object v0, Landroid/gamepad/BsGameKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "productid"    # I
    .param p2, "keycode"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/gamepad/BsGameKey;->productid:I

    .line 44
    iput p2, p0, Landroid/gamepad/BsGameKey;->keycode:I

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist equals(II)Z
    .registers 4
    .param p1, "productid"    # I
    .param p2, "keycode"    # I

    .line 97
    iget v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist getGyroscopyKey()Z
    .registers 4

    .line 81
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getGyroscopyRadianThreshold()F
    .registers 4

    .line 89
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_radian_threshold"

    const v2, 0x3bc49ba6    # 0.006f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getKeycode()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    return v0
.end method

.method public whitelist getMouseHorizontalSensitivity()F
    .registers 4

    .line 69
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_horizontal_sensitivity"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getMouseKey()I
    .registers 4

    .line 57
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMouseVerticalSensitivity()F
    .registers 4

    .line 77
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_vertical_sensitivity"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getProductid()I
    .registers 2

    .line 49
    iget v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    return v0
.end method

.method public whitelist setGyroscopeKey(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 85
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public whitelist setGyroscopeRadianThreshold(F)V
    .registers 4
    .param p1, "threshold"    # F

    .line 93
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_radian_threshold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 94
    return-void
.end method

.method public whitelist setMouseHorizontalSensitivity(F)V
    .registers 4
    .param p1, "sensitivity"    # F

    .line 65
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_horizontal_sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 66
    return-void
.end method

.method public whitelist setMouseKey(I)V
    .registers 4
    .param p1, "flag"    # I

    .line 61
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public whitelist setMouseVerticalSensitivity(F)V
    .registers 4
    .param p1, "sensitivity"    # F

    .line 73
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_vertical_sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 74
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/gamepad/BsGameKey;->productid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsGameKey;->keycode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v2, "key {procductid = 0x%x, keycode = %d, %s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/gamepad/BsGameKey;->productid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/gamepad/BsGameKey;->keycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/gamepad/BsGameKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method
