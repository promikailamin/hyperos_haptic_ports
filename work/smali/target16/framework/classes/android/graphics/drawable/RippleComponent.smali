.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# instance fields
.field protected final greylist-max-o mBounds:Landroid/graphics/Rect;

.field protected greylist-max-o mDensityScale:F

.field private greylist-max-o mHasMaxRadius:Z

.field protected final greylist-max-o mOwner:Landroid/graphics/drawable/RippleDrawable;

.field protected greylist-max-o mTargetRadius:F


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 42
    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method private static greylist-max-o getTargetRadius(Landroid/graphics/Rect;)F
    .registers 3

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 68
    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public greylist-max-o getBounds(Landroid/graphics/Rect;)V
    .registers 4

    .line 79
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 80
    neg-int v1, v0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    return-void
.end method

.method protected final greylist-max-o invalidateSelf()V
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 85
    return-void
.end method

.method public greylist-max-o onBoundsChange()V
    .registers 2

    .line 46
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_11

    .line 47
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 48
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 50
    :cond_11
    return-void
.end method

.method protected final greylist-max-o onHotspotBoundsChanged()V
    .registers 2

    .line 88
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_11

    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 90
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 92
    :cond_11
    return-void
.end method

.method protected greylist-max-o onTargetRadiusChanged(F)V
    .registers 2

    .line 101
    return-void
.end method

.method public final greylist-max-o setup(FI)V
    .registers 4

    .line 53
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_b

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    .line 55
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    goto :goto_13

    .line 57
    :cond_b
    iget-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 60
    :goto_13
    int-to-float p1, p2

    const p2, 0x3bcccccd    # 0.00625f

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    .line 62
    iget p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 63
    return-void
.end method
