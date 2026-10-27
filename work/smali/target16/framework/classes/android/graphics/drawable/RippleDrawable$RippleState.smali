.class Landroid/graphics/drawable/RippleDrawable$RippleState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RippleState"
.end annotation


# instance fields
.field greylist-max-r mColor:Landroid/content/res/ColorStateList;

.field blacklist mEffectColor:Landroid/content/res/ColorStateList;

.field greylist-max-o mMaxRadius:I

.field blacklist mRippleStyle:I

.field greylist-max-o mTouchThemeAttrs:[I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V
    .registers 4

    .line 1339
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    .line 1332
    nop

    .line 1333
    const p2, -0xff01

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 1334
    const p2, -0x72000001

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    .line 1335
    const/4 p2, -0x1

    iput p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 1336
    const/4 p2, 0x1

    iput p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    .line 1341
    if-eqz p1, :cond_46

    instance-of p2, p1, Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz p2, :cond_46

    .line 1342
    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 1343
    iget-object p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    iput-object p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 1344
    iget-object p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 1345
    iget p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iput p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 1346
    iget p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    iput p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mRippleStyle:I

    .line 1347
    iget-object p3, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mEffectColor:Landroid/content/res/ColorStateList;

    .line 1349
    iget p2, p2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    iget p3, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    if-eq p2, p3, :cond_46

    .line 1350
    iget p1, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget p2, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;->applyDensityScaling(II)V

    .line 1353
    :cond_46
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .registers 5

    .line 1363
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1364
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result p1

    iput p1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 1367
    :cond_e
    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .registers 2

    .line 1371
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 1372
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1373
    :cond_10
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 1371
    :goto_1a
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1388
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v0

    .line 1389
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    .line 1388
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1378
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1383
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable-IA;)V

    return-object v0
.end method

.method protected greylist-max-o onDensityChanged(II)V
    .registers 3

    .line 1357
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    .line 1359
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;->applyDensityScaling(II)V

    .line 1360
    return-void
.end method
