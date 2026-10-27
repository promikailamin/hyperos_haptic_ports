.class public Landroid/app/AppCompatTaskInfo;
.super Ljava/lang/Object;
.source "AppCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppCompatTaskInfo$TopActivityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAGS_COMPAT_UI_INTERESTED:I = 0x3feb

.field private static final blacklist FLAGS_ORGANIZER_INTERESTED:I = 0x2fe0

.field private static final blacklist FLAG_BASE:I = 0x1

.field private static final blacklist FLAG_ELIGIBLE_FOR_LETTERBOX_EDU:I = 0x2

.field private static final blacklist FLAG_ELIGIBLE_FOR_USER_ASPECT_RATIO_BUTTON:I = 0x40

.field private static final blacklist FLAG_ENABLE_RESTART_MENU_FOR_DISPLAY_MOVE:I = 0x400

.field private static final blacklist FLAG_FULLSCREEN_OVERRIDE_SYSTEM:I = 0x80

.field private static final blacklist FLAG_FULLSCREEN_OVERRIDE_USER:I = 0x100

.field public static final blacklist FLAG_HAS_MIN_ASPECT_RATIO_OVERRIDE:I = 0x200

.field private static final blacklist FLAG_IN_SIZE_COMPAT:I = 0x8

.field private static final blacklist FLAG_IS_FROM_LETTERBOX_DOUBLE_TAP:I = 0x20

.field public static final blacklist FLAG_IS_LEAF_TASK:I = 0x2000

.field private static final blacklist FLAG_LETTERBOXED:I = 0x4

.field private static final blacklist FLAG_LETTERBOX_DOUBLE_TAP_ENABLED:I = 0x10

.field private static final blacklist FLAG_LETTERBOX_EDU_ENABLED:I = 0x1

.field public static final blacklist FLAG_OPT_OUT_EDGE_TO_EDGE:I = 0x800

.field public static final blacklist FLAG_SAFE_REGION_LETTERBOXED:I = 0x1000

.field private static final blacklist FLAG_UNDEFINED:I


# instance fields
.field public blacklist cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

.field private blacklist mTopActivityFlags:I

.field public final blacklist topActivityAppBounds:Landroid/graphics/Rect;

.field public blacklist topActivityLetterboxBounds:Landroid/graphics/Rect;

.field public blacklist topActivityLetterboxHeight:I

.field public blacklist topActivityLetterboxHorizontalPosition:I

.field public blacklist topActivityLetterboxVerticalPosition:I

.field public blacklist topActivityLetterboxWidth:I

.field public blacklist topNonResizableActivityAspectRatio:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/app/AppCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 47
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 53
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 59
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 80
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    .line 85
    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 161
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 47
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 53
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 59
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 80
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    .line 85
    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 169
    invoke-virtual {p0, p1}, Landroid/app/AppCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppCompatTaskInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist create()Landroid/app/AppCompatTaskInfo;
    .registers 1

    .line 165
    new-instance v0, Landroid/app/AppCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method private blacklist isTopActivityFlagEnabled(I)Z
    .registers 3

    .line 515
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private blacklist setTopActivityFlag(IZ)V
    .registers 3

    .line 511
    if-eqz p2, :cond_6

    iget p2, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    or-int/2addr p1, p2

    goto :goto_a

    :cond_6
    iget p2, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_a
    iput p1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 512
    return-void
.end method


# virtual methods
.method public blacklist clearTopActivityFlags()V
    .registers 2

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 414
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist eligibleForLetterboxEducation()Z
    .registers 2

    .line 225
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist eligibleForUserAspectRatioButton()Z
    .registers 2

    .line 254
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/AppCompatTaskInfo;)Z
    .registers 5

    .line 440
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 441
    return v0

    .line 443
    :cond_4
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v1, v1, 0x3feb

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v2, v2, 0x3feb

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_3c

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 450
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object p1, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 451
    invoke-virtual {v1, p1}, Landroid/app/CameraCompatTaskInfo;->equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 443
    :goto_3d
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/AppCompatTaskInfo;)Z
    .registers 5

    .line 421
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 422
    return v0

    .line 424
    :cond_4
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v1, v1, 0x2fe0

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/lit16 v2, v2, 0x2fe0

    if-ne v1, v2, :cond_44

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_44

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_44

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_44

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    .line 431
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 432
    invoke-virtual {v1, v2}, Landroid/app/CameraCompatTaskInfo;->equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    iget p1, p1, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    nop

    .line 424
    :goto_45
    return v0
.end method

.method public blacklist hasCompatUI()Z
    .registers 2

    .line 194
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v0

    if-nez v0, :cond_21

    .line 195
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v0

    if-nez v0, :cond_21

    .line 196
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isRestartMenuEnabledForDisplayMove()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 194
    :goto_22
    return v0
.end method

.method public blacklist hasMinAspectRatioOverride()Z
    .registers 2

    .line 386
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasOptOutEdgeToEdge()Z
    .registers 2

    .line 408
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isFromLetterboxDoubleTap()Z
    .registers 2

    .line 282
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLeafTask()Z
    .registers 2

    .line 239
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLetterboxDoubleTapEnabled()Z
    .registers 2

    .line 268
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isLetterboxEducationEnabled()Z
    .registers 2

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isRestartMenuEnabledForDisplayMove()Z
    .registers 2

    .line 342
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemFullscreenOverrideEnabled()Z
    .registers 2

    .line 313
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTopActivityInSizeCompat()Z
    .registers 2

    .line 327
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTopActivityLetterboxed()Z
    .registers 2

    .line 372
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isTopActivityPillarboxShaped()Z
    .registers 3

    .line 203
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isTopActivitySafeRegionLetterboxed()Z
    .registers 2

    .line 357
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isUserFullscreenOverrideEnabled()Z
    .registers 2

    .line 298
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result v0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 463
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 464
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 465
    sget-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/CameraCompatTaskInfo;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    .line 467
    return-void
.end method

.method public blacklist setEligibleForLetterboxEducation(Z)V
    .registers 3

    .line 246
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 247
    return-void
.end method

.method public blacklist setEligibleForUserAspectRatioButton(Z)V
    .registers 3

    .line 261
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 262
    return-void
.end method

.method public blacklist setHasMinAspectRatioOverride(Z)V
    .registers 3

    .line 394
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 395
    return-void
.end method

.method public blacklist setIsFromLetterboxDoubleTap(Z)V
    .registers 3

    .line 290
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 291
    return-void
.end method

.method public blacklist setIsLeafTask(Z)V
    .registers 3

    .line 232
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 233
    return-void
.end method

.method public blacklist setLetterboxDoubleTapEnabled(Z)V
    .registers 3

    .line 275
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 276
    return-void
.end method

.method public blacklist setLetterboxEducationEnabled(Z)V
    .registers 3

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 219
    return-void
.end method

.method public blacklist setOptOutEdgeToEdge(Z)V
    .registers 3

    .line 401
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 402
    return-void
.end method

.method public blacklist setRestartMenuEnabledForDisplayMove(Z)V
    .registers 3

    .line 350
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 351
    return-void
.end method

.method public blacklist setSystemFullscreenOverrideEnabled(Z)V
    .registers 3

    .line 320
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 321
    return-void
.end method

.method public blacklist setTopActivityInSizeCompat(Z)V
    .registers 3

    .line 335
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 336
    return-void
.end method

.method public blacklist setTopActivityLetterboxed(Z)V
    .registers 3

    .line 379
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 380
    return-void
.end method

.method public blacklist setTopActivitySafeRegionLetterboxed(Z)V
    .registers 3

    .line 365
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 366
    return-void
.end method

.method public blacklist setUserFullscreenOverrideEnabled(Z)V
    .registers 3

    .line 306
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    .line 307
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppCompatTaskInfo { topActivityInSizeCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLeafTask= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLeafTask()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eligibleForLetterboxEducation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLetterboxEducationEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxEducationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLetterboxDoubleTapEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eligibleForUserAspectRatioButton= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityBoundsLetterboxed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFromLetterboxDoubleTap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxVerticalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxHorizontalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUserFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isUserFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSystemFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 502
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isSystemFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasMinAspectRatioOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topActivityLetterboxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraCompatTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    .line 505
    invoke-virtual {v1}, Landroid/app/CameraCompatTaskInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topNonResizableActivityAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 474
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 480
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 481
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 482
    iget p2, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 483
    return-void
.end method
