.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;,
        Landroid/text/TextLine$LineInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist TAB_CHAR:C = '\t'

.field private static final greylist-max-o TAB_INCREMENT:I = 0x14

.field private static final greylist-max-p sCached:[Landroid/text/TextLine;


# instance fields
.field private final greylist-max-o mActivePaint:Landroid/text/TextPaint;

.field private blacklist mAddedLetterSpacingInPx:F

.field private blacklist mAddedWordSpacingInPx:F

.field private final greylist-max-r mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChars:[C

.field private greylist-max-o mCharsValid:Z

.field private greylist-max-o mComputed:Landroid/text/PrecomputedText;

.field private final greylist-max-o mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final greylist-max-o mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDir:I

.field private greylist-max-o mDirections:Landroid/text/Layout$Directions;

.field private blacklist mEllipsisEnd:I

.field private blacklist mEllipsisStart:I

.field private greylist-max-o mHasTabs:Z

.field private blacklist mIsJustifying:Z

.field private greylist-max-o mLen:I

.field private final greylist-max-r mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private final greylist-max-r mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRunInfo:Landroid/graphics/Paint$RunInfo;

.field private greylist-max-p mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mStart:I

.field private greylist-max-o mTabs:Landroid/text/Layout$TabStops;

.field private greylist-max-r mText:Ljava/lang/CharSequence;

.field private blacklist mTmpRectForMeasure:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPaintAPI:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPrecompute:Landroid/graphics/Rect;

.field private blacklist mUseFallbackExtent:Z

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    .line 123
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 124
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 125
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 128
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 131
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 135
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine-IA;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist adjustEndHyphenEdit(II)I
    .registers 4

    .line 1530
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, v0, :cond_5

    const/4 p2, 0x0

    :cond_5
    return p2
.end method

.method private blacklist adjustStartHyphenEdit(II)I
    .registers 3

    .line 1525
    if-lez p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    return p2
.end method

.method public static blacklist calculateRunFlag(III)I
    .registers 6

    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 343
    const/16 p0, 0x6000

    return p0

    .line 345
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    add-int/lit8 v2, p1, -0x1

    if-eq p0, v2, :cond_e

    .line 348
    return v1

    .line 351
    :cond_e
    nop

    .line 358
    if-nez p0, :cond_18

    .line 359
    if-ne p2, v0, :cond_16

    .line 360
    const/16 v1, 0x2000

    goto :goto_18

    .line 362
    :cond_16
    const/16 v1, 0x4000

    .line 365
    :cond_18
    :goto_18
    sub-int/2addr p1, v0

    if-ne p0, p1, :cond_22

    .line 366
    if-ne p2, v0, :cond_20

    .line 367
    or-int/lit16 v1, v1, 0x4000

    goto :goto_22

    .line 369
    :cond_20
    or-int/lit16 v1, v1, 0x2000

    .line 372
    :cond_22
    :goto_22
    return v1
.end method

.method private blacklist charAt(I)C
    .registers 4

    .line 287
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    aget-char p1, v0, p1

    goto :goto_12

    :cond_9
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    :goto_12
    return p1
.end method

.method private greylist-max-o countStretchableSpaces(II)I
    .registers 6

    .line 1866
    nop

    .line 1867
    const/4 v0, 0x0

    :goto_2
    if-ge p1, p2, :cond_21

    .line 1868
    iget-boolean v1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v1, v1, p1

    goto :goto_16

    :cond_d
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1869
    :goto_16
    invoke-direct {p0, v1}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1870
    add-int/lit8 v0, v0, 0x1

    .line 1867
    :cond_1e
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1873
    :cond_21
    return v0
.end method

.method private blacklist drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F
    .registers 30

    .line 844
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    move/from16 v4, p4

    if-ne v2, v4, :cond_3f

    .line 845
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    neg-float v0, v3

    .line 847
    add-float v7, p5, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move-object/from16 v5, p1

    move/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v17, p10

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    .line 849
    return v18

    .line 852
    :cond_3f
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p3

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v14, p9

    move/from16 v18, p10

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private static greylist-max-o drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .registers 11

    .line 1235
    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float/2addr p7, v0

    add-float/2addr p7, p3

    .line 1237
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 1238
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1239
    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v2

    .line 1241
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1242
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1244
    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1245
    add-float/2addr p4, p7

    move p2, p5

    move-object p5, p0

    move-object p0, p1

    move p1, p2

    move p3, p6

    move p2, p7

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1247
    invoke-virtual {p5, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1248
    invoke-virtual {p5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1249
    invoke-virtual {p5, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1250
    return-void
.end method

.method private greylist-max-o drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .registers 31

    .line 1793
    move-object/from16 v0, p0

    move/from16 v1, p9

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_1f

    .line 1794
    sub-int v6, p4, p3

    .line 1795
    sub-int v8, p6, p5

    .line 1796
    iget-object v4, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v10, v1

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v11, p7

    move/from16 v9, p8

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1798
    goto :goto_39

    .line 1799
    :cond_1f
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    .line 1800
    iget-object v12, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v13, v2, p3

    add-int v14, v2, p4

    add-int v15, v2, p5

    add-int v16, v2, p6

    int-to-float v0, v1

    move-object/from16 v11, p1

    move-object/from16 v20, p2

    move/from16 v19, p7

    move/from16 v17, p8

    move/from16 v18, v0

    invoke-virtual/range {v11 .. v20}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 1803
    :goto_39
    return-void
.end method

.method private static blacklist equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .registers 4

    .line 1886
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1887
    invoke-virtual {p0}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1888
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1889
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1890
    invoke-virtual {p0}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1891
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1892
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1893
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1894
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1895
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1896
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1897
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1898
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1899
    invoke-virtual {p0}, Landroid/text/TextPaint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1900
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1901
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1902
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1903
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1904
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1905
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1906
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1907
    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1908
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1909
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1910
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1911
    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1912
    invoke-virtual {p0}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1913
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1914
    invoke-virtual {p0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v0, v1, :cond_172

    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->density:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    if-ne v0, v1, :cond_172

    iget p0, p0, Landroid/text/TextPaint;->underlineThickness:F

    iget p1, p1, Landroid/text/TextPaint;->underlineThickness:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_172

    const/4 p0, 0x1

    goto :goto_173

    :cond_172
    const/4 p0, 0x0

    .line 1886
    :goto_173
    return p0
.end method

.method private static greylist-max-o expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8

    .line 1184
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1185
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1186
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1187
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1188
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1190
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1192
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1194
    return-void
.end method

.method private blacklist expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 16

    .line 1199
    move-object v0, p1

    iget p1, p7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1200
    move v2, p2

    iget p2, p7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1201
    move v1, p3

    iget p3, p7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1202
    move v4, p4

    iget p4, p7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1203
    move v3, p5

    iget p5, p7, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1205
    move v5, v3

    sub-int v3, v1, v2

    .line 1206
    sub-int/2addr v5, v4

    .line 1207
    iget-boolean v6, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v6, :cond_1f

    .line 1208
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_3c

    .line 1211
    :cond_1f
    move v6, p6

    move-object v7, p7

    iget-object p6, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez p6, :cond_31

    .line 1212
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p6

    iget p6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, p6

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_3c

    .line 1215
    :cond_31
    iget-object p6, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget p7, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p7, v2

    iget v0, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v0, v1

    invoke-virtual {p6, p7, v0, v7}, Landroid/text/PrecomputedText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 1219
    :goto_3c
    move-object p0, v7

    invoke-static/range {p0 .. p5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1221
    return-void
.end method

.method private greylist-max-o extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .registers 5

    .line 1557
    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 1558
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1559
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 1561
    :cond_e
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 1562
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1b

    .line 1563
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1565
    :cond_1b
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 1566
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 1567
    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 1568
    return-void
.end method

.method private greylist-max-o getOffsetBeforeAfter(IIIZIZ)I
    .registers 15

    .line 1114
    if-ltz p1, :cond_b2

    const/4 p1, 0x0

    if-eqz p6, :cond_8

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    if-ne p5, v0, :cond_e

    move v6, p5

    goto/16 :goto_b3

    .line 1124
    :cond_e
    iget-object v1, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1125
    iget-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1126
    iget-boolean v0, p0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v0, :cond_28

    .line 1127
    iget v0, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 1128
    iget v0, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1131
    :cond_28
    nop

    .line 1133
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_87

    if-ne p2, p3, :cond_30

    goto :goto_87

    .line 1136
    :cond_30
    if-eqz p6, :cond_35

    add-int/lit8 v0, p5, 0x1

    goto :goto_36

    :cond_35
    move v0, p5

    .line 1137
    :goto_36
    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p3

    .line 1139
    :goto_39
    iget-object p3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p2

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, v3, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p3, v3

    .line 1141
    if-lt p3, v0, :cond_85

    .line 1142
    nop

    .line 1147
    iget-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, p2

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p3

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 1149
    iget-object v2, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 1151
    array-length v2, v0

    if-lez v2, :cond_83

    .line 1152
    nop

    .line 1153
    const/4 v2, 0x0

    move v3, p1

    :goto_6a
    array-length v4, v0

    if-ge v3, v4, :cond_7d

    .line 1154
    aget-object v4, v0, v3

    .line 1155
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_77

    .line 1156
    check-cast v4, Landroid/text/style/ReplacementSpan;

    move-object v2, v4

    goto :goto_7a

    .line 1158
    :cond_77
    invoke-virtual {v4, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1153
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1162
    :cond_7d
    if-eqz v2, :cond_83

    .line 1165
    if-eqz p6, :cond_82

    move p2, p3

    :cond_82
    return p2

    .line 1170
    :cond_83
    move v3, p2

    goto :goto_88

    .line 1144
    :cond_85
    move p2, p3

    goto :goto_39

    .line 1134
    :cond_87
    :goto_87
    move v3, p2

    .line 1170
    :goto_88
    if-eqz p6, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 p1, 0x2

    :goto_8c
    move v7, p1

    .line 1171
    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p1, :cond_9c

    .line 1172
    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, p3, v3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIZII)I

    move-result p1

    return p1

    .line 1175
    :cond_9c
    move v5, p4

    move v6, p5

    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p1

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int v4, p1, p3

    iget p1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p1

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p2

    return p1

    .line 1114
    :cond_b2
    move v6, p5

    .line 1118
    :goto_b3
    if-eqz p6, :cond_c3

    .line 1119
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int p5, v6, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p2

    return p1

    .line 1121
    :cond_c3
    iget-object p1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    add-int p5, v6, p2

    invoke-static {p1, p5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    iget p2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr p1, p2

    return p1
.end method

.method private blacklist getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .registers 25

    .line 1255
    move-object/from16 v12, p11

    if-eqz v12, :cond_16

    .line 1256
    iget-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    if-nez v0, :cond_f

    .line 1257
    new-instance v0, Landroid/graphics/Paint$RunInfo;

    invoke-direct {v0}, Landroid/graphics/Paint$RunInfo;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    .line 1259
    :cond_f
    iget-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    goto :goto_19

    .line 1261
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    .line 1263
    :goto_19
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_48

    .line 1264
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    iget-object v11, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object v0, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextPaint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    .line 1266
    if-eqz v12, :cond_47

    .line 1267
    invoke-virtual {v12}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v0

    iget-object v1, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {v1}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v12, v0}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 1269
    :cond_47
    return p1

    .line 1271
    :cond_48
    move-object/from16 v10, p10

    iget v0, p0, Landroid/text/TextLine;->mStart:I

    .line 1274
    iget-object v1, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-eqz v1, :cond_7d

    if-nez p8, :cond_7d

    if-eqz v12, :cond_55

    goto :goto_7d

    .line 1284
    :cond_55
    if-eqz v10, :cond_72

    .line 1285
    iget-object p1, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    if-nez p1, :cond_62

    .line 1286
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    .line 1288
    :cond_62
    iget-object p1, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v1, p2, v0

    add-int v2, p3, v0

    iget-object v3, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    .line 1289
    iget-object p1, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {v10, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1291
    :cond_72
    iget-object p1, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v1, p2, v0

    add-int v0, p3, v0

    invoke-virtual {p1, v1, v0}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result p1

    return p1

    .line 1275
    :cond_7d
    :goto_7d
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v2, v0, p2

    add-int v3, v0, p3

    add-int v4, v0, p4

    add-int v5, v0, p5

    add-int v7, v0, p7

    iget-object v11, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object v0, p1

    move/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextPaint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result p1

    .line 1278
    if-eqz v12, :cond_a7

    .line 1279
    nop

    .line 1280
    invoke-virtual {v12}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v0

    iget-object v1, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {v1}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 1279
    invoke-virtual {v12, v0}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 1282
    :cond_a7
    return p1
.end method

.method private greylist-max-o handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 29

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v6, p11

    .line 1484
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 1485
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 1487
    if-nez p12, :cond_17

    if-eqz p6, :cond_13

    if-eqz p5, :cond_13

    goto :goto_17

    .line 1512
    :cond_13
    const/4 v1, 0x0

    move v13, v4

    move v14, v5

    goto :goto_54

    .line 1488
    :cond_17
    :goto_17
    nop

    .line 1489
    nop

    .line 1490
    nop

    .line 1491
    nop

    .line 1492
    nop

    .line 1494
    const/4 v1, 0x0

    if-eqz v6, :cond_22

    const/4 v2, 0x1

    move v7, v2

    goto :goto_23

    :cond_22
    move v7, v1

    .line 1496
    :goto_23
    if-eqz v7, :cond_35

    .line 1497
    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1498
    iget v2, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1499
    iget v3, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1500
    iget v8, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1501
    iget v9, v6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v10, v3

    move v11, v8

    move v12, v9

    move v8, v1

    move v9, v2

    goto :goto_3a

    .line 1496
    :cond_35
    move v8, v1

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    .line 1504
    :goto_3a
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    move v13, v4

    move v14, v5

    int-to-float v15, v3

    .line 1506
    if-eqz v7, :cond_53

    .line 1507
    move-object/from16 v1, p11

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1512
    :cond_53
    move v1, v15

    :goto_54
    if-eqz p6, :cond_71

    .line 1513
    if-eqz p5, :cond_5c

    .line 1514
    sub-float v2, p7, v1

    move v7, v2

    goto :goto_5e

    .line 1513
    :cond_5c
    move/from16 v7, p7

    .line 1516
    :goto_5e
    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v3, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move v5, v13

    move v6, v14

    invoke-virtual/range {v2 .. v11}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 1520
    :cond_71
    if-eqz p5, :cond_74

    neg-float v1, v1

    :cond_74
    return v1
.end method

.method private blacklist handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F
    .registers 48

    .line 1601
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v0, p14

    if-lt v3, v2, :cond_339

    if-gt v3, v4, :cond_339

    .line 1606
    if-eqz v0, :cond_24

    array-length v5, v0

    sub-int v5, v5, p15

    sub-int v6, v3, v2

    if-lt v5, v6, :cond_1c

    goto :goto_24

    .line 1607
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "advances doesn\'t have enough space to receive the result"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1612
    :cond_24
    :goto_24
    const/4 v13, 0x0

    if-ne v2, v3, :cond_4a

    .line 1613
    iget-object v0, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1614
    iget-object v1, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1615
    if-eqz v14, :cond_33

    .line 1616
    invoke-static {v14, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1618
    :cond_33
    if-eqz v15, :cond_49

    .line 1619
    if-nez v14, :cond_40

    .line 1620
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1621
    invoke-static {v1, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1622
    move-object v14, v1

    .line 1624
    :cond_40
    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    iget v1, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v15, v13, v0, v13, v1}, Landroid/graphics/RectF;->union(FFFF)V

    .line 1626
    :cond_49
    return v13

    .line 1630
    :cond_4a
    iget-object v5, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v23, 0x0

    const/16 v24, 0x1

    if-nez v5, :cond_55

    .line 1631
    move/from16 v5, v23

    goto :goto_81

    .line 1633
    :cond_55
    iget-object v5, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v6, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v2

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1634
    iget-object v5, v1, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v6, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v2

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1635
    iget-object v5, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v5, :cond_7f

    iget-object v5, v1, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v5, :cond_7c

    goto :goto_7f

    :cond_7c
    move/from16 v5, v23

    goto :goto_81

    :cond_7f
    :goto_7f
    move/from16 v5, v24

    .line 1639
    :goto_81
    if-nez v5, :cond_c8

    .line 1640
    iget-object v5, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1641
    iget-object v6, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1642
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1643
    invoke-virtual {v5}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v6

    invoke-direct {v1, v4, v6}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1644
    const/16 v18, 0x0

    move-object v2, v5

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v16, p13

    move/from16 v20, p15

    move-object/from16 v21, p16

    move/from16 v22, p17

    move-object/from16 v19, v0

    move/from16 v17, v3

    move/from16 v3, p1

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0

    .line 1654
    :cond_c8
    move v14, v3

    .line 1655
    move/from16 v5, p1

    move/from16 v7, p7

    :goto_cd
    if-ge v5, v14, :cond_335

    .line 1656
    iget-object v2, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1657
    iget-object v0, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1659
    iget-object v0, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v5

    iget v4, v1, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v3, v1, Landroid/text/TextLine;->mStart:I

    sub-int v15, v0, v3

    .line 1661
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1663
    nop

    .line 1665
    const/4 v0, 0x0

    move-object v6, v0

    move/from16 v3, v23

    :goto_f0
    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v8, v8, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v8, :cond_146

    .line 1668
    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanStarts:[I

    aget v8, v8, v3

    iget v9, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v9, v4

    if-ge v8, v9, :cond_143

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanEnds:[I

    aget v8, v8, v3

    iget v9, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v9, v5

    if-gt v8, v9, :cond_10d

    .line 1669
    goto :goto_143

    .line 1671
    :cond_10d
    iget v8, v1, Landroid/text/TextLine;->mStart:I

    iget v9, v1, Landroid/text/TextLine;->mEllipsisStart:I

    add-int/2addr v8, v9

    iget-object v9, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v9, v9, Landroid/text/SpanSet;->spanStarts:[I

    aget v9, v9, v3

    if-gt v8, v9, :cond_12a

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanEnds:[I

    aget v8, v8, v3

    iget v9, v1, Landroid/text/TextLine;->mStart:I

    iget v10, v1, Landroid/text/TextLine;->mEllipsisEnd:I

    add-int/2addr v9, v10

    if-gt v8, v9, :cond_12a

    move/from16 v8, v24

    goto :goto_12c

    :cond_12a
    move/from16 v8, v23

    .line 1674
    :goto_12c
    iget-object v9, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v9, v9, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v9, [Landroid/text/style/MetricAffectingSpan;

    aget-object v9, v9, v3

    .line 1675
    instance-of v10, v9, Landroid/text/style/ReplacementSpan;

    if-eqz v10, :cond_140

    .line 1676
    if-nez v8, :cond_13e

    check-cast v9, Landroid/text/style/ReplacementSpan;

    move-object v6, v9

    goto :goto_143

    :cond_13e
    move-object v6, v0

    goto :goto_143

    .line 1680
    :cond_140
    invoke-virtual {v9, v2}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1665
    :cond_143
    :goto_143
    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    .line 1684
    :cond_146
    if-eqz v6, :cond_189

    .line 1685
    if-nez p13, :cond_150

    if-ge v4, v14, :cond_14d

    goto :goto_150

    :cond_14d
    move/from16 v12, v23

    goto :goto_152

    :cond_150
    :goto_150
    move/from16 v12, v24

    :goto_152
    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object v0, v1

    move v3, v5

    move-object v1, v6

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    .line 1687
    move-object v8, v0

    move v6, v4

    move v0, v7

    move v7, v3

    add-float/2addr v0, v1

    .line 1688
    if-eqz p14, :cond_182

    .line 1690
    add-int v2, p15, v7

    sub-int v2, v2, p1

    if-eqz p4, :cond_173

    neg-float v1, v1

    :cond_173
    aput v1, p14, v2

    .line 1691
    add-int/lit8 v5, v7, 0x1

    :goto_177
    if-ge v5, v6, :cond_182

    .line 1692
    add-int v1, p15, v5

    sub-int v1, v1, p1

    aput v13, p14, v1

    .line 1691
    add-int/lit8 v5, v5, 0x1

    goto :goto_177

    .line 1655
    :cond_182
    move v7, v0

    move/from16 v29, v13

    move v0, v14

    move v6, v15

    goto/16 :goto_32d

    .line 1698
    :cond_189
    move-object v8, v1

    move-object v9, v2

    move v6, v4

    move v0, v7

    move v7, v5

    iget-object v10, v8, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 1699
    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1700
    nop

    .line 1701
    nop

    .line 1702
    iget-object v11, v8, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 1703
    iget-object v1, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1704
    move/from16 v16, v0

    move v3, v7

    move v12, v3

    :goto_1a2
    if-ge v12, v6, :cond_2c3

    .line 1705
    iget-object v0, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v8, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v12

    iget v2, v8, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v8, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v0, v1

    .line 1708
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1709
    iget-object v2, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1710
    move/from16 v2, v23

    :goto_1be
    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v2, v5, :cond_1ea

    .line 1712
    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spanStarts:[I

    aget v5, v5, v2

    iget v13, v8, Landroid/text/TextLine;->mStart:I

    add-int/2addr v13, v1

    if-ge v5, v13, :cond_1e6

    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spanEnds:[I

    aget v5, v5, v2

    iget v13, v8, Landroid/text/TextLine;->mStart:I

    add-int/2addr v13, v12

    if-gt v5, v13, :cond_1db

    .line 1713
    goto :goto_1e6

    .line 1715
    :cond_1db
    iget-object v5, v8, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v5, v5, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v5, [Landroid/text/style/CharacterStyle;

    aget-object v5, v5, v2

    .line 1716
    invoke-virtual {v5, v9}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1710
    :cond_1e6
    :goto_1e6
    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x0

    goto :goto_1be

    .line 1719
    :cond_1ea
    invoke-direct {v8, v9, v11}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    .line 1721
    if-ne v12, v7, :cond_203

    .line 1725
    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v28, v0

    move/from16 v25, v6

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move v6, v15

    move/from16 v10, v16

    const/16 v29, 0x0

    goto/16 :goto_297

    .line 1726
    :cond_203
    invoke-static {v9, v10}, Landroid/text/TextLine;->equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v1

    if-nez v1, :cond_288

    .line 1727
    move/from16 v2, p1

    move/from16 v1, p4

    move v13, v0

    move v5, v4

    move/from16 v0, p17

    move v4, v3

    move v3, v14

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v22

    .line 1733
    move v0, v3

    move v3, v4

    move v4, v5

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1734
    invoke-virtual {v1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    invoke-direct {v8, v3, v1}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v1

    .line 1733
    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1735
    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1736
    invoke-virtual {v1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    invoke-direct {v8, v4, v1}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v1

    .line 1735
    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1737
    if-nez p13, :cond_23f

    if-ge v4, v0, :cond_239

    goto :goto_23f

    :cond_239
    move-object v2, v10

    move/from16 v10, v16

    move/from16 v16, v23

    goto :goto_244

    :cond_23f
    :goto_23f
    move-object v2, v10

    move/from16 v10, v16

    move/from16 v16, v24

    .line 1740
    :goto_244
    const/4 v1, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v5, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    add-int v14, p15, v3

    sub-int v20, v14, p1

    .line 1737
    move-object/from16 v14, p11

    move-object/from16 v19, p14

    move-object/from16 v21, p16

    move/from16 v29, v1

    move-object/from16 v18, v5

    move/from16 v25, v6

    move v5, v7

    move-object v1, v8

    move-object v0, v9

    move-object/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move v6, v15

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v15, p12

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v3

    move-object v8, v1

    move-object v9, v2

    move v7, v5

    add-float v16, v10, v3

    .line 1743
    nop

    .line 1744
    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1745
    iget-object v1, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move/from16 v3, v27

    goto :goto_299

    .line 1726
    :cond_288
    move/from16 v28, v0

    move/from16 v25, v6

    move-object v0, v9

    move-object v9, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move v6, v15

    move/from16 v10, v16

    const/16 v29, 0x0

    .line 1753
    :goto_297
    move/from16 v16, v10

    :goto_299
    nop

    .line 1754
    invoke-virtual/range {v26 .. v26}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v1

    if-eqz v1, :cond_2b2

    .line 1755
    invoke-virtual/range {v26 .. v26}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v1

    .line 1756
    move/from16 v2, v27

    iput v2, v1, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 1757
    move/from16 v13, v28

    iput v13, v1, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 1758
    iget-object v2, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b4

    .line 1754
    :cond_2b2
    move/from16 v13, v28

    .line 1704
    :goto_2b4
    move/from16 v14, p2

    move v15, v6

    move-object v10, v9

    move v4, v13

    move v12, v4

    move/from16 v6, v25

    move-object/from16 v11, v26

    move/from16 v13, v29

    move-object v9, v0

    goto/16 :goto_1a2

    .line 1762
    :cond_2c3
    move/from16 v25, v6

    move-object v9, v10

    move/from16 v29, v13

    move v6, v15

    move/from16 v10, v16

    move/from16 v2, p1

    move/from16 v1, p4

    move/from16 v0, p17

    move v5, v4

    move v4, v3

    move/from16 v3, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v22

    .line 1765
    move v0, v3

    move v3, v4

    move v4, v5

    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1766
    invoke-virtual {v1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    invoke-direct {v8, v3, v1}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v1

    .line 1765
    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1767
    iget-object v1, v8, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1768
    invoke-virtual {v1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    invoke-direct {v8, v4, v1}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v1

    .line 1767
    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1769
    if-nez p13, :cond_2fe

    if-ge v4, v0, :cond_2fb

    goto :goto_2fe

    :cond_2fb
    move/from16 v16, v23

    goto :goto_300

    :cond_2fe
    :goto_2fe
    move/from16 v16, v24

    .line 1771
    :goto_300
    move/from16 v1, v25

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v1, v8, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    add-int v2, p15, v3

    sub-int v20, v2, p1

    .line 1769
    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v19, p14

    move-object/from16 v21, p16

    move-object/from16 v18, v1

    move v5, v7

    move-object v1, v8

    move-object v2, v9

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v2

    add-float v16, v10, v2

    move/from16 v7, v16

    .line 1655
    :goto_32d
    move-object/from16 v1, p0

    move v14, v0

    move v5, v6

    move/from16 v13, v29

    goto/16 :goto_cd

    .line 1775
    :cond_335
    move v0, v7

    sub-float v7, v0, p7

    return v7

    .line 1602
    :cond_339
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "measureLimit ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextShaper$GlyphsConsumer;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "Landroid/graphics/RectF;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;[FI",
            "Landroid/text/TextLine$LineInfo;",
            "I)F"
        }
    .end annotation

    .line 1328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v12, p9

    move-object/from16 v14, p14

    move/from16 v3, p21

    iget-boolean v4, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v4, :cond_1f

    .line 1329
    iget v4, v0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 1330
    iget v4, v0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1333
    :cond_1f
    if-eqz v14, :cond_29

    if-nez p13, :cond_29

    .line 1334
    new-instance v4, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v4}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    goto :goto_2b

    .line 1336
    :cond_29
    move-object/from16 v4, p13

    :goto_2b
    if-eqz v4, :cond_30

    .line 1337
    invoke-static {v4, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1341
    :cond_30
    const/4 v5, 0x0

    move/from16 v6, p3

    if-ne v6, v2, :cond_36

    .line 1342
    return v5

    .line 1345
    :cond_36
    nop

    .line 1346
    and-int/lit16 v7, v3, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_46

    .line 1347
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_4f

    .line 1349
    :cond_46
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, -0x2001

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1351
    :goto_4f
    const/16 v7, 0x4000

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_5d

    .line 1352
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    or-int/2addr v3, v7

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_66

    .line 1354
    :cond_5d
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1356
    :goto_66
    const/16 v16, 0x0

    if-nez p17, :cond_6d

    move/from16 v3, v16

    goto :goto_71

    :cond_6d
    invoke-virtual/range {p17 .. p17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1357
    :goto_71
    if-nez p15, :cond_85

    if-nez p7, :cond_77

    if-eqz p8, :cond_80

    :cond_77
    iget v7, v1, Landroid/text/TextPaint;->bgColor:I

    if-nez v7, :cond_85

    if-nez v3, :cond_85

    if-eqz p6, :cond_80

    goto :goto_85

    .line 1379
    :cond_80
    move v13, v3

    move-object/from16 v17, v4

    move v14, v5

    goto :goto_cf

    .line 1359
    :cond_85
    :goto_85
    if-eqz v14, :cond_92

    iget-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    if-nez v7, :cond_92

    .line 1360
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    .line 1362
    :cond_92
    if-eqz v14, :cond_99

    .line 1363
    iget-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->setEmpty()V

    .line 1365
    :cond_99
    nop

    .line 1366
    if-nez v14, :cond_9e

    const/4 v7, 0x0

    goto :goto_a0

    :cond_9e
    iget-object v7, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    :goto_a0
    move-object v10, v7

    .line 1365
    move/from16 v7, p16

    move-object/from16 v8, p18

    move/from16 v9, p19

    move-object/from16 v11, p20

    move v13, v3

    move-object/from16 v17, v4

    move v15, v5

    move v3, v6

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v8

    .line 1368
    if-eqz v14, :cond_ce

    .line 1369
    if-eqz p6, :cond_c4

    .line 1370
    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    sub-float v2, v12, v8

    invoke-virtual {v1, v2, v15}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_c9

    .line 1372
    :cond_c4
    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v1, v12, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 1374
    :goto_c9
    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v14, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1379
    :cond_ce
    move v14, v8

    :goto_cf
    if-eqz p6, :cond_d5

    .line 1380
    sub-float v1, v12, v14

    .line 1381
    move v8, v1

    goto :goto_da

    .line 1383
    :cond_d5
    nop

    .line 1384
    add-float v1, v12, v14

    move v8, v12

    move v12, v1

    .line 1387
    :goto_da
    if-eqz p8, :cond_ed

    .line 1388
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Landroid/text/TextLine;->shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V

    .line 1391
    :cond_ed
    iget-boolean v1, v0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz v1, :cond_105

    if-eqz v17, :cond_105

    .line 1392
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_107

    .line 1391
    :cond_105
    move-object/from16 v1, p1

    .line 1395
    :goto_107
    if-eqz p7, :cond_1f5

    .line 1396
    iget v0, v1, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_134

    .line 1397
    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    .line 1398
    invoke-virtual {v1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 1400
    iget v0, v1, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1401
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1402
    move/from16 v0, p10

    int-to-float v2, v0

    move/from16 v0, p12

    int-to-float v4, v0

    move-object/from16 v0, p7

    move-object v5, v1

    move v1, v8

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1404
    move-object v1, v5

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1405
    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1408
    :cond_134
    iget v0, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, p11, v0

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 1411
    move v2, v3

    move v15, v8

    if-eqz v13, :cond_1f5

    .line 1412
    move/from16 v0, v16

    :goto_150
    if-ge v0, v13, :cond_1f5

    .line 1413
    move-object/from16 v1, p17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextLine$DecorationInfo;

    .line 1415
    iget v4, v3, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1416
    iget v4, v3, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p16

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1417
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v17, v0

    move/from16 p8, v12

    move-object/from16 v0, p0

    move-object v12, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v18

    .line 1419
    move/from16 v2, p2

    move/from16 v7, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v7

    .line 1422
    if-eqz p6, :cond_192

    .line 1423
    sub-float v0, p8, v7

    .line 1424
    sub-float v1, p8, v18

    move v5, v0

    move v6, v1

    goto :goto_198

    .line 1426
    :cond_192
    add-float v0, v15, v18

    .line 1427
    add-float v1, v15, v7

    move v5, v0

    move v6, v1

    .line 1433
    :goto_198
    iget v0, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_1af

    .line 1434
    iget v2, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v12, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    move/from16 v8, p11

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_1b1

    .line 1433
    :cond_1af
    move/from16 v8, p11

    .line 1437
    :goto_1b1
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1d0

    .line 1438
    nop

    .line 1439
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1440
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 1444
    :cond_1d0
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_1ed

    .line 1445
    nop

    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 1412
    :cond_1ed
    add-int/lit8 v0, v17, 0x1

    move/from16 v2, p2

    move/from16 v12, p8

    goto/16 :goto_150

    .line 1455
    :cond_1f5
    if-eqz p6, :cond_1f8

    neg-float v14, v14

    :cond_1f8
    return v14
.end method

.method public static greylist-max-o isLineEndSpace(C)Z
    .registers 2

    .line 1878
    const/16 v0, 0x20

    if-eq p0, v0, :cond_23

    const/16 v0, 0x9

    if-eq p0, v0, :cond_23

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_18

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_18

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_23

    :cond_18
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private greylist-max-o isStretchableWhitespace(I)Z
    .registers 3

    .line 1861
    const/16 v0, 0x20

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private blacklist measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F
    .registers 31

    .line 877
    if-eqz p6, :cond_46

    move-object/from16 v1, p0

    iget v0, v1, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    move/from16 v5, p4

    if-ne v2, v5, :cond_46

    .line 878
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p11

    move-object v0, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v5

    neg-float v0, v5

    .line 880
    add-float v8, p9, v0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0

    .line 883
    :cond_46
    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v8, p9

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method public static greylist obtain()Landroid/text/TextLine;
    .registers 5

    .line 151
    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1b

    .line 153
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 154
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    .line 155
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 156
    monitor-exit v0

    return-object v2

    .line 159
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 160
    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    .line 164
    return-object v0

    .line 159
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static greylist-max-o recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .registers 5

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 177
    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 178
    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 179
    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 180
    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 181
    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    .line 182
    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    .line 185
    iget-object v2, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v2}, Landroid/text/SpanSet;->recycle()V

    .line 186
    iget-object v2, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v2}, Landroid/text/SpanSet;->recycle()V

    .line 187
    iget-object v2, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v2}, Landroid/text/SpanSet;->recycle()V

    .line 189
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 190
    nop

    :goto_25
    :try_start_25
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v1, v3, :cond_38

    .line 191
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v1

    if-nez v3, :cond_35

    .line 192
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v1

    .line 193
    goto :goto_38

    .line 190
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 196
    :cond_38
    :goto_38
    monitor-exit v2

    .line 197
    return-object v0

    .line 196
    :catchall_3a
    move-exception p0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public static blacklist resolveRunFlagForSubSequence(IZIIII)I
    .registers 7

    .line 389
    if-nez p0, :cond_4

    .line 392
    const/4 p0, 0x0

    return p0

    .line 394
    :cond_4
    nop

    .line 395
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_15

    .line 396
    if-eqz p1, :cond_10

    .line 397
    if-eq p5, p3, :cond_15

    .line 399
    and-int/lit16 v0, p0, -0x2001

    goto :goto_16

    .line 402
    :cond_10
    if-eq p4, p2, :cond_15

    .line 404
    and-int/lit16 v0, p0, -0x2001

    goto :goto_16

    .line 408
    :cond_15
    move v0, p0

    :goto_16
    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_25

    .line 409
    if-eqz p1, :cond_21

    .line 410
    if-eq p4, p2, :cond_25

    .line 412
    and-int/lit16 v0, v0, -0x4001

    goto :goto_25

    .line 415
    :cond_21
    if-eq p5, p3, :cond_25

    .line 417
    and-int/lit16 v0, v0, -0x4001

    .line 421
    :cond_25
    :goto_25
    return v0
.end method

.method private blacklist shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F
    .registers 27

    .line 903
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    move/from16 v4, p4

    if-ne v2, v4, :cond_3b

    .line 904
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    neg-float v0, v3

    .line 906
    add-float v7, p5, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move-object/from16 v6, p1

    move/from16 v4, p4

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    .line 908
    return v18

    .line 911
    :cond_3b
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p3

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v14, p6

    move/from16 v18, p7

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private blacklist shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V
    .registers 18

    .line 1820
    sub-int v2, p4, p3

    .line 1821
    sub-int v4, p6, p5

    .line 1823
    iget-boolean p4, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p4, :cond_17

    .line 1824
    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v6, 0x0

    move-object v8, p2

    move v1, p3

    move v3, p5

    move/from16 v7, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroid/graphics/text/TextRunShaper;->shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object p4

    goto :goto_2b

    .line 1833
    :cond_17
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget p4, p0, Landroid/text/TextLine;->mStart:I

    add-int v1, p4, p3

    iget p4, p0, Landroid/text/TextLine;->mStart:I

    add-int v3, p4, p5

    const/4 v6, 0x0

    move-object v8, p2

    move/from16 v7, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object p4

    .line 1842
    :goto_2b
    invoke-interface {p1, p3, v2, p4, p2}, Landroid/text/TextShaper$GlyphsConsumer;->accept(IILandroid/graphics/text/PositionedGlyphs;Landroid/text/TextPaint;)V

    .line 1843
    return-void
.end method

.method static greylist-max-o updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .registers 7

    .line 1226
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1227
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1228
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1229
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1230
    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1231
    return-void
.end method


# virtual methods
.method greylist-max-o draw(Landroid/graphics/Canvas;FIII)V
    .registers 22

    .line 434
    move-object/from16 v0, p0

    .line 435
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v11

    .line 436
    const/4 v1, 0x0

    const/4 v12, 0x0

    move v13, v12

    :goto_b
    if-ge v13, v11, :cond_7c

    .line 437
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v13}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    .line 438
    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_19

    goto/16 :goto_7c

    .line 439
    :cond_19
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v13}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 440
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v13}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 442
    iget v3, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v13, v11, v3}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v10

    .line 444
    nop

    .line 445
    iget-boolean v3, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_39

    move v3, v2

    goto :goto_3a

    :cond_39
    move v3, v14

    :goto_3a
    move v15, v1

    :goto_3b
    if-gt v3, v14, :cond_78

    .line 446
    if-eq v3, v14, :cond_47

    invoke-direct {v0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_75

    .line 447
    :cond_47
    add-float v5, p2, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v13, v1, :cond_54

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v3, v1, :cond_52

    goto :goto_54

    :cond_52
    move v9, v12

    goto :goto_56

    :cond_54
    :goto_54
    const/4 v1, 0x1

    move v9, v1

    :goto_56
    move-object/from16 v1, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F

    move-result v2

    add-float/2addr v15, v2

    .line 450
    if-eq v3, v14, :cond_72

    .line 451
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float/2addr v15, v2

    invoke-virtual {v0, v15}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float/2addr v1, v2

    move v15, v1

    .line 453
    :cond_72
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    .line 445
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 436
    :cond_78
    add-int/lit8 v13, v13, 0x1

    move v1, v15

    goto :goto_b

    .line 457
    :cond_7c
    :goto_7c
    return-void
.end method

.method public blacklist getAddedLetterSpacingInPx()F
    .registers 2

    .line 115
    iget v0, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    return v0
.end method

.method public blacklist getAddedWordSpacingInPx()F
    .registers 2

    .line 110
    iget v0, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    return v0
.end method

.method greylist-max-o getOffsetToLeftRightOf(IZ)I
    .registers 23

    .line 946
    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 947
    iget v8, v0, Landroid/text/TextLine;->mLen:I

    .line 948
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-ne v1, v11, :cond_10

    const/4 v12, 0x1

    goto :goto_11

    :cond_10
    move v12, v10

    .line 949
    :goto_11
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v13, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 951
    nop

    .line 952
    nop

    .line 954
    const v15, 0x3ffffff

    if-nez v5, :cond_27

    .line 955
    move v9, v10

    move/from16 v17, v9

    move v4, v11

    move/from16 v19, v15

    const/4 v1, -0x2

    const/16 v16, 0x1

    goto/16 :goto_eb

    .line 956
    :cond_27
    if-ne v5, v8, :cond_34

    .line 957
    array-length v1, v13

    move v9, v10

    move/from16 v17, v9

    move v4, v11

    move/from16 v19, v15

    const/16 v16, 0x1

    goto/16 :goto_eb

    .line 961
    :cond_34
    move v3, v8

    move v1, v10

    move v2, v1

    :goto_37
    array-length v4, v13

    if-ge v1, v4, :cond_b9

    .line 962
    aget v2, v13, v1

    add-int/2addr v2, v10

    .line 963
    if-lt v5, v2, :cond_ab

    .line 964
    add-int/lit8 v3, v1, 0x1

    aget v4, v13, v3

    and-int/2addr v4, v15

    add-int/2addr v4, v2

    .line 965
    if-le v4, v8, :cond_48

    .line 966
    move v4, v8

    .line 968
    :cond_48
    if-ge v5, v4, :cond_a3

    .line 969
    aget v3, v13, v3

    ushr-int/lit8 v3, v3, 0x1a

    and-int/lit8 v3, v3, 0x3f

    .line 971
    if-ne v5, v2, :cond_98

    .line 976
    add-int/lit8 v6, v5, -0x1

    .line 977
    move v9, v10

    const/16 v16, 0x1

    :goto_57
    move/from16 v17, v10

    array-length v10, v13

    if-ge v9, v10, :cond_90

    .line 978
    aget v10, v13, v9

    add-int v10, v17, v10

    .line 979
    if-lt v6, v10, :cond_87

    .line 980
    add-int/lit8 v18, v9, 0x1

    aget v19, v13, v18

    and-int v19, v19, v15

    add-int v14, v10, v19

    .line 982
    if-le v14, v8, :cond_6d

    .line 983
    move v14, v8

    .line 985
    :cond_6d
    if-ge v6, v14, :cond_84

    .line 986
    aget v18, v13, v18

    ushr-int/lit8 v18, v18, 0x1a

    move/from16 v19, v15

    and-int/lit8 v15, v18, 0x3f

    .line 988
    if-ge v15, v3, :cond_89

    .line 990
    nop

    .line 991
    nop

    .line 992
    nop

    .line 993
    nop

    .line 994
    nop

    .line 995
    move v1, v9

    move v2, v10

    move v3, v15

    move/from16 v4, v16

    goto :goto_95

    .line 985
    :cond_84
    move/from16 v19, v15

    goto :goto_89

    .line 979
    :cond_87
    move/from16 v19, v15

    .line 977
    :cond_89
    :goto_89
    add-int/lit8 v9, v9, 0x2

    move/from16 v10, v17

    move/from16 v15, v19

    goto :goto_57

    :cond_90
    move/from16 v19, v15

    move v14, v4

    move/from16 v4, v17

    .line 1000
    :goto_95
    move v9, v3

    move v3, v14

    goto :goto_c2

    .line 971
    :cond_98
    move/from16 v17, v10

    move/from16 v19, v15

    const/16 v16, 0x1

    move v9, v3

    move v3, v4

    move/from16 v4, v17

    goto :goto_c2

    .line 968
    :cond_a3
    move/from16 v17, v10

    move/from16 v19, v15

    const/16 v16, 0x1

    move v3, v4

    goto :goto_b1

    .line 963
    :cond_ab
    move/from16 v17, v10

    move/from16 v19, v15

    const/16 v16, 0x1

    .line 961
    :goto_b1
    add-int/lit8 v1, v1, 0x2

    move/from16 v10, v17

    move/from16 v15, v19

    goto/16 :goto_37

    :cond_b9
    move/from16 v17, v10

    move/from16 v19, v15

    const/16 v16, 0x1

    move/from16 v4, v17

    move v9, v4

    .line 1011
    :goto_c2
    array-length v6, v13

    if-eq v1, v6, :cond_ea

    .line 1012
    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_cc

    move/from16 v6, v16

    goto :goto_ce

    :cond_cc
    move/from16 v6, v17

    .line 1013
    :goto_ce
    move v10, v6

    if-ne v7, v6, :cond_d4

    move/from16 v6, v16

    goto :goto_d6

    :cond_d4
    move/from16 v6, v17

    .line 1014
    :goto_d6
    if-eqz v6, :cond_da

    move v14, v3

    goto :goto_db

    :cond_da
    move v14, v2

    :goto_db
    if-ne v5, v14, :cond_df

    if-eq v6, v4, :cond_ea

    .line 1016
    :cond_df
    move v4, v10

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v4

    .line 1020
    if-eqz v6, :cond_e7

    move v2, v3

    :cond_e7
    if-eq v4, v2, :cond_eb

    .line 1021
    return v4

    .line 1033
    :cond_ea
    move v4, v11

    :cond_eb
    :goto_eb
    if-ne v7, v12, :cond_f0

    move/from16 v0, v16

    goto :goto_f2

    :cond_f0
    move/from16 v0, v17

    .line 1034
    :goto_f2
    if-eqz v0, :cond_f6

    const/4 v2, 0x2

    goto :goto_f7

    :cond_f6
    const/4 v2, -0x2

    :goto_f7
    add-int/2addr v1, v2

    .line 1035
    if-ltz v1, :cond_142

    array-length v2, v13

    if-ge v1, v2, :cond_142

    .line 1036
    aget v0, v13, v1

    add-int v2, v17, v0

    .line 1037
    add-int/lit8 v0, v1, 0x1

    aget v3, v13, v0

    and-int v3, v3, v19

    add-int/2addr v3, v2

    .line 1039
    if-le v3, v8, :cond_10b

    .line 1040
    move v3, v8

    .line 1042
    :cond_10b
    aget v0, v13, v0

    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v10, v0, 0x3f

    .line 1044
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_118

    move/from16 v0, v16

    goto :goto_11a

    :cond_118
    move/from16 v0, v17

    .line 1046
    :goto_11a
    if-ne v7, v0, :cond_11f

    move/from16 v6, v16

    goto :goto_121

    :cond_11f
    move/from16 v6, v17

    .line 1047
    :goto_121
    if-ne v4, v11, :cond_13a

    .line 1048
    nop

    .line 1050
    if-eqz v6, :cond_128

    move v5, v2

    goto :goto_129

    :cond_128
    move v5, v3

    .line 1048
    :goto_129
    move v4, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v4

    .line 1051
    move-object v5, v0

    if-eqz v6, :cond_134

    move v2, v3

    :cond_134
    if-ne v4, v2, :cond_156

    .line 1054
    nop

    .line 1055
    nop

    .line 1056
    move v9, v10

    goto :goto_eb

    .line 1062
    :cond_13a
    if-ge v10, v9, :cond_156

    .line 1064
    if-eqz v6, :cond_140

    move v4, v2

    goto :goto_156

    :cond_140
    move v4, v3

    goto :goto_156

    .line 1035
    :cond_142
    move-object/from16 v5, p0

    .line 1069
    if-ne v4, v11, :cond_14e

    .line 1073
    if-eqz v0, :cond_14c

    iget v0, v5, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v11, v0, 0x1

    .line 1074
    :cond_14c
    move v4, v11

    goto :goto_156

    .line 1085
    :cond_14e
    if-gt v4, v8, :cond_156

    .line 1086
    if-eqz v0, :cond_153

    goto :goto_155

    :cond_153
    move/from16 v8, v17

    :goto_155
    move v4, v8

    .line 1091
    :cond_156
    :goto_156
    return v4
.end method

.method public blacklist isJustifying()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroid/text/TextLine;->mIsJustifying:Z

    return v0
.end method

.method public blacklist justify(IF)V
    .registers 13

    .line 295
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    move v2, v0

    .line 296
    :goto_3
    const/4 v0, 0x1

    if-lez v2, :cond_19

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 297
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 299
    :cond_19
    const/4 v7, 0x0

    if-ne p1, v0, :cond_38

    .line 300
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 301
    invoke-direct {p0, v3, v2}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v2

    .line 302
    if-nez v2, :cond_30

    .line 305
    return-void

    .line 307
    :cond_30
    sub-float/2addr p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    iput p2, v1, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    .line 308
    iput v7, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    .line 309
    goto :goto_9e

    .line 310
    :cond_38
    move-object v1, p0

    new-instance v6, Landroid/text/TextLine$LineInfo;

    invoke-direct {v6}, Landroid/text/TextLine$LineInfo;-><init>()V

    .line 311
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 313
    invoke-virtual {v6}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v3

    .line 314
    const/4 v4, 0x2

    if-ge v3, v4, :cond_51

    .line 315
    return-void

    .line 317
    :cond_51
    sub-float p1, p2, p1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr p1, v3

    iput p1, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    .line 318
    iget p1, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    float-to-double v3, p1

    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double p1, v3, v8

    if-lez p1, :cond_9c

    .line 321
    iget-object p1, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object v3, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \"liga\" off, \"cliga\" off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 324
    invoke-virtual {v6}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v3

    .line 325
    sub-float/2addr p2, v2

    sub-int/2addr v3, v0

    int-to-float v2, v3

    div-float/2addr p2, v2

    iput p2, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    .line 326
    iget-object p2, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 328
    :cond_9c
    iput v7, v1, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    .line 330
    :goto_9e
    iput-boolean v0, v1, Landroid/text/TextLine;->mIsJustifying:Z

    .line 331
    return-void
.end method

.method public blacklist measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .registers 24

    .line 573
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v10, p5

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v2, v1, :cond_e8

    .line 577
    const/4 v12, 0x0

    if-eqz v10, :cond_10

    .line 578
    invoke-virtual {v10, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 580
    :cond_10
    if-eqz p2, :cond_16

    add-int/lit8 v1, v2, -0x1

    move v13, v1

    goto :goto_17

    :cond_16
    move v13, v2

    .line 581
    :goto_17
    const/4 v1, 0x0

    if-gez v13, :cond_1b

    .line 582
    return v1

    .line 585
    :cond_1b
    nop

    .line 586
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v14

    .line 587
    move v15, v12

    :goto_23
    if-ge v15, v14, :cond_e7

    .line 588
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v15}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v3

    .line 589
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_31

    goto/16 :goto_e7

    .line 590
    :cond_31
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v15}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 591
    iget-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v5, v15}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v5

    .line 592
    iget v6, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v15, v14, v6}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    .line 594
    nop

    .line 595
    iget-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v6, :cond_51

    move v6, v3

    goto :goto_52

    :cond_51
    move v6, v4

    :goto_52
    move v9, v1

    move v1, v3

    move v3, v6

    :goto_55
    if-gt v3, v4, :cond_df

    .line 596
    if-eq v3, v4, :cond_66

    invoke-direct {v0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_62

    goto :goto_66

    :cond_62
    move v12, v4

    move v4, v5

    goto/16 :goto_d6

    .line 597
    :cond_66
    :goto_66
    const/4 v6, 0x1

    if-lt v13, v1, :cond_6e

    if-ge v13, v3, :cond_6e

    move/from16 v16, v6

    goto :goto_70

    :cond_6e
    move/from16 v16, v12

    .line 598
    :goto_70
    iget v7, v0, Landroid/text/TextLine;->mDir:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_77

    move v7, v6

    goto :goto_78

    :cond_77
    move v7, v12

    :goto_78
    if-ne v7, v5, :cond_7d

    move/from16 v17, v6

    goto :goto_7f

    :cond_7d
    move/from16 v17, v12

    .line 600
    :goto_7f
    if-eqz v16, :cond_90

    if-eqz v17, :cond_90

    .line 601
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p4

    move v4, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    add-float/2addr v9, v0

    return v9

    .line 600
    :cond_90
    move v0, v4

    move v4, v5

    .line 605
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, v3

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move v12, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    .line 607
    if-eqz v17, :cond_a5

    goto :goto_a6

    :cond_a5
    neg-float v3, v3

    :goto_a6
    add-float/2addr v9, v3

    .line 609
    if-eqz v16, :cond_ba

    .line 610
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    move v3, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    add-float/2addr v9, v0

    return v9

    .line 614
    :cond_ba
    move-object/from16 v0, p0

    move v3, v2

    move/from16 v2, p1

    if-eq v3, v12, :cond_d4

    .line 615
    if-ne v2, v3, :cond_c4

    .line 616
    return v9

    .line 618
    :cond_c4
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v5, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    mul-float/2addr v9, v5

    invoke-virtual {v0, v9}, Landroid/text/TextLine;->nextTab(F)F

    move-result v5

    mul-float v9, v1, v5

    .line 619
    if-ne v13, v3, :cond_d4

    .line 620
    return v9

    .line 624
    :cond_d4
    add-int/lit8 v1, v3, 0x1

    .line 595
    :goto_d6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, p5

    move v5, v4

    move v4, v12

    const/4 v12, 0x0

    goto/16 :goto_55

    .line 587
    :cond_df
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, p5

    move v1, v9

    const/4 v12, 0x0

    goto/16 :goto_23

    .line 629
    :cond_e7
    :goto_e7
    return v1

    .line 574
    :cond_e8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") should be less than line limit("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist measureAllBounds([F[F)V
    .registers 23

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    if-eqz v12, :cond_147

    .line 678
    array-length v1, v12

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v2, v2, 0x2

    const-string v3, " had: "

    if-lt v1, v2, :cond_121

    .line 682
    if-nez p2, :cond_17

    .line 683
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    new-array v1, v1, [F

    move-object v7, v1

    goto :goto_19

    .line 682
    :cond_17
    move-object/from16 v7, p2

    .line 685
    :goto_19
    array-length v1, v7

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-lt v1, v2, :cond_fd

    .line 689
    nop

    .line 690
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v13

    .line 691
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_27
    if-ge v15, v13, :cond_fc

    .line 692
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v15}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    .line 693
    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_35

    goto/16 :goto_fc

    .line 694
    :cond_35
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v15}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 695
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v15}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 696
    iget v5, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v15, v13, v5}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    .line 698
    nop

    .line 699
    iget-boolean v5, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v5, :cond_55

    move v5, v2

    goto :goto_56

    :cond_55
    move v5, v3

    :goto_56
    move/from16 v16, v1

    move v1, v2

    move v2, v5

    :goto_5a
    if-gt v2, v3, :cond_f6

    .line 700
    if-eq v2, v3, :cond_6a

    invoke-direct {v0, v2}, Landroid/text/TextLine;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_67

    goto :goto_6a

    :cond_67
    move v14, v3

    goto/16 :goto_f1

    .line 701
    :cond_6a
    :goto_6a
    iget v5, v0, Landroid/text/TextLine;->mDir:I

    const/4 v6, -0x1

    const/16 v17, 0x1

    if-ne v5, v6, :cond_74

    move/from16 v5, v17

    goto :goto_75

    :cond_74
    const/4 v5, 0x0

    :goto_75
    if-ne v5, v4, :cond_7a

    move/from16 v18, v17

    goto :goto_7c

    :cond_7a
    const/16 v18, 0x0

    .line 702
    :goto_7c
    nop

    .line 703
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v3

    move v3, v2

    move/from16 v19, v8

    move v8, v1

    move/from16 v14, v19

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    .line 706
    nop

    .line 707
    if-eqz v18, :cond_90

    goto :goto_91

    :cond_90
    neg-float v3, v3

    :goto_91
    add-float v3, v16, v3

    .line 708
    if-eqz v18, :cond_96

    goto :goto_98

    :cond_96
    move/from16 v16, v3

    .line 709
    :goto_98
    nop

    :goto_99
    if-ge v1, v2, :cond_bd

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    if-ge v1, v5, :cond_bd

    .line 710
    if-eqz v4, :cond_ae

    .line 711
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v5, 0x1

    aput v16, v12, v6

    .line 712
    aget v6, v7, v1

    sub-float v16, v16, v6

    .line 713
    aput v16, v12, v5

    goto :goto_ba

    .line 715
    :cond_ae
    mul-int/lit8 v5, v1, 0x2

    aput v16, v12, v5

    .line 716
    aget v6, v7, v1

    add-float v16, v16, v6

    .line 717
    add-int/lit8 v5, v5, 0x1

    aput v16, v12, v5

    .line 709
    :goto_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 721
    :cond_bd
    if-eq v2, v14, :cond_ed

    .line 724
    if-eqz v4, :cond_d1

    .line 725
    nop

    .line 726
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v5, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->nextTab(F)F

    move-result v5

    mul-float/2addr v1, v5

    .line 727
    move v5, v3

    move v3, v1

    goto :goto_df

    .line 729
    :cond_d1
    nop

    .line 730
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v5, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->nextTab(F)F

    move-result v5

    mul-float/2addr v1, v5

    .line 731
    move v5, v1

    .line 733
    :goto_df
    mul-int/lit8 v6, v2, 0x2

    aput v3, v12, v6

    .line 734
    add-int/lit8 v6, v6, 0x1

    aput v5, v12, v6

    .line 735
    sub-float/2addr v5, v3

    aput v5, v7, v2

    move/from16 v16, v1

    goto :goto_ef

    .line 721
    :cond_ed
    move/from16 v16, v3

    .line 738
    :goto_ef
    add-int/lit8 v1, v2, 0x1

    .line 699
    :goto_f1
    add-int/lit8 v2, v2, 0x1

    move v3, v14

    goto/16 :goto_5a

    .line 691
    :cond_f6
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    goto/16 :goto_27

    .line 742
    :cond_fc
    :goto_fc
    return-void

    .line 686
    :cond_fd
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advance doesn\'t have enough space to receive the result, needed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_121
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bounds doesn\'t have enough space to receive the result, needed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bounds can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .registers 23

    .line 750
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    new-array v7, v1, [F

    .line 751
    const/4 v13, 0x0

    aget-boolean v1, p1, v13

    const/4 v14, 0x0

    if-eqz v1, :cond_10

    .line 752
    aput v14, v7, v13

    .line 755
    :cond_10
    nop

    .line 756
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v15

    .line 757
    move v1, v13

    move v2, v14

    :goto_19
    if-ge v1, v15, :cond_ec

    .line 758
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v1}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v3

    .line 759
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_27

    goto/16 :goto_ec

    .line 760
    :cond_27
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v1}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 761
    iget-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v5, v1}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v5

    .line 762
    iget v6, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v1, v15, v6}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    .line 764
    nop

    .line 765
    iget-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v6, :cond_47

    move v6, v3

    goto :goto_48

    :cond_47
    move v6, v4

    :goto_48
    move/from16 v16, v2

    move v2, v6

    :goto_4b
    if-gt v2, v4, :cond_e3

    .line 766
    if-eq v2, v4, :cond_5e

    invoke-direct {v0, v2}, Landroid/text/TextLine;->charAt(I)C

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_58

    goto :goto_5e

    :cond_58
    move/from16 v19, v1

    move v12, v4

    move v4, v5

    goto/16 :goto_da

    .line 767
    :cond_5e
    :goto_5e
    nop

    .line 768
    iget v6, v0, Landroid/text/TextLine;->mDir:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_66

    move v6, v12

    goto :goto_67

    :cond_66
    move v6, v13

    :goto_67
    if-ne v6, v5, :cond_6c

    move/from16 v17, v12

    goto :goto_6e

    :cond_6c
    move/from16 v17, v13

    .line 776
    :goto_6e
    aget v18, v7, v3

    .line 777
    nop

    .line 778
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v1

    move v1, v3

    move v3, v2

    move/from16 v19, v8

    move v8, v1

    move v12, v4

    move v4, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    .line 780
    if-eqz v17, :cond_85

    goto :goto_86

    :cond_85
    neg-float v3, v3

    :goto_86
    add-float v3, v16, v3

    .line 782
    if-eqz v17, :cond_8b

    goto :goto_8d

    :cond_8b
    move/from16 v16, v3

    .line 783
    :goto_8d
    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 785
    move v6, v1

    :goto_94
    if-gt v6, v5, :cond_b9

    .line 786
    nop

    .line 788
    if-ge v6, v5, :cond_a2

    .line 789
    if-eqz v4, :cond_9f

    aget v8, v7, v6

    neg-float v8, v8

    goto :goto_a3

    :cond_9f
    aget v8, v7, v6

    goto :goto_a3

    .line 788
    :cond_a2
    move v8, v14

    .line 792
    :goto_a3
    if-ne v6, v1, :cond_ac

    aget-boolean v9, p1, v6

    if-eqz v9, :cond_ac

    .line 795
    aput v18, v7, v6

    goto :goto_b4

    .line 796
    :cond_ac
    if-ne v6, v5, :cond_b2

    aget-boolean v9, p1, v6

    if-eqz v9, :cond_b4

    .line 797
    :cond_b2
    aput v16, v7, v6

    .line 800
    :cond_b4
    :goto_b4
    add-float v16, v16, v8

    .line 785
    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    .line 803
    :cond_b9
    if-eq v2, v12, :cond_d5

    .line 804
    aget-boolean v1, p1, v2

    if-nez v1, :cond_c1

    .line 805
    aput v3, v7, v2

    .line 807
    :cond_c1
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v5, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float/2addr v3, v1

    .line 808
    add-int/lit8 v1, v2, 0x1

    aget-boolean v5, p1, v1

    if-eqz v5, :cond_d5

    .line 809
    aput v3, v7, v1

    .line 813
    :cond_d5
    add-int/lit8 v1, v2, 0x1

    move/from16 v16, v3

    move v3, v1

    .line 765
    :goto_da
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v12

    move/from16 v1, v19

    const/4 v12, 0x1

    goto/16 :goto_4b

    .line 757
    :cond_e3
    move/from16 v19, v1

    add-int/lit8 v1, v19, 0x1

    move/from16 v2, v16

    const/4 v12, 0x1

    goto/16 :goto_19

    .line 817
    :cond_ec
    :goto_ec
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    aget-boolean v1, p1, v1

    if-nez v1, :cond_f6

    .line 818
    iget v0, v0, Landroid/text/TextLine;->mLen:I

    aput v2, v7, v0

    .line 820
    :cond_f6
    return-object v7
.end method

.method public blacklist metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F
    .registers 11

    .line 472
    if-eqz p3, :cond_51

    .line 473
    if-nez p2, :cond_13

    .line 474
    iget-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    if-nez p2, :cond_f

    .line 475
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    .line 477
    :cond_f
    iget-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    move-object v4, p2

    goto :goto_14

    .line 473
    :cond_13
    move-object v4, p2

    .line 479
    :goto_14
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 480
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    .line 482
    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_34

    .line 483
    iget p3, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget p4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p3, p2

    goto :goto_42

    .line 485
    :cond_34
    iget p3, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p3, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float p3, p2, p3

    .line 487
    :goto_42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4b

    .line 488
    return p1

    .line 492
    :cond_4b
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, p3

    return p1

    .line 495
    :cond_51
    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    return p1
.end method

.method greylist-max-o nextTab(F)F
    .registers 3

    .line 1853
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_b

    .line 1854
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result p1

    return p1

    .line 1856
    :cond_b
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result p1

    return p1
.end method

.method public blacklist set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    .registers 13

    .line 221
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 222
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 223
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 224
    sub-int v0, p4, p3

    iput v0, p0, Landroid/text/TextLine;->mLen:I

    .line 225
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 226
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 227
    iput-boolean p11, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    .line 228
    iget-object p5, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz p5, :cond_b7

    .line 231
    iput-boolean p7, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 232
    const/4 p5, 0x0

    iput-object p5, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 234
    nop

    .line 235
    instance-of p6, p2, Landroid/text/Spanned;

    const/4 p7, 0x0

    if-eqz p6, :cond_35

    .line 236
    move-object p6, p2

    check-cast p6, Landroid/text/Spanned;

    iput-object p6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 237
    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object p11, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {p6, p11, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 238
    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget p6, p6, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez p6, :cond_33

    const/4 p6, 0x1

    goto :goto_36

    :cond_33
    move p6, p7

    goto :goto_36

    .line 235
    :cond_35
    move p6, p7

    .line 241
    :goto_36
    iput-object p5, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 242
    instance-of p11, p2, Landroid/text/PrecomputedText;

    if-eqz p11, :cond_53

    .line 245
    move-object p11, p2

    check-cast p11, Landroid/text/PrecomputedText;

    iput-object p11, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 246
    iget-object p11, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {p11}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object p11

    invoke-virtual {p11}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p11

    invoke-virtual {p11, p1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 247
    iput-object p5, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 251
    :cond_53
    iput-boolean p6, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 253
    iget-boolean p1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz p1, :cond_a2

    .line 254
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz p1, :cond_64

    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    array-length p1, p1

    iget p5, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, p5, :cond_6c

    .line 255
    :cond_64
    iget p1, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object p1

    iput-object p1, p0, Landroid/text/TextLine;->mChars:[C

    .line 257
    :cond_6c
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    invoke-static {p2, p3, p4, p1, p7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 258
    if-eqz p6, :cond_a2

    .line 264
    iget-object p1, p0, Landroid/text/TextLine;->mChars:[C

    .line 265
    move p2, p3

    :goto_76
    if-ge p2, p4, :cond_a2

    .line 266
    iget-object p5, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p5, p2, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result p5

    .line 267
    iget-object p6, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {p6, p2, p5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result p6

    if-eqz p6, :cond_a0

    sub-int/2addr p2, p3

    if-ge p2, p10, :cond_8d

    sub-int p6, p5, p3

    if-gt p6, p9, :cond_a0

    .line 270
    :cond_8d
    const p6, 0xfffc

    aput-char p6, p1, p2

    .line 271
    add-int/lit8 p2, p2, 0x1

    sub-int p6, p5, p3

    :goto_96
    if-ge p2, p6, :cond_a0

    .line 272
    const p11, 0xfeff

    aput-char p11, p1, p2

    .line 271
    add-int/lit8 p2, p2, 0x1

    goto :goto_96

    .line 265
    :cond_a0
    move p2, p5

    goto :goto_76

    .line 278
    :cond_a2
    iput-object p8, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 279
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    .line 280
    iput-boolean p7, p0, Landroid/text/TextLine;->mIsJustifying:Z

    .line 282
    if-eq p9, p10, :cond_ad

    move p1, p9

    goto :goto_ae

    :cond_ad
    move p1, p7

    :goto_ae
    iput p1, p0, Landroid/text/TextLine;->mEllipsisStart:I

    .line 283
    if-eq p9, p10, :cond_b3

    goto :goto_b4

    :cond_b3
    move p10, p7

    :goto_b4
    iput p10, p0, Landroid/text/TextLine;->mEllipsisEnd:I

    .line 284
    return-void

    .line 229
    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Directions cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    .registers 16

    .line 503
    nop

    .line 504
    nop

    .line 505
    iget-object v1, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v8

    .line 506
    const/4 v9, 0x0

    const/4 v10, 0x0

    move v1, v9

    move v11, v10

    :goto_c
    if-ge v11, v8, :cond_77

    .line 507
    iget-object v2, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v11}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    .line 508
    iget v3, p0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_1a

    goto/16 :goto_77

    .line 509
    :cond_1a
    iget-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v11}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 510
    iget-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v11}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 512
    iget v3, p0, Landroid/text/TextLine;->mDir:I

    invoke-static {v11, v8, v3}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v7

    .line 513
    nop

    .line 514
    iget-boolean v3, p0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_3a

    move v3, v2

    goto :goto_3b

    :cond_3a
    move v3, v12

    :goto_3b
    move v13, v1

    :goto_3c
    if-gt v3, v12, :cond_73

    .line 515
    if-eq v3, v12, :cond_48

    invoke-direct {p0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_70

    .line 516
    :cond_48
    add-float v5, v9, v13

    add-int/lit8 v1, v8, -0x1

    if-ne v11, v1, :cond_55

    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-eq v3, v1, :cond_53

    goto :goto_55

    :cond_53
    move v6, v10

    goto :goto_57

    :cond_55
    :goto_55
    const/4 v1, 0x1

    move v6, v1

    :goto_57
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F

    move-result v2

    add-float/2addr v13, v2

    .line 519
    if-eq v3, v12, :cond_6d

    .line 520
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v2, p0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float/2addr v13, v2

    invoke-virtual {p0, v13}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v13, v1, v2

    .line 522
    :cond_6d
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    .line 514
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 506
    :cond_73
    add-int/lit8 v11, v11, 0x1

    move v1, v13

    goto :goto_c

    .line 526
    :cond_77
    :goto_77
    return-void
.end method
