.class public final Landroid/content/res/CameraCompatibilityInfo$Builder;
.super Ljava/lang/Object;
.source "CameraCompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CameraCompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayRotationSandbox:I

.field private blacklist mRotateAndCropRotation:I

.field private blacklist mShouldAllowTransformInverseDisplay:Z

.field private blacklist mShouldLetterboxForCameraCompat:Z

.field private blacklist mShouldOverrideSensorOrientation:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayRotationSandbox(Landroid/content/res/CameraCompatibilityInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mDisplayRotationSandbox:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRotateAndCropRotation(Landroid/content/res/CameraCompatibilityInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mRotateAndCropRotation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldAllowTransformInverseDisplay(Landroid/content/res/CameraCompatibilityInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldAllowTransformInverseDisplay:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldLetterboxForCameraCompat(Landroid/content/res/CameraCompatibilityInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldLetterboxForCameraCompat:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldOverrideSensorOrientation(Landroid/content/res/CameraCompatibilityInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldOverrideSensorOrientation:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mRotateAndCropRotation:I

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldOverrideSensorOrientation:Z

    .line 115
    iput-boolean v1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldLetterboxForCameraCompat:Z

    .line 116
    iput v0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mDisplayRotationSandbox:I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldAllowTransformInverseDisplay:Z

    .line 119
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/res/CameraCompatibilityInfo;
    .registers 3

    .line 179
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/res/CameraCompatibilityInfo;-><init>(Landroid/content/res/CameraCompatibilityInfo$Builder;Landroid/content/res/CameraCompatibilityInfo-IA;)V

    return-object v0
.end method

.method public blacklist setDisplayRotationSandbox(I)Landroid/content/res/CameraCompatibilityInfo$Builder;
    .registers 2

    .line 156
    iput p1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mDisplayRotationSandbox:I

    .line 157
    return-object p0
.end method

.method public blacklist setRotateAndCropRotation(I)Landroid/content/res/CameraCompatibilityInfo$Builder;
    .registers 2

    .line 128
    iput p1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mRotateAndCropRotation:I

    .line 129
    return-object p0
.end method

.method public blacklist setShouldAllowTransformInverseDisplay(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;
    .registers 2

    .line 172
    iput-boolean p1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldAllowTransformInverseDisplay:Z

    .line 173
    return-object p0
.end method

.method public blacklist setShouldLetterboxForCameraCompat(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;
    .registers 2

    .line 145
    iput-boolean p1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldLetterboxForCameraCompat:Z

    .line 146
    return-object p0
.end method

.method public blacklist setShouldOverrideSensorOrientation(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;
    .registers 2

    .line 135
    iput-boolean p1, p0, Landroid/content/res/CameraCompatibilityInfo$Builder;->mShouldOverrideSensorOrientation:Z

    .line 136
    return-object p0
.end method
