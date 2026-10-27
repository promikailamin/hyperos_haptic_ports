.class public final Lcom/android/internal/widget/NotificationProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationProgressDrawable$State;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;,
        Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NotifProgressDrawable"


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

.field private blacklist mEndDotColor:I

.field private final blacklist mFillPaint:Landroid/graphics/Paint;

.field private blacklist mMutated:Z

.field private final blacklist mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPointRectF:Landroid/graphics/RectF;

.field private final blacklist mSegRectF:Landroid/graphics/RectF;

.field private blacklist mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smscaleFromDensity(FII)F
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->scaleFromDensity(FII)F

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 83
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    .line 84
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .registers 4

    .line 687
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    .line 69
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    .line 70
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    .line 72
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 75
    iget-object p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    .line 688
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 690
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 691
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    return-void
.end method

.method private blacklist applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 316
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-eqz v1, :cond_14

    .line 317
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 319
    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 320
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    :cond_14
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-eqz v1, :cond_26

    .line 324
    iget-object v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    sget-object v1, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 326
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 327
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    :cond_26
    return-void
.end method

.method private blacklist inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 284
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_65

    .line 285
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_65

    .line 287
    :cond_15
    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    .line 288
    goto :goto_6

    .line 291
    :cond_19
    if-le v3, v0, :cond_1c

    .line 292
    goto :goto_6

    .line 295
    :cond_1c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string/jumbo v3, "segments"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 298
    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-static {p1, p4, p3, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 300
    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 301
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_64

    .line 302
    :cond_36
    const-string/jumbo v3, "points"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 303
    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-static {p1, p4, p3, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 305
    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 306
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_64

    .line 308
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad element under NotificationProgressDrawable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotifProgressDrawable"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_64
    goto :goto_6

    .line 311
    :cond_65
    return-void
.end method

.method static blacklist resolveDensity(Landroid/content/res/Resources;I)I
    .registers 2

    .line 369
    if-nez p0, :cond_3

    goto :goto_9

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 370
    :goto_9
    if-nez p1, :cond_d

    const/16 p1, 0xa0

    :cond_d
    return p1
.end method

.method private static blacklist scaleFromDensity(FII)F
    .registers 3

    .line 378
    int-to-float p2, p2

    mul-float/2addr p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static blacklist scaleFromDensity(IIIZ)I
    .registers 4

    .line 394
    if-eqz p0, :cond_1a

    if-ne p1, p2, :cond_5

    goto :goto_1a

    .line 398
    :cond_5
    mul-int/2addr p2, p0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 399
    if-nez p3, :cond_d

    .line 400
    float-to-int p0, p2

    return p0

    .line 403
    :cond_d
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 404
    if-eqz p1, :cond_14

    .line 405
    return p1

    .line 406
    :cond_14
    if-lez p0, :cond_18

    .line 407
    const/4 p0, 0x1

    return p0

    .line 409
    :cond_18
    const/4 p0, -0x1

    return p0

    .line 395
    :cond_1a
    :goto_1a
    return p0
.end method

.method private blacklist updateLocalState()V
    .registers 1

    .line 695
    return-void
.end method

.method private blacklist updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 354
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 357
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    .line 359
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 361
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 363
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 366
    return-void
.end method

.method private blacklist updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 335
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 338
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    .line 340
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 342
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 345
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 348
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 258
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 261
    if-nez v0, :cond_8

    .line 262
    return-void

    .line 265
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 269
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 270
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist clearMutated()V
    .registers 2

    .line 562
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    .line 564
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    .line 154
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 155
    sub-float v4, v2, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    .line 156
    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 157
    const/4 v5, 0x0

    :goto_28
    const/high16 v6, 0x40000000    # 2.0f

    if-ge v5, v3, :cond_b9

    .line 158
    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 159
    iget v8, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    add-float/2addr v8, v1

    .line 160
    iget v9, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    add-float/2addr v9, v1

    .line 161
    instance-of v10, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v10, :cond_85

    check-cast v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 163
    cmpl-float v10, v8, v9

    if-lez v10, :cond_45

    goto :goto_b5

    .line 165
    :cond_45
    invoke-static {v7}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;)Z

    move-result v10

    if-eqz v10, :cond_51

    iget-object v10, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v10, v10, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    div-float/2addr v10, v6

    goto :goto_56

    .line 166
    :cond_51
    iget-object v10, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v10, v10, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    div-float/2addr v10, v6

    .line 167
    :goto_56
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v6, v6, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 169
    iget-object v11, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mColor:I

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v11, v2, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v10, v2

    .line 172
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    .line 171
    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    goto :goto_b5

    :cond_85
    instance-of v6, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v6, :cond_b5

    check-cast v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 177
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v4, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v6, v6, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 179
    iget-object v8, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v8, v8, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 180
    iget-object v9, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 182
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v7, v7, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->mColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v6, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v8, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    :cond_b5
    :goto_b5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_28

    .line 188
    :cond_b9
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    if-eqz v0, :cond_101

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v1, v1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    div-float/2addr v1, v6

    .line 191
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v4, v4, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    sub-float v4, v0, v4

    .line 194
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 195
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 193
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v1, v1, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v2, v2, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    :cond_101
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 203
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 677
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPointRadius()F
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

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

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    .line 251
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationProgressDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 254
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 552
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    .line 553
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 554
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    .line 557
    :cond_1a
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 236
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 238
    iget-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    if-eqz p1, :cond_c

    .line 239
    iget-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    invoke-interface {p1}, Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;->onDrawableBoundsChanged()V

    .line 241
    :cond_c
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3

    .line 208
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    if-eq v0, p1, :cond_9

    .line 209
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 212
    :cond_9
    return-void
.end method

.method public blacklist setBoundsChangeListener(Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 232
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 222
    return-void
.end method

.method public blacklist setFadedSegmentHeight(F)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iput p1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 119
    return-void
.end method

.method public blacklist setParts(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 129
    return-void
.end method

.method public varargs blacklist setParts([Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;)V
    .registers 2

    .line 135
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public blacklist setSegmentHeight(F)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iput p1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 105
    return-void
.end method

.method public blacklist updateEndDotColor(I)V
    .registers 3

    .line 142
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    if-eq v0, p1, :cond_9

    .line 143
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 146
    :cond_9
    return-void
.end method
