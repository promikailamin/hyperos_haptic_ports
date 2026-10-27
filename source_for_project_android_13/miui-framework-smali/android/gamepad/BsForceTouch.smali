.class public Landroid/gamepad/BsForceTouch;
.super Ljava/lang/Object;
.source "BsForceTouch.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gamepad/BsForceTouch;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GYROSCOPE_KEY:Ljava/lang/String; = "gyroscope_key"

.field public static final whitelist GYROSCOPE_RADIAN_THRESHOLD:Ljava/lang/String; = "gyroscope_radian_threshold"

.field public static final whitelist MOUSE_HORIZONTAL_SENSITIVITY:Ljava/lang/String; = "mouse_horizontal_sensitivity"

.field public static final whitelist MOUSE_VERTICAL_SENSITIVITY:Ljava/lang/String; = "mouse_vertical_sensitivity"


# instance fields
.field private blacklist endVibrationMillisecond:I

.field private blacklist height:F

.field private blacklist left:F

.field private blacklist mExtra:Landroid/os/Bundle;

.field private blacklist startVibrationMillisecond:I

.field private blacklist threshold:I

.field private blacklist top:F

.field private blacklist width:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/gamepad/BsForceTouch$1;

    invoke-direct {v0}, Landroid/gamepad/BsForceTouch$1;-><init>()V

    sput-object v0, Landroid/gamepad/BsForceTouch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(FFFFIII)V
    .registers 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "threshold"    # I
    .param p6, "startVibrationMillisecond"    # I
    .param p7, "endVibrationMillisecond"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/gamepad/BsForceTouch;->left:F

    .line 35
    iput p2, p0, Landroid/gamepad/BsForceTouch;->top:F

    .line 36
    iput p3, p0, Landroid/gamepad/BsForceTouch;->width:F

    .line 37
    iput p4, p0, Landroid/gamepad/BsForceTouch;->height:F

    .line 38
    iput p5, p0, Landroid/gamepad/BsForceTouch;->threshold:I

    .line 39
    iput p6, p0, Landroid/gamepad/BsForceTouch;->startVibrationMillisecond:I

    .line 40
    iput p7, p0, Landroid/gamepad/BsForceTouch;->endVibrationMillisecond:I

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    .line 42
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->left:F

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->top:F

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->width:F

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->height:F

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->threshold:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->startVibrationMillisecond:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsForceTouch;->endVibrationMillisecond:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndVibrationMillisecond()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/gamepad/BsForceTouch;->endVibrationMillisecond:I

    return v0
.end method

.method public whitelist getGyroscopyKey()Z
    .registers 4

    .line 62
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getGyroscopyRadianThreshold()F
    .registers 4

    .line 86
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_radian_threshold"

    const v2, 0x3bc49ba6    # 0.006f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getMouseHorizontalSensitivity()F
    .registers 4

    .line 74
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_horizontal_sensitivity"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getMouseVerticalSensitivity()F
    .registers 4

    .line 82
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_vertical_sensitivity"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getStartVibrationMillisecond()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/gamepad/BsForceTouch;->startVibrationMillisecond:I

    return v0
.end method

.method public whitelist getThresHold()I
    .registers 2

    .line 50
    iget v0, p0, Landroid/gamepad/BsForceTouch;->threshold:I

    return v0
.end method

.method public whitelist inForceTouchArea(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 45
    iget v0, p0, Landroid/gamepad/BsForceTouch;->left:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1c

    iget v1, p0, Landroid/gamepad/BsForceTouch;->width:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1c

    iget v0, p0, Landroid/gamepad/BsForceTouch;->top:F

    cmpg-float v1, v0, p2

    if-gez v1, :cond_1c

    iget v1, p0, Landroid/gamepad/BsForceTouch;->height:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public whitelist setGyroscopeKey(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 66
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public whitelist setGyroscopeRadianThreshold(F)V
    .registers 4
    .param p1, "threshold"    # F

    .line 90
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "gyroscope_radian_threshold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    return-void
.end method

.method public whitelist setMouseHorizontalSensitivity(F)V
    .registers 4
    .param p1, "sensitivity"    # F

    .line 70
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_horizontal_sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 71
    return-void
.end method

.method public whitelist setMouseVerticalSensitivity(F)V
    .registers 4
    .param p1, "sensitivity"    # F

    .line 78
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    const-string v1, "mouse_vertical_sensitivity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 79
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/gamepad/BsForceTouch;->left:F

    .line 99
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsForceTouch;->top:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsForceTouch;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsForceTouch;->height:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsForceTouch;->threshold:I

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsForceTouch;->startVibrationMillisecond:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Landroid/gamepad/BsForceTouch;->endVibrationMillisecond:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 95
    const-string v2, "ForceTouch {left = %f, top = %f, width = %f, height = %f, threshold = %d, startVibrationMillisecond = %d, endVibrationMillisecond = %d,%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/gamepad/BsForceTouch;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 125
    iget v0, p0, Landroid/gamepad/BsForceTouch;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 126
    iget v0, p0, Landroid/gamepad/BsForceTouch;->width:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    iget v0, p0, Landroid/gamepad/BsForceTouch;->height:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    iget v0, p0, Landroid/gamepad/BsForceTouch;->threshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/gamepad/BsForceTouch;->startVibrationMillisecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/gamepad/BsForceTouch;->endVibrationMillisecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Landroid/gamepad/BsForceTouch;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method
