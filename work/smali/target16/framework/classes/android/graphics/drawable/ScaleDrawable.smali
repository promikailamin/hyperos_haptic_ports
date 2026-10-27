.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_LEVEL:I = 0x2710


# instance fields
.field private greylist-max-r mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 76
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .registers 7

    .line 92
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 94
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 95
    iget-object p2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, p2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 96
    iget-object p2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, p2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 98
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .registers 3

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 70
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 297
    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 299
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    .line 300
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static greylist-max-o getPercent(Landroid/content/res/TypedArray;IF)F
    .registers 6

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 177
    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2c

    if-nez v0, :cond_b

    goto :goto_2c

    .line 182
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 183
    if-eqz p0, :cond_2b

    .line 184
    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    .line 190
    :cond_2b
    return p2

    .line 178
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, v2, v2, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p0

    return p0
.end method

.method private greylist-max-o updateLocalState()V
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    .line 304
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 152
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 153
    if-nez v0, :cond_5

    .line 154
    return-void

    .line 158
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    .line 161
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)V

    .line 163
    const/4 v1, 0x1

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    invoke-static {p1, v1, v2}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 165
    const/4 v1, 0x2

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    invoke-static {p1, v1, v2}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 167
    const/4 v1, 0x3

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 169
    const/4 v1, 0x4

    iget-boolean v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 171
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 173
    return-void
.end method

.method private greylist-max-o verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 145
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": <scale> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 119
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 121
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 122
    if-nez v0, :cond_8

    .line 123
    return-void

    .line 126
    :cond_8
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 127
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 129
    :try_start_18
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 130
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 134
    :goto_1e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    goto :goto_2d

    .line 134
    :catchall_22
    move-exception v0

    goto :goto_29

    .line 131
    :catch_24
    move-exception v0

    .line 132
    :try_start_25
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_1e

    .line 134
    :goto_29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    throw v0

    .line 138
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    .line 139
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eqz v1, :cond_f

    .line 197
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_f
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 4

    .line 203
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-nez v1, :cond_c

    .line 205
    const/4 v0, -0x2

    return v0

    .line 208
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 209
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1d

    .line 210
    const/4 v0, -0x3

    return v0

    .line 213
    :cond_1d
    return v1
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/ScaleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 110
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 111
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    .line 115
    return-void
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 4

    .line 253
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 254
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    return-object v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 12

    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    iget-object v5, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 228
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-boolean v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 229
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v2

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 232
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v4, v4, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const v7, 0x461c4000    # 10000.0f

    const/4 v8, 0x0

    if-lez v4, :cond_35

    .line 233
    if-eqz v1, :cond_26

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    goto :goto_27

    :cond_26
    move v4, v8

    .line 234
    :goto_27
    sub-int v4, v3, v4

    rsub-int v9, v2, 0x2710

    mul-int/2addr v4, v9

    int-to-float v4, v4

    iget-object v9, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v9, v9, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v4, v9

    div-float/2addr v4, v7

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 237
    :cond_35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 238
    iget-object v9, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v9, v9, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v6, v9, v6

    if-lez v6, :cond_55

    .line 239
    if-eqz v1, :cond_47

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 240
    :cond_47
    sub-int v1, v4, v8

    rsub-int v2, v2, 0x2710

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v2, v2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    float-to-int v1, v1

    sub-int/2addr v4, v1

    .line 243
    :cond_55
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    move-result v6

    .line 244
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    move v2, v3

    move v3, v4

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 246
    if-lez v2, :cond_72

    if-lez v3, :cond_72

    .line 247
    iget p1, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    :cond_72
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 2

    .line 218
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    .line 221
    const/4 p1, 0x1

    return p1
.end method
