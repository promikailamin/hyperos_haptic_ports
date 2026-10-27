.class public Lcom/android/server/wm/AppCompatRoundedCorners;
.super Ljava/lang/Object;
.source "AppCompatRoundedCorners.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mRoundedCornersWindowCondition:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Predicate;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Ljava/util/function/Predicate;

    return-void
.end method

.method public static getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I
    .registers 2

    .line 132
    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_c
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 5

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 70
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne p0, v2, :cond_31

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq p0, v2, :cond_32

    :cond_31
    return-object v1

    .line 87
    :cond_32
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 89
    iget p0, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_45

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_45

    .line 91
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->scale(F)V

    :cond_45
    const/4 p0, 0x0

    .line 97
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method public getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I
    .registers 4

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-ltz v0, :cond_1b

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result p0

    goto :goto_2d

    .line 120
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    const/4 v0, 0x3

    .line 122
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatRoundedCorners;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v0

    const/4 v1, 0x2

    .line 123
    invoke-static {p0, v1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result p0

    .line 121
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 126
    :goto_2d
    iget p1, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3d

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :cond_3d
    return p0
.end method

.method public final requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 148
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxActivityCornersRounded()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public updateRoundedCornersIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 48
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_23

    .line 53
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_23
    :goto_23
    return-void
.end method
