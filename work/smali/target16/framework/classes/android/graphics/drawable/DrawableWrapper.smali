.class public abstract Landroid/graphics/drawable/DrawableWrapper;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapper.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    }
.end annotation


# instance fields
.field private greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMutated:Z

.field private greylist-max-r mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 70
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 60
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;->updateLocalState(Landroid/content/res/Resources;)V

    .line 61
    return-void
.end method

.method private greylist-max-o inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    nop

    .line 466
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    .line 467
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 468
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_22

    .line 469
    :cond_16
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 470
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget v1, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    invoke-static {p1, p2, p3, v1, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6

    .line 475
    :cond_22
    if-eqz v1, :cond_27

    .line 476
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    :cond_27
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .registers 3

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_15

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_15
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 195
    if-nez v0, :cond_5

    .line 196
    return-void

    .line 200
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 203
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;[I)V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_23
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 160
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 169
    :cond_14
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 170
    if-nez v0, :cond_19

    .line 171
    return-void

    .line 174
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 175
    if-nez v1, :cond_27

    const/16 v1, 0xa0

    .line 176
    :cond_27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    .line 178
    invoke-static {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    move-result-object v1

    if-eqz v1, :cond_40

    .line 179
    invoke-static {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    :cond_40
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 448
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 449
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 450
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 452
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    .line 453
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    :cond_9
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_d

    :cond_b
    const/16 v0, 0xff

    :goto_d
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 248
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 249
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->getChangingConfigurations()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 248
    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 314
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_b

    .line 316
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 318
    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 408
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    return-object v0

    .line 412
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 279
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 280
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_11

    .line 282
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 284
    :goto_11
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_d
    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 398
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 399
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_d

    .line 401
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 403
    :goto_d
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 255
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 139
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 140
    if-nez v0, :cond_8

    .line 141
    return-void

    .line 146
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 147
    if-nez v1, :cond_12

    const/16 v1, 0xa0

    .line 148
    :cond_12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    .line 149
    iget v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mSrcDensityOverride:I

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    .line 151
    sget-object v0, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/DrawableWrapper;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 156
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 218
    if-eqz p1, :cond_9

    .line 219
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :cond_9
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 370
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 372
    :cond_9
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 418
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    if-nez v0, :cond_30

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_30

    .line 419
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    .line 420
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 421
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 423
    :cond_19
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_2d

    .line 424
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 426
    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    .line 428
    :cond_30
    return-object p0
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    return-object v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 381
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 384
    :cond_9
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 3

    .line 337
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3

    .line 376
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected whitelist onStateChange([I)Z
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 358
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    .line 359
    if-eqz p1, :cond_1b

    .line 360
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 362
    :cond_1b
    return p1

    .line 364
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 226
    if-eqz p1, :cond_9

    .line 227
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 229
    :cond_9
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3

    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 298
    :cond_9
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 307
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 310
    :cond_9
    return-void
.end method

.method public whitelist setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 101
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 102
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    :cond_a
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    if-eqz p1, :cond_41

    .line 108
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 112
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_41

    .line 118
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 122
    :cond_41
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 123
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .registers 4

    .line 265
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 268
    :cond_9
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .registers 6

    .line 272
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 275
    :cond_9
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3

    .line 330
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 331
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 333
    :cond_9
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 326
    :cond_9
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 5

    .line 288
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 289
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 290
    :goto_13
    or-int/2addr p1, v0

    return p1
.end method

.method public blacklist setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 93
    :cond_9
    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 233
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 234
    if-eqz p1, :cond_9

    .line 235
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 237
    :cond_9
    return-void
.end method
