.class public Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioPolicy.java"


# instance fields
.field public mIsAspectRatioApplied:Z

.field public mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

.field public mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLetterboxBoundsForAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLetterboxBoundsForFixedOrientationAndAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatAspectRatioPolicy-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;-><init>()V

    return-void
.end method


# virtual methods
.method public getLetterboxedContainerBounds()Landroid/graphics/Rect;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    return-object v0

    .line 451
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isLetterboxedForAspectRatioOnly()Z
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isLetterboxedForFixedOrientationAndAspectRatio()Z
    .registers 1

    .line 461
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    .line 457
    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-void
.end method
