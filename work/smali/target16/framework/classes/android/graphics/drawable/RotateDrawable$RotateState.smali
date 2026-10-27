.class final Landroid/graphics/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotateState"
.end annotation


# instance fields
.field greylist-max-o mCurrentDegrees:F

.field greylist-max-o mFromDegrees:F

.field greylist-max-o mPivotX:F

.field greylist-max-o mPivotXRel:Z

.field greylist-max-o mPivotY:F

.field greylist-max-o mPivotYRel:Z

.field private greylist-max-o mThemeAttrs:[I

.field greylist-max-o mToDegrees:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .registers 4

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 333
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 334
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 335
    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 336
    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 337
    const/4 p2, 0x0

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 338
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 339
    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 344
    if-eqz p1, :cond_35

    .line 345
    iget-boolean p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 346
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 347
    iget-boolean p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    iput-boolean p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 348
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 349
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 350
    iget p2, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iput p2, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 351
    iget p1, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput p1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 353
    :cond_35
    return-void
.end method


# virtual methods
.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 357
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable-IA;)V

    return-object v0
.end method
