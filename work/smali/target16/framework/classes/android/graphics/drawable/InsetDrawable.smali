.class public Landroid/graphics/drawable/InsetDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/InsetDrawable$InsetState;,
        Landroid/graphics/drawable/InsetDrawable$InsetValue;
    }
.end annotation


# instance fields
.field private greylist-max-r mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

.field private final greylist-max-o mTmpInsetRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 70
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 71
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;F)V
    .registers 9

    .line 90
    move v3, p2

    move v4, p2

    move v5, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 91
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;FFFF)V
    .registers 9

    .line 125
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 127
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 128
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0, p3, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v0, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 129
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, p4, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 130
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, p5, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 132
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 9

    .line 80
    move v3, p2

    move v4, p2

    move v5, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 9

    .line 104
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 106
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 107
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0, v2, p3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v0, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 108
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, v2, p4}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 109
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, v2, p5}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 111
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .registers 3

    .line 421
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 60
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 61
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 423
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 424
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .registers 8

    .line 208
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 210
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_28

    .line 211
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p2

    .line 212
    cmpl-float p1, p2, p1

    if-gez p1, :cond_20

    .line 215
    new-instance p1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p1, p2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object p1

    .line 213
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fraction cannot be larger than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_28
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 218
    if-eqz p1, :cond_35

    .line 219
    new-instance p2, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object p2

    .line 223
    :cond_35
    return-object p3
.end method

.method private greylist-max-o getInsets(Landroid/graphics/Rect;)V
    .registers 5

    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 229
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 230
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 231
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 232
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 183
    if-nez v0, :cond_5

    .line 184
    return-void

    .line 188
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    .line 191
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)V

    .line 194
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 195
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v1

    .line 196
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 197
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 198
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 199
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 201
    :cond_2d
    const/4 v1, 0x2

    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 202
    const/4 v1, 0x4

    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 203
    const/4 v1, 0x3

    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 204
    const/4 v1, 0x5

    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object p1

    iput-object p1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 205
    return-void
.end method

.method private greylist-max-o verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 175
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": <inset> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4

    .line 151
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 154
    if-nez v0, :cond_8

    .line 155
    return-void

    .line 158
    :cond_8
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 159
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 161
    :try_start_18
    invoke-direct {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 162
    invoke-direct {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 166
    :goto_1e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    goto :goto_2d

    .line 166
    :catchall_22
    move-exception v0

    goto :goto_29

    .line 163
    :catch_24
    move-exception v0

    .line 164
    :try_start_25
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_1e

    .line 166
    :goto_29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    throw v0

    .line 169
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 5

    .line 298
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 299
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    add-float/2addr v1, v2

    .line 300
    if-ltz v0, :cond_31

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1e

    goto :goto_31

    .line 303
    :cond_1e
    int-to-float v0, v0

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v0, v1

    return v0

    .line 301
    :cond_31
    :goto_31
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 5

    .line 287
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 288
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    add-float/2addr v1, v2

    .line 289
    if-ltz v0, :cond_31

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1e

    goto :goto_31

    .line 292
    :cond_1e
    int-to-float v0, v0

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v0, v1

    return v0

    .line 290
    :cond_31
    :goto_31
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getOpacity()I
    .registers 3

    .line 260
    nop

    .line 261
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 262
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 263
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_29

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_29

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gtz v1, :cond_29

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_2b

    .line 266
    :cond_29
    const/4 v0, -0x3

    return v0

    .line 268
    :cond_2b
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 6

    .line 249
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 250
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 251
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 309
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 310
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .registers 5

    .line 236
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 237
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 238
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 239
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 240
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 241
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 243
    if-nez v0, :cond_47

    iget-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr p1, v0

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr p1, v0

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr p1, v0

    if-eqz p1, :cond_45

    goto :goto_47

    :cond_45
    const/4 p1, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 p1, 0x1

    :goto_48
    return p1
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/InsetDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 144
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 145
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 4

    .line 314
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    return-object v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6

    .line 273
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 274
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 277
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 278
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 279
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 282
    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 283
    return-void
.end method
