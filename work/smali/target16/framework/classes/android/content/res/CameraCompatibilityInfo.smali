.class public final Landroid/content/res/CameraCompatibilityInfo;
.super Ljava/lang/Object;
.source "CameraCompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CameraCompatibilityInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CameraCompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayRotationSandbox:I

.field private final blacklist mRotateAndCropRotation:I

.field private final blacklist mShouldAllowTransformInverseDisplay:Z

.field private final blacklist mShouldLetterboxForCameraCompat:Z

.field private final blacklist mShouldOverrideSensorOrientation:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CameraCompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/res/CameraCompatibilityInfo$Builder;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->-$$Nest$fgetmRotateAndCropRotation(Landroid/content/res/CameraCompatibilityInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    .line 58
    invoke-static {p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->-$$Nest$fgetmShouldOverrideSensorOrientation(Landroid/content/res/CameraCompatibilityInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    .line 59
    invoke-static {p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->-$$Nest$fgetmShouldLetterboxForCameraCompat(Landroid/content/res/CameraCompatibilityInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    .line 60
    invoke-static {p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->-$$Nest$fgetmDisplayRotationSandbox(Landroid/content/res/CameraCompatibilityInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    .line 61
    invoke-static {p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->-$$Nest$fgetmShouldAllowTransformInverseDisplay(Landroid/content/res/CameraCompatibilityInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/CameraCompatibilityInfo$Builder;Landroid/content/res/CameraCompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CameraCompatibilityInfo;-><init>(Landroid/content/res/CameraCompatibilityInfo$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/CameraCompatibilityInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CameraCompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist isCameraCompatModeActive(Landroid/content/res/CameraCompatibilityInfo;)Z
    .registers 3

    .line 236
    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    if-nez v0, :cond_18

    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    if-ne v0, v1, :cond_18

    iget-boolean p0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    if-nez p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method


# virtual methods
.method public blacklist applyToConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .registers 4

    .line 245
    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 246
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    invoke-virtual {p1, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 248
    :cond_c
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 221
    return v0

    .line 223
    :cond_4
    instance-of v1, p1, Landroid/content/res/CameraCompatibilityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Landroid/content/res/CameraCompatibilityInfo;

    .line 226
    iget v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    iget v3, p1, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    if-ne v1, v3, :cond_2a

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    iget-boolean v3, p1, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    if-ne v1, v3, :cond_2a

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    iget-boolean v3, p1, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    if-ne v1, v3, :cond_2a

    iget v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    iget v3, p1, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    if-ne v1, v3, :cond_2a

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    iget-boolean p1, p1, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    if-ne v1, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    return v0

    .line 224
    :cond_2c
    return v2
.end method

.method public blacklist getDisplayRotationSandbox()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    return v0
.end method

.method public blacklist getRotateAndCropRotation()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 213
    iget v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    .line 214
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    .line 215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 213
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist shouldAllowTransformInverseDisplay()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    return v0
.end method

.method public blacklist shouldLetterboxForCameraCompat()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    return v0
.end method

.method public blacklist shouldOverrideSensorOrientation()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCompatibilityInfo{mRotateAndCropRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldOverrideSensorOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldLetterboxForCameraCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayRotationSandbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldAllowTransformInverseDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 204
    iget p2, p0, Landroid/content/res/CameraCompatibilityInfo;->mRotateAndCropRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean p2, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldOverrideSensorOrientation:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 206
    iget-boolean p2, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldLetterboxForCameraCompat:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    iget p2, p0, Landroid/content/res/CameraCompatibilityInfo;->mDisplayRotationSandbox:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-boolean p2, p0, Landroid/content/res/CameraCompatibilityInfo;->mShouldAllowTransformInverseDisplay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    return-void
.end method
