.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
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

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

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

.field private greylist-max-o mJustificationMode:I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPaint:Landroid/text/TextPaint;

.field private blacklist mPostAlpha:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private greylist-max-o mWidth:I

.field private greylist-max-o mWorkPaint:Landroid/text/TextPaint;


# direct methods
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

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 135
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 136
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 2613
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2658
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2664
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .line 267
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 269
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/Layout;->mPostAlpha:Z

    .line 2608
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2610
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 290
    if-ltz p3, :cond_2c

    .line 297
    if-eqz p2, :cond_19

    .line 298
    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    .line 299
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 302
    :cond_19
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 303
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 304
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 305
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 306
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 307
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 308
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 309
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 310
    return-void

    .line 291
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 31
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 1997
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1998
    .local v4, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1999
    .local v5, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2001
    .local v6, "dirs":Landroid/text/Layout$Directions;
    if-le v5, v4, :cond_24

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_24

    .line 2002
    add-int/lit8 v5, v5, -0x1

    .line 2005
    :cond_24
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_25
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_93

    .line 2006
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    .line 2007
    .local v8, "here":I
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 2009
    .local v9, "there":I
    if-le v9, v5, :cond_3d

    .line 2010
    move v9, v5

    .line 2013
    :cond_3d
    if-gt v2, v9, :cond_88

    if-lt v3, v8, :cond_88

    .line 2014
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2015
    .local v10, "st":I
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2017
    .local v11, "en":I
    if-eq v10, v11, :cond_83

    .line 2018
    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    .line 2019
    .local v13, "h1":F
    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    .line 2021
    .local v15, "h2":F
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 2022
    .local v22, "left":F
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 2025
    .local v23, "right":F
    iget-object v12, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v17, v7, 0x1

    aget v12, v12, v17

    const/high16 v17, 0x4000000

    and-int v12, v12, v17

    if-eqz v12, :cond_6c

    .line 2026
    const/16 v21, 0x0

    goto :goto_6e

    .line 2027
    :cond_6c
    move/from16 v21, v14

    :goto_6e
    nop

    .line 2029
    .local v21, "layout":I
    move/from16 v12, p4

    int-to-float v14, v12

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v17, v22

    move/from16 v18, v14

    move/from16 v19, v23

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_8c

    .line 2017
    .end local v13    # "h1":F
    .end local v15    # "h2":F
    .end local v21    # "layout":I
    .end local v22    # "left":F
    .end local v23    # "right":F
    :cond_83
    move/from16 v12, p4

    move/from16 v0, p5

    goto :goto_8c

    .line 2013
    .end local v10    # "st":I
    .end local v11    # "en":I
    :cond_88
    move/from16 v12, p4

    move/from16 v0, p5

    .line 2005
    .end local v8    # "here":I
    .end local v9    # "there":I
    :goto_8c
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_25

    :cond_93
    move/from16 v12, p4

    move/from16 v0, p5

    .line 2033
    .end local v7    # "i":I
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 21
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 2403
    move-object v0, p0

    move/from16 v1, p3

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 2404
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_a

    .line 2405
    return-void

    .line 2407
    :cond_a
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2408
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2410
    .local v4, "lineStart":I
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    .line 2411
    .local v5, "ellipsisString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2413
    .local v6, "ellipsisStringLen":I
    const/4 v7, 0x0

    if-lt v2, v6, :cond_1f

    const/4 v8, 0x1

    goto :goto_20

    :cond_1f
    move v8, v7

    .line 2414
    .local v8, "useEllipsisString":Z
    :goto_20
    sub-int v9, p1, v3

    sub-int/2addr v9, v4

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2415
    .local v7, "min":I
    sub-int v9, p2, v3

    sub-int/2addr v9, v4

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2417
    .local v9, "max":I
    move v10, v7

    .local v10, "i":I
    :goto_2f
    if-ge v10, v9, :cond_48

    .line 2419
    if-eqz v8, :cond_3a

    if-ge v10, v6, :cond_3a

    .line 2420
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, "c":C
    goto :goto_3d

    .line 2422
    .end local v11    # "c":C
    :cond_3a
    const v11, 0xfeff

    .line 2425
    .restart local v11    # "c":C
    :goto_3d
    add-int v12, v10, v3

    add-int/2addr v12, v4

    .line 2426
    .local v12, "a":I
    add-int v13, p5, v12

    sub-int/2addr v13, p1

    aput-char v11, p4, v13

    .line 2417
    .end local v11    # "c":C
    .end local v12    # "a":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    .line 2428
    .end local v10    # "i":I
    :cond_48
    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .line 205
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .registers 11
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 216
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v0

    return v0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 193
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F
    .registers 11
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "upperLimit"    # F

    .line 227
    const/4 v0, 0x0

    .line 230
    .local v0, "need":F
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-gt v1, p2, :cond_20

    .line 231
    const/16 v2, 0xa

    invoke-static {p0, v2, v1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 233
    .local v2, "next":I
    if-gez v2, :cond_d

    .line 234
    move v2, p2

    .line 237
    :cond_d
    invoke-static {p3, p0, v1, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    .line 238
    .local v3, "w":F
    cmpl-float v4, v3, p5

    if-lez v4, :cond_16

    .line 239
    return p5

    .line 242
    :cond_16
    cmpl-float v4, v3, v0

    if-lez v4, :cond_1b

    .line 243
    move v0, v3

    .line 245
    :cond_1b
    nop

    .end local v3    # "w":F
    add-int/lit8 v2, v2, 0x1

    .line 230
    move v1, v2

    goto :goto_2

    .line 248
    .end local v1    # "i":I
    .end local v2    # "next":I
    :cond_20
    return v0
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .registers 4
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 1238
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_b
    return v0
.end method

.method private greylist-max-o getHorizontal(IZIZ)F
    .registers 27
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .line 1248
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1249
    .local v14, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1250
    .local v15, "end":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    .line 1251
    .local v16, "dir":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v17

    .line 1252
    .local v17, "hasTab":Z
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v18

    .line 1254
    .local v18, "directions":Landroid/text/Layout$Directions;
    const/4 v2, 0x0

    .line 1255
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v17, :cond_39

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_39

    .line 1258
    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v14, v15, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    .line 1259
    .local v3, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v4, v3

    if-lez v4, :cond_39

    .line 1260
    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object/from16 v19, v2

    goto :goto_3b

    .line 1264
    .end local v3    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_39
    move-object/from16 v19, v2

    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .local v19, "tabStops":Landroid/text/Layout$TabStops;
    :goto_3b
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    .line 1265
    .local v13, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1266
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v12, v2, v5

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    .line 1265
    move-object v2, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v18

    move/from16 v9, v17

    move-object/from16 v10, v19

    move/from16 v21, v15

    move-object v15, v13

    .end local v13    # "tl":Landroid/text/TextLine;
    .local v15, "tl":Landroid/text/TextLine;
    .local v21, "end":I
    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1268
    sub-int v2, p1, v14

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-virtual {v15, v2, v4, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    .line 1269
    .local v2, "wid":F
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1271
    if-eqz p4, :cond_7e

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7e

    .line 1272
    int-to-float v2, v3

    .line 1274
    :cond_7e
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1275
    .local v3, "left":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    .line 1277
    .local v5, "right":I
    invoke-direct {v0, v1, v3, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    return v6
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .registers 6
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .line 1242
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1244
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .registers 18
    .param p1, "lineNum"    # I

    .line 372
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 374
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v3, 0x0

    .line 375
    .local v3, "left":I
    iget v4, v0, Landroid/text/Layout;->mWidth:I

    .line 377
    .local v4, "right":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 379
    .local v5, "dir":I
    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 380
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_a0

    .line 381
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    .line 382
    .local v7, "sp":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 384
    .local v9, "start":I
    if-eqz v9, :cond_2d

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v10, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v10, v8

    .line 386
    .local v10, "isFirstParaLine":Z
    :goto_2e
    if-eqz v10, :cond_5b

    .line 387
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 389
    .local v11, "spanEnd":I
    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    .line 391
    array-length v12, v6

    sub-int/2addr v12, v8

    .local v12, "n":I
    :goto_47
    if-ltz v12, :cond_5b

    .line 392
    aget-object v13, v6, v12

    instance-of v13, v13, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_58

    .line 393
    aget-object v13, v6, v12

    check-cast v13, Landroid/text/style/AlignmentSpan;

    invoke-interface {v13}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 394
    goto :goto_5b

    .line 391
    :cond_58
    add-int/lit8 v12, v12, -0x1

    goto :goto_47

    .line 399
    .end local v11    # "spanEnd":I
    .end local v12    # "n":I
    :cond_5b
    :goto_5b
    array-length v11, v6

    .line 400
    .local v11, "length":I
    move v12, v10

    .line 401
    .local v12, "useFirstLineMargin":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_5e
    if-ge v13, v11, :cond_82

    .line 402
    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_7e

    .line 403
    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    .line 404
    .local v14, "count":I
    aget-object v15, v6, v13

    invoke-interface {v7, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 405
    .local v15, "startLine":I
    add-int v8, v15, v14

    if-ge v1, v8, :cond_7e

    .line 406
    const/4 v12, 0x1

    .line 407
    goto :goto_82

    .line 401
    .end local v14    # "count":I
    .end local v15    # "startLine":I
    :cond_7e
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_5e

    .line 411
    .end local v13    # "n":I
    :cond_82
    :goto_82
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_83
    if-ge v8, v11, :cond_a0

    .line 412
    aget-object v13, v6, v8

    instance-of v13, v13, Landroid/text/style/LeadingMarginSpan;

    if-eqz v13, :cond_9d

    .line 413
    aget-object v13, v6, v8

    check-cast v13, Landroid/text/style/LeadingMarginSpan;

    .line 414
    .local v13, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v14, -0x1

    if-ne v5, v14, :cond_98

    .line 415
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_9d

    .line 417
    :cond_98
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    .line 411
    .end local v13    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9d
    :goto_9d
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 424
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "n":I
    .end local v9    # "start":I
    .end local v10    # "isFirstParaLine":Z
    .end local v11    # "length":I
    .end local v12    # "useFirstLineMargin":Z
    :cond_a0
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_ad

    .line 425
    const/4 v7, 0x1

    if-ne v5, v7, :cond_aa

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_ac

    :cond_aa
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .local v7, "align":Landroid/text/Layout$Alignment;
    :goto_ac
    goto :goto_bb

    .line 426
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_ad
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_ba

    .line 427
    const/4 v7, 0x1

    if-ne v5, v7, :cond_b7

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b9

    :cond_b7
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_b9
    goto :goto_bb

    .line 429
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_ba
    move-object v7, v2

    .line 433
    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_bb
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_d1

    .line 434
    const/4 v8, 0x1

    if-ne v5, v8, :cond_c9

    .line 435
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .local v8, "indentWidth":I
    goto :goto_ed

    .line 437
    .end local v8    # "indentWidth":I
    :cond_c9
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_ed

    .line 439
    .end local v8    # "indentWidth":I
    :cond_d1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e7

    .line 440
    const/4 v8, 0x1

    if-ne v5, v8, :cond_e0

    .line 441
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_ed

    .line 443
    .end local v8    # "indentWidth":I
    :cond_e0
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .restart local v8    # "indentWidth":I
    goto :goto_ed

    .line 446
    .end local v8    # "indentWidth":I
    :cond_e7
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 449
    .restart local v8    # "indentWidth":I
    :goto_ed
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 24
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .line 1512
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1513
    .local v13, "start":I
    if-eqz p3, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_11

    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_11
    move v5, v1

    .line 1514
    .local v5, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v14

    .line 1515
    .local v14, "hasTabs":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    .line 1516
    .local v15, "directions":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    .line 1518
    .local v16, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1519
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v11, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1520
    .local v11, "paint":Landroid/text/TextPaint;
    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1521
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1522
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1523
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1524
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v17, v1, v2

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v18

    .line 1523
    move-object v1, v12

    move-object v2, v11

    move v4, v13

    move/from16 v6, v16

    move-object v7, v15

    move v8, v14

    move-object/from16 v9, p2

    move-object/from16 v19, v11

    .end local v11    # "paint":Landroid/text/TextPaint;
    .local v19, "paint":Landroid/text/TextPaint;
    move/from16 v11, v17

    move-object v0, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    move/from16 v12, v18

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1526
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1527
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1529
    :cond_6b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 1530
    .local v1, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1531
    return v1
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .registers 25
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .line 1467
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1468
    .local v13, "start":I
    if-eqz p2, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_11

    :cond_d
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_11
    move v14, v1

    .line 1470
    .local v14, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v15

    .line 1471
    .local v15, "hasTabs":Z
    const/4 v1, 0x0

    .line 1472
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v15, :cond_37

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_37

    .line 1475
    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v13, v14, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1476
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_37

    .line 1477
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v16, v1

    goto :goto_39

    .line 1480
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_37
    move-object/from16 v16, v1

    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .local v16, "tabStops":Landroid/text/Layout$TabStops;
    :goto_39
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    .line 1482
    .local v17, "directions":Landroid/text/Layout$Directions;
    if-nez v17, :cond_41

    .line 1483
    const/4 v1, 0x0

    return v1

    .line 1485
    :cond_41
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    .line 1487
    .local v18, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1488
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v11, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1489
    .local v11, "paint":Landroid/text/TextPaint;
    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1490
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1491
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1492
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1493
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v19, v1, v2

    .line 1494
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    .line 1492
    move-object v1, v12

    move-object v2, v11

    move v4, v13

    move v5, v14

    move/from16 v6, v18

    move-object/from16 v7, v17

    move v8, v15

    move-object/from16 v9, v16

    move-object/from16 v21, v11

    .end local v11    # "paint":Landroid/text/TextPaint;
    .local v21, "paint":Landroid/text/TextPaint;
    move/from16 v11, v19

    move-object v0, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    move/from16 v12, v20

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1495
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1496
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1498
    :cond_94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 1499
    .local v1, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1500
    return v1
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .registers 25
    .param p1, "line"    # I
    .param p2, "clamped"    # Z
    .param p3, "primary"    # Z

    .line 1289
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1290
    .local v13, "start":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 1291
    .local v14, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    .line 1292
    .local v15, "dir":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v16

    .line 1293
    .local v16, "hasTab":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    .line 1295
    .local v17, "directions":Landroid/text/Layout$Directions;
    const/4 v1, 0x0

    .line 1296
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v16, :cond_37

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_37

    .line 1299
    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v13, v14, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1300
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_37

    .line 1301
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v18, v1

    goto :goto_39

    .line 1305
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_37
    move-object/from16 v18, v1

    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .local v18, "tabStops":Landroid/text/Layout$TabStops;
    :goto_39
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1306
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1307
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    add-int v11, v1, v4

    .line 1308
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v19

    .line 1306
    move-object v1, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move-object/from16 v7, v17

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v20, v15

    move-object v15, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v15, "tl":Landroid/text/TextLine;
    .local v20, "dir":I
    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1309
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    .line 1310
    .local v1, "trailings":[Z
    if-nez p3, :cond_78

    .line 1311
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_6c
    array-length v3, v1

    if-ge v2, v3, :cond_78

    .line 1312
    aget-boolean v3, v1, v2

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v1, v2

    .line 1311
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1315
    .end local v2    # "offset":I
    :cond_78
    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v2

    .line 1316
    .local v2, "wid":[F
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1318
    if-eqz p2, :cond_95

    .line 1319
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_83
    array-length v4, v2

    if-ge v3, v4, :cond_95

    .line 1320
    aget v4, v2, v3

    iget v5, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_92

    .line 1321
    int-to-float v4, v5

    aput v4, v2, v3

    .line 1319
    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    .line 1325
    .end local v3    # "offset":I
    :cond_95
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1326
    .local v3, "left":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1328
    .local v4, "right":I
    move/from16 v5, p1

    invoke-direct {v0, v5, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    .line 1329
    .local v6, "lineStartPos":I
    sub-int v7, v14, v13

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [F

    .line 1330
    .local v7, "horizontal":[F
    const/4 v8, 0x0

    .local v8, "offset":I
    :goto_aa
    array-length v9, v7

    if-ge v8, v9, :cond_b6

    .line 1331
    int-to-float v9, v6

    aget v10, v2, v8

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 1330
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    .line 1333
    .end local v8    # "offset":I
    :cond_b6
    return-object v7
.end method

.method private greylist-max-o getLineStartPos(III)I
    .registers 14
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 745
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 746
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 748
    .local v1, "dir":I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    .line 749
    if-ne v1, v3, :cond_12

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_14
    move-object v0, v2

    goto :goto_22

    .line 750
    :cond_16
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_22

    .line 751
    if-ne v1, v3, :cond_1f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_21

    :cond_1f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_21
    move-object v0, v2

    .line 755
    :cond_22
    :goto_22
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_38

    .line 756
    if-ne v1, v3, :cond_30

    .line 757
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    .local v2, "x":I
    goto :goto_99

    .line 759
    .end local v2    # "x":I
    :cond_30
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    .restart local v2    # "x":I
    goto :goto_99

    .line 762
    .end local v2    # "x":I
    :cond_38
    const/4 v2, 0x0

    .line 763
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_68

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 764
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 765
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 766
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 768
    .local v6, "spanEnd":I
    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    .line 770
    .local v7, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v8, v7

    if-lez v8, :cond_68

    .line 771
    new-instance v8, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v8

    .line 774
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "spanEnd":I
    .end local v7    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_68
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    .line 775
    .local v4, "max":I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8a

    .line 776
    if-ne v1, v3, :cond_7f

    .line 777
    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .local v3, "x":I
    goto :goto_99

    .line 780
    .end local v3    # "x":I
    :cond_7f
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .restart local v3    # "x":I
    goto :goto_99

    .line 783
    .end local v3    # "x":I
    :cond_8a
    and-int/lit8 v4, v4, -0x2

    .line 784
    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v6, v3

    shr-int v3, v5, v6

    move v2, v3

    .line 787
    .end local v4    # "max":I
    .local v2, "x":I
    :goto_99
    return v2
.end method

.method private greylist-max-o getLineVisibleEnd(III)I
    .registers 7
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1746
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1748
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_b

    .line 1749
    return p3

    .line 1752
    :cond_b
    :goto_b
    if-le p3, p2, :cond_24

    .line 1753
    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1755
    .local v1, "ch":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1a

    .line 1756
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 1759
    :cond_1a
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1760
    goto :goto_24

    .line 1752
    :cond_21
    add-int/lit8 p3, p3, -0x1

    goto :goto_b

    .line 1765
    .end local v1    # "ch":C
    :cond_24
    :goto_24
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .registers 9
    .param p1, "offset"    # I

    .line 1878
    if-nez p1, :cond_4

    .line 1879
    const/4 v0, 0x0

    return v0

    .line 1881
    :cond_4
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1882
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1884
    .local v1, "c":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_26

    const v2, 0xdfff

    if-gt v1, v2, :cond_26

    .line 1885
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1887
    .local v2, "c1":C
    const v3, 0xd800

    if-lt v2, v3, :cond_26

    const v3, 0xdbff

    if-gt v2, v3, :cond_26

    .line 1888
    add-int/lit8 p1, p1, -0x1

    .line 1891
    .end local v2    # "c1":C
    :cond_26
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_53

    .line 1892
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 1895
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    array-length v4, v2

    if-ge v3, v4, :cond_53

    .line 1896
    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1897
    .local v4, "start":I
    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1899
    .local v5, "end":I
    if-ge v4, p1, :cond_50

    if-le v5, p1, :cond_50

    .line 1900
    move p1, v4

    .line 1895
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 1904
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_53
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .registers 25
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .line 1822
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1823
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1824
    .local v4, "lineStart":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1825
    .local v5, "lineEnd":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1827
    .local v6, "lineDir":I
    const/4 v7, 0x0

    .line 1828
    .local v7, "lineChanged":Z
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v6, v9, :cond_1e

    move v9, v10

    goto :goto_1f

    :cond_1e
    move v9, v8

    :goto_1f
    if-ne v2, v9, :cond_22

    move v8, v10

    .line 1830
    .local v8, "advance":Z
    :cond_22
    if-eqz v8, :cond_32

    .line 1831
    if-ne v1, v5, :cond_3b

    .line 1832
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_31

    .line 1833
    const/4 v7, 0x1

    .line 1834
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1836
    :cond_31
    return v1

    .line 1840
    :cond_32
    if-ne v1, v4, :cond_3b

    .line 1841
    if-lez v3, :cond_3a

    .line 1842
    const/4 v7, 0x1

    .line 1843
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 1845
    :cond_3a
    return v1

    .line 1850
    :cond_3b
    :goto_3b
    if-eqz v7, :cond_4f

    .line 1851
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1852
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1853
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    .line 1854
    .local v9, "newDir":I
    if-eq v9, v6, :cond_4f

    .line 1858
    xor-int/lit8 v10, v2, 0x1

    move v2, v10

    .line 1859
    .end local p2    # "toLeft":Z
    .local v2, "toLeft":Z
    move v6, v9

    .line 1863
    .end local v9    # "newDir":I
    :cond_4f
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v21

    .line 1865
    .local v21, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    .line 1867
    .local v15, "tl":Landroid/text/TextLine;
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1868
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    add-int v19, v9, v12

    .line 1869
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    .line 1867
    move-object v9, v15

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v0, v15

    .end local v15    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    move-object/from16 v15, v21

    invoke-virtual/range {v9 .. v20}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1870
    sub-int v9, v1, v4

    invoke-virtual {v0, v9, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v9

    add-int/2addr v9, v4

    .line 1871
    .end local p1    # "caret":I
    .local v9, "caret":I
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1872
    return v9
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .registers 16
    .param p1, "line"    # I

    .line 2169
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2170
    return v1

    .line 2172
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 2174
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2175
    .local v2, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 2176
    .local v3, "lineEnd":I
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 2178
    .local v4, "spanEnd":I
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    .line 2180
    .local v5, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v6, v5

    if-nez v6, :cond_24

    .line 2181
    return v1

    .line 2184
    :cond_24
    const/4 v6, 0x0

    .line 2186
    .local v6, "margin":I
    const/4 v7, 0x1

    if-eqz v2, :cond_35

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_33

    goto :goto_35

    :cond_33
    move v8, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v8, v7

    .line 2187
    .local v8, "useFirstLineMargin":Z
    :goto_36
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_37
    array-length v10, v5

    if-ge v9, v10, :cond_5d

    .line 2188
    aget-object v10, v5, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5a

    .line 2189
    aget-object v10, v5, v9

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 2190
    .local v10, "spStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 2191
    .local v11, "spanLine":I
    aget-object v12, v5, v9

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 2193
    .local v12, "count":I
    add-int v13, v11, v12

    if-ge p1, v13, :cond_58

    move v13, v7

    goto :goto_59

    :cond_58
    move v13, v1

    :goto_59
    or-int/2addr v8, v13

    .line 2187
    .end local v10    # "spStart":I
    .end local v11    # "spanLine":I
    .end local v12    # "count":I
    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 2196
    .end local v9    # "i":I
    :cond_5d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    array-length v7, v5

    if-ge v1, v7, :cond_6b

    .line 2197
    aget-object v7, v5, v1

    .line 2198
    .local v7, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v6, v9

    .line 2196
    .end local v7    # "span":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 2201
    .end local v1    # "i":I
    :cond_6b
    return v6
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
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

    .line 2390
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_9

    if-lez p1, :cond_9

    .line 2391
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2394
    :cond_9
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_16

    .line 2395
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2397
    :cond_16
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .registers 6
    .param p1, "lineNum"    # I

    .line 366
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 367
    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 368
    .local v0, "lineEnd":I
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method static synthetic blacklist lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V
    .registers 12
    .param p0, "dest"    # Landroid/graphics/Path;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 2044
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private static greylist-max-o measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .registers 29
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 2206
    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    const/4 v1, 0x0

    .line 2207
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 2209
    .local v12, "tl":Landroid/text/TextLine;
    move-object/from16 v11, p4

    :try_start_d
    invoke-static {v13, v14, v15, v11, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_ea

    move-object v10, v0

    .line 2210
    .end local v1    # "mt":Landroid/text/MeasuredParagraph;
    .local v10, "mt":Landroid/text/MeasuredParagraph;
    :try_start_12
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    .line 2211
    .local v0, "chars":[C
    array-length v1, v0

    move v9, v1

    .line 2212
    .local v9, "len":I
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 2213
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 2214
    .local v6, "dir":I
    const/4 v2, 0x0

    .line 2215
    .local v2, "hasTabs":Z
    const/4 v3, 0x0

    .line 2217
    .local v3, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v4, 0x0

    .line 2218
    .local v4, "margin":I
    instance-of v5, v13, Landroid/text/Spanned;
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_e3

    if-eqz v5, :cond_5b

    .line 2219
    :try_start_28
    move-object v5, v13

    check-cast v5, Landroid/text/Spanned;

    .line 2220
    .local v5, "spanned":Landroid/text/Spanned;
    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v5, v14, v15, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    .line 2222
    .local v8, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v1, v8

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "margin":I
    .local v16, "margin":I
    :goto_37
    if-ge v4, v1, :cond_51

    aget-object v17, v8, v4

    move-object/from16 v18, v17

    .line 2223
    .local v18, "lms":Landroid/text/style/LeadingMarginSpan;
    move/from16 v17, v1

    const/4 v1, 0x1

    move/from16 v19, v2

    move-object/from16 v2, v18

    .end local v18    # "lms":Landroid/text/style/LeadingMarginSpan;
    .local v2, "lms":Landroid/text/style/LeadingMarginSpan;
    .local v19, "hasTabs":Z
    invoke-interface {v2, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    add-int v16, v16, v1

    .line 2222
    .end local v2    # "lms":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move/from16 v2, v19

    goto :goto_37

    .end local v19    # "hasTabs":Z
    .local v2, "hasTabs":Z
    :cond_51
    move/from16 v19, v2

    .end local v2    # "hasTabs":Z
    .restart local v19    # "hasTabs":Z
    move/from16 v8, v16

    goto :goto_5e

    .line 2247
    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v5    # "spanned":Landroid/text/Spanned;
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "spans":[Landroid/text/style/LeadingMarginSpan;
    .end local v9    # "len":I
    .end local v16    # "margin":I
    .end local v19    # "hasTabs":Z
    :catchall_56
    move-exception v0

    move-object v1, v10

    move-object v13, v12

    goto/16 :goto_ec

    .line 2218
    .restart local v0    # "chars":[C
    .restart local v2    # "hasTabs":Z
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v4    # "margin":I
    .restart local v6    # "dir":I
    .restart local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v9    # "len":I
    :cond_5b
    move/from16 v19, v2

    .end local v2    # "hasTabs":Z
    .restart local v19    # "hasTabs":Z
    move v8, v4

    .line 2226
    .end local v4    # "margin":I
    .local v8, "margin":I
    :goto_5e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    if-ge v1, v9, :cond_a2

    .line 2227
    aget-char v2, v0, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_9b

    .line 2228
    const/4 v2, 0x1

    .line 2229
    .end local v19    # "hasTabs":Z
    .restart local v2    # "hasTabs":Z
    instance-of v4, v13, Landroid/text/Spanned;

    if-eqz v4, :cond_94

    .line 2230
    move-object v4, v13

    check-cast v4, Landroid/text/Spanned;

    .line 2231
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v14, v15, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 2233
    .local v5, "spanEnd":I
    move-object/from16 v16, v0

    .end local v0    # "chars":[C
    .local v16, "chars":[C
    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v14, v5, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 2235
    .local v0, "spans":[Landroid/text/style/TabStopSpan;
    move/from16 v17, v2

    .end local v2    # "hasTabs":Z
    .local v17, "hasTabs":Z
    array-length v2, v0

    if-lez v2, :cond_8f

    .line 2236
    new-instance v2, Landroid/text/Layout$TabStops;

    move-object/from16 v18, v3

    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .local v18, "tabStops":Landroid/text/Layout$TabStops;
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v2, v3, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_28 .. :try_end_8d} :catchall_56

    move-object v3, v2

    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_91

    .line 2235
    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_8f
    move-object/from16 v18, v3

    .line 2238
    .end local v0    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spanEnd":I
    :goto_91
    move-object/from16 v18, v3

    goto :goto_a8

    .line 2229
    .end local v16    # "chars":[C
    .end local v17    # "hasTabs":Z
    .local v0, "chars":[C
    .local v2, "hasTabs":Z
    :cond_94
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v0    # "chars":[C
    .end local v2    # "hasTabs":Z
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "chars":[C
    .restart local v17    # "hasTabs":Z
    .restart local v18    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_a8

    .line 2226
    .end local v16    # "chars":[C
    .end local v17    # "hasTabs":Z
    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "chars":[C
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v19    # "hasTabs":Z
    :cond_9b
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "chars":[C
    .restart local v18    # "tabStops":Landroid/text/Layout$TabStops;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .end local v16    # "chars":[C
    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "chars":[C
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_a2
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "chars":[C
    .restart local v18    # "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v17, v19

    .line 2242
    .end local v1    # "i":I
    .end local v19    # "hasTabs":Z
    .restart local v17    # "hasTabs":Z
    :goto_a8
    const/4 v0, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v21, v8

    .end local v8    # "margin":I
    .local v21, "margin":I
    move/from16 v8, v17

    move/from16 v22, v9

    .end local v9    # "len":I
    .local v22, "len":I
    move-object/from16 v9, v18

    move-object/from16 v23, v10

    .end local v10    # "mt":Landroid/text/MeasuredParagraph;
    .local v23, "mt":Landroid/text/MeasuredParagraph;
    move v10, v0

    move/from16 v11, v19

    move-object v13, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v13, "tl":Landroid/text/TextLine;
    move/from16 v12, v20

    :try_start_c6
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2245
    move/from16 v4, v21

    .end local v21    # "margin":I
    .local v4, "margin":I
    int-to-float v0, v4

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_d5
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_df

    add-float/2addr v0, v1

    .line 2247
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2248
    if-eqz v23, :cond_de

    .line 2249
    invoke-virtual/range {v23 .. v23}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 2245
    :cond_de
    return v0

    .line 2247
    .end local v4    # "margin":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v16    # "chars":[C
    .end local v17    # "hasTabs":Z
    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v22    # "len":I
    :catchall_df
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_ec

    .end local v13    # "tl":Landroid/text/TextLine;
    .end local v23    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v12    # "tl":Landroid/text/TextLine;
    :catchall_e3
    move-exception v0

    move-object/from16 v23, v10

    move-object v13, v12

    move-object/from16 v1, v23

    .end local v10    # "mt":Landroid/text/MeasuredParagraph;
    .end local v12    # "tl":Landroid/text/TextLine;
    .restart local v13    # "tl":Landroid/text/TextLine;
    .restart local v23    # "mt":Landroid/text/MeasuredParagraph;
    goto :goto_ec

    .end local v13    # "tl":Landroid/text/TextLine;
    .end local v23    # "mt":Landroid/text/MeasuredParagraph;
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    .restart local v12    # "tl":Landroid/text/TextLine;
    :catchall_ea
    move-exception v0

    move-object v13, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .restart local v13    # "tl":Landroid/text/TextLine;
    :goto_ec
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2248
    if-eqz v1, :cond_f4

    .line 2249
    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 2251
    :cond_f4
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .line 2333
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2334
    .local v0, "nh":F
    const/4 v1, 0x0

    .line 2336
    .local v1, "alltabs":Z
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_3f

    .line 2337
    if-nez p4, :cond_14

    .line 2338
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 2339
    const/4 v1, 0x1

    .line 2342
    :cond_14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, p4

    if-ge v2, v3, :cond_37

    .line 2343
    if-nez v1, :cond_21

    .line 2344
    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_21

    .line 2345
    goto :goto_34

    .line 2348
    :cond_21
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 2350
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_34

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_34

    .line 2351
    int-to-float v0, v3

    .line 2342
    .end local v3    # "where":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2354
    .end local v2    # "i":I
    :cond_37
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3f

    .line 2355
    return v0

    .line 2358
    :cond_3f
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    return v3
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 340
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 341
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .line 355
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 356
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 357
    .local v9, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 358
    .local v10, "lastLine":I
    if-gez v10, :cond_f

    return-void

    .line 360
    :cond_f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 362
    invoke-virtual {p0, p1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 363
    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    iget-boolean v1, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_136

    .line 639
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v1, :cond_19

    .line 640
    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 643
    :cond_19
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v1

    check-cast v12, Landroid/text/Spanned;

    .line 644
    .local v12, "buffer":Landroid/text/Spanned;
    invoke-interface {v12}, Landroid/text/Spanned;->length()I

    move-result v11

    .line 645
    .local v11, "textLength":I
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v11}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 647
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v1, :cond_12d

    .line 648
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 649
    .local v1, "previousLineBottom":I
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 650
    .local v2, "previousLineEnd":I
    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 651
    .local v3, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v4, 0x0

    .line 652
    .local v4, "spansLength":I
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 653
    .local v10, "paint":Landroid/text/TextPaint;
    const/4 v5, 0x0

    .line 654
    .local v5, "spanEnd":I
    iget v9, v0, Landroid/text/Layout;->mWidth:I

    .line 655
    .local v9, "width":I
    move/from16 v6, p5

    move v8, v6

    .local v8, "i":I
    :goto_41
    move/from16 v7, p6

    if-gt v8, v7, :cond_11c

    .line 656
    move v6, v2

    .line 657
    .local v6, "start":I
    move/from16 v16, v2

    .end local v2    # "previousLineEnd":I
    .local v16, "previousLineEnd":I
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 658
    .local v2, "end":I
    move/from16 v16, v2

    .line 660
    move/from16 v17, v4

    move v4, v6

    .end local v6    # "start":I
    .local v4, "start":I
    .local v17, "spansLength":I
    move v6, v1

    .line 661
    .local v6, "ltop":I
    move/from16 v18, v1

    .end local v1    # "previousLineBottom":I
    .local v18, "previousLineBottom":I
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 662
    .local v19, "lbottom":I
    move/from16 v18, v19

    .line 663
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int v20, v19, v1

    .line 665
    .local v20, "lbaseline":I
    if-lt v2, v5, :cond_af

    .line 668
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v4, v11}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    .line 670
    .end local v5    # "spanEnd":I
    .local v1, "spanEnd":I
    const/4 v5, 0x0

    .line 672
    .end local v17    # "spansLength":I
    .local v5, "spansLength":I
    if-ne v4, v2, :cond_78

    if-nez v4, :cond_72

    goto :goto_78

    :cond_72
    move/from16 v21, v1

    move-object/from16 v17, v3

    move v7, v5

    goto :goto_b5

    .line 675
    :cond_78
    :goto_78
    const/16 v17, 0x0

    move/from16 v21, v1

    move/from16 v1, v17

    .local v1, "j":I
    .local v21, "spanEnd":I
    :goto_7e
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v7, :cond_ab

    .line 678
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanStarts:[I

    aget v7, v7, v1

    if-ge v7, v2, :cond_a6

    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanEnds:[I

    aget v7, v7, v1

    if-gt v7, v4, :cond_95

    .line 679
    goto :goto_a6

    .line 680
    :cond_95
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v7, [Landroid/text/style/LineBackgroundSpan;

    aget-object v7, v7, v1

    invoke-static {v3, v5, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 682
    add-int/lit8 v5, v5, 0x1

    .line 675
    :cond_a6
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p6

    goto :goto_7e

    :cond_ab
    move-object/from16 v17, v3

    move v7, v5

    goto :goto_b5

    .line 665
    .end local v1    # "j":I
    .end local v21    # "spanEnd":I
    .local v5, "spanEnd":I
    .restart local v17    # "spansLength":I
    :cond_af
    move/from16 v21, v5

    move/from16 v7, v17

    move-object/from16 v17, v3

    .line 687
    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "spanEnd":I
    .local v7, "spansLength":I
    .local v17, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v21    # "spanEnd":I
    :goto_b5
    const/4 v1, 0x0

    move v5, v1

    .local v5, "n":I
    :goto_b7
    if-ge v5, v7, :cond_fc

    .line 688
    aget-object v1, v17, v5

    move-object/from16 v22, v1

    check-cast v22, Landroid/text/style/LineBackgroundSpan;

    .line 689
    .local v22, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/16 v23, 0x0

    move-object/from16 v1, v22

    move/from16 v24, v2

    .end local v2    # "end":I
    .local v24, "end":I
    move-object/from16 v2, p1

    move-object v3, v10

    move/from16 v25, v4

    .end local v4    # "start":I
    .local v25, "start":I
    move/from16 v4, v23

    move/from16 v23, v5

    .end local v5    # "n":I
    .local v23, "n":I
    move v5, v9

    move/from16 v26, v7

    .end local v7    # "spansLength":I
    .local v26, "spansLength":I
    move/from16 v7, v20

    move/from16 v27, v8

    .end local v8    # "i":I
    .local v27, "i":I
    move/from16 v8, v19

    move/from16 v28, v9

    .end local v9    # "width":I
    .local v28, "width":I
    move-object v9, v12

    move-object/from16 v29, v10

    .end local v10    # "paint":Landroid/text/TextPaint;
    .local v29, "paint":Landroid/text/TextPaint;
    move/from16 v10, v25

    move/from16 v30, v11

    .end local v11    # "textLength":I
    .local v30, "textLength":I
    move/from16 v11, v24

    move-object/from16 v31, v12

    .end local v12    # "buffer":Landroid/text/Spanned;
    .local v31, "buffer":Landroid/text/Spanned;
    move/from16 v12, v27

    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 687
    .end local v22    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    add-int/lit8 v5, v23, 0x1

    move/from16 v2, v24

    move/from16 v4, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move-object/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v12, v31

    .end local v23    # "n":I
    .restart local v5    # "n":I
    goto :goto_b7

    .end local v24    # "end":I
    .end local v25    # "start":I
    .end local v26    # "spansLength":I
    .end local v27    # "i":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    .restart local v2    # "end":I
    .restart local v4    # "start":I
    .restart local v7    # "spansLength":I
    .restart local v8    # "i":I
    .restart local v9    # "width":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_fc
    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v23, v5

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v12

    .line 655
    .end local v2    # "end":I
    .end local v4    # "start":I
    .end local v5    # "n":I
    .end local v6    # "ltop":I
    .end local v7    # "spansLength":I
    .end local v8    # "i":I
    .end local v9    # "width":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .end local v19    # "lbottom":I
    .end local v20    # "lbaseline":I
    .restart local v26    # "spansLength":I
    .restart local v27    # "i":I
    .restart local v28    # "width":I
    .restart local v29    # "paint":Landroid/text/TextPaint;
    .restart local v30    # "textLength":I
    .restart local v31    # "buffer":Landroid/text/Spanned;
    add-int/lit8 v8, v27, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v1, v18

    move/from16 v5, v21

    move/from16 v4, v26

    .end local v27    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_41

    .end local v16    # "previousLineEnd":I
    .end local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v18    # "previousLineBottom":I
    .end local v21    # "spanEnd":I
    .end local v26    # "spansLength":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    .local v1, "previousLineBottom":I
    .local v2, "previousLineEnd":I
    .restart local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v4, "spansLength":I
    .local v5, "spanEnd":I
    .restart local v9    # "width":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_11c
    move/from16 v18, v1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v12

    .end local v1    # "previousLineBottom":I
    .end local v2    # "previousLineEnd":I
    .end local v4    # "spansLength":I
    .end local v8    # "i":I
    .end local v9    # "width":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .restart local v16    # "previousLineEnd":I
    .local v17, "spansLength":I
    .restart local v18    # "previousLineBottom":I
    .restart local v27    # "i":I
    .restart local v28    # "width":I
    .restart local v29    # "paint":Landroid/text/TextPaint;
    .restart local v30    # "textLength":I
    .restart local v31    # "buffer":Landroid/text/Spanned;
    goto :goto_131

    .line 647
    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "spanEnd":I
    .end local v16    # "previousLineEnd":I
    .end local v17    # "spansLength":I
    .end local v18    # "previousLineBottom":I
    .end local v27    # "i":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_12d
    move/from16 v30, v11

    move-object/from16 v31, v12

    .line 695
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .restart local v30    # "textLength":I
    .restart local v31    # "buffer":Landroid/text/Spanned;
    :goto_131
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 700
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    :cond_136
    if-eqz p2, :cond_149

    .line 701
    const/4 v1, 0x0

    if-eqz v14, :cond_13f

    int-to-float v2, v14

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 702
    :cond_13f
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 703
    if-eqz v14, :cond_149

    neg-int v2, v14

    int-to-float v2, v2

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 705
    :cond_149
    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .registers 50
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 457
    move-object/from16 v15, p0

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 458
    .local v0, "previousLineBottom":I
    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 459
    .local v1, "previousLineEnd":I
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 460
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v3, 0x0

    .line 461
    .local v3, "spanEnd":I
    iget-object v13, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 462
    .local v13, "paint":Landroid/text/TextPaint;
    iget-object v4, v15, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 463
    iget-object v12, v15, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 465
    .local v12, "buf":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getPostAlpha()Z

    move-result v5

    const/4 v11, 0x0

    invoke-interface {v4, v11, v13, v5}, Landroid/graphics/FontManagerStub;->drawTextBegin(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)I

    move-result v10

    .line 468
    .local v10, "alphaValue":I
    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 469
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v5, 0x0

    .line 470
    .local v5, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v6, 0x0

    .line 472
    .local v6, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v9

    .line 476
    .local v9, "tl":Landroid/text/TextLine;
    move/from16 v7, p2

    move-object v8, v5

    .end local v5    # "tabStops":Landroid/text/Layout$TabStops;
    .local v7, "lineNum":I
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    :goto_30
    move/from16 v5, p3

    if-gt v7, v5, :cond_387

    .line 477
    move/from16 v20, v1

    .line 478
    .local v20, "start":I
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v15, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    .line 479
    .end local v1    # "previousLineEnd":I
    .local v11, "previousLineEnd":I
    invoke-direct {v15, v7}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v21

    .line 480
    .local v21, "justify":Z
    nop

    .end local v20    # "start":I
    .local v1, "start":I
    invoke-direct {v15, v7, v1, v11}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v20

    .line 481
    .local v20, "end":I
    move-object/from16 v17, v2

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v17, "spans":[Landroid/text/style/ParagraphStyle;
    invoke-virtual {v15, v7}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 482
    invoke-virtual {v15, v7}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 484
    move v5, v0

    .line 485
    .local v5, "ltop":I
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v15, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v22

    .line 486
    .local v22, "lbottom":I
    move/from16 v23, v22

    .line 487
    .end local v0    # "previousLineBottom":I
    .local v23, "previousLineBottom":I
    invoke-virtual {v15, v7}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    sub-int v2, v22, v0

    .line 489
    .local v2, "lbaseline":I
    invoke-virtual {v15, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 490
    .local v0, "dir":I
    const/16 v18, 0x0

    .line 491
    .local v18, "left":I
    move/from16 v19, v2

    .end local v2    # "lbaseline":I
    .local v19, "lbaseline":I
    iget v2, v15, Landroid/text/Layout;->mWidth:I

    .line 493
    .local v2, "right":I
    move/from16 v24, v2

    .end local v2    # "right":I
    .local v24, "right":I
    iget-boolean v2, v15, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v25, v5

    .end local v5    # "ltop":I
    .local v25, "ltop":I
    if-eqz v2, :cond_228

    .line 494
    move-object v2, v12

    check-cast v2, Landroid/text/Spanned;

    .line 495
    .local v2, "sp":Landroid/text/Spanned;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 496
    .local v5, "textLength":I
    if-eqz v1, :cond_90

    move-object/from16 v28, v4

    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v28, "paraAlign":Landroid/text/Layout$Alignment;
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v12, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move/from16 v29, v6

    .end local v6    # "tabStopsIsInitialized":Z
    .local v29, "tabStopsIsInitialized":Z
    const/16 v6, 0xa

    if-ne v4, v6, :cond_8e

    goto :goto_94

    :cond_8e
    const/4 v4, 0x0

    goto :goto_95

    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v29    # "tabStopsIsInitialized":Z
    .restart local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v6    # "tabStopsIsInitialized":Z
    :cond_90
    move-object/from16 v28, v4

    move/from16 v29, v6

    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v6    # "tabStopsIsInitialized":Z
    .restart local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v29    # "tabStopsIsInitialized":Z
    :goto_94
    const/4 v4, 0x1

    :goto_95
    move/from16 v30, v4

    .line 508
    .local v30, "isFirstParaLine":Z
    if-lt v1, v3, :cond_dc

    if-eq v7, v14, :cond_a3

    if-eqz v30, :cond_9e

    goto :goto_a3

    :cond_9e
    move/from16 v31, v1

    const/16 v27, 0x1

    goto :goto_e0

    .line 509
    :cond_a3
    :goto_a3
    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v1, v5, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 511
    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-static {v2, v1, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    .line 513
    .end local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v4, "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v6, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 514
    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v6, "paraAlign":Landroid/text/Layout$Alignment;
    move/from16 v31, v1

    .end local v1    # "start":I
    .local v31, "start":I
    array-length v1, v4

    const/16 v27, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "n":I
    :goto_ba
    if-ltz v1, :cond_d2

    .line 515
    move/from16 v32, v3

    .end local v3    # "spanEnd":I
    .local v32, "spanEnd":I
    aget-object v3, v4, v1

    instance-of v3, v3, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_cd

    .line 516
    aget-object v3, v4, v1

    check-cast v3, Landroid/text/style/AlignmentSpan;

    invoke-interface {v3}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 517
    .end local v6    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v3, "paraAlign":Landroid/text/Layout$Alignment;
    goto :goto_d5

    .line 514
    .end local v3    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v6    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_cd
    add-int/lit8 v1, v1, -0x1

    move/from16 v3, v32

    goto :goto_ba

    .end local v32    # "spanEnd":I
    .local v3, "spanEnd":I
    :cond_d2
    move/from16 v32, v3

    .end local v3    # "spanEnd":I
    .restart local v32    # "spanEnd":I
    move-object v3, v6

    .line 521
    .end local v1    # "n":I
    .end local v6    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v3, "paraAlign":Landroid/text/Layout$Alignment;
    :goto_d5
    const/4 v1, 0x0

    move/from16 v29, v1

    move-object/from16 v28, v3

    move-object v6, v4

    .end local v29    # "tabStopsIsInitialized":Z
    .local v1, "tabStopsIsInitialized":Z
    goto :goto_e4

    .line 508
    .end local v4    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v31    # "start":I
    .end local v32    # "spanEnd":I
    .local v1, "start":I
    .local v3, "spanEnd":I
    .restart local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v29    # "tabStopsIsInitialized":Z
    :cond_dc
    move/from16 v31, v1

    const/16 v27, 0x1

    .line 526
    .end local v1    # "start":I
    .restart local v31    # "start":I
    :goto_e0
    move/from16 v32, v3

    move-object/from16 v6, v17

    .end local v3    # "spanEnd":I
    .end local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v32    # "spanEnd":I
    :goto_e4
    array-length v4, v6

    .line 527
    .local v4, "length":I
    move/from16 v1, v30

    .line 528
    .local v1, "useFirstLineMargin":Z
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_e8
    if-ge v3, v4, :cond_11c

    .line 529
    move/from16 v17, v1

    .end local v1    # "useFirstLineMargin":Z
    .local v17, "useFirstLineMargin":Z
    aget-object v1, v6, v3

    instance-of v1, v1, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v1, :cond_10f

    .line 530
    aget-object v1, v6, v3

    check-cast v1, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v1}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 531
    .local v1, "count":I
    move/from16 v33, v5

    .end local v5    # "textLength":I
    .local v33, "textLength":I
    aget-object v5, v6, v3

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 534
    .local v5, "startLine":I
    move-object/from16 v34, v2

    .end local v2    # "sp":Landroid/text/Spanned;
    .local v34, "sp":Landroid/text/Spanned;
    add-int v2, v5, v1

    if-ge v7, v2, :cond_113

    .line 535
    const/4 v2, 0x1

    .line 536
    .end local v17    # "useFirstLineMargin":Z
    .local v2, "useFirstLineMargin":Z
    move v5, v2

    goto :goto_124

    .line 529
    .end local v1    # "count":I
    .end local v33    # "textLength":I
    .end local v34    # "sp":Landroid/text/Spanned;
    .local v2, "sp":Landroid/text/Spanned;
    .local v5, "textLength":I
    .restart local v17    # "useFirstLineMargin":Z
    :cond_10f
    move-object/from16 v34, v2

    move/from16 v33, v5

    .line 528
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v5    # "textLength":I
    .restart local v33    # "textLength":I
    .restart local v34    # "sp":Landroid/text/Spanned;
    :cond_113
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v17

    move/from16 v5, v33

    move-object/from16 v2, v34

    goto :goto_e8

    .end local v17    # "useFirstLineMargin":Z
    .end local v33    # "textLength":I
    .end local v34    # "sp":Landroid/text/Spanned;
    .local v1, "useFirstLineMargin":Z
    .restart local v2    # "sp":Landroid/text/Spanned;
    .restart local v5    # "textLength":I
    :cond_11c
    move/from16 v17, v1

    move-object/from16 v34, v2

    move/from16 v33, v5

    .end local v1    # "useFirstLineMargin":Z
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v5    # "textLength":I
    .restart local v17    # "useFirstLineMargin":Z
    .restart local v33    # "textLength":I
    .restart local v34    # "sp":Landroid/text/Spanned;
    move/from16 v5, v17

    .line 540
    .end local v3    # "n":I
    .end local v17    # "useFirstLineMargin":Z
    .local v5, "useFirstLineMargin":Z
    :goto_124
    const/4 v1, 0x0

    move v3, v1

    move/from16 v35, v18

    .end local v18    # "left":I
    .restart local v3    # "n":I
    .local v35, "left":I
    :goto_128
    if-ge v3, v4, :cond_202

    .line 541
    aget-object v1, v6, v3

    instance-of v1, v1, Landroid/text/style/LeadingMarginSpan;

    if-eqz v1, :cond_1be

    .line 542
    aget-object v1, v6, v3

    move-object v2, v1

    check-cast v2, Landroid/text/style/LeadingMarginSpan;

    .line 543
    .local v2, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17a

    .line 544
    move v1, v0

    .end local v0    # "dir":I
    .local v1, "dir":I
    move-object v0, v2

    move/from16 v36, v1

    .end local v1    # "dir":I
    .local v36, "dir":I
    move-object/from16 v1, p1

    move-object v15, v2

    move/from16 v37, v19

    move-object/from16 v19, v34

    .end local v2    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v34    # "sp":Landroid/text/Spanned;
    .local v15, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v19, "sp":Landroid/text/Spanned;
    .local v37, "lbaseline":I
    move-object v2, v13

    move/from16 v34, v3

    .end local v3    # "n":I
    .local v34, "n":I
    move/from16 v3, v24

    move/from16 v38, v4

    .end local v4    # "length":I
    .local v38, "length":I
    move/from16 v4, v36

    move-object/from16 v39, v6

    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    move/from16 v6, v37

    move/from16 v40, v7

    .end local v7    # "lineNum":I
    .local v40, "lineNum":I
    move/from16 v7, v22

    move-object/from16 v41, v8

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    move-object v8, v12

    move-object/from16 v42, v9

    .end local v9    # "tl":Landroid/text/TextLine;
    .local v42, "tl":Landroid/text/TextLine;
    move/from16 v9, v31

    move/from16 v43, v10

    .end local v10    # "alphaValue":I
    .local v43, "alphaValue":I
    move/from16 v10, v20

    move/from16 v44, v11

    .end local v11    # "previousLineEnd":I
    .local v44, "previousLineEnd":I
    move/from16 v11, v30

    move-object/from16 v45, v12

    .end local v12    # "buf":Ljava/lang/CharSequence;
    .local v45, "buf":Ljava/lang/CharSequence;
    move-object/from16 v12, p0

    move v14, v5

    move/from16 v5, v25

    move/from16 v25, v33

    .end local v33    # "textLength":I
    .local v5, "ltop":I
    .local v14, "useFirstLineMargin":Z
    .local v25, "textLength":I
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 547
    invoke-interface {v15, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v24, v24, v0

    move-object/from16 v4, p0

    move v0, v14

    goto/16 :goto_1dd

    .line 549
    .end local v14    # "useFirstLineMargin":Z
    .end local v15    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v38    # "length":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "alphaValue":I
    .end local v44    # "previousLineEnd":I
    .end local v45    # "buf":Ljava/lang/CharSequence;
    .restart local v0    # "dir":I
    .restart local v2    # "margin":Landroid/text/style/LeadingMarginSpan;
    .restart local v3    # "n":I
    .restart local v4    # "length":I
    .local v5, "useFirstLineMargin":Z
    .restart local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "lineNum":I
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v9    # "tl":Landroid/text/TextLine;
    .restart local v10    # "alphaValue":I
    .restart local v11    # "previousLineEnd":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .local v19, "lbaseline":I
    .local v25, "ltop":I
    .restart local v33    # "textLength":I
    .local v34, "sp":Landroid/text/Spanned;
    :cond_17a
    move/from16 v36, v0

    move-object v15, v2

    move/from16 v38, v4

    move v14, v5

    move-object/from16 v39, v6

    move/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    move-object/from16 v45, v12

    move/from16 v37, v19

    move/from16 v5, v25

    move/from16 v25, v33

    move-object/from16 v19, v34

    move/from16 v34, v3

    .end local v0    # "dir":I
    .end local v2    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v3    # "n":I
    .end local v4    # "length":I
    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "lineNum":I
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v9    # "tl":Landroid/text/TextLine;
    .end local v10    # "alphaValue":I
    .end local v11    # "previousLineEnd":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v33    # "textLength":I
    .local v5, "ltop":I
    .restart local v14    # "useFirstLineMargin":Z
    .restart local v15    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v19, "sp":Landroid/text/Spanned;
    .local v25, "textLength":I
    .local v34, "n":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v38    # "length":I
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "alphaValue":I
    .restart local v44    # "previousLineEnd":I
    .restart local v45    # "buf":Ljava/lang/CharSequence;
    move-object v6, v15

    move-object/from16 v7, p1

    move-object v8, v13

    move/from16 v9, v35

    move/from16 v10, v36

    move v11, v5

    move/from16 v12, v37

    move-object v2, v13

    .end local v13    # "paint":Landroid/text/TextPaint;
    .local v2, "paint":Landroid/text/TextPaint;
    move/from16 v13, v22

    move v0, v14

    .end local v14    # "useFirstLineMargin":Z
    .local v0, "useFirstLineMargin":Z
    move-object/from16 v14, v45

    move-object/from16 v4, p0

    move-object v1, v15

    .end local v15    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v1, "margin":Landroid/text/style/LeadingMarginSpan;
    move/from16 v15, v31

    move/from16 v16, v20

    move/from16 v17, v30

    move-object/from16 v18, p0

    invoke-interface/range {v6 .. v18}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 552
    invoke-interface {v1, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v35, v35, v3

    goto :goto_1dd

    .line 541
    .end local v1    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v38    # "length":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "alphaValue":I
    .end local v44    # "previousLineEnd":I
    .end local v45    # "buf":Ljava/lang/CharSequence;
    .local v0, "dir":I
    .restart local v3    # "n":I
    .restart local v4    # "length":I
    .local v5, "useFirstLineMargin":Z
    .restart local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "lineNum":I
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v9    # "tl":Landroid/text/TextLine;
    .restart local v10    # "alphaValue":I
    .restart local v11    # "previousLineEnd":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .local v19, "lbaseline":I
    .local v25, "ltop":I
    .restart local v33    # "textLength":I
    .local v34, "sp":Landroid/text/Spanned;
    :cond_1be
    move/from16 v36, v0

    move/from16 v38, v4

    move v0, v5

    move-object/from16 v39, v6

    move/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    move-object/from16 v45, v12

    move-object v2, v13

    move-object v4, v15

    move/from16 v37, v19

    move/from16 v5, v25

    move/from16 v25, v33

    move-object/from16 v19, v34

    move/from16 v34, v3

    .line 540
    .end local v3    # "n":I
    .end local v4    # "length":I
    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "lineNum":I
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v9    # "tl":Landroid/text/TextLine;
    .end local v10    # "alphaValue":I
    .end local v11    # "previousLineEnd":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v33    # "textLength":I
    .local v0, "useFirstLineMargin":Z
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local v5, "ltop":I
    .local v19, "sp":Landroid/text/Spanned;
    .local v25, "textLength":I
    .local v34, "n":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v38    # "length":I
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "alphaValue":I
    .restart local v44    # "previousLineEnd":I
    .restart local v45    # "buf":Ljava/lang/CharSequence;
    :goto_1dd
    add-int/lit8 v3, v34, 0x1

    move/from16 v14, p2

    move-object v13, v2

    move-object v15, v4

    move-object/from16 v34, v19

    move/from16 v33, v25

    move/from16 v19, v37

    move/from16 v4, v38

    move-object/from16 v6, v39

    move/from16 v7, v40

    move-object/from16 v8, v41

    move-object/from16 v9, v42

    move/from16 v10, v43

    move/from16 v11, v44

    move-object/from16 v12, v45

    const/16 v27, 0x1

    move/from16 v25, v5

    move v5, v0

    move/from16 v0, v36

    .end local v34    # "n":I
    .restart local v3    # "n":I
    goto/16 :goto_128

    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v38    # "length":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "alphaValue":I
    .end local v44    # "previousLineEnd":I
    .end local v45    # "buf":Ljava/lang/CharSequence;
    .local v0, "dir":I
    .restart local v4    # "length":I
    .local v5, "useFirstLineMargin":Z
    .restart local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "lineNum":I
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v9    # "tl":Landroid/text/TextLine;
    .restart local v10    # "alphaValue":I
    .restart local v11    # "previousLineEnd":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .local v19, "lbaseline":I
    .local v25, "ltop":I
    .restart local v33    # "textLength":I
    .local v34, "sp":Landroid/text/Spanned;
    :cond_202
    move/from16 v36, v0

    move/from16 v38, v4

    move v0, v5

    move-object/from16 v39, v6

    move/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    move-object/from16 v45, v12

    move-object v2, v13

    move-object v4, v15

    move/from16 v37, v19

    move/from16 v5, v25

    move/from16 v25, v33

    move-object/from16 v19, v34

    move/from16 v34, v3

    .end local v3    # "n":I
    .end local v4    # "length":I
    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "lineNum":I
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v9    # "tl":Landroid/text/TextLine;
    .end local v10    # "alphaValue":I
    .end local v11    # "previousLineEnd":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v33    # "textLength":I
    .local v0, "useFirstLineMargin":Z
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local v5, "ltop":I
    .local v19, "sp":Landroid/text/Spanned;
    .local v25, "textLength":I
    .local v34, "n":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v38    # "length":I
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "alphaValue":I
    .restart local v44    # "previousLineEnd":I
    .restart local v45    # "buf":Ljava/lang/CharSequence;
    move/from16 v6, v29

    move/from16 v3, v32

    move-object/from16 v0, v39

    goto :goto_246

    .line 493
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v5    # "ltop":I
    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v29    # "tabStopsIsInitialized":Z
    .end local v30    # "isFirstParaLine":Z
    .end local v31    # "start":I
    .end local v32    # "spanEnd":I
    .end local v34    # "n":I
    .end local v35    # "left":I
    .end local v36    # "dir":I
    .end local v37    # "lbaseline":I
    .end local v38    # "length":I
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .end local v43    # "alphaValue":I
    .end local v44    # "previousLineEnd":I
    .end local v45    # "buf":Ljava/lang/CharSequence;
    .local v0, "dir":I
    .local v1, "start":I
    .local v3, "spanEnd":I
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    .local v6, "tabStopsIsInitialized":Z
    .restart local v7    # "lineNum":I
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v9    # "tl":Landroid/text/TextLine;
    .restart local v10    # "alphaValue":I
    .restart local v11    # "previousLineEnd":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .local v17, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v18    # "left":I
    .local v19, "lbaseline":I
    .local v25, "ltop":I
    :cond_228
    move/from16 v36, v0

    move/from16 v31, v1

    move-object/from16 v28, v4

    move/from16 v29, v6

    move/from16 v40, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    move-object/from16 v45, v12

    move-object v2, v13

    move-object v4, v15

    move/from16 v37, v19

    move/from16 v5, v25

    .end local v0    # "dir":I
    .end local v1    # "start":I
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v6    # "tabStopsIsInitialized":Z
    .end local v7    # "lineNum":I
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v9    # "tl":Landroid/text/TextLine;
    .end local v10    # "alphaValue":I
    .end local v11    # "previousLineEnd":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v19    # "lbaseline":I
    .end local v25    # "ltop":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .restart local v5    # "ltop":I
    .restart local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v29    # "tabStopsIsInitialized":Z
    .restart local v31    # "start":I
    .restart local v36    # "dir":I
    .restart local v37    # "lbaseline":I
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    .restart local v43    # "alphaValue":I
    .restart local v44    # "previousLineEnd":I
    .restart local v45    # "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    move/from16 v35, v18

    .line 558
    .end local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v18    # "left":I
    .end local v29    # "tabStopsIsInitialized":Z
    .local v0, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v6    # "tabStopsIsInitialized":Z
    .restart local v35    # "left":I
    :goto_246
    move/from16 v1, v40

    .end local v40    # "lineNum":I
    .local v1, "lineNum":I
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v25

    .line 560
    .local v25, "hasTab":Z
    if-eqz v25, :cond_265

    if-nez v6, :cond_265

    .line 561
    const/high16 v7, 0x41a00000    # 20.0f

    move-object/from16 v8, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    if-nez v8, :cond_25d

    .line 562
    new-instance v9, Landroid/text/Layout$TabStops;

    invoke-direct {v9, v7, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v8, v9

    goto :goto_260

    .line 564
    :cond_25d
    invoke-virtual {v8, v7, v0}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    .line 566
    :goto_260
    const/4 v6, 0x1

    move/from16 v26, v6

    move-object v15, v8

    goto :goto_26a

    .line 560
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_265
    move-object/from16 v8, v41

    .line 570
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v26, v6

    move-object v15, v8

    .end local v6    # "tabStopsIsInitialized":Z
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .local v26, "tabStopsIsInitialized":Z
    :goto_26a
    move-object/from16 v6, v28

    .line 571
    .local v6, "align":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_27d

    .line 572
    move/from16 v14, v36

    const/4 v7, 0x1

    .end local v36    # "dir":I
    .local v14, "dir":I
    if-ne v14, v7, :cond_278

    .line 573
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_27a

    :cond_278
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_27a
    move-object v6, v8

    move-object v13, v6

    goto :goto_28f

    .line 574
    .end local v14    # "dir":I
    .restart local v36    # "dir":I
    :cond_27d
    move/from16 v14, v36

    const/4 v7, 0x1

    .end local v36    # "dir":I
    .restart local v14    # "dir":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v8, :cond_28e

    .line 575
    if-ne v14, v7, :cond_289

    .line 576
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_28b

    :cond_289
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_28b
    move-object v6, v8

    move-object v13, v6

    goto :goto_28f

    .line 574
    :cond_28e
    move-object v13, v6

    .line 581
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .local v13, "align":Landroid/text/Layout$Alignment;
    :goto_28f
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v13, v6, :cond_2ae

    .line 582
    if-ne v14, v7, :cond_2a1

    .line 583
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .line 584
    .local v6, "indentWidth":I
    add-int v7, v35, v6

    move/from16 v27, v6

    move v12, v7

    .local v7, "x":I
    goto :goto_2e6

    .line 586
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_2a1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    .line 587
    .restart local v6    # "indentWidth":I
    sub-int v7, v24, v6

    move/from16 v27, v6

    move v12, v7

    .restart local v7    # "x":I
    goto :goto_2e6

    .line 590
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_2ae
    const/4 v6, 0x0

    invoke-direct {v4, v1, v15, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    .line 591
    .local v6, "max":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v13, v8, :cond_2d5

    .line 592
    if-ne v14, v7, :cond_2c8

    .line 593
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v1, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    .line 594
    .local v7, "indentWidth":I
    sub-int v8, v24, v6

    sub-int/2addr v8, v7

    move/from16 v27, v7

    move v12, v8

    .local v8, "x":I
    goto :goto_2e6

    .line 596
    .end local v7    # "indentWidth":I
    .end local v8    # "x":I
    :cond_2c8
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v1, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 597
    .restart local v7    # "indentWidth":I
    sub-int v8, v35, v6

    add-int/2addr v8, v7

    move/from16 v27, v7

    move v12, v8

    .restart local v8    # "x":I
    goto :goto_2e6

    .line 600
    .end local v7    # "indentWidth":I
    .end local v8    # "x":I
    :cond_2d5
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 601
    .local v8, "indentWidth":I
    and-int/lit8 v6, v6, -0x2

    .line 602
    add-int v9, v24, v35

    sub-int/2addr v9, v6

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v8

    move v12, v7

    move/from16 v27, v8

    .line 606
    .end local v6    # "max":I
    .end local v8    # "indentWidth":I
    .local v12, "x":I
    .local v27, "indentWidth":I
    :goto_2e6
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 607
    .local v11, "directions":Landroid/text/Layout$Directions;
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v11, v6, :cond_316

    iget-boolean v6, v4, Landroid/text/Layout;->mSpannedText:Z

    if-nez v6, :cond_316

    if-nez v25, :cond_316

    if-nez v21, :cond_316

    .line 609
    int-to-float v10, v12

    move/from16 v9, v37

    .end local v37    # "lbaseline":I
    .local v9, "lbaseline":I
    int-to-float v8, v9

    move-object/from16 v6, p1

    move-object/from16 v7, v45

    move/from16 v16, v8

    move/from16 v8, v31

    move/from16 v29, v9

    .end local v9    # "lbaseline":I
    .local v29, "lbaseline":I
    move/from16 v9, v20

    move-object/from16 v30, v11

    .end local v11    # "directions":Landroid/text/Layout$Directions;
    .local v30, "directions":Landroid/text/Layout$Directions;
    move/from16 v11, v16

    move-object/from16 v32, v0

    move v0, v12

    .end local v12    # "x":I
    .local v0, "x":I
    .local v32, "spans":[Landroid/text/style/ParagraphStyle;
    move-object v12, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v36, v15

    move-object/from16 v7, v42

    goto :goto_36c

    .line 607
    .end local v29    # "lbaseline":I
    .end local v30    # "directions":Landroid/text/Layout$Directions;
    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v0, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v11    # "directions":Landroid/text/Layout$Directions;
    .restart local v12    # "x":I
    .restart local v37    # "lbaseline":I
    :cond_316
    move-object/from16 v32, v0

    move-object/from16 v30, v11

    move v0, v12

    move/from16 v29, v37

    .line 611
    .end local v11    # "directions":Landroid/text/Layout$Directions;
    .end local v12    # "x":I
    .end local v37    # "lbaseline":I
    .local v0, "x":I
    .restart local v29    # "lbaseline":I
    .restart local v30    # "directions":Landroid/text/Layout$Directions;
    .restart local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    nop

    .line 612
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    .line 613
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v6

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v7

    add-int v17, v6, v7

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v18

    .line 611
    move-object/from16 v6, v42

    move-object v7, v2

    move-object/from16 v8, v45

    move/from16 v9, v31

    move/from16 v10, v20

    move v11, v14

    move-object/from16 v12, v30

    move-object/from16 v33, v13

    .end local v13    # "align":Landroid/text/Layout$Alignment;
    .local v33, "align":Landroid/text/Layout$Alignment;
    move/from16 v13, v25

    move/from16 v34, v14

    .end local v14    # "dir":I
    .local v34, "dir":I
    move-object v14, v15

    move-object/from16 v36, v15

    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .local v36, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v6 .. v17}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 615
    if-eqz v21, :cond_35b

    .line 616
    sub-int v6, v24, v35

    sub-int v6, v6, v27

    int-to-float v6, v6

    move-object/from16 v7, v42

    .end local v42    # "tl":Landroid/text/TextLine;
    .local v7, "tl":Landroid/text/TextLine;
    invoke-virtual {v7, v6}, Landroid/text/TextLine;->justify(F)V

    goto :goto_35d

    .line 615
    .end local v7    # "tl":Landroid/text/TextLine;
    .restart local v42    # "tl":Landroid/text/TextLine;
    :cond_35b
    move-object/from16 v7, v42

    .line 618
    .end local v42    # "tl":Landroid/text/TextLine;
    .restart local v7    # "tl":Landroid/text/TextLine;
    :goto_35d
    int-to-float v6, v0

    move-object v14, v7

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v29

    move/from16 v19, v22

    invoke-virtual/range {v14 .. v19}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 476
    .end local v0    # "x":I
    .end local v5    # "ltop":I
    .end local v20    # "end":I
    .end local v21    # "justify":Z
    .end local v22    # "lbottom":I
    .end local v24    # "right":I
    .end local v25    # "hasTab":Z
    .end local v27    # "indentWidth":I
    .end local v29    # "lbaseline":I
    .end local v30    # "directions":Landroid/text/Layout$Directions;
    .end local v31    # "start":I
    .end local v33    # "align":Landroid/text/Layout$Alignment;
    .end local v34    # "dir":I
    .end local v35    # "left":I
    :goto_36c
    add-int/lit8 v0, v1, 0x1

    move/from16 v14, p2

    move-object v13, v2

    move-object v15, v4

    move-object v9, v7

    move/from16 v6, v26

    move-object/from16 v4, v28

    move-object/from16 v2, v32

    move-object/from16 v8, v36

    move/from16 v10, v43

    move/from16 v1, v44

    move-object/from16 v12, v45

    const/4 v11, 0x0

    move v7, v0

    move/from16 v0, v23

    .end local v1    # "lineNum":I
    .local v0, "lineNum":I
    goto/16 :goto_30

    .end local v23    # "previousLineBottom":I
    .end local v26    # "tabStopsIsInitialized":Z
    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v36    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v43    # "alphaValue":I
    .end local v44    # "previousLineEnd":I
    .end local v45    # "buf":Ljava/lang/CharSequence;
    .local v0, "previousLineBottom":I
    .local v1, "previousLineEnd":I
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v6, "tabStopsIsInitialized":Z
    .local v7, "lineNum":I
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    .local v9, "tl":Landroid/text/TextLine;
    .restart local v10    # "alphaValue":I
    .local v12, "buf":Ljava/lang/CharSequence;
    .local v13, "paint":Landroid/text/TextPaint;
    :cond_387
    move-object/from16 v17, v2

    move/from16 v29, v6

    move v5, v7

    move-object v7, v9

    move/from16 v43, v10

    move-object v2, v13

    .line 623
    .end local v6    # "tabStopsIsInitialized":Z
    .end local v9    # "tl":Landroid/text/TextLine;
    .end local v10    # "alphaValue":I
    .end local v13    # "paint":Landroid/text/TextPaint;
    .local v2, "paint":Landroid/text/TextPaint;
    .local v7, "tl":Landroid/text/TextLine;
    .restart local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v29, "tabStopsIsInitialized":Z
    .restart local v43    # "alphaValue":I
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v5

    move/from16 v6, v43

    const/4 v9, 0x0

    .end local v43    # "alphaValue":I
    .local v6, "alphaValue":I
    invoke-interface {v5, v9, v2, v6}, Landroid/graphics/FontManagerStub;->drawTextEnd(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 625
    invoke-static {v7}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 626
    return-void
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .line 856
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 20
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .line 1933
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 1935
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1936
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 1937
    .local v4, "top":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v5

    .line 1939
    .local v5, "bottom":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    .line 1940
    .local v6, "clamped":Z
    move/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 1942
    .local v8, "h1":F
    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 1943
    const/16 v12, 0x800

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    or-int/2addr v11, v12

    .line 1944
    .local v11, "caps":I
    const/4 v12, 0x2

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 1945
    .local v13, "fn":I
    const/4 v14, 0x0

    .line 1947
    .local v14, "dist":I
    if-nez v11, :cond_38

    if-eqz v13, :cond_42

    .line 1948
    :cond_38
    sub-int v15, v5, v4

    shr-int/lit8 v14, v15, 0x2

    .line 1950
    if-eqz v13, :cond_3f

    .line 1951
    add-int/2addr v4, v14

    .line 1952
    :cond_3f
    if-eqz v11, :cond_42

    .line 1953
    sub-int/2addr v5, v14

    .line 1956
    :cond_42
    cmpg-float v15, v8, v9

    if-gez v15, :cond_48

    .line 1957
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1959
    :cond_48
    int-to-float v15, v4

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1960
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1962
    if-ne v11, v12, :cond_6c

    .line 1963
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1964
    int-to-float v15, v14

    sub-float v15, v8, v15

    add-int v12, v5, v14

    int-to-float v12, v12

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1965
    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1966
    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9a

    .line 1967
    :cond_6c
    if-ne v11, v10, :cond_9a

    .line 1968
    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1969
    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1971
    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1972
    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1974
    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1975
    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1978
    :cond_9a
    :goto_9a
    const/4 v12, 0x2

    if-ne v13, v12, :cond_b7

    .line 1979
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1980
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1981
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1982
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_e5

    .line 1983
    :cond_b7
    if-ne v13, v10, :cond_e5

    .line 1984
    int-to-float v10, v4

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1985
    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1987
    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1988
    int-to-float v10, v14

    add-float/2addr v10, v8

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1990
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1991
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1993
    :cond_e5
    :goto_e5
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public whitelist getEllipsizedWidth()I
    .registers 2

    .line 818
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .registers 3
    .param p1, "line"    # I

    .line 973
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 838
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight(Z)I
    .registers 3
    .param p1, "cap"    # Z

    .line 849
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .line 982
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getLineAscent(I)I
    .registers 5
    .param p1, "line"    # I

    .line 1799
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBaseline(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1790
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBottom(I)I
    .registers 3
    .param p1, "line"    # I

    .line 1772
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getLineBottomWithoutSpacing(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1782
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 895
    if-eqz p2, :cond_17

    .line 896
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 897
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 898
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 899
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 901
    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
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
    .registers 3
    .param p1, "line"    # I

    .line 1734
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .registers 3
    .param p1, "line"    # I

    .line 1810
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineForOffset(I)I
    .registers 6
    .param p1, "offset"    # I

    .line 1564
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 1566
    .local v1, "low":I
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 1567
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1569
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 1570
    move v0, v2

    goto :goto_5

    .line 1572
    :cond_16
    move v1, v2

    goto :goto_5

    .line 1575
    .end local v2    # "guess":I
    :cond_18
    if-gez v1, :cond_1c

    .line 1576
    const/4 v2, 0x0

    return v2

    .line 1578
    :cond_1c
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .registers 6
    .param p1, "vertical"    # I

    .line 1541
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 1543
    .local v1, "low":I
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 1544
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1546
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 1547
    move v0, v2

    goto :goto_5

    .line 1549
    :cond_16
    move v1, v2

    goto :goto_5

    .line 1552
    .end local v2    # "guess":I
    :cond_18
    if-gez v1, :cond_1c

    .line 1553
    const/4 v2, 0x0

    return v2

    .line 1555
    :cond_1c
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .registers 10
    .param p1, "line"    # I

    .line 1341
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1342
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1346
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_c

    .line 1347
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1354
    :cond_c
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_60

    .line 1370
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_31

    .line 1367
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1b
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1368
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_31

    .line 1364
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1e
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1365
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_31

    .line 1361
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_21
    if-ne v0, v3, :cond_26

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_28

    :cond_26
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1362
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_28
    goto :goto_31

    .line 1357
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_29
    if-ne v0, v3, :cond_2e

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_30

    :cond_2e
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1358
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_30
    nop

    .line 1376
    :goto_31
    sget-object v3, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6c

    .line 1387
    const/4 v3, 0x0

    return v3

    .line 1385
    :pswitch_3e
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 1378
    :pswitch_47
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1379
    .local v3, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 1383
    .local v4, "max":F
    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_29
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x3
        :pswitch_47
        :pswitch_3e
    .end packed-switch
.end method

.method public whitelist getLineMax(I)F
    .registers 5
    .param p1, "line"    # I

    .line 1444
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 1445
    .local v0, "margin":F
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1446
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    neg-float v2, v1

    :goto_12
    add-float/2addr v2, v0

    return v2
.end method

.method public greylist-max-r getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 716
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 717
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_11

    .line 719
    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 722
    :cond_11
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 723
    .local v1, "dtop":I
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 724
    .local v4, "dbottom":I
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3a

    .line 726
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 727
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 729
    .local v5, "bottom":I
    if-lt v0, v5, :cond_2d

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 730
    :cond_2d
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 724
    .end local v0    # "top":I
    .end local v1    # "dtop":I
    .end local v4    # "dbottom":I
    .end local v5    # "bottom":I
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist getLineRight(I)F
    .registers 10
    .param p1, "line"    # I

    .line 1396
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1397
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1401
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_c

    .line 1402
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1406
    :cond_c
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_5e

    .line 1422
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_31

    .line 1419
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1b
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1420
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_31

    .line 1416
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1e
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1417
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_31

    .line 1413
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_21
    if-ne v0, v3, :cond_26

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_28

    :cond_26
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1414
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_28
    goto :goto_31

    .line 1409
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_29
    if-ne v0, v3, :cond_2e

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_30

    :cond_2e
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1410
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_30
    nop

    .line 1425
    :goto_31
    sget-object v3, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6a

    .line 1435
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    return v3

    .line 1433
    :pswitch_41
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    return v3

    .line 1427
    :pswitch_45
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    .line 1428
    .local v3, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 1431
    .local v4, "max":F
    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x3
        :pswitch_45
        :pswitch_41
    .end packed-switch
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1742
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .registers 5
    .param p1, "line"    # I

    .line 1454
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 1455
    .local v0, "margin":F
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1456
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    neg-float v2, v1

    :goto_12
    add-float/2addr v2, v0

    return v2
.end method

.method public whitelist getOffsetForHorizontal(IF)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .line 1587
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .registers 25
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    .line 1602
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 1603
    .local v14, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    .line 1605
    .local v15, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    .line 1607
    .local v13, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1609
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1611
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v16, v2, v5

    .line 1612
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v17

    .line 1609
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move v5, v15

    move v6, v14

    move-object v8, v13

    move-object/from16 v18, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v18, "tl":Landroid/text/TextLine;
    move/from16 v12, v16

    move-object/from16 v19, v13

    .end local v13    # "dirs":Landroid/text/Layout$Directions;
    .local v19, "dirs":Landroid/text/Layout$Directions;
    move/from16 v13, v17

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1613
    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 1617
    .local v2, "horizontal":Landroid/text/Layout$HorizontalMeasurementProvider;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_52

    .line 1618
    move v4, v14

    move-object/from16 v7, v18

    .local v4, "max":I
    goto :goto_62

    .line 1620
    .end local v4    # "max":I
    :cond_52
    sub-int v4, v14, v15

    add-int/lit8 v6, v14, -0x1

    .line 1621
    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    .line 1620
    xor-int/2addr v6, v5

    move-object/from16 v7, v18

    .end local v18    # "tl":Landroid/text/TextLine;
    .local v7, "tl":Landroid/text/TextLine;
    invoke-virtual {v7, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v15

    .line 1623
    .restart local v4    # "max":I
    :goto_62
    move v6, v15

    .line 1624
    .local v6, "best":I
    invoke-virtual {v2, v15}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v8

    sub-float v8, v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1626
    .local v8, "bestdist":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6e
    move-object/from16 v10, v19

    .end local v19    # "dirs":Landroid/text/Layout$Directions;
    .local v10, "dirs":Landroid/text/Layout$Directions;
    iget-object v11, v10, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v11, v11

    if-ge v9, v11, :cond_144

    .line 1627
    iget-object v11, v10, Landroid/text/Layout$Directions;->mDirections:[I

    aget v11, v11, v9

    add-int/2addr v11, v15

    .line 1628
    .local v11, "here":I
    iget-object v12, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v13, v9, 0x1

    aget v12, v12, v13

    const v13, 0x3ffffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    .line 1629
    .local v12, "there":I
    iget-object v13, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v9, 0x1

    aget v13, v13, v16

    const/high16 v16, 0x4000000

    and-int v13, v13, v16

    const/16 v16, 0x0

    if-eqz v13, :cond_95

    move v13, v5

    goto :goto_97

    :cond_95
    move/from16 v13, v16

    .line 1630
    .local v13, "isRtl":Z
    :goto_97
    if-eqz v13, :cond_9c

    const/16 v17, -0x1

    goto :goto_9e

    :cond_9c
    move/from16 v17, v5

    :goto_9e
    move/from16 v18, v17

    .line 1632
    .local v18, "swap":I
    if-le v12, v4, :cond_a3

    .line 1633
    move v12, v4

    .line 1634
    :cond_a3
    add-int/lit8 v17, v12, -0x1

    add-int/lit8 v17, v17, 0x1

    .local v17, "high":I
    add-int/lit8 v19, v11, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v5, v19

    .line 1636
    .local v5, "low":I
    :goto_ad
    sub-int v1, v17, v5

    const/4 v3, 0x1

    if-le v1, v3, :cond_db

    .line 1637
    add-int v1, v17, v5

    div-int/lit8 v1, v1, 0x2

    .line 1638
    .local v1, "guess":I
    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v3

    .line 1640
    .local v3, "adguess":I
    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v20

    move/from16 v0, v18

    move/from16 v18, v3

    .end local v3    # "adguess":I
    .local v0, "swap":I
    .local v18, "adguess":I
    int-to-float v3, v0

    mul-float v20, v20, v3

    int-to-float v3, v0

    mul-float v3, v3, p2

    cmpl-float v3, v20, v3

    if-ltz v3, :cond_d0

    .line 1641
    move v3, v1

    move/from16 v17, v3

    .end local v17    # "high":I
    .local v3, "high":I
    goto :goto_d2

    .line 1643
    .end local v3    # "high":I
    .restart local v17    # "high":I
    :cond_d0
    move v3, v1

    move v5, v3

    .line 1645
    .end local v18    # "adguess":I
    :goto_d2
    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_ad

    .line 1647
    .end local v0    # "swap":I
    .end local v1    # "guess":I
    .local v18, "swap":I
    :cond_db
    move/from16 v0, v18

    .end local v18    # "swap":I
    .restart local v0    # "swap":I
    add-int/lit8 v1, v11, 0x1

    if-ge v5, v1, :cond_e3

    .line 1648
    add-int/lit8 v5, v11, 0x1

    .line 1650
    :cond_e3
    if-ge v5, v12, :cond_123

    .line 1651
    sub-int v1, v5, v15

    invoke-virtual {v7, v1, v13}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v15

    .line 1652
    .local v1, "aft":I
    sub-int v3, v1, v15

    move/from16 v18, v0

    if-nez v13, :cond_f4

    const/4 v0, 0x1

    goto :goto_f6

    :cond_f4
    move/from16 v0, v16

    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :goto_f6
    invoke-virtual {v7, v3, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v5, v0, v15

    .line 1653
    if-lt v5, v11, :cond_125

    if-ge v5, v12, :cond_125

    .line 1654
    invoke-virtual {v2, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1655
    .local v0, "dist":F
    if-ge v1, v12, :cond_11c

    .line 1656
    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v3

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1658
    .local v3, "other":F
    cmpg-float v16, v3, v0

    if-gez v16, :cond_11c

    .line 1659
    move v0, v3

    .line 1660
    move v5, v1

    .line 1664
    .end local v3    # "other":F
    :cond_11c
    cmpg-float v3, v0, v8

    if-gez v3, :cond_125

    .line 1665
    move v8, v0

    .line 1666
    move v6, v5

    goto :goto_125

    .line 1650
    .end local v1    # "aft":I
    .end local v18    # "swap":I
    .local v0, "swap":I
    :cond_123
    move/from16 v18, v0

    .line 1671
    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :cond_125
    :goto_125
    invoke-virtual {v2, v11}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1673
    .local v0, "dist":F
    cmpg-float v1, v0, v8

    if-gez v1, :cond_137

    .line 1674
    move v1, v0

    .line 1675
    .end local v8    # "bestdist":F
    .local v1, "bestdist":F
    move v3, v11

    move v8, v1

    move v6, v3

    .line 1626
    .end local v0    # "dist":F
    .end local v1    # "bestdist":F
    .end local v5    # "low":I
    .end local v11    # "here":I
    .end local v12    # "there":I
    .end local v13    # "isRtl":Z
    .end local v17    # "high":I
    .end local v18    # "swap":I
    .restart local v8    # "bestdist":F
    :cond_137
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v19, v10

    const/4 v5, 0x1

    goto/16 :goto_6e

    .line 1679
    .end local v9    # "i":I
    :cond_144
    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1681
    .restart local v0    # "dist":F
    cmpg-float v1, v0, v8

    if-gtz v1, :cond_153

    .line 1682
    move v6, v4

    .line 1685
    :cond_153
    invoke-static {v7}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1686
    return v6
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 1814
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getOffsetToRightOf(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 1818
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .registers 2

    .line 803
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 7
    .param p1, "line"    # I

    .line 2121
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2123
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_25

    .line 2124
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 2125
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2126
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    .line 2125
    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 2129
    .local v2, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    .line 2130
    .local v3, "spanLength":I
    if-lez v3, :cond_25

    .line 2131
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 2135
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "spanLength":I
    :cond_25
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .registers 5
    .param p1, "line"    # I

    .line 2142
    const/4 v0, 0x0

    .line 2143
    .local v0, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 2144
    .local v1, "dir":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_d

    goto :goto_12

    .line 2147
    :cond_d
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 2145
    :cond_12
    :goto_12
    return v0
.end method

.method public final whitelist getParagraphRight(I)I
    .registers 5
    .param p1, "line"    # I

    .line 2154
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2155
    .local v0, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 2156
    .local v1, "dir":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_e

    goto :goto_15

    .line 2159
    :cond_e
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 2157
    :cond_15
    :goto_15
    return v0
.end method

.method public blacklist getPostAlpha()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Landroid/text/Layout;->mPostAlpha:Z

    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .registers 5
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1213
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1214
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public greylist-max-o getRunRange(I)J
    .registers 12
    .param p1, "offset"    # I

    .line 1062
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1063
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1064
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3d

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_3d

    .line 1067
    :cond_12
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1068
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1069
    .local v4, "lineStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    array-length v6, v2

    if-ge v5, v6, :cond_34

    .line 1070
    aget v6, v2, v5

    add-int/2addr v6, v4

    .line 1071
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 1072
    .local v7, "limit":I
    if-lt p1, v6, :cond_31

    if-ge p1, v7, :cond_31

    .line 1073
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 1069
    .end local v6    # "start":I
    .end local v7    # "limit":I
    :cond_31
    add-int/lit8 v5, v5, 0x2

    goto :goto_19

    .line 1077
    .end local v5    # "i":I
    :cond_34
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    .line 1065
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist getSecondaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .registers 5
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1233
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1234
    .local v0, "trailing":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 25
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 2059
    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    .line 2060
    return-void

    .line 2063
    :cond_9
    if-ge v1, v0, :cond_13

    .line 2064
    move/from16 v2, p2

    .line 2065
    .local v2, "temp":I
    move/from16 v1, p1

    .line 2066
    .end local p2    # "end":I
    .local v1, "end":I
    move v0, v2

    move v8, v0

    move v9, v1

    .end local p1    # "start":I
    .local v0, "start":I
    goto :goto_15

    .line 2063
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "temp":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_13
    move v8, v0

    move v9, v1

    .line 2069
    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v8, "start":I
    .local v9, "end":I
    :goto_15
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 2070
    .local v10, "startline":I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 2072
    .local v11, "endline":I
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 2073
    .local v12, "top":I
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 2075
    .local v13, "bottom":I
    if-ne v10, v11, :cond_35

    .line 2076
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_dc

    .line 2078
    :cond_35
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v14, v0

    .line 2080
    .local v14, "width":F
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 2081
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 2080
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2083
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v15, -0x1

    if-ne v0, v15, :cond_63

    .line 2084
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_74

    .line 2087
    :cond_63
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 2091
    :goto_74
    add-int/lit8 v0, v10, 0x1

    .local v0, "i":I
    :goto_76
    if-ge v0, v11, :cond_9e

    .line 2092
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 2093
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    .line 2094
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v1, v15, :cond_91

    .line 2095
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_9b

    .line 2097
    :cond_91
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 2091
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 2101
    .end local v0    # "i":I
    :cond_9e
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 2102
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 2104
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v11

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2106
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v15, :cond_c9

    .line 2107
    int-to-float v3, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v2, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_dc

    .line 2110
    :cond_c9
    const/16 v16, 0x0

    int-to-float v0, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v18

    int-to-float v1, v13

    const/16 v20, 0x1

    move-object/from16 v15, p3

    move/from16 v17, v0

    move/from16 v19, v1

    invoke-interface/range {v15 .. v20}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 2114
    .end local v14    # "width":F
    :goto_dc
    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .line 2042
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 2043
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2045
    return-void
.end method

.method public final whitelist getSpacingAdd()F
    .registers 2

    .line 870
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final whitelist getSpacingMultiplier()F
    .registers 2

    .line 863
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .registers 3
    .param p1, "line"    # I

    .line 964
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 794
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final greylist-max-o getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    .line 878
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public final whitelist getWidth()I
    .registers 2

    .line 810
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final whitelist increaseWidthTo(I)V
    .registers 4
    .param p1, "wid"    # I

    .line 827
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_7

    .line 831
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 832
    return-void

    .line 828
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .registers 2

    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isLevelBoundary(I)Z
    .registers 12
    .param p1, "offset"    # I

    .line 1003
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1004
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1005
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4c

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_4c

    .line 1009
    :cond_12
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1010
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1011
    .local v4, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1012
    .local v5, "lineEnd":I
    const/4 v6, 0x1

    if-eq p1, v4, :cond_30

    if-ne p1, v5, :cond_22

    goto :goto_30

    .line 1018
    :cond_22
    sub-int/2addr p1, v4

    .line 1019
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_24
    array-length v8, v2

    if-ge v7, v8, :cond_2f

    .line 1020
    aget v8, v2, v7

    if-ne p1, v8, :cond_2c

    .line 1021
    return v6

    .line 1019
    :cond_2c
    add-int/lit8 v7, v7, 0x2

    goto :goto_24

    .line 1024
    .end local v7    # "i":I
    :cond_2f
    return v3

    .line 1013
    :cond_30
    :goto_30
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_38

    move v7, v3

    goto :goto_39

    :cond_38
    move v7, v6

    .line 1014
    .local v7, "paraLevel":I
    :goto_39
    if-ne p1, v4, :cond_3d

    move v8, v3

    goto :goto_40

    :cond_3d
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    .line 1015
    .local v8, "runIndex":I
    :goto_40
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_4b

    move v3, v6

    :cond_4b
    return v3

    .line 1006
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v7    # "paraLevel":I
    .end local v8    # "runIndex":I
    :cond_4c
    :goto_4c
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .registers 13
    .param p1, "offset"    # I

    .line 1033
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1034
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1035
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    .line 1036
    return v3

    .line 1038
    :cond_e
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    .line 1039
    return v4

    .line 1041
    :cond_14
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1042
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1043
    .local v5, "lineStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    array-length v7, v2

    if-ge v6, v7, :cond_3f

    .line 1044
    aget v7, v2, v6

    add-int/2addr v7, v5

    .line 1045
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1046
    .local v8, "limit":I
    if-lt p1, v7, :cond_3c

    if-ge p1, v8, :cond_3c

    .line 1047
    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    .line 1048
    .local v9, "level":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_3b

    move v3, v4

    :cond_3b
    return v3

    .line 1043
    .end local v7    # "start":I
    .end local v8    # "limit":I
    .end local v9    # "level":I
    :cond_3c
    add-int/lit8 v6, v6, 0x2

    goto :goto_1b

    .line 1052
    .end local v6    # "i":I
    :cond_3f
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .registers 2

    .line 2362
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .registers 14
    .param p1, "offset"    # I

    .line 1109
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1110
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1111
    .local v1, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1112
    .local v2, "lineEnd":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1114
    .local v3, "runs":[I
    const/4 v4, -0x1

    .line 1115
    .local v4, "levelAt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3a

    .line 1116
    aget v6, v3, v5

    add-int/2addr v6, v1

    .line 1117
    .local v6, "start":I
    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v7

    add-int/2addr v9, v6

    .line 1118
    .local v9, "limit":I
    if-le v9, v2, :cond_27

    .line 1119
    move v9, v2

    .line 1121
    :cond_27
    if-lt p1, v6, :cond_37

    if-ge p1, v9, :cond_37

    .line 1122
    if-le p1, v6, :cond_2e

    .line 1124
    return v8

    .line 1126
    :cond_2e
    add-int/lit8 v10, v5, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    .line 1127
    goto :goto_3a

    .line 1115
    .end local v6    # "start":I
    .end local v9    # "limit":I
    :cond_37
    add-int/lit8 v5, v5, 0x2

    goto :goto_14

    .line 1130
    .end local v5    # "i":I
    :cond_3a
    :goto_3a
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_48

    .line 1132
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_46

    move v5, v8

    goto :goto_47

    :cond_46
    move v5, v6

    :goto_47
    move v4, v5

    .line 1136
    :cond_48
    const/4 v5, -0x1

    .line 1137
    .local v5, "levelBefore":I
    if-ne p1, v1, :cond_56

    .line 1138
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_53

    move v7, v8

    goto :goto_54

    :cond_53
    move v7, v6

    :goto_54
    move v5, v7

    goto :goto_78

    .line 1140
    :cond_56
    add-int/lit8 p1, p1, -0x1

    .line 1141
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59
    array-length v10, v3

    if-ge v9, v10, :cond_78

    .line 1142
    aget v10, v3, v9

    add-int/2addr v10, v1

    .line 1143
    .local v10, "start":I
    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 1144
    .local v11, "limit":I
    if-le v11, v2, :cond_68

    .line 1145
    move v11, v2

    .line 1147
    :cond_68
    if-lt p1, v10, :cond_75

    if-ge p1, v11, :cond_75

    .line 1148
    add-int/lit8 v7, v9, 0x1

    aget v7, v3, v7

    ushr-int/lit8 v7, v7, 0x1a

    and-int/lit8 v5, v7, 0x3f

    .line 1149
    goto :goto_78

    .line 1141
    .end local v10    # "start":I
    .end local v11    # "limit":I
    :cond_75
    add-int/lit8 v9, v9, 0x2

    goto :goto_59

    .line 1154
    .end local v9    # "i":I
    :cond_78
    :goto_78
    if-ge v5, v4, :cond_7b

    move v8, v6

    :cond_7b
    return v8
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .registers 14
    .param p1, "line"    # I

    .line 1166
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1167
    .local v0, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1168
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1170
    .local v2, "runs":[I
    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    .line 1172
    .local v3, "trailing":[Z
    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    .line 1173
    .local v5, "level":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    array-length v7, v2

    if-ge v6, v7, :cond_40

    .line 1174
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1175
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1176
    .local v8, "limit":I
    if-le v8, v1, :cond_2c

    .line 1177
    move v8, v1

    .line 1179
    :cond_2c
    if-ne v8, v7, :cond_2f

    .line 1180
    goto :goto_3d

    .line 1182
    :cond_2f
    sub-int v9, v8, v0

    sub-int/2addr v9, v4

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 1173
    .end local v7    # "start":I
    .end local v8    # "limit":I
    :goto_3d
    add-int/lit8 v6, v6, 0x2

    goto :goto_1a

    .line 1186
    .end local v6    # "i":I
    :cond_40
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_41
    array-length v7, v2

    if-ge v6, v7, :cond_6c

    .line 1187
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1188
    .restart local v7    # "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    .line 1189
    .local v8, "currentLevel":B
    sub-int v9, v7, v0

    const/4 v10, 0x0

    if-ne v7, v0, :cond_5f

    .line 1190
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_5d

    move v11, v10

    goto :goto_64

    :cond_5d
    move v11, v4

    goto :goto_64

    .line 1191
    :cond_5f
    sub-int v11, v7, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_64
    if-le v8, v11, :cond_67

    move v10, v4

    :cond_67
    aput-boolean v10, v3, v9

    .line 1186
    .end local v7    # "start":I
    .end local v8    # "currentLevel":B
    add-int/lit8 v6, v6, 0x2

    goto :goto_41

    .line 1194
    .end local v6    # "i":I
    :cond_6c
    return-object v3
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .line 323
    if-ltz p3, :cond_13

    .line 327
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 328
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 329
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 330
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 331
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 332
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 333
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 334
    return-void

    .line 324
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o setJustificationMode(I)V
    .registers 2
    .param p1, "justificationMode"    # I

    .line 314
    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    .line 315
    return-void
.end method

.method public blacklist setPostAlpha(Z)V
    .registers 2
    .param p1, "postAlpha"    # Z

    .line 173
    iput-boolean p1, p0, Landroid/text/Layout;->mPostAlpha:Z

    .line 174
    return-void
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .registers 5
    .param p1, "line"    # I

    .line 1915
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_1c

    .line 1921
    return v1

    .line 1917
    :sswitch_12
    return v2

    .line 1919
    :sswitch_13
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_13
        0x5 -> :sswitch_12
    .end sparse-switch
.end method
