.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$CharacterBoundsListener;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$TextInclusionStrategy;,
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$Builder;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final whitelist DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final greylist DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final greylist DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final whitelist DIR_LEFT_TO_RIGHT:I = 0x1

.field static final greylist DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final greylist-max-o DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final greylist-max-o DIR_REQUEST_LTR:I = 0x1

.field static final greylist-max-o DIR_REQUEST_RTL:I = -0x1

.field public static final whitelist DIR_RIGHT_TO_LEFT:I = -0x1

.field private static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_ALPHA_PERCENTAGE:F = 0.7f

.field static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_FACTOR:F = 0.5f

.field static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_MIN_DP:F = 5.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_FACTOR:F = 0.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_MIN_PX:F = 0.0f

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

.field public static final whitelist INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final greylist-max-o NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final greylist-max-o RUN_LENGTH_MASK:I = 0x3ffffff

.field static final greylist-max-o RUN_LEVEL_MASK:I = 0x3f

.field static final greylist-max-o RUN_LEVEL_SHIFT:I = 0x1a

.field static final greylist-max-o RUN_RTL_FLAG:I = 0x4000000

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final greylist-max-o sTempRect:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mLineInfo:Landroid/text/TextLine$LineInfo;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private blacklist mSpanColors:Landroid/text/SpanColors;

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;

.field private final blacklist mWorkPlainPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;
    .registers 1

    iget-object p0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mellipsize(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHorizontal(Landroid/text/Layout;IZ)F
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLineHorizontals(Landroid/text/Layout;IZZ)[F
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 169
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 170
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 214
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

    .line 222
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

    .line 231
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

    .line 3745
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 3806
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 3812
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 29

    .line 327
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 331
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V
    .registers 23

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3739
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 3740
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    .line 3742
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3765
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    .line 384
    if-ltz p3, :cond_66

    .line 391
    if-eqz p2, :cond_21

    .line 392
    const/4 v0, 0x0

    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    .line 393
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 396
    :cond_21
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 397
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 398
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 399
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 400
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 401
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 402
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 403
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 404
    iput-boolean p8, p0, Landroid/text/Layout;->mIncludePad:Z

    .line 405
    iput-boolean p9, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    .line 406
    if-nez p11, :cond_3a

    goto :goto_3b

    :cond_3a
    move p3, p10

    :goto_3b
    iput p3, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    .line 407
    iput-object p11, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 408
    iput p12, p0, Landroid/text/Layout;->mMaxLines:I

    .line 409
    iput p13, p0, Landroid/text/Layout;->mBreakStrategy:I

    .line 410
    move p1, p14

    iput p1, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    .line 411
    move-object/from16 p1, p15

    iput-object p1, p0, Landroid/text/Layout;->mLeftIndents:[I

    .line 412
    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/text/Layout;->mRightIndents:[I

    .line 413
    move/from16 p1, p17

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    .line 414
    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 415
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    .line 416
    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 417
    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 419
    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    .line 420
    return-void

    .line 385
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Layout: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 26

    .line 3107
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 3108
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 3109
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 3111
    if-le v5, v4, :cond_24

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_24

    .line 3112
    add-int/lit8 v5, v5, -0x1

    .line 3115
    :cond_24
    const/4 v7, 0x0

    move v8, v7

    :goto_26
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v9, v9

    if-ge v8, v9, :cond_85

    .line 3116
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v8

    add-int/2addr v9, v4

    .line 3117
    iget-object v10, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v11

    const v12, 0x3ffffff

    and-int/2addr v10, v12

    add-int/2addr v10, v9

    .line 3119
    if-le v10, v5, :cond_3e

    .line 3120
    move v10, v5

    .line 3123
    :cond_3e
    if-gt v2, v10, :cond_7e

    if-lt v3, v9, :cond_7e

    .line 3124
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3125
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 3127
    if-eq v9, v10, :cond_79

    .line 3128
    invoke-direct {v0, v9, v7, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v9

    .line 3129
    const/4 v12, 0x1

    invoke-direct {v0, v10, v12, v1, v7}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v10

    .line 3131
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 3132
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 3135
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v9, v9, v11

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_69

    .line 3136
    move/from16 v18, v7

    goto :goto_6b

    .line 3137
    :cond_69
    move/from16 v18, v12

    .line 3139
    :goto_6b
    move/from16 v9, p4

    int-to-float v15, v9

    move/from16 v10, p5

    int-to-float v11, v10

    move-object/from16 v13, p6

    move/from16 v17, v11

    invoke-interface/range {v13 .. v18}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_82

    .line 3127
    :cond_79
    move/from16 v9, p4

    move/from16 v10, p5

    goto :goto_82

    .line 3123
    :cond_7e
    move/from16 v9, p4

    move/from16 v10, p5

    .line 3115
    :goto_82
    add-int/lit8 v8, v8, 0x2

    goto :goto_26

    .line 3143
    :cond_85
    return-void
.end method

.method private blacklist determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;
    .registers 2

    .line 676
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 677
    const/4 p1, 0x0

    return-object p1

    .line 680
    :cond_8
    iget-object p1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto :goto_19

    .line 681
    :cond_17
    sget-object p1, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 680
    :goto_19
    return-object p1
.end method

.method private blacklist drawHighContrastBackground(Landroid/graphics/Canvas;II)V
    .registers 18

    .line 1061
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1062
    return-void

    .line 1065
    :cond_7
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v1, :cond_18

    .line 1066
    :cond_f
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    if-nez v1, :cond_18

    .line 1067
    return-void

    .line 1071
    :cond_18
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 1072
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    .line 1071
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1073
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    iget-object v3, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 1075
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    .line 1073
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1080
    const v1, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v7

    .line 1081
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v8

    .line 1083
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    .line 1084
    iget-object v3, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    .line 1085
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 1086
    invoke-direct {p0, v2}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v1

    if-eqz v1, :cond_58

    move v1, v7

    goto :goto_59

    :cond_58
    move v1, v8

    :goto_59
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1087
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1089
    move/from16 v9, p2

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1090
    move/from16 v11, p3

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    .line 1095
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_80

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v1, :cond_80

    .line 1096
    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    iget-object v5, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v13, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    invoke-virtual {v1, v5, v13, v10, v12}, Landroid/text/SpanColors;->init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V

    .line 1099
    :cond_80
    new-instance v5, Landroid/text/Layout$1;

    move-object v1, p0

    move-object v0, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/text/Layout$1;-><init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V

    move-object v5, v0

    move-object v0, v1

    move v3, v9

    move v1, v10

    move v4, v11

    move v2, v12

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    .line 1207
    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v1, :cond_9a

    .line 1208
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    .line 1210
    :cond_9a
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 13

    .line 3522
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 3523
    if-nez v0, :cond_7

    .line 3524
    return-void

    .line 3526
    :cond_7
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    .line 3527
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result p3

    .line 3529
    invoke-static {p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object p6

    .line 3530
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    .line 3532
    const/4 v3, 0x0

    if-lt v0, v2, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    move v4, v3

    .line 3533
    :goto_1d
    sub-int v5, p1, v1

    sub-int/2addr v5, p3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3534
    sub-int/2addr p2, v1

    sub-int/2addr p2, p3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3536
    nop

    :goto_2b
    if-ge v3, p2, :cond_43

    .line 3538
    if-eqz v4, :cond_36

    if-ge v3, v2, :cond_36

    .line 3539
    invoke-virtual {p6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_39

    .line 3541
    :cond_36
    const v0, 0xfeff

    .line 3544
    :goto_39
    add-int v5, v3, v1

    add-int/2addr v5, p3

    .line 3545
    add-int/2addr v5, p5

    sub-int/2addr v5, p1

    aput-char v0, p4, v5

    .line 3536
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 3547
    :cond_43
    return-void
.end method

.method private blacklist fillHorizontalBoundsForLine(I[F)V
    .registers 19

    .line 1852
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1853
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 1854
    sub-int v14, v6, v5

    .line 1856
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1857
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 1859
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 1860
    nop

    .line 1861
    const/4 v15, 0x0

    if-eqz v9, :cond_3c

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_3c

    .line 1864
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    .line 1865
    invoke-static {v2, v5, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1866
    array-length v3, v2

    if-lez v3, :cond_3c

    .line 1867
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_3d

    .line 1871
    :cond_3c
    move-object v10, v15

    :goto_3d
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 1872
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1873
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 1874
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 1872
    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1875
    if-eqz v1, :cond_63

    array-length v0, v1

    mul-int/lit8 v3, v14, 0x2

    if-ge v0, v3, :cond_61

    goto :goto_63

    :cond_61
    move-object v0, v1

    goto :goto_67

    .line 1876
    :cond_63
    :goto_63
    mul-int/lit8 v14, v14, 0x2

    new-array v0, v14, [F

    .line 1879
    :goto_67
    invoke-virtual {v2, v0, v15}, Landroid/text/TextLine;->measureAllBounds([F[F)V

    .line 1880
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1881
    return-void
.end method

.method private blacklist forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V
    .registers 23

    .line 1952
    move-object/from16 v0, p0

    .line 1953
    const/4 v1, 0x0

    move/from16 v4, p3

    :goto_5
    move/from16 v9, p4

    if-gt v4, v9, :cond_63

    .line 1954
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1955
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1956
    sub-int v3, v2, v10

    .line 1957
    if-eqz v1, :cond_1a

    array-length v5, v1

    mul-int/lit8 v6, v3, 0x2

    if-ge v5, v6, :cond_1e

    .line 1958
    :cond_1a
    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [F

    .line 1960
    :cond_1e
    invoke-direct {v0, v4, v1}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    .line 1962
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1963
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    .line 1964
    invoke-direct {v0, v4, v3, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v11

    .line 1966
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 1967
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    .line 1969
    move/from16 v14, p1

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1970
    move/from16 v15, p2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1971
    nop

    :goto_42
    if-ge v3, v2, :cond_60

    .line 1972
    sub-int v5, v3, v10

    .line 1973
    mul-int/lit8 v5, v5, 0x2

    aget v6, v1, v5

    int-to-float v7, v11

    add-float/2addr v6, v7

    .line 1974
    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    add-float/2addr v7, v5

    .line 1976
    move v5, v6

    int-to-float v6, v12

    int-to-float v8, v13

    move/from16 v16, v2

    move-object/from16 v2, p5

    invoke-interface/range {v2 .. v8}, Landroid/text/Layout$CharacterBoundsListener;->onCharacterBounds(IIFFFF)V

    .line 1971
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto :goto_42

    .line 1953
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1979
    :cond_63
    invoke-interface/range {p5 .. p5}, Landroid/text/Layout$CharacterBoundsListener;->onEnd()V

    .line 1980
    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 5

    .line 256
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result p0

    return p0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .registers 12

    .line 267
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F

    move-result p0

    return p0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4

    .line 244
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result p0

    return p0
.end method

.method public static blacklist getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F
    .registers 15

    .line 280
    nop

    .line 281
    if-eqz p6, :cond_9

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move-object v6, v0

    .line 282
    nop

    .line 283
    nop

    .line 285
    const/4 v0, 0x0

    move v3, p1

    move p1, v0

    move v7, p1

    :goto_11
    if-gt v3, p2, :cond_50

    .line 286
    const/16 v1, 0xa

    invoke-static {p0, v1, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    .line 288
    if-gez v1, :cond_1d

    .line 289
    move v4, p2

    goto :goto_1e

    .line 288
    :cond_1d
    move v4, v1

    .line 292
    :goto_1e
    move-object v2, p0

    move-object v1, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/graphics/RectF;)F

    move-result p0

    .line 293
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixShiftDrawingAmount()Z

    move-result p3

    if-eqz p3, :cond_40

    if-eqz p6, :cond_40

    .line 294
    iget p3, v6, Landroid/graphics/RectF;->left:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 295
    iget p3, v6, Landroid/graphics/RectF;->right:F

    invoke-static {p3, v7}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 296
    sub-float p4, p3, p1

    invoke-static {p4, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    move v7, p3

    .line 298
    :cond_40
    cmpl-float p3, p0, p5

    if-lez p3, :cond_45

    .line 299
    return p5

    .line 302
    :cond_45
    cmpl-float p3, p0, v0

    if-lez p3, :cond_4a

    .line 303
    move v0, p0

    .line 305
    :cond_4a
    add-int/lit8 v3, v4, 0x1

    .line 285
    move-object p3, v1

    move-object p0, v2

    move-object p4, v5

    goto :goto_11

    .line 308
    :cond_50
    return v0
.end method

.method private static blacklist getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 21

    .line 2745
    move-object/from16 v0, p11

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p9, v1

    const/4 v2, -0x1

    if-ltz v1, :cond_bf

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p8, v1

    if-lez v1, :cond_11

    goto/16 :goto_bf

    .line 2753
    :cond_11
    const/4 v1, 0x1

    if-nez p10, :cond_1a

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, p9

    if-gez v3, :cond_22

    :cond_1a
    if-eqz p10, :cond_25

    iget v3, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, p8

    if-gtz v3, :cond_25

    .line 2754
    :cond_22
    add-int/lit8 v3, p7, -0x1

    goto :goto_4e

    .line 2756
    :cond_25
    nop

    .line 2757
    move v4, p6

    move v3, p7

    .line 2759
    :goto_28
    sub-int v5, v3, v4

    if-le v5, v1, :cond_4a

    .line 2760
    add-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    .line 2762
    int-to-float v6, p4

    mul-int/lit8 v7, v5, 0x2

    aget v7, p5, v7

    add-float/2addr v6, v7

    .line 2763
    if-nez p10, :cond_3e

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_46

    :cond_3e
    if-eqz p10, :cond_48

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_48

    .line 2764
    :cond_46
    move v3, v5

    goto :goto_49

    .line 2766
    :cond_48
    move v4, v5

    .line 2768
    :goto_49
    goto :goto_28

    .line 2772
    :cond_4a
    if-eqz p10, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    .line 2779
    :goto_4e
    add-int/2addr v3, p3

    add-int/2addr v3, v1

    .line 2780
    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v3

    .line 2781
    if-ne v3, v2, :cond_57

    .line 2784
    return v2

    .line 2786
    :cond_57
    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v4

    .line 2787
    add-int v5, p3, p6

    if-gt v4, v5, :cond_60

    .line 2790
    return v2

    .line 2794
    :cond_60
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2795
    add-int v6, p3, p7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2797
    new-instance v6, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1, v7, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2800
    :goto_72
    int-to-float p1, p4

    sub-int p2, v4, p3

    sub-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 2801
    xor-int/lit8 v7, p10, 0x1

    add-int/2addr p2, v7

    aget p2, p5, p2

    add-float/2addr p2, p1

    .line 2802
    if-nez p10, :cond_86

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_8e

    :cond_86
    if-eqz p10, :cond_8f

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, p2, v7

    if-lez v7, :cond_8f

    .line 2805
    :cond_8e
    return v2

    .line 2808
    :cond_8f
    sub-int/2addr v3, p3

    mul-int/lit8 v3, v3, 0x2

    .line 2809
    add-int v3, v3, p10

    aget v3, p5, v3

    add-float/2addr p1, v3

    .line 2810
    if-eqz p10, :cond_9b

    move v3, p2

    goto :goto_9c

    :cond_9b
    move v3, p1

    :goto_9c
    iput v3, v6, Landroid/graphics/RectF;->left:F

    .line 2811
    if-eqz p10, :cond_a1

    move p2, p1

    :cond_a1
    iput p2, v6, Landroid/graphics/RectF;->right:F

    .line 2812
    move-object/from16 p1, p12

    invoke-interface {p1, v6, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_ac

    .line 2813
    return v4

    .line 2816
    :cond_ac
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v4

    .line 2817
    if-eq v4, v2, :cond_be

    if-gt v4, v5, :cond_b5

    goto :goto_be

    .line 2822
    :cond_b5
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result p2

    .line 2825
    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2826
    goto :goto_72

    .line 2820
    :cond_be
    :goto_be
    return v2

    .line 2747
    :cond_bf
    :goto_bf
    return v2
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .registers 3

    .line 1753
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p1

    :goto_b
    return p1
.end method

.method private greylist-max-o getHorizontal(IZIZ)F
    .registers 22

    .line 1763
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1764
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 1765
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1766
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 1767
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 1769
    nop

    .line 1770
    if-eqz v9, :cond_39

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_39

    .line 1773
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v5, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1774
    array-length v3, v2

    if-lez v3, :cond_39

    .line 1775
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v3

    goto :goto_3b

    .line 1779
    :cond_39
    const/4 v3, 0x0

    move-object v10, v3

    :goto_3b
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 1780
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1781
    move-object v2, v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 1782
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 1780
    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1783
    sub-int v12, p1, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move/from16 v13, p2

    move-object v11, v2

    invoke-virtual/range {v11 .. v16}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v2

    .line 1784
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1786
    if-eqz p4, :cond_74

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_74

    .line 1787
    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    .line 1789
    :cond_74
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1790
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1792
    invoke-direct {v0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    return v0
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .registers 5

    .line 1757
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1759
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result p1

    return p1
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .registers 14

    .line 702
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 704
    nop

    .line 705
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 707
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 709
    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 710
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_9c

    .line 711
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 712
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 714
    if-eqz v7, :cond_2a

    iget-object v8, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_28

    goto :goto_2a

    :cond_28
    move v8, v6

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v8, v5

    .line 716
    :goto_2b
    if-eqz v8, :cond_57

    .line 717
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v9, Landroid/text/style/ParagraphStyle;

    invoke-interface {v4, v7, v3, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 719
    const-class v9, Landroid/text/style/ParagraphStyle;

    invoke-static {v4, v7, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 721
    array-length v7, v3

    sub-int/2addr v7, v5

    :goto_43
    if-ltz v7, :cond_57

    .line 722
    aget-object v9, v3, v7

    instance-of v9, v9, Landroid/text/style/AlignmentSpan;

    if-eqz v9, :cond_54

    .line 723
    aget-object v0, v3, v7

    check-cast v0, Landroid/text/style/AlignmentSpan;

    invoke-interface {v0}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 724
    goto :goto_57

    .line 721
    :cond_54
    add-int/lit8 v7, v7, -0x1

    goto :goto_43

    .line 729
    :cond_57
    :goto_57
    array-length v7, v3

    .line 730
    nop

    .line 731
    move v9, v6

    :goto_5a
    if-ge v9, v7, :cond_7d

    .line 732
    aget-object v10, v3, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_7a

    .line 733
    aget-object v10, v3, v9

    check-cast v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v10}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v10

    .line 734
    aget-object v11, v3, v9

    invoke-interface {v4, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 735
    add-int/2addr v11, v10

    if-ge p1, v11, :cond_7a

    .line 736
    nop

    .line 737
    move v8, v5

    goto :goto_7d

    .line 731
    :cond_7a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    .line 741
    :cond_7d
    :goto_7d
    move v4, v6

    :goto_7e
    if-ge v6, v7, :cond_9b

    .line 742
    aget-object v9, v3, v6

    instance-of v9, v9, Landroid/text/style/LeadingMarginSpan;

    if-eqz v9, :cond_98

    .line 743
    aget-object v9, v3, v6

    check-cast v9, Landroid/text/style/LeadingMarginSpan;

    .line 744
    const/4 v10, -0x1

    if-ne v2, v10, :cond_93

    .line 745
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int/2addr v1, v9

    goto :goto_98

    .line 747
    :cond_93
    invoke-interface {v9, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v4, v9

    .line 741
    :cond_98
    :goto_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    :cond_9b
    move v6, v4

    .line 754
    :cond_9c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_a8

    .line 755
    if-ne v2, v5, :cond_a5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b5

    :cond_a5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b5

    .line 756
    :cond_a8
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_b4

    .line 757
    if-ne v2, v5, :cond_b1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b5

    :cond_b1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b5

    .line 759
    :cond_b4
    nop

    .line 763
    :goto_b5
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_ca

    .line 764
    if-ne v2, v5, :cond_c2

    .line 765
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    goto :goto_e5

    .line 767
    :cond_c2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    neg-int p1, p1

    goto :goto_e5

    .line 769
    :cond_ca
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v3, :cond_df

    .line 770
    if-ne v2, v5, :cond_d8

    .line 771
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    neg-int p1, p1

    goto :goto_e5

    .line 773
    :cond_d8
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    goto :goto_e5

    .line 776
    :cond_df
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    .line 779
    :goto_e5
    sub-int/2addr v1, v6

    sub-int/2addr v1, p1

    int-to-float p1, v1

    return p1
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 16

    .line 2215
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2216
    if-eqz p3, :cond_b

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p3

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p3

    :goto_f
    move v4, p3

    .line 2217
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 2218
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2219
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2221
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2222
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2223
    iget-object p3, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2224
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2225
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2226
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2227
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v8

    add-int v10, p3, v8

    .line 2228
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2226
    move-object v8, p2

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2229
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 2230
    iget p2, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/text/TextLine;->justify(IF)V

    .line 2232
    :cond_5c
    iget-boolean p1, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p1

    .line 2233
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2234
    return p1
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .registers 15

    .line 2113
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2114
    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result p2

    :goto_f
    move v4, p2

    .line 2116
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 2117
    nop

    .line 2118
    const/4 p2, 0x0

    if-eqz v7, :cond_36

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_36

    .line 2121
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 2122
    array-length v1, v0

    if-lez v1, :cond_36

    .line 2123
    new-instance v1, Landroid/text/Layout$TabStops;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_37

    .line 2126
    :cond_36
    move-object v8, p2

    :goto_37
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2128
    if-nez v6, :cond_3f

    .line 2129
    const/4 p1, 0x0

    return p1

    .line 2131
    :cond_3f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2133
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2134
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2135
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2136
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2137
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2138
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2139
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 2140
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2138
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2141
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2142
    iget v1, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/text/TextLine;->justify(IF)V

    .line 2144
    :cond_81
    iget-boolean p1, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    invoke-virtual {v0, p2, p2, p1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p1

    .line 2145
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2146
    return p1
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .registers 17

    .line 1804
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1805
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1806
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1807
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1808
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1810
    nop

    .line 1811
    const/4 v12, 0x0

    if-eqz v7, :cond_36

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_36

    .line 1814
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v3, v4, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 1815
    array-length v1, v0

    if-lez v1, :cond_36

    .line 1816
    new-instance v1, Landroid/text/Layout$TabStops;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_37

    .line 1820
    :cond_36
    move-object v8, v12

    :goto_37
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1821
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1822
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 1823
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 1821
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1824
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    .line 1825
    const/4 v2, 0x0

    if-nez p3, :cond_67

    .line 1826
    move v5, v2

    :goto_5b
    array-length v6, v1

    if-ge v5, v6, :cond_67

    .line 1827
    aget-boolean v6, v1, v5

    xor-int/lit8 v6, v6, 0x1

    aput-boolean v6, v1, v5

    .line 1826
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 1830
    :cond_67
    invoke-virtual {v0, v1, v12}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v1

    .line 1831
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1833
    if-eqz p2, :cond_85

    .line 1834
    move v0, v2

    :goto_71
    array-length v5, v1

    if-ge v0, v5, :cond_85

    .line 1835
    aget v5, v1, v0

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_82

    .line 1836
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    aput v5, v1, v0

    .line 1834
    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 1840
    :cond_85
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    .line 1841
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    .line 1843
    invoke-direct {p0, p1, v0, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result p1

    .line 1844
    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [F

    .line 1845
    nop

    :goto_97
    if-ge v2, v4, :cond_a2

    .line 1846
    int-to-float v3, p1

    aget v5, v1, v2

    add-float/2addr v3, v5

    aput v3, v0, v2

    .line 1845
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 1848
    :cond_a2
    return-object v0
.end method

.method private greylist-max-o getLineStartPos(III)I
    .registers 11

    .line 1249
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1250
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1252
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_15

    .line 1253
    if-ne v1, v3, :cond_12

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_20

    :cond_12
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_20

    .line 1254
    :cond_15
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_20

    .line 1255
    if-ne v1, v3, :cond_1e

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_20

    :cond_1e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1259
    :cond_20
    :goto_20
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_37

    .line 1260
    if-ne v1, v3, :cond_2e

    .line 1261
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_93

    .line 1263
    :cond_2e
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    add-int p2, p3, p1

    goto :goto_93

    .line 1266
    :cond_37
    nop

    .line 1267
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_67

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1268
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .line 1269
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1270
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 1272
    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1274
    array-length v4, v2

    if-lez v4, :cond_67

    .line 1275
    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_68

    .line 1278
    :cond_67
    const/4 v4, 0x0

    :goto_68
    const/4 v2, 0x0

    invoke-direct {p0, p1, v4, v2}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v2

    float-to-int v2, v2

    .line 1279
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_87

    .line 1280
    if-ne v1, v3, :cond_7e

    .line 1281
    sub-int/2addr p3, v2

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    add-int p2, p3, p1

    goto :goto_93

    .line 1284
    :cond_7e
    sub-int/2addr p2, v2

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_93

    .line 1287
    :cond_87
    and-int/lit8 v0, v2, -0x2

    .line 1288
    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, p3}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result p1

    add-int/2addr p1, v3

    shr-int/2addr p2, p1

    .line 1291
    :goto_93
    return p2
.end method

.method private blacklist getLineVisibleEnd(IIIZ)I
    .registers 7

    .line 2847
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2852
    if-eqz p4, :cond_d

    .line 2853
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p1, p4, :cond_d

    .line 2854
    return p3

    .line 2858
    :cond_d
    :goto_d
    if-le p3, p2, :cond_24

    .line 2859
    add-int/lit8 p1, p3, -0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    .line 2861
    const/16 v1, 0xa

    if-ne p4, v1, :cond_1a

    .line 2862
    return p1

    .line 2865
    :cond_1a
    invoke-static {p4}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result p1

    if-nez p1, :cond_21

    .line 2866
    goto :goto_24

    .line 2858
    :cond_21
    add-int/lit8 p3, p3, -0x1

    goto :goto_d

    .line 2871
    :cond_24
    :goto_24
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .registers 7

    .line 2988
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2989
    return v0

    .line 2991
    :cond_4
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2992
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2994
    const v3, 0xdc00

    if-lt v2, v3, :cond_26

    const v3, 0xdfff

    if-gt v2, v3, :cond_26

    .line 2995
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2997
    const v3, 0xd800

    if-lt v2, v3, :cond_26

    const v3, 0xdbff

    if-gt v2, v3, :cond_26

    .line 2998
    add-int/lit8 p1, p1, -0x1

    .line 3001
    :cond_26
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_4c

    .line 3002
    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 3005
    nop

    :goto_35
    array-length v3, v2

    if-ge v0, v3, :cond_4c

    .line 3006
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3007
    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 3009
    if-ge v3, p1, :cond_49

    if-le v4, p1, :cond_49

    .line 3010
    move p1, v3

    .line 3005
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 3014
    :cond_4c
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .registers 16

    .line 2932
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2933
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 2934
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 2935
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    .line 2937
    nop

    .line 2938
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_18

    move v4, v5

    goto :goto_19

    :cond_18
    move v4, v6

    :goto_19
    if-ne p2, v4, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v6

    .line 2940
    :goto_1e
    if-eqz v4, :cond_2e

    .line 2941
    if-ne p1, v2, :cond_37

    .line 2942
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_2d

    .line 2943
    nop

    .line 2944
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 2946
    :cond_2d
    return p1

    .line 2950
    :cond_2e
    if-ne p1, v1, :cond_37

    .line 2951
    if-lez v0, :cond_36

    .line 2952
    nop

    .line 2953
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 2955
    :cond_36
    return p1

    .line 2960
    :cond_37
    move v5, v6

    :goto_38
    if-eqz v5, :cond_53

    .line 2961
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 2962
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 2963
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 2964
    if-eq v4, v3, :cond_4f

    .line 2968
    nop

    .line 2969
    xor-int/lit8 p2, p2, 0x1

    move v5, v2

    move v6, v4

    move v4, v1

    goto :goto_56

    .line 2964
    :cond_4f
    move v4, v1

    move v5, v2

    move v6, v3

    goto :goto_56

    .line 2960
    :cond_53
    move v4, v1

    move v5, v2

    move v6, v3

    .line 2973
    :goto_56
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 2975
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 2977
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2978
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v8

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    add-int v11, v8, v0

    .line 2979
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v12

    .line 2977
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2980
    sub-int/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    add-int/2addr v4, p1

    .line 2981
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2982
    return v4
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .registers 10

    .line 3279
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3280
    return v1

    .line 3282
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 3284
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 3285
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 3286
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 3288
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/LeadingMarginSpan;

    .line 3290
    array-length v4, v3

    if-nez v4, :cond_24

    .line 3291
    return v1

    .line 3294
    :cond_24
    nop

    .line 3296
    const/4 v4, 0x1

    if-eqz v2, :cond_34

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_32

    goto :goto_34

    :cond_32
    move v2, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v2, v4

    .line 3297
    :goto_35
    move v5, v1

    :goto_36
    array-length v6, v3

    if-ge v5, v6, :cond_5b

    .line 3298
    aget-object v6, v3, v5

    instance-of v6, v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v6, :cond_58

    .line 3299
    aget-object v6, v3, v5

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 3300
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 3301
    aget-object v7, v3, v5

    check-cast v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v7}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v7

    .line 3303
    add-int/2addr v6, v7

    if-ge p1, v6, :cond_56

    move v6, v4

    goto :goto_57

    :cond_56
    move v6, v1

    :goto_57
    or-int/2addr v2, v6

    .line 3297
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 3306
    :cond_5b
    move p1, v1

    :goto_5c
    array-length v0, v3

    if-ge v1, v0, :cond_69

    .line 3307
    aget-object v0, v3, v1

    .line 3308
    invoke-interface {v0, v2}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    add-int/2addr p1, v0

    .line 3306
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 3311
    :cond_69
    return p1
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3509
    if-ne p1, p2, :cond_9

    if-lez p1, :cond_9

    .line 3510
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3513
    :cond_9
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_15

    .line 3514
    check-cast p0, Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3516
    :cond_15
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 21

    .line 2628
    move-object/from16 v0, p11

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p9, v1

    const/4 v2, -0x1

    if-ltz v1, :cond_be

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p8, v1

    if-lez v1, :cond_11

    goto/16 :goto_be

    .line 2636
    :cond_11
    const/4 v1, 0x1

    if-nez p10, :cond_1a

    iget v3, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, p8

    if-lez v3, :cond_22

    :cond_1a
    if-eqz p10, :cond_24

    iget v3, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, p9

    if-ltz v3, :cond_24

    .line 2637
    :cond_22
    move v3, p6

    goto :goto_4d

    .line 2639
    :cond_24
    nop

    .line 2640
    move v4, p6

    move v3, p7

    .line 2642
    :goto_27
    sub-int v5, v3, v4

    if-le v5, v1, :cond_49

    .line 2643
    add-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    .line 2645
    int-to-float v6, p4

    mul-int/lit8 v7, v5, 0x2

    aget v7, p5, v7

    add-float/2addr v6, v7

    .line 2646
    if-nez p10, :cond_3d

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_45

    :cond_3d
    if-eqz p10, :cond_47

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_47

    .line 2647
    :cond_45
    move v3, v5

    goto :goto_48

    .line 2649
    :cond_47
    move v4, v5

    .line 2651
    :goto_48
    goto :goto_27

    .line 2655
    :cond_49
    if-eqz p10, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v4

    .line 2661
    :goto_4d
    add-int/2addr v3, p3

    .line 2662
    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v3

    .line 2663
    if-ne v3, v2, :cond_55

    .line 2666
    return v2

    .line 2668
    :cond_55
    invoke-virtual {v0, v3}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v4

    .line 2669
    add-int v5, p3, p7

    if-lt v4, v5, :cond_5e

    .line 2672
    return v2

    .line 2676
    :cond_5e
    add-int v6, p3, p6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2677
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2679
    new-instance v6, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1, v7, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2682
    :goto_70
    int-to-float p1, p4

    sub-int p2, v4, p3

    mul-int/lit8 p2, p2, 0x2

    .line 2683
    add-int p2, p2, p10

    aget p2, p5, p2

    add-float/2addr p2, p1

    .line 2684
    if-nez p10, :cond_82

    iget v7, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v7, p2, v7

    if-gtz v7, :cond_8a

    :cond_82
    if-eqz p10, :cond_8b

    iget v7, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v7, p2, v7

    if-gez v7, :cond_8b

    .line 2687
    :cond_8a
    return v2

    .line 2690
    :cond_8b
    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    .line 2691
    xor-int/lit8 v7, p10, 0x1

    add-int/2addr v3, v7

    aget v3, p5, v3

    add-float/2addr p1, v3

    .line 2692
    if-eqz p10, :cond_99

    move v3, p1

    goto :goto_9a

    :cond_99
    move v3, p2

    :goto_9a
    iput v3, v6, Landroid/graphics/RectF;->left:F

    .line 2693
    if-eqz p10, :cond_9f

    goto :goto_a0

    :cond_9f
    move p2, p1

    :goto_a0
    iput p2, v6, Landroid/graphics/RectF;->right:F

    .line 2694
    move-object/from16 p1, p12

    invoke-interface {p1, v6, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-eqz p2, :cond_ab

    .line 2695
    return v4

    .line 2698
    :cond_ab
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v4

    .line 2699
    if-eq v4, v2, :cond_bd

    if-lt v4, v5, :cond_b4

    goto :goto_bd

    .line 2704
    :cond_b4
    invoke-virtual {v0, v4}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result p2

    .line 2707
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2708
    goto :goto_70

    .line 2702
    :cond_bd
    :goto_bd
    return v2

    .line 2630
    :cond_be
    :goto_be
    return v2
.end method

.method private blacklist getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I
    .registers 24

    .line 2540
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2541
    const/4 v3, 0x0

    move v4, v2

    invoke-virtual {v0, v1, v3}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    .line 2543
    move v5, v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2544
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 2545
    const/4 v13, -0x1

    if-ne v3, v6, :cond_1b

    .line 2546
    return v13

    .line 2549
    :cond_1b
    sub-int v14, v6, v3

    mul-int/lit8 v6, v14, 0x2

    new-array v6, v6, [F

    .line 2550
    invoke-direct {v0, v1, v6}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    .line 2552
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v8

    invoke-direct {v0, v1, v7, v8}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v7

    .line 2555
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    .line 2556
    const/16 v16, 0x1

    if-eqz p5, :cond_3a

    move v0, v5

    goto :goto_40

    :cond_3a
    invoke-virtual {v15}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2557
    :goto_40
    if-eqz p5, :cond_48

    invoke-virtual {v15}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v1

    if-lt v0, v1, :cond_4c

    :cond_48
    if-nez p5, :cond_bd

    if-ltz v0, :cond_bd

    .line 2559
    :cond_4c
    move-object v5, v6

    invoke-virtual {v15, v0}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v6

    .line 2560
    nop

    .line 2561
    invoke-virtual {v15, v0}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v6

    .line 2560
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2563
    invoke-virtual {v15, v0}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v10

    .line 2564
    int-to-float v8, v7

    .line 2565
    if-eqz v10, :cond_69

    .line 2566
    add-int/lit8 v9, v1, -0x1

    mul-int/lit8 v9, v9, 0x2

    aget v9, v5, v9

    goto :goto_6d

    .line 2567
    :cond_69
    mul-int/lit8 v9, v6, 0x2

    aget v9, v5, v9

    :goto_6d
    add-float/2addr v9, v8

    .line 2568
    nop

    .line 2569
    if-eqz v10, :cond_78

    .line 2570
    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    goto :goto_80

    .line 2571
    :cond_78
    add-int/lit8 v11, v1, -0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    :goto_80
    add-float/2addr v8, v11

    .line 2574
    if-eqz p5, :cond_97

    .line 2575
    move v11, v7

    move v7, v1

    move v1, v4

    move v4, v11

    move v11, v9

    move v9, v8

    move v8, v11

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v17, v0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v12}, Landroid/text/Layout;->getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v6

    goto :goto_ae

    .line 2580
    :cond_97
    move/from16 v17, v7

    move v7, v1

    move v1, v4

    move/from16 v4, v17

    move/from16 v17, v9

    move v9, v8

    move/from16 v8, v17

    move/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v0 .. v12}, Landroid/text/Layout;->getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v6

    .line 2585
    :goto_ae
    if-ltz v6, :cond_b1

    .line 2586
    return v6

    .line 2589
    :cond_b1
    if-eqz p5, :cond_b6

    move/from16 v0, v16

    goto :goto_b7

    :cond_b6
    move v0, v13

    :goto_b7
    add-int v0, v17, v0

    .line 2590
    move v7, v4

    move-object v6, v5

    move v4, v1

    goto :goto_40

    .line 2591
    :cond_bd
    return v13
.end method

.method private blacklist initSpanColors()V
    .registers 2

    .line 423
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 424
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v0, :cond_16

    .line 425
    new-instance v0, Landroid/text/SpanColors;

    invoke-direct {v0}, Landroid/text/SpanColors;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    goto :goto_1f

    .line 427
    :cond_16
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    goto :goto_1f

    .line 430
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    .line 432
    :goto_1f
    return-void
.end method

.method private blacklist isHighContrastTextDark(I)Z
    .registers 6

    .line 689
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 690
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 691
    const/4 p1, 0x0

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    return p1
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .registers 5

    .line 696
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 697
    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 698
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1f

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1f

    move v1, v2

    :cond_1f
    return v1
.end method

.method static synthetic blacklist lambda$fillCharacterBounds$2(II[FIIFFFF)V
    .registers 9

    .line 1927
    sub-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p0, p3

    .line 1928
    aput p5, p2, p0

    .line 1929
    add-int/lit8 p1, p0, 0x1

    aput p6, p2, p1

    .line 1930
    add-int/lit8 p1, p0, 0x2

    aput p7, p2, p1

    .line 1931
    add-int/lit8 p0, p0, 0x3

    aput p8, p2, p0

    .line 1932
    return-void
.end method

.method static synthetic blacklist lambda$getSelectionPath$3(Landroid/graphics/Path;FFFFI)V
    .registers 6

    .line 3154
    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 3

    .line 224
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 2

    .line 232
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method private static blacklist measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/graphics/RectF;)F
    .registers 23

    .line 3316
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v0, p5

    .line 3317
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 3318
    if-eqz v0, :cond_11

    .line 3319
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 3322
    :cond_11
    const/4 v13, 0x0

    move-object/from16 v2, p4

    :try_start_14
    invoke-static {v3, v4, v5, v2, v13}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v14
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_ba

    .line 3323
    :try_start_18
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    .line 3324
    array-length v6, v2

    .line 3325
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v6}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 3326
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v8

    .line 3327
    nop

    .line 3328
    nop

    .line 3330
    nop

    .line 3331
    instance-of v9, v3, Landroid/text/Spanned;

    const/4 v10, 0x1

    if-eqz v9, :cond_4e

    .line 3332
    move-object v9, v3

    check-cast v9, Landroid/text/Spanned;

    .line 3333
    const-class v11, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v9, v4, v5, v11}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/LeadingMarginSpan;

    .line 3335
    array-length v11, v9

    move v12, v15

    move/from16 v16, v12

    :goto_3d
    if-ge v12, v11, :cond_4b

    aget-object v15, v9, v12

    .line 3336
    invoke-interface {v15, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v15

    add-int v16, v16, v15

    .line 3335
    add-int/lit8 v12, v12, 0x1

    const/4 v15, 0x0

    goto :goto_3d

    :cond_4b
    move/from16 v15, v16

    goto :goto_4f

    .line 3331
    :cond_4e
    const/4 v15, 0x0

    .line 3339
    :goto_4f
    const/4 v9, 0x0

    :goto_50
    if-ge v9, v6, :cond_85

    .line 3340
    aget-char v11, v2, v9

    const/16 v12, 0x9

    if-ne v11, v12, :cond_82

    .line 3341
    nop

    .line 3342
    instance-of v2, v3, Landroid/text/Spanned;

    if-eqz v2, :cond_7e

    .line 3343
    move-object v2, v3

    check-cast v2, Landroid/text/Spanned;

    .line 3344
    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 3346
    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v6, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 3348
    array-length v6, v2

    if-lez v6, :cond_79

    .line 3349
    new-instance v6, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v6, v9, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_7a

    .line 3348
    :cond_79
    move-object v6, v13

    .line 3351
    :goto_7a
    move-object v9, v6

    move v6, v8

    move v8, v10

    goto :goto_88

    .line 3342
    :cond_7e
    move v6, v8

    move v8, v10

    move-object v9, v13

    goto :goto_88

    .line 3339
    :cond_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    :cond_85
    move v6, v8

    move-object v9, v13

    const/4 v8, 0x0

    .line 3355
    :goto_88
    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v10

    const/4 v10, 0x0

    move/from16 v16, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 3358
    if-eqz v0, :cond_98

    move/from16 v2, v16

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {v1, v13, v0, v2, v13}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v2

    .line 3359
    if-eqz v0, :cond_a8

    .line 3360
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_a8

    .line 3361
    neg-float v4, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 3364
    :cond_a8
    int-to-float v0, v15

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_ad
    .catchall {:try_start_18 .. :try_end_ad} :catchall_b7

    add-float/2addr v0, v2

    .line 3366
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 3367
    if-eqz v14, :cond_b6

    .line 3368
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 3364
    :cond_b6
    return v0

    .line 3366
    :catchall_b7
    move-exception v0

    move-object v13, v14

    goto :goto_bb

    :catchall_ba
    move-exception v0

    :goto_bb
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 3367
    if-eqz v13, :cond_c3

    .line 3368
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 3370
    :cond_c3
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 8

    .line 3452
    nop

    .line 3453
    nop

    .line 3455
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_3e

    .line 3456
    const/4 v0, 0x0

    if-nez p4, :cond_13

    .line 3457
    check-cast p0, Landroid/text/Spanned;

    const-class p4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, p4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 3458
    const/4 p0, 0x1

    goto :goto_14

    .line 3456
    :cond_13
    move p0, v0

    .line 3461
    :goto_14
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    move p2, p1

    :goto_18
    array-length v1, p4

    if-ge v0, v1, :cond_39

    .line 3462
    if-nez p0, :cond_24

    .line 3463
    aget-object v1, p4, v0

    instance-of v1, v1, Landroid/text/style/TabStopSpan;

    if-nez v1, :cond_24

    .line 3464
    goto :goto_36

    .line 3467
    :cond_24
    aget-object v1, p4, v0

    check-cast v1, Landroid/text/style/TabStopSpan;

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    .line 3469
    int-to-float v1, v1

    cmpg-float v2, v1, p2

    if-gez v2, :cond_36

    cmpl-float v2, v1, p3

    if-lez v2, :cond_36

    .line 3470
    move p2, v1

    .line 3461
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 3473
    :cond_39
    cmpl-float p0, p2, p1

    if-eqz p0, :cond_3e

    .line 3474
    return p2

    .line 3477
    :cond_3e
    const/high16 p0, 0x41a00000    # 20.0f

    add-float/2addr p3, p0

    div-float/2addr p3, p0

    float-to-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1
.end method

.method private static blacklist setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 3

    .line 556
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 557
    :cond_4
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 558
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 560
    const/16 p0, -0x100

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    return-object p2
.end method

.method private static blacklist shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z
    .registers 2

    .line 552
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 24

    .line 1344
    move-object/from16 v0, p0

    .line 1345
    nop

    .line 1346
    nop

    .line 1347
    nop

    .line 1348
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1349
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 1350
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v15, v4

    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_102

    .line 1351
    invoke-virtual {v13}, Landroid/graphics/RectF;->setEmpty()V

    .line 1352
    move v6, v4

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1353
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v7

    .line 1355
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 1356
    nop

    .line 1357
    if-eqz v8, :cond_49

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_49

    .line 1360
    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/TabStopSpan;

    invoke-static {v10, v4, v7, v11}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/TabStopSpan;

    .line 1362
    array-length v11, v10

    if-lez v11, :cond_49

    .line 1363
    new-instance v11, Landroid/text/Layout$TabStops;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-direct {v11, v12, v10}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_4a

    .line 1366
    :cond_49
    const/4 v11, 0x0

    :goto_4a
    move v10, v7

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1368
    if-nez v7, :cond_57

    .line 1369
    move v14, v5

    move v4, v6

    move v5, v2

    const/4 v2, 0x0

    goto/16 :goto_fc

    .line 1371
    :cond_57
    move v12, v6

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1373
    move/from16 v16, v2

    iget-object v2, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1374
    iget-object v9, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1375
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1376
    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1377
    move v9, v3

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1378
    move/from16 v17, v10

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v19

    add-int v18, v18, v19

    .line 1379
    move/from16 v19, v12

    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v12

    .line 1377
    move v14, v5

    move/from16 v21, v9

    move-object v9, v11

    move/from16 v20, v16

    move/from16 v5, v17

    move/from16 v11, v18

    move/from16 v22, v19

    move/from16 v16, v15

    const/4 v15, 0x0

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1380
    invoke-direct {v0, v14}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1381
    iget v2, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {v0, v14}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/text/TextLine;->justify(IF)V

    .line 1383
    :cond_ad
    const/4 v2, 0x0

    invoke-virtual {v1, v15, v13, v2, v15}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    .line 1385
    iget v3, v13, Landroid/graphics/RectF;->left:F

    .line 1386
    iget v4, v13, Landroid/graphics/RectF;->right:F

    .line 1387
    iget v5, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 1388
    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1389
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_d8

    .line 1390
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 1391
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 1394
    :cond_d8
    if-nez v14, :cond_e1

    .line 1395
    nop

    .line 1396
    nop

    .line 1397
    nop

    .line 1398
    move v15, v3

    move v3, v4

    move v4, v6

    goto :goto_fc

    .line 1400
    :cond_e1
    move/from16 v7, v16

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1401
    move/from16 v9, v21

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1402
    move/from16 v8, v20

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1403
    move/from16 v12, v22

    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v15, v3

    move v3, v4

    move v4, v6

    .line 1350
    :goto_fc
    add-int/lit8 v6, v14, 0x1

    move v2, v5

    move v5, v6

    goto/16 :goto_13

    .line 1406
    :cond_102
    move v8, v2

    move v9, v3

    move v12, v4

    move v7, v15

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1407
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7, v8, v9, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 462
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Path;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 463
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 12

    .line 480
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 481
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 512
    nop

    .line 513
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixShiftDrawingAmount()Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_22

    iget-boolean v2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    if-eqz v2, :cond_22

    .line 515
    invoke-virtual {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v2

    .line 516
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_22

    .line 517
    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    .line 518
    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move v10, v2

    goto :goto_23

    .line 522
    :cond_22
    move v10, v9

    :goto_23
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v2

    .line 523
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 524
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 525
    if-gez v8, :cond_32

    return-void

    .line 527
    :cond_32
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 528
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    goto :goto_48

    .line 530
    :cond_3c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 534
    :goto_48
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 539
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 540
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 544
    :cond_5d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixShiftDrawingAmount()Z

    move-result v0

    if-nez v0, :cond_6b

    cmpl-float v0, v10, v9

    if-eqz v0, :cond_6b

    .line 547
    neg-float v0, v10

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 549
    :cond_6b
    return-void
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;)V
    .registers 5

    .line 596
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 597
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 598
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    .line 599
    if-gez v0, :cond_f

    return-void

    .line 600
    :cond_f
    invoke-virtual {p0, p1, v2, v0}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 601
    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;II)V
    .registers 23

    .line 986
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V

    .line 992
    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_d5

    .line 993
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_18

    .line 994
    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 997
    :cond_18
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v11, v2

    check-cast v11, Landroid/text/Spanned;

    .line 998
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 999
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v15, 0x0

    invoke-virtual {v3, v11, v15, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1001
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_d0

    .line 1002
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 1003
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1004
    sget-object v5, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 1005
    nop

    .line 1006
    move-object v6, v5

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 1007
    nop

    .line 1008
    iget v7, v0, Landroid/text/Layout;->mWidth:I

    .line 1009
    move v14, v1

    move v8, v3

    move v12, v4

    move v1, v15

    move v3, v1

    :goto_43
    move/from16 v4, p3

    if-gt v14, v4, :cond_d0

    .line 1010
    nop

    .line 1011
    add-int/lit8 v9, v14, 0x1

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1012
    nop

    .line 1014
    nop

    .line 1015
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 1016
    nop

    .line 1017
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v16

    sub-int v16, v10, v16

    .line 1019
    if-lt v13, v1, :cond_a2

    .line 1022
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v12, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    .line 1024
    nop

    .line 1026
    if-ne v12, v13, :cond_6c

    if-nez v12, :cond_69

    goto :goto_6c

    :cond_69
    move-object/from16 v17, v6

    goto :goto_a5

    .line 1029
    :cond_6c
    :goto_6c
    move v3, v15

    :goto_6d
    move/from16 p2, v1

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v15, v1, :cond_9c

    .line 1032
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v15

    if-ge v1, v13, :cond_97

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v15

    if-gt v1, v12, :cond_86

    .line 1033
    goto :goto_97

    .line 1034
    :cond_86
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v15

    invoke-static {v6, v3, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    .line 1036
    add-int/lit8 v3, v3, 0x1

    move-object v6, v1

    .line 1029
    :cond_97
    :goto_97
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p2

    goto :goto_6d

    :cond_9c
    move/from16 v1, p2

    move v15, v3

    move-object/from16 v17, v6

    goto :goto_a5

    .line 1019
    :cond_a2
    move v15, v3

    move-object/from16 v17, v6

    .line 1041
    :goto_a5
    const/4 v3, 0x0

    :goto_a6
    if-ge v3, v15, :cond_c4

    .line 1042
    aget-object v6, v17, v3

    check-cast v6, Landroid/text/style/LineBackgroundSpan;

    .line 1043
    move/from16 v18, v3

    move-object v3, v6

    const/4 v6, 0x0

    move/from16 v4, v16

    move/from16 v16, v9

    move v9, v4

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 1041
    add-int/lit8 v3, v18, 0x1

    move/from16 v4, v16

    move/from16 v16, v9

    move v9, v4

    move/from16 v4, p3

    goto :goto_a6

    .line 1009
    :cond_c4
    move/from16 v16, v9

    move v8, v10

    move v12, v13

    move v3, v15

    move/from16 v14, v16

    move-object/from16 v6, v17

    const/4 v15, 0x0

    goto/16 :goto_43

    .line 1049
    :cond_d0
    iget-object v0, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v0}, Landroid/text/SpanSet;->recycle()V

    .line 1051
    :cond_d5
    return-void
.end method

.method public blacklist drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    .line 632
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 633
    return-void

    .line 635
    :cond_5
    const/4 p7, 0x0

    if-eqz p6, :cond_c

    int-to-float p8, p6

    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 637
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Landroid/text/Layout;->determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;

    move-result-object p8

    .line 638
    if-eqz p2, :cond_55

    .line 639
    if-eqz p3, :cond_4d

    .line 643
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 648
    const/4 v0, 0x0

    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 649
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 650
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 651
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 652
    iget-object v3, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {v2, p8, v3}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    .line 656
    :cond_3d
    if-eqz v1, :cond_42

    .line 657
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 648
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 644
    :cond_45
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "The highlight path size is different from the size of highlight paints"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 640
    :cond_4d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "if highlight is specified, highlightPaint must be specified."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 662
    :cond_55
    if-eqz p4, :cond_66

    .line 663
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 664
    iget-object p2, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {p5, p8, p2}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p5

    .line 667
    :cond_63
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_66
    .catchall {:try_start_c .. :try_end_66} :catchall_6e

    .line 670
    :cond_66
    if-eqz p6, :cond_6d

    neg-int p2, p6

    int-to-float p2, p2

    invoke-virtual {p1, p7, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 672
    :cond_6d
    return-void

    .line 670
    :catchall_6e
    move-exception p2

    if-eqz p6, :cond_76

    neg-int p3, p6

    int-to-float p3, p3

    invoke-virtual {p1, p7, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 671
    :cond_76
    throw p2
.end method

.method public whitelist drawText(Landroid/graphics/Canvas;)V
    .registers 5

    .line 576
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 577
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 578
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v0

    .line 579
    if-gez v0, :cond_f

    return-void

    .line 580
    :cond_f
    invoke-virtual {p0, p1, v2, v0}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 581
    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .registers 5

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;IILjava/util/function/BiConsumer;)V

    .line 788
    return-void
.end method

.method public blacklist drawText(Landroid/graphics/Canvas;IILjava/util/function/BiConsumer;)V
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "II",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 797
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 798
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 799
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 800
    nop

    .line 801
    iget-object v9, v12, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 802
    iget-object v3, v12, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 803
    iget-object v8, v12, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 805
    iget-object v3, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 806
    nop

    .line 807
    nop

    .line 809
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    .line 811
    nop

    .line 812
    nop

    .line 813
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->fixShiftDrawingAmount()Z

    move-result v4

    if-eqz v4, :cond_57

    iget-boolean v4, v12, Landroid/text/Layout;->mUseBoundsForWidth:Z

    if-eqz v4, :cond_57

    iget-boolean v4, v12, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    if-eqz v4, :cond_57

    .line 815
    invoke-virtual {v12}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v4

    .line 816
    iget v6, v4, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    .line 817
    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v10, v12, Landroid/text/Layout;->mWidth:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    move/from16 v27, v4

    move/from16 v28, v6

    goto :goto_5b

    .line 822
    :cond_57
    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_5b
    const/4 v4, 0x0

    move/from16 v18, v0

    move v0, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_61
    move/from16 v10, p3

    if-gt v0, v10, :cond_369

    .line 823
    nop

    .line 824
    add-int/lit8 v11, v0, 0x1

    move-object/from16 v16, v15

    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    .line 825
    invoke-direct {v12, v0}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v29

    .line 826
    const/4 v14, 0x1

    invoke-direct {v12, v0, v1, v15, v14}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v19

    .line 828
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 829
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 831
    nop

    .line 832
    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 833
    nop

    .line 834
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v5, v20, v5

    .line 836
    move-object/from16 v21, v4

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 837
    nop

    .line 838
    move/from16 v22, v14

    iget v14, v12, Landroid/text/Layout;->mWidth:I

    .line 840
    move-object/from16 v23, v2

    iget-boolean v2, v12, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_200

    .line 841
    move-object v2, v8

    check-cast v2, Landroid/text/Spanned;

    .line 842
    move-object/from16 v24, v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 843
    if-eqz v1, :cond_bf

    move/from16 v25, v5

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move/from16 v26, v7

    const/16 v7, 0xa

    if-ne v5, v7, :cond_bc

    goto :goto_c3

    :cond_bc
    move v5, v11

    const/4 v11, 0x0

    goto :goto_c6

    :cond_bf
    move/from16 v25, v5

    move/from16 v26, v7

    :goto_c3
    move v5, v11

    move/from16 v11, v22

    .line 855
    :goto_c6
    if-lt v1, v6, :cond_104

    if-eq v0, v13, :cond_d0

    if-eqz v11, :cond_cd

    goto :goto_d0

    :cond_cd
    move/from16 v30, v1

    goto :goto_106

    .line 856
    :cond_d0
    :goto_d0
    const-class v6, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v1, v3, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 858
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-static {v2, v1, v6, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 860
    iget-object v7, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 861
    move/from16 v30, v1

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_e5
    if-ltz v1, :cond_fb

    .line 862
    move/from16 v23, v1

    aget-object v1, v3, v23

    instance-of v1, v1, Landroid/text/style/AlignmentSpan;

    if-eqz v1, :cond_f8

    .line 863
    aget-object v1, v3, v23

    check-cast v1, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 864
    goto :goto_fc

    .line 861
    :cond_f8
    add-int/lit8 v1, v23, -0x1

    goto :goto_e5

    :cond_fb
    move-object v1, v7

    .line 868
    :goto_fc
    move-object/from16 v24, v1

    move-object v1, v3

    const/16 v26, 0x0

    move/from16 v23, v6

    goto :goto_10a

    .line 855
    :cond_104
    move/from16 v30, v1

    .line 873
    :goto_106
    move-object/from16 v1, v23

    move/from16 v23, v6

    :goto_10a
    array-length v3, v1

    .line 874
    nop

    .line 875
    const/4 v6, 0x0

    :goto_10d
    if-ge v6, v3, :cond_137

    .line 876
    aget-object v7, v1, v6

    instance-of v7, v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v7, :cond_130

    .line 877
    aget-object v7, v1, v6

    check-cast v7, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v7}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v7

    .line 878
    move-object/from16 v31, v1

    aget-object v1, v31, v6

    invoke-interface {v2, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 881
    add-int/2addr v1, v7

    if-ge v0, v1, :cond_132

    .line 882
    nop

    .line 883
    move/from16 v1, v22

    goto :goto_13a

    .line 876
    :cond_130
    move-object/from16 v31, v1

    .line 875
    :cond_132
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v31

    goto :goto_10d

    :cond_137
    move-object/from16 v31, v1

    move v1, v11

    .line 887
    :goto_13a
    const/4 v2, 0x0

    const/16 v32, 0x0

    :goto_13d
    if-ge v2, v3, :cond_1dc

    .line 888
    aget-object v6, v31, v2

    instance-of v6, v6, Landroid/text/style/LeadingMarginSpan;

    if-eqz v6, :cond_1a2

    .line 889
    aget-object v6, v31, v2

    check-cast v6, Landroid/text/style/LeadingMarginSpan;

    .line 890
    const/4 v7, -0x1

    if-ne v4, v7, :cond_177

    .line 891
    move v13, v1

    move/from16 v10, v19

    move/from16 v7, v20

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move/from16 v19, v2

    move-object v2, v9

    move/from16 v9, v30

    move/from16 v30, v5

    move/from16 v5, v18

    move/from16 v18, v3

    move v3, v14

    move v14, v0

    move-object v0, v6

    move/from16 v6, v25

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 894
    move/from16 v20, v3

    invoke-interface {v0, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v0, v20, v0

    move-object/from16 v12, p0

    move/from16 v20, v0

    move v1, v6

    move v0, v7

    goto :goto_1bc

    .line 896
    :cond_177
    move v13, v1

    move/from16 v10, v19

    move/from16 v7, v20

    const/16 v17, 0x0

    move/from16 v19, v2

    move-object v2, v9

    move/from16 v20, v14

    move/from16 v9, v30

    move v14, v0

    move/from16 v30, v5

    move-object v0, v6

    move/from16 v5, v18

    move/from16 v6, v25

    move/from16 v18, v3

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v3, v32

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 899
    move v1, v6

    move-object v6, v0

    move v0, v7

    invoke-interface {v6, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v32, v3, v6

    goto :goto_1bc

    .line 888
    :cond_1a2
    move v10, v14

    move v14, v0

    move/from16 v0, v20

    move/from16 v20, v10

    move v13, v1

    move/from16 v10, v19

    move/from16 v1, v25

    const/16 v17, 0x0

    move/from16 v19, v2

    move-object v2, v9

    move/from16 v9, v30

    move/from16 v30, v5

    move/from16 v5, v18

    move/from16 v18, v3

    move/from16 v3, v32

    .line 887
    :goto_1bc
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v20

    move/from16 v20, v0

    move v0, v14

    move/from16 v14, v19

    move/from16 v19, v9

    move-object v9, v2

    move v2, v3

    move/from16 v3, v18

    move/from16 v18, v5

    move/from16 v5, v30

    move/from16 v30, v19

    move/from16 v25, v1

    move/from16 v19, v10

    move v1, v13

    move/from16 v13, p2

    move/from16 v10, p3

    goto/16 :goto_13d

    :cond_1dc
    move v1, v14

    move v14, v0

    move/from16 v0, v20

    move/from16 v20, v1

    move-object v2, v9

    move/from16 v10, v19

    move/from16 v1, v25

    move/from16 v9, v30

    move/from16 v3, v32

    const/16 v17, 0x0

    move/from16 v30, v5

    move/from16 v5, v18

    move v7, v3

    move v13, v14

    move/from16 v11, v17

    move/from16 v32, v20

    move-object/from16 v3, v21

    move-object/from16 v14, v31

    move/from16 v31, v23

    move-object/from16 v6, v24

    goto :goto_21c

    .line 840
    :cond_200
    move v13, v0

    move-object/from16 v24, v3

    move/from16 v26, v7

    move-object v2, v9

    move/from16 v30, v11

    move/from16 v10, v19

    move/from16 v0, v20

    move-object/from16 v3, v21

    const/4 v11, 0x0

    move v9, v1

    move v1, v5

    move/from16 v5, v18

    move/from16 v31, v6

    move v7, v11

    move/from16 v32, v14

    move-object/from16 v14, v23

    move-object/from16 v6, v24

    .line 905
    :goto_21c
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v17

    .line 907
    if-eqz v17, :cond_235

    if-nez v26, :cond_235

    .line 908
    const/high16 v11, 0x41a00000    # 20.0f

    if-nez v3, :cond_22e

    .line 909
    new-instance v3, Landroid/text/Layout$TabStops;

    invoke-direct {v3, v11, v14}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    goto :goto_231

    .line 911
    :cond_22e
    invoke-virtual {v3, v11, v14}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    .line 913
    :goto_231
    move/from16 v33, v22

    move-object v11, v3

    goto :goto_238

    .line 917
    :cond_235
    move/from16 v33, v26

    move-object v11, v3

    :goto_238
    nop

    .line 918
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v3, :cond_247

    .line 919
    move/from16 v3, v22

    if-ne v4, v3, :cond_244

    .line 920
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_255

    :cond_244
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_255

    .line 921
    :cond_247
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v3, :cond_254

    .line 922
    const/4 v3, 0x1

    if-ne v4, v3, :cond_251

    .line 923
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_255

    :cond_251
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_255

    .line 921
    :cond_254
    move-object v3, v6

    .line 928
    :goto_255
    move/from16 v34, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v3, v0, :cond_27b

    .line 929
    const/4 v3, 0x1

    if-ne v4, v3, :cond_26c

    .line 930
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    .line 931
    add-int v3, v7, v0

    add-int v3, v3, v28

    move-object/from16 v18, v2

    move v2, v3

    goto :goto_2b8

    .line 933
    :cond_26c
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    neg-int v0, v0

    .line 934
    sub-int v3, v32, v0

    sub-int v3, v3, v27

    move-object/from16 v18, v2

    move v2, v3

    goto :goto_2b8

    .line 937
    :cond_27b
    move-object/from16 v18, v2

    const/4 v0, 0x0

    invoke-direct {v12, v13, v11, v0}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v2

    float-to-int v2, v2

    .line 938
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v3, v0, :cond_2a5

    .line 939
    const/4 v3, 0x1

    if-ne v4, v3, :cond_298

    .line 940
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    neg-int v0, v0

    .line 941
    sub-int v2, v32, v2

    sub-int/2addr v2, v0

    sub-int v3, v2, v27

    move v2, v3

    goto :goto_2b8

    .line 943
    :cond_298
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    .line 944
    sub-int v2, v7, v2

    add-int/2addr v2, v0

    add-int v3, v2, v28

    move v2, v3

    goto :goto_2b8

    .line 947
    :cond_2a5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v0}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v0

    .line 948
    and-int/lit8 v2, v2, -0x2

    .line 949
    add-int v3, v32, v7

    sub-int/2addr v3, v2

    const/16 v22, 0x1

    shr-int/lit8 v2, v3, 0x1

    add-int/2addr v2, v0

    add-int v3, v2, v28

    move v2, v3

    .line 953
    :goto_2b8
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    .line 954
    move/from16 v35, v0

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v3, v0, :cond_301

    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_301

    if-nez v17, :cond_301

    if-nez v29, :cond_301

    .line 956
    int-to-float v7, v2

    move-object/from16 v17, v8

    int-to-float v8, v1

    move-object/from16 v3, p1

    move-object v0, v6

    move v5, v9

    move v6, v10

    move-object/from16 v4, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 957
    move-object v8, v4

    if-eqz p4, :cond_2f5

    .line 958
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, p4

    invoke-interface {v6, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v23, v11

    move v3, v15

    move-object/from16 v15, v16

    move-object/from16 v9, v18

    move/from16 v7, v34

    goto/16 :goto_358

    .line 957
    :cond_2f5
    move-object/from16 v6, p4

    move-object/from16 v23, v11

    move v3, v15

    move-object/from16 v15, v16

    move-object/from16 v9, v18

    move/from16 v7, v34

    goto :goto_358

    .line 954
    :cond_301
    move-object v0, v6

    move-object/from16 v6, p4

    .line 961
    nop

    .line 962
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v24

    .line 963
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v19

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int v25, v19, v13

    .line 964
    invoke-virtual {v12}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v26

    .line 961
    move-object/from16 v21, v3

    move/from16 v20, v4

    move/from16 v19, v10

    move-object/from16 v23, v11

    move v3, v15

    move-object/from16 v15, v16

    move/from16 v22, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual/range {v15 .. v26}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 965
    move-object/from16 v9, v16

    if-eqz v29, :cond_33b

    .line 966
    iget v4, v12, Landroid/text/Layout;->mJustificationMode:I

    sub-int v32, v32, v7

    sub-int v7, v32, v35

    int-to-float v7, v7

    invoke-virtual {v15, v4, v7}, Landroid/text/TextLine;->justify(IF)V

    .line 968
    :cond_33b
    int-to-float v4, v2

    move-object/from16 v16, p1

    move/from16 v19, v1

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v20, v34

    invoke-virtual/range {v15 .. v20}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 969
    move/from16 v7, v20

    if-eqz v6, :cond_358

    .line 970
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    :cond_358
    :goto_358
    move/from16 v13, p2

    move v1, v3

    move/from16 v18, v7

    move-object v2, v14

    move-object/from16 v4, v23

    move/from16 v6, v31

    move/from16 v7, v33

    move-object v3, v0

    move/from16 v0, v30

    goto/16 :goto_61

    .line 975
    :cond_369
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 976
    return-void
.end method

.method public blacklist drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    .line 615
    invoke-virtual {p0, p1, p7, p8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 616
    invoke-virtual/range {p0 .. p8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 618
    return-void
.end method

.method public whitelist fillCharacterBounds(II[FI)V
    .registers 13

    .line 1902
    if-ltz p1, :cond_5c

    if-lt p2, p1, :cond_5c

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_5c

    .line 1907
    if-eqz p3, :cond_54

    .line 1911
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x4

    .line 1912
    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_2f

    .line 1918
    if-ne p1, p2, :cond_19

    .line 1919
    return-void

    .line 1922
    :cond_19
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 1923
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1925
    new-instance v7, Landroid/text/Layout$$ExternalSyntheticLambda4;

    invoke-direct {v7, p4, p1, p3}, Landroid/text/Layout$$ExternalSyntheticLambda4;-><init>(II[F)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    .line 1933
    return-void

    .line 1913
    :cond_2f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bounds doesn\'t have enough space to store the result, needed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " had: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1908
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bounds can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1902
    :cond_5c
    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 1903
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "given range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is out of the text range: 0, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v2, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1904
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .line 4416
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public final whitelist getBreakStrategy()I
    .registers 2

    .line 4574
    iget v0, p0, Landroid/text/Layout;->mBreakStrategy:I

    return v0
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 15

    .line 3043
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 3045
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 3046
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 3047
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    .line 3049
    invoke-virtual {p0, v0}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v0

    .line 3050
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 3052
    const/4 v4, 0x1

    invoke-static {p3, v4}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 3053
    const/16 v6, 0x800

    invoke-static {p3, v6}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v6

    or-int/2addr v5, v6

    .line 3054
    const/4 v6, 0x2

    invoke-static {p3, v6}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p3

    .line 3055
    nop

    .line 3057
    if-nez v5, :cond_31

    if-eqz p3, :cond_3a

    .line 3058
    :cond_31
    sub-int v2, v3, v1

    shr-int/2addr v2, v6

    .line 3060
    if-eqz p3, :cond_37

    .line 3061
    add-int/2addr v1, v2

    .line 3062
    :cond_37
    if-eqz v5, :cond_3a

    .line 3063
    sub-int/2addr v3, v2

    .line 3066
    :cond_3a
    cmpg-float v7, p1, v0

    if-gez v7, :cond_3f

    .line 3067
    move p1, v0

    .line 3069
    :cond_3f
    int-to-float v7, v1

    invoke-virtual {p2, p1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3070
    int-to-float v8, v3

    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3072
    if-ne v5, v6, :cond_5c

    .line 3073
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3074
    int-to-float v5, v2

    sub-float v9, p1, v5

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p2, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3075
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3076
    add-float/2addr v5, p1

    invoke-virtual {p2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_78

    .line 3077
    :cond_5c
    if-ne v5, v4, :cond_78

    .line 3078
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3079
    int-to-float v5, v2

    sub-float v9, p1, v5

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p2, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3081
    sub-float v10, v3, v0

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3082
    add-float/2addr v5, p1

    invoke-virtual {p2, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3084
    invoke-virtual {p2, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3085
    invoke-virtual {p2, p1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3088
    :cond_78
    :goto_78
    if-ne p3, v6, :cond_8d

    .line 3089
    invoke-virtual {p2, p1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3090
    int-to-float p3, v2

    sub-float v0, p1, p3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3091
    invoke-virtual {p2, p1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3092
    add-float/2addr p1, p3

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a8

    .line 3093
    :cond_8d
    if-ne p3, v4, :cond_a8

    .line 3094
    invoke-virtual {p2, p1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3095
    int-to-float p3, v2

    sub-float v3, p1, p3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3097
    add-float/2addr v0, v1

    invoke-virtual {p2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3098
    add-float/2addr p3, p1

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3100
    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3101
    invoke-virtual {p2, p1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3103
    :cond_a8
    :goto_a8
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public final whitelist getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 4545
    iget-object v0, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public whitelist getEllipsizedWidth()I
    .registers 2

    .line 4526
    iget v0, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .registers 2

    .line 1497
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 1311
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight(Z)I
    .registers 2

    .line 1322
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    return p1
.end method

.method public final whitelist getHyphenationFrequency()I
    .registers 2

    .line 4587
    iget v0, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 3

    .line 1506
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist getJustificationMode()I
    .registers 2

    .line 4642
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    return v0
.end method

.method public final whitelist getLeftIndents()[I
    .registers 5

    .line 4603
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    if-nez v0, :cond_6

    .line 4604
    const/4 v0, 0x0

    return-object v0

    .line 4606
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 4607
    iget-object v2, p0, Landroid/text/Layout;->mLeftIndents:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4608
    return-object v1
.end method

.method public final whitelist getLineAscent(I)I
    .registers 4

    .line 2909
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBaseline(I)I
    .registers 3

    .line 2900
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final whitelist getLineBottom(I)I
    .registers 3

    .line 2878
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result p1

    return p1
.end method

.method public whitelist getLineBottom(IZ)I
    .registers 3

    .line 2888
    if-eqz p2, :cond_9

    .line 2889
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    return p1

    .line 2891
    :cond_9
    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public whitelist getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4

    .line 1419
    if-eqz p2, :cond_17

    .line 1420
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1421
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1422
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1423
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1425
    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p1

    return p1
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .registers 2

    .line 4656
    iget-object v0, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public abstract whitelist getLineContainsTab(I)Z
.end method

.method public abstract whitelist getLineCount()I
.end method

.method public abstract whitelist getLineDescent(I)I
.end method

.method public abstract whitelist getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final whitelist getLineEnd(I)I
    .registers 2

    .line 2833
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getLineExtra(I)I
    .registers 2

    .line 2920
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getLineForOffset(I)I
    .registers 6

    .line 2267
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    .line 2269
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 2270
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 2272
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 2273
    move v0, v2

    goto :goto_5

    .line 2275
    :cond_16
    move v1, v2

    goto :goto_5

    .line 2278
    :cond_18
    if-gez v1, :cond_1c

    .line 2279
    const/4 p1, 0x0

    return p1

    .line 2281
    :cond_1c
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .registers 6

    .line 2244
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    .line 2246
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 2247
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 2249
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 2250
    move v0, v2

    goto :goto_5

    .line 2252
    :cond_16
    move v1, v2

    goto :goto_5

    .line 2255
    :cond_18
    if-gez v1, :cond_1c

    .line 2256
    const/4 p1, 0x0

    return p1

    .line 2258
    :cond_1c
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .registers 5

    .line 1987
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1988
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1992
    if-nez v1, :cond_c

    .line 1993
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2000
    :cond_c
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_58

    .line 2016
    :pswitch_14
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2d

    .line 2013
    :pswitch_17
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2014
    goto :goto_2d

    .line 2010
    :pswitch_1a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2011
    goto :goto_2d

    .line 2007
    :pswitch_1d
    if-ne v0, v2, :cond_22

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_24

    :cond_22
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2008
    :goto_24
    goto :goto_2d

    .line 2003
    :pswitch_25
    if-ne v0, v2, :cond_2a

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2c

    :cond_2a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 2004
    :goto_2c
    nop

    .line 2022
    :goto_2d
    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_66

    .line 2033
    :pswitch_34
    const/4 p1, 0x0

    return p1

    .line 2031
    :pswitch_36
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    sub-float/2addr v0, p1

    return v0

    .line 2024
    :pswitch_3f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v0

    .line 2025
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    .line 2029
    int-to-float v0, v0

    iget v1, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1d
        :pswitch_1a
        :pswitch_14
        :pswitch_17
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method public whitelist getLineLetterSpacingUnitCount(IZ)I
    .registers 16

    .line 2174
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2175
    const/4 v12, 0x0

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    move v4, p2

    goto :goto_1c

    .line 2176
    :cond_d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v12}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result p2

    move v4, p2

    .line 2181
    :goto_1c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2183
    if-nez v6, :cond_23

    .line 2184
    return v12

    .line 2186
    :cond_23
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2188
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2189
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2190
    iget-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2191
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2192
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2193
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2195
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p1

    add-int v10, p2, p1

    .line 2196
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2193
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2197
    iget-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-nez p1, :cond_64

    .line 2198
    new-instance p1, Landroid/text/TextLine$LineInfo;

    invoke-direct {p1}, Landroid/text/TextLine$LineInfo;-><init>()V

    iput-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    .line 2200
    :cond_64
    iget-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {p1, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 2201
    iget-boolean p1, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    iget-object p2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    .line 2202
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2203
    iget-object p1, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {p1}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result p1

    return p1
.end method

.method public whitelist getLineMax(I)F
    .registers 4

    .line 2090
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 2091
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p1

    .line 2092
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_10

    goto :goto_11

    :cond_10
    neg-float p1, p1

    :goto_11
    add-float/2addr v0, p1

    return v0
.end method

.method public greylist-max-r getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .registers 6

    .line 1221
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 1222
    :try_start_3
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_13

    .line 1224
    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1227
    :cond_13
    sget-object p1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 1228
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1229
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_40

    .line 1231
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1232
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1234
    if-lt p1, v0, :cond_33

    invoke-static {v2, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 1235
    :cond_33
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 1229
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public whitelist getLineRight(I)F
    .registers 5

    .line 2042
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 2043
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 2047
    if-nez v1, :cond_c

    .line 2048
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2052
    :cond_c
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_56

    .line 2068
    :pswitch_14
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2d

    .line 2065
    :pswitch_17
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2066
    goto :goto_2d

    .line 2062
    :pswitch_1a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2063
    goto :goto_2d

    .line 2059
    :pswitch_1d
    if-ne v0, v2, :cond_22

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_24

    :cond_22
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2060
    :goto_24
    goto :goto_2d

    .line 2055
    :pswitch_25
    if-ne v0, v2, :cond_2a

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2c

    :cond_2a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 2056
    :goto_2c
    nop

    .line 2071
    :goto_2d
    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_64

    .line 2081
    :pswitch_34
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    return p1

    .line 2079
    :pswitch_39
    iget p1, p0, Landroid/text/Layout;->mWidth:I

    int-to-float p1, p1

    return p1

    .line 2073
    :pswitch_3d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v0

    .line 2074
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result p1

    .line 2077
    int-to-float v0, v0

    iget v1, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1d
        :pswitch_1a
        :pswitch_14
        :pswitch_17
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method public final whitelist getLineSpacingAmount()F
    .registers 2

    .line 4483
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final whitelist getLineSpacingMultiplier()F
    .registers 2

    .line 4456
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .registers 5

    .line 2841
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result p1

    return p1
.end method

.method public whitelist getLineWidth(I)F
    .registers 4

    .line 2100
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 2101
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result p1

    .line 2102
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_10

    goto :goto_11

    :cond_10
    neg-float p1, p1

    :goto_11
    add-float/2addr v0, p1

    return v0
.end method

.method public final whitelist getMaxLines()I
    .registers 2

    .line 4561
    iget v0, p0, Landroid/text/Layout;->mMaxLines:I

    return v0
.end method

.method public whitelist getMinimumFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    .line 4702
    iget-object v0, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object v0
.end method

.method public whitelist getOffsetForHorizontal(IF)I
    .registers 4

    .line 2290
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .registers 22

    .line 2305
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 2306
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2308
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 2310
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 2312
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 2314
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    add-int v12, v9, v10

    .line 2315
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 2312
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2316
    new-instance v3, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v4, p3

    invoke-direct {v3, v0, v1, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 2320
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    if-ne v1, v4, :cond_43

    .line 2321
    goto :goto_52

    .line 2323
    :cond_43
    sub-int v1, v6, v5

    add-int/lit8 v6, v6, -0x1

    .line 2324
    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v4

    .line 2323
    xor-int/2addr v4, v7

    invoke-virtual {v2, v1, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int v6, v1, v5

    .line 2326
    :goto_52
    nop

    .line 2327
    invoke-virtual {v3, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v1

    sub-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2329
    move v9, v5

    const/4 v10, 0x0

    :goto_5f
    iget-object v11, v8, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v11, v11

    if-ge v10, v11, :cond_116

    .line 2330
    iget-object v11, v8, Landroid/text/Layout$Directions;->mDirections:[I

    aget v11, v11, v10

    add-int/2addr v11, v5

    .line 2331
    iget-object v12, v8, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v13, v10, 0x1

    aget v12, v12, v13

    const v14, 0x3ffffff

    and-int/2addr v12, v14

    add-int/2addr v12, v11

    .line 2332
    iget-object v14, v8, Landroid/text/Layout$Directions;->mDirections:[I

    aget v13, v14, v13

    const/high16 v14, 0x4000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_7f

    move v13, v7

    goto :goto_80

    :cond_7f
    const/4 v13, 0x0

    .line 2333
    :goto_80
    if-eqz v13, :cond_84

    const/4 v14, -0x1

    goto :goto_85

    :cond_84
    move v14, v7

    .line 2335
    :goto_85
    if-le v12, v6, :cond_88

    .line 2336
    move v12, v6

    .line 2337
    :cond_88
    add-int/lit8 v15, v12, -0x1

    add-int/2addr v15, v7

    add-int/lit8 v4, v11, 0x1

    add-int/lit8 v16, v4, -0x1

    move/from16 v7, v16

    .line 2339
    :goto_91
    move/from16 v16, v1

    sub-int v1, v15, v7

    move/from16 v17, v5

    const/4 v5, 0x1

    if-le v1, v5, :cond_b8

    .line 2340
    add-int v1, v15, v7

    div-int/lit8 v1, v1, 0x2

    .line 2341
    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v5

    .line 2343
    invoke-virtual {v3, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    int-to-float v0, v14

    mul-float/2addr v5, v0

    mul-float v0, v0, p2

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_b0

    .line 2344
    move v15, v1

    goto :goto_b1

    .line 2346
    :cond_b0
    move v7, v1

    .line 2348
    :goto_b1
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v5, v17

    goto :goto_91

    .line 2350
    :cond_b8
    if-ge v7, v4, :cond_bb

    .line 2351
    goto :goto_bc

    .line 2350
    :cond_bb
    move v4, v7

    .line 2353
    :goto_bc
    if-ge v4, v12, :cond_fa

    .line 2354
    sub-int v4, v4, v17

    invoke-virtual {v2, v4, v13}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v0, v0, v17

    .line 2355
    sub-int v1, v0, v17

    xor-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int v1, v1, v17

    .line 2356
    if-lt v1, v11, :cond_fa

    if-ge v1, v12, :cond_fa

    .line 2357
    invoke-virtual {v3, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2358
    if-ge v0, v12, :cond_f1

    .line 2359
    invoke-virtual {v3, v0}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2361
    cmpg-float v7, v5, v4

    if-gez v7, :cond_f1

    .line 2362
    nop

    .line 2363
    move v4, v5

    goto :goto_f2

    .line 2367
    :cond_f1
    move v0, v1

    :goto_f2
    cmpg-float v1, v4, v16

    if-gez v1, :cond_fa

    .line 2368
    nop

    .line 2369
    move v9, v0

    move v1, v4

    goto :goto_fc

    .line 2374
    :cond_fa
    move/from16 v1, v16

    :goto_fc
    invoke-virtual {v3, v11}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2376
    cmpg-float v4, v0, v1

    if-gez v4, :cond_10d

    .line 2377
    nop

    .line 2378
    move v1, v0

    move v9, v11

    .line 2329
    :cond_10d
    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v5, v17

    const/4 v7, 0x1

    goto/16 :goto_5f

    .line 2382
    :cond_116
    move/from16 v16, v1

    invoke-virtual {v3, v6}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2384
    cmpg-float v0, v0, v16

    if-gtz v0, :cond_127

    .line 2385
    goto :goto_128

    .line 2384
    :cond_127
    move v6, v9

    .line 2388
    :goto_128
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2389
    return v6
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .registers 3

    .line 2924
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    return p1
.end method

.method public whitelist getOffsetToRightOf(I)I
    .registers 3

    .line 2928
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result p1

    return p1
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .registers 2

    .line 4391
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 6

    .line 3231
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3233
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_25

    .line 3234
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 3235
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 3236
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    const-class v3, Landroid/text/style/AlignmentSpan;

    .line 3235
    invoke-static {v1, v2, p1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/AlignmentSpan;

    .line 3239
    array-length v1, p1

    .line 3240
    if-lez v1, :cond_25

    .line 3241
    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-interface {p1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 3245
    :cond_25
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .registers 4

    .line 3252
    nop

    .line 3253
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 3254
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_d

    goto :goto_12

    .line 3257
    :cond_d
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p1

    return p1

    .line 3255
    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist getParagraphRight(I)I
    .registers 5

    .line 3264
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 3265
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 3266
    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v1, :cond_e

    goto :goto_14

    .line 3269
    :cond_e
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 3267
    :cond_14
    :goto_14
    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .registers 3

    .line 1718
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result p1

    return p1
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .registers 4

    .line 1728
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1729
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p1

    return p1
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .registers 16

    .line 2461
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 2462
    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_1f

    .line 2463
    add-int/lit8 v0, v0, 0x1

    .line 2464
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_1d

    .line 2466
    return-object v3

    .line 2464
    :cond_1d
    move v5, v0

    goto :goto_20

    .line 2462
    :cond_1f
    move v5, v0

    .line 2471
    :goto_20
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 2472
    if-nez v0, :cond_35

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_35

    .line 2474
    return-object v3

    .line 2476
    :cond_35
    if-ge v0, v5, :cond_38

    .line 2478
    return-object v3

    .line 2481
    :cond_38
    const/4 v9, 0x1

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p1

    move-object v9, v7

    move-object v10, v8

    move-object v8, v6

    .line 2485
    :goto_44
    const/4 p2, -0x1

    if-ne p1, p2, :cond_53

    if-ge v5, v0, :cond_53

    .line 2486
    add-int/lit8 v7, v5, 0x1

    .line 2487
    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p1

    move v5, v7

    goto :goto_44

    .line 2490
    :cond_53
    if-ne p1, p2, :cond_56

    .line 2492
    return-object v3

    .line 2495
    :cond_56
    const/4 v11, 0x0

    move-object v6, p0

    move v7, v0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p3

    .line 2499
    :goto_5d
    if-ne p3, p2, :cond_6b

    if-ge v5, v0, :cond_6b

    .line 2500
    add-int/lit8 v7, v0, -0x1

    .line 2501
    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p3

    move v0, v7

    goto :goto_5d

    .line 2504
    :cond_6b
    if-ne p3, p2, :cond_6e

    .line 2506
    return-object v3

    .line 2513
    :cond_6e
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v9, p1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result p1

    .line 2514
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v9, p3}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result p2

    .line 2516
    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public final whitelist getRightIndents()[I
    .registers 5

    .line 4624
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    if-nez v0, :cond_6

    .line 4625
    const/4 v0, 0x0

    return-object v0

    .line 4627
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 4628
    iget-object v2, p0, Landroid/text/Layout;->mRightIndents:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4629
    return-object v1
.end method

.method public greylist-max-o getRunRange(I)J
    .registers 10

    .line 1577
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1578
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1579
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3d

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_3d

    .line 1582
    :cond_12
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1583
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1584
    move v4, v3

    :goto_19
    array-length v5, v1

    if-ge v4, v5, :cond_34

    .line 1585
    aget v5, v1, v4

    add-int/2addr v5, v2

    .line 1586
    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 1587
    if-lt p1, v5, :cond_31

    if-ge p1, v6, :cond_31

    .line 1588
    invoke-static {v5, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 1584
    :cond_31
    add-int/lit8 v4, v4, 0x2

    goto :goto_19

    .line 1592
    :cond_34
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0

    .line 1580
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSecondaryHorizontal(I)F
    .registers 3

    .line 1738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result p1

    return p1
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .registers 4

    .line 1748
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1749
    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result p1

    return p1
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 15

    .line 3169
    if-ne p1, p2, :cond_3

    .line 3170
    return-void

    .line 3173
    :cond_3
    if-ge p2, p1, :cond_a

    .line 3174
    nop

    .line 3175
    nop

    .line 3176
    move v3, p1

    move v2, p2

    goto :goto_c

    .line 3173
    :cond_a
    move v2, p1

    move v3, p2

    .line 3179
    :goto_c
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3180
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 3182
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3183
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3185
    if-ne v1, p1, :cond_26

    .line 3186
    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_c0

    .line 3188
    :cond_26
    move-object v0, p0

    move-object v6, p3

    move p3, v3

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v7, v3

    .line 3190
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 3191
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 3190
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3193
    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    move v8, v1

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v10, -0x1

    if-ne v1, v10, :cond_53

    .line 3194
    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    int-to-float v2, v4

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v4, v3

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v3, v7

    goto :goto_62

    .line 3197
    :cond_53
    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    int-to-float v2, v4

    invoke-virtual {p0, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v4, v3

    const/4 v5, 0x1

    move v3, v7

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3201
    :goto_62
    add-int/lit8 v1, v8, 0x1

    move v7, v1

    :goto_65
    if-ge v7, p1, :cond_8c

    .line 3202
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 3203
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 3204
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    if-ne v4, v10, :cond_7f

    .line 3205
    move v4, v2

    int-to-float v2, v1

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v1, v3

    goto :goto_88

    .line 3207
    :cond_7f
    move v4, v2

    int-to-float v2, v1

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v1, v3

    .line 3201
    :goto_88
    add-int/lit8 v7, v7, 0x1

    move v3, v1

    goto :goto_65

    .line 3211
    :cond_8c
    move v1, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 3212
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v8

    .line 3214
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    move v4, p1

    move-object v9, v0

    move-object v3, v6

    move v6, p3

    invoke-direct/range {v3 .. v9}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3216
    move-object v0, v3

    move-object v6, v9

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    if-ne p1, v10, :cond_b4

    .line 3217
    int-to-float v2, v7

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    int-to-float v4, v8

    const/4 v5, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_c0

    .line 3220
    :cond_b4
    int-to-float v2, v7

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    int-to-float v4, v8

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3224
    :goto_c0
    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .registers 5

    .line 3152
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 3153
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3155
    return-void
.end method

.method public whitelist getShiftDrawingOffsetForStartOverhang()Z
    .registers 2

    .line 4684
    iget-boolean v0, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    return v0
.end method

.method public final whitelist getSpacingAdd()F
    .registers 2

    .line 4470
    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingAmount()F

    move-result v0

    return v0
.end method

.method public final whitelist getSpacingMultiplier()F
    .registers 2

    .line 4443
    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .registers 2

    .line 1488
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 4376
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    .line 4429
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public whitelist getUseBoundsForWidth()Z
    .registers 2

    .line 4670
    iget-boolean v0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    return v0
.end method

.method public final whitelist getWidth()I
    .registers 2

    .line 4403
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final whitelist increaseWidthTo(I)V
    .registers 3

    .line 1300
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_7

    .line 1304
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 1305
    return-void

    .line 1301
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "attempted to reduce Layout width"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .registers 2

    .line 4508
    iget-boolean v0, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    return v0
.end method

.method public final whitelist isFontPaddingIncluded()Z
    .registers 2

    .line 4495
    iget-boolean v0, p0, Landroid/text/Layout;->mIncludePad:Z

    return v0
.end method

.method public greylist isLevelBoundary(I)Z
    .registers 8

    .line 1518
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1519
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1520
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4b

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_4b

    .line 1524
    :cond_12
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1525
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1526
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1527
    const/4 v5, 0x1

    if-eq p1, v2, :cond_30

    if-ne p1, v4, :cond_22

    goto :goto_30

    .line 1533
    :cond_22
    sub-int/2addr p1, v2

    .line 1534
    move v0, v3

    :goto_24
    array-length v2, v1

    if-ge v0, v2, :cond_2f

    .line 1535
    aget v2, v1, v0

    if-ne p1, v2, :cond_2c

    .line 1536
    return v5

    .line 1534
    :cond_2c
    add-int/lit8 v0, v0, 0x2

    goto :goto_24

    .line 1539
    :cond_2f
    return v3

    .line 1528
    :cond_30
    :goto_30
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v5, :cond_38

    move v0, v3

    goto :goto_39

    :cond_38
    move v0, v5

    .line 1529
    :goto_39
    if-ne p1, v2, :cond_3d

    move p1, v3

    goto :goto_40

    :cond_3d
    array-length p1, v1

    add-int/lit8 p1, p1, -0x2

    .line 1530
    :goto_40
    add-int/2addr p1, v5

    aget p1, v1, p1

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x3f

    if-eq p1, v0, :cond_4a

    move v3, v5

    :cond_4a
    return v3

    .line 1521
    :cond_4b
    :goto_4b
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .registers 11

    .line 1548
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1549
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1550
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    .line 1551
    return v3

    .line 1553
    :cond_e
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    .line 1554
    return v4

    .line 1556
    :cond_14
    iget-object v1, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1557
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1558
    move v2, v3

    :goto_1b
    array-length v5, v1

    if-ge v2, v5, :cond_3c

    .line 1559
    aget v5, v1, v2

    add-int/2addr v5, v0

    .line 1560
    add-int/lit8 v6, v2, 0x1

    aget v7, v1, v6

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v5

    .line 1561
    if-lt p1, v5, :cond_39

    if-ge p1, v7, :cond_39

    .line 1562
    aget p1, v1, v6

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 p1, p1, 0x3f

    .line 1563
    and-int/2addr p1, v4

    if-eqz p1, :cond_38

    move v3, v4

    :cond_38
    return v3

    .line 1558
    :cond_39
    add-int/lit8 v2, v2, 0x2

    goto :goto_1b

    .line 1567
    :cond_3c
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .registers 2

    .line 3481
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .registers 14

    .line 1624
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1625
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1626
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1627
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1629
    nop

    .line 1630
    const/4 v4, 0x0

    move v5, v4

    :goto_15
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, -0x1

    if-ge v5, v6, :cond_39

    .line 1631
    aget v6, v3, v5

    add-int/2addr v6, v1

    .line 1632
    add-int/lit8 v9, v5, 0x1

    aget v10, v3, v9

    and-int/2addr v10, v7

    add-int/2addr v10, v6

    .line 1633
    if-le v10, v2, :cond_28

    .line 1634
    move v10, v2

    .line 1636
    :cond_28
    if-lt p1, v6, :cond_36

    if-ge p1, v10, :cond_36

    .line 1637
    if-le p1, v6, :cond_2f

    .line 1639
    return v4

    .line 1641
    :cond_2f
    aget v5, v3, v9

    ushr-int/lit8 v5, v5, 0x1a

    and-int/lit8 v5, v5, 0x3f

    .line 1642
    goto :goto_3a

    .line 1630
    :cond_36
    add-int/lit8 v5, v5, 0x2

    goto :goto_15

    :cond_39
    move v5, v8

    .line 1645
    :goto_3a
    const/4 v6, 0x1

    if-ne v5, v8, :cond_46

    .line 1647
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_45

    move v5, v4

    goto :goto_46

    :cond_45
    move v5, v6

    .line 1651
    :cond_46
    :goto_46
    nop

    .line 1652
    if-ne p1, v1, :cond_53

    .line 1653
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    if-ne p1, v6, :cond_51

    move v8, v4

    goto :goto_72

    :cond_51
    move v8, v6

    goto :goto_72

    .line 1655
    :cond_53
    add-int/2addr p1, v8

    .line 1656
    move v0, v4

    :goto_55
    array-length v9, v3

    if-ge v0, v9, :cond_72

    .line 1657
    aget v9, v3, v0

    add-int/2addr v9, v1

    .line 1658
    add-int/lit8 v10, v0, 0x1

    aget v11, v3, v10

    and-int/2addr v11, v7

    add-int/2addr v11, v9

    .line 1659
    if-le v11, v2, :cond_64

    .line 1660
    move v11, v2

    .line 1662
    :cond_64
    if-lt p1, v9, :cond_6f

    if-ge p1, v11, :cond_6f

    .line 1663
    aget p1, v3, v10

    ushr-int/lit8 p1, p1, 0x1a

    and-int/lit8 v8, p1, 0x3f

    .line 1664
    goto :goto_72

    .line 1656
    :cond_6f
    add-int/lit8 v0, v0, 0x2

    goto :goto_55

    .line 1669
    :cond_72
    :goto_72
    if-ge v8, v5, :cond_75

    move v4, v6

    :cond_75
    return v4
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .registers 14

    .line 1681
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1682
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1683
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1685
    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Z

    .line 1687
    new-array v3, v3, [B

    .line 1688
    const/4 v6, 0x0

    move v7, v6

    :goto_18
    array-length v8, v2

    if-ge v7, v8, :cond_3b

    .line 1689
    aget v8, v2, v7

    add-int/2addr v8, v0

    .line 1690
    add-int/lit8 v9, v7, 0x1

    aget v10, v2, v9

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int/2addr v10, v8

    .line 1691
    if-le v10, v1, :cond_2a

    .line 1692
    move v10, v1

    .line 1694
    :cond_2a
    if-ne v10, v8, :cond_2d

    .line 1695
    goto :goto_38

    .line 1697
    :cond_2d
    sub-int/2addr v10, v0

    sub-int/2addr v10, v4

    aget v8, v2, v9

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    aput-byte v8, v3, v10

    .line 1688
    :goto_38
    add-int/lit8 v7, v7, 0x2

    goto :goto_18

    .line 1701
    :cond_3b
    move v1, v6

    :goto_3c
    array-length v7, v2

    if-ge v1, v7, :cond_67

    .line 1702
    aget v7, v2, v1

    add-int/2addr v7, v0

    .line 1703
    add-int/lit8 v8, v1, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    .line 1704
    sub-int v9, v7, v0

    if-ne v7, v0, :cond_59

    .line 1705
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v4, :cond_57

    move v7, v6

    goto :goto_5d

    :cond_57
    move v7, v4

    goto :goto_5d

    .line 1706
    :cond_59
    add-int/lit8 v7, v9, -0x1

    aget-byte v7, v3, v7

    :goto_5d
    if-le v8, v7, :cond_61

    move v7, v4

    goto :goto_62

    :cond_61
    move v7, v6

    :goto_62
    aput-boolean v7, v5, v9

    .line 1701
    add-int/lit8 v1, v1, 0x2

    goto :goto_3c

    .line 1709
    :cond_67
    return-object v5
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 7

    .line 440
    if-ltz p3, :cond_16

    .line 444
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 445
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 446
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 447
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 448
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 449
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 450
    instance-of p1, p1, Landroid/text/Spanned;

    iput-boolean p1, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 451
    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    .line 452
    return-void

    .line 441
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Layout: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " < 0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .registers 5

    .line 3025
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_18

    .line 3031
    return v1

    .line 3027
    :sswitch_e
    return v2

    .line 3029
    :sswitch_f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    if-lez p1, :cond_16

    move v1, v2

    :cond_16
    return v1

    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_f
        0x3 -> :sswitch_e
    .end sparse-switch
.end method
