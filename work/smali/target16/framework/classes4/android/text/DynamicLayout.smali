.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$Builder;,
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist-max-o ELLIPSIS_START:I = 0x5

.field private static final greylist-max-o ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field public static final greylist-max-o INVALID_BLOCK_INDEX:I = -0x1

.field private static final greylist-max-o MAY_PROTRUDE_FROM_TOP_OR_BOTTOM:I = 0x4

.field private static final greylist-max-o MAY_PROTRUDE_FROM_TOP_OR_BOTTOM_MASK:I = 0x100

.field private static final greylist-max-o PRIORITY:I = 0x80

.field private static final greylist-max-o START:I = 0x0

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field private static final greylist-max-o TOP:I = 0x1

.field private static greylist-max-o sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final greylist-max-o sLock:[Ljava/lang/Object;

.field private static greylist sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private greylist-max-o mBase:Ljava/lang/CharSequence;

.field private greylist-max-o mBlockEndLines:[I

.field private greylist-max-o mBlockIndices:[I

.field private greylist-max-o mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBottomPadding:I

.field private greylist-max-o mBreakStrategy:I

.field private greylist-max-o mDisplay:Ljava/lang/CharSequence;

.field private greylist-max-o mEllipsize:Z

.field private greylist-max-o mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mIndexFirstChangedBlock:I

.field private greylist-max-o mInts:Landroid/text/PackedIntVector;

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist-max-o mNumberOfBlocks:I

.field private greylist-max-o mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/text/DynamicLayout;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1444
    const/4 v0, 0x0

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 1445
    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 1447
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/text/DynamicLayout$Builder;)V
    .registers 24

    .line 520
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/DynamicLayout$Builder;)F

    move-result v6

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/DynamicLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I

    move-result v17

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v21

    const v12, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1437
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 528
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 529
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 530
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 531
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 532
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 533
    invoke-static/range {p1 .. p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 535
    invoke-direct/range {p0 .. p1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 536
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 440
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 453
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/graphics/text/LineBreakConfig;Landroid/text/TextUtils$TruncateAt;I)V

    .line 470
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIIILandroid/graphics/text/LineBreakConfig;Landroid/text/TextUtils$TruncateAt;I)V
    .registers 38
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    move-object/from16 v0, p2

    move-object/from16 v11, p14

    invoke-static {v11, v0}, Landroid/text/DynamicLayout;->createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const v12, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v17, p12

    move-object/from16 v18, p13

    move/from16 v10, p15

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1437
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    .line 501
    move-object/from16 v1, p1

    invoke-static {v1, v2, v3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v4}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {v1, v5}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, v7, v6}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 505
    invoke-virtual {v1, v10}, Landroid/text/DynamicLayout$Builder;->setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 506
    invoke-virtual {v1, v11}, Landroid/text/DynamicLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;

    move-result-object v1

    .line 507
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 508
    iput-boolean v8, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 509
    iput v13, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 510
    move/from16 v2, p12

    iput v2, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 511
    iput v14, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 512
    move-object/from16 v2, p13

    iput-object v2, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 514
    invoke-direct {v0, v1}, Landroid/text/DynamicLayout;->generate(Landroid/text/DynamicLayout$Builder;)V

    .line 516
    invoke-static {v1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$smrecycle(Landroid/text/DynamicLayout$Builder;)V

    .line 517
    return-void
.end method

.method private greylist-max-o addBlockAtOffset(I)V
    .registers 5

    .line 922
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result p1

    .line 923
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 925
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 926
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput p1, v0, v2

    .line 927
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 928
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 929
    return-void

    .line 932
    :cond_20
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v1

    aget v0, v0, v2

    .line 933
    if-le p1, v0, :cond_3d

    .line 934
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object p1

    iput-object p1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 935
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-direct {p0, p1}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 936
    iget p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 938
    :cond_3d
    return-void
.end method

.method private greylist-max-o contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z
    .registers 7

    .line 846
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 847
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 848
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    array-length v0, v0

    if-lez v0, :cond_14

    .line 849
    return v1

    .line 854
    :cond_14
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 855
    instance-of v2, p1, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_24

    .line 856
    check-cast p1, Landroid/text/PrecomputedText;

    .line 857
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, v2}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    .line 858
    goto :goto_29

    .line 859
    :cond_24
    iget-object v2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 861
    :goto_29
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 862
    iget-object p2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-lt p2, p3, :cond_3f

    iget-object p2, p0, Landroid/text/DynamicLayout;->mTempRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le p2, p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :cond_3f
    :goto_3f
    return v1
.end method

.method private greylist-max-o createBlocks()V
    .registers 5

    .line 870
    nop

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 872
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    const/16 v2, 0x190

    .line 875
    :goto_8
    const/16 v3, 0xa

    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    .line 876
    if-gez v2, :cond_2e

    .line 877
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 878
    nop

    .line 886
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 887
    nop

    :goto_20
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 888
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 890
    :cond_2d
    return-void

    .line 880
    :cond_2e
    invoke-direct {p0, v2}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 881
    add-int/lit16 v2, v2, 0x190

    goto :goto_8
.end method

.method private static greylist-max-o createEllipsizer(Landroid/text/TextUtils$TruncateAt;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 541
    if-nez p0, :cond_3

    .line 542
    return-object p1

    .line 543
    :cond_3
    instance-of p0, p1, Landroid/text/Spanned;

    if-eqz p0, :cond_d

    .line 544
    new-instance p0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {p0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 546
    :cond_d
    new-instance p0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {p0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private greylist-max-o generate(Landroid/text/DynamicLayout$Builder;)V
    .registers 8

    .line 551
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmBase(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 552
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 553
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mUseBoundsForWidth:Z

    .line 554
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/DynamicLayout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 555
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 556
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_51

    .line 557
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v1}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 558
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 559
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 575
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 576
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 577
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v4

    iput v4, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 578
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    iput-object v4, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 579
    iput-boolean v3, p0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 580
    goto :goto_61

    .line 581
    :cond_51
    new-instance v0, Landroid/text/PackedIntVector;

    invoke-direct {v0, v2}, Landroid/text/PackedIntVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 582
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 586
    :goto_61
    new-instance v0, Landroid/text/PackedObjectVector;

    invoke-direct {v0, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 593
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 594
    new-array v0, v1, [I

    .line 595
    const/high16 v1, -0x80000000

    aput v1, v0, v2

    goto :goto_77

    .line 597
    :cond_75
    new-array v0, v2, [I

    .line 600
    :goto_77
    new-array v1, v3, [Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 602
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 603
    invoke-static {p1}, Landroid/text/DynamicLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 604
    iget p1, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 605
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 607
    const/high16 v5, 0x40000000    # 2.0f

    aput v5, v0, v4

    .line 608
    aput v4, v0, v3

    .line 609
    const/4 v5, 0x2

    aput v2, v0, v5

    .line 610
    iget-object v5, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v5, v4, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 612
    sub-int/2addr v2, p1

    aput v2, v0, v3

    .line 613
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 615
    iget-object p1, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {p1, v4, v1}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v4, v4, v0}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 620
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    instance-of p1, p1, Landroid/text/Spannable;

    if-eqz p1, :cond_ea

    .line 621
    iget-object p1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez p1, :cond_c4

    .line 622
    new-instance p1, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-direct {p1, p0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    iput-object p1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 625
    :cond_c4
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    check-cast p1, Landroid/text/Spannable;

    .line 626
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 627
    const-class v1, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {p1, v4, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 628
    move v2, v4

    :goto_d7
    array-length v3, v1

    if-ge v2, v3, :cond_e2

    .line 629
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    .line 632
    :cond_e2
    iget-object v1, p0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const v2, 0x800012

    invoke-interface {p1, v1, v4, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 636
    :cond_ea
    return-void
.end method

.method private greylist-max-o getContentMayProtrudeFromTopOrBottom(I)Z
    .registers 4

    .line 1217
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private greylist-max-o updateAlwaysNeedsToBeRedrawn(I)V
    .registers 5

    .line 900
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 901
    :goto_c
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v1, v1, p1

    .line 902
    nop

    :goto_11
    if-gt v0, v1, :cond_31

    .line 903
    invoke-direct {p0, v0}, Landroid/text/DynamicLayout;->getContentMayProtrudeFromTopOrBottom(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 904
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-nez v0, :cond_24

    .line 905
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 907
    :cond_24
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 908
    return-void

    .line 902
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 911
    :cond_31
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v0, :cond_3e

    .line 912
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 914
    :cond_3e
    return-void
.end method


# virtual methods
.method public greylist getBlockEndLines()[I
    .registers 2

    .line 1097
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public greylist-max-o getBlockIndex(I)I
    .registers 3

    .line 1112
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public greylist getBlockIndices()[I
    .registers 2

    .line 1105
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public greylist-max-o getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 1197
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .registers 4

    .line 1382
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 1383
    const/4 p1, 0x0

    return p1

    .line 1386
    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public whitelist getEllipsisStart(I)I
    .registers 4

    .line 1373
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 1374
    const/4 p1, 0x0

    return p1

    .line 1377
    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public whitelist getEllipsizedWidth()I
    .registers 2

    .line 1223
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .registers 4

    .line 1213
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result p1

    return p1
.end method

.method public greylist-max-r getIndexFirstChangedBlock()I
    .registers 2

    .line 1136
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .registers 2

    .line 1398
    iget-object v0, p0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .registers 4

    .line 1177
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public whitelist getLineCount()I
    .registers 2

    .line 1149
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .registers 4

    .line 1159
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 4

    .line 1187
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Directions;

    return-object p1
.end method

.method public greylist-max-o getLineExtra(I)I
    .registers 4

    .line 1167
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public whitelist getLineStart(I)I
    .registers 4

    .line 1172
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    const v0, 0x1fffffff

    and-int/2addr p1, v0

    return p1
.end method

.method public whitelist getLineTop(I)I
    .registers 4

    .line 1154
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    return p1
.end method

.method public greylist getNumberOfBlocks()I
    .registers 2

    .line 1128
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .registers 4

    .line 1182
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method public blacklist getStartHyphenEdit(I)I
    .registers 4

    .line 1205
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result p1

    return p1
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 1192
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method public greylist-max-o reflow(Ljava/lang/CharSequence;III)V
    .registers 24

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v2, p1

    if-eq v2, v1, :cond_9

    .line 642
    return-void

    .line 644
    :cond_9
    iget-object v1, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 645
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 649
    add-int/lit8 v3, p2, -0x1

    const/16 v4, 0xa

    invoke-static {v1, v4, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    .line 650
    const/4 v6, 0x1

    if-gez v3, :cond_1c

    .line 651
    const/4 v3, 0x0

    goto :goto_1d

    .line 653
    :cond_1c
    add-int/2addr v3, v6

    .line 656
    :goto_1d
    sub-int v3, p2, v3

    .line 657
    add-int v7, p3, v3

    .line 658
    add-int v8, p4, v3

    .line 659
    sub-int v3, p2, v3

    .line 664
    add-int v9, v3, v8

    invoke-static {v1, v4, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    .line 665
    if-gez v4, :cond_2f

    .line 666
    move v4, v2

    goto :goto_30

    .line 668
    :cond_2f
    add-int/2addr v4, v6

    .line 670
    :goto_30
    sub-int/2addr v4, v9

    .line 671
    add-int/2addr v7, v4

    .line 672
    add-int/2addr v8, v4

    .line 676
    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_6b

    .line 677
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    .line 681
    :cond_3a
    nop

    .line 683
    add-int v9, v3, v8

    const-class v10, Landroid/text/style/WrapTogetherSpan;

    invoke-interface {v4, v3, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 686
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_45
    array-length v12, v9

    if-ge v10, v12, :cond_69

    .line 687
    aget-object v12, v9, v10

    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 688
    aget-object v13, v9, v10

    invoke-interface {v4, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 690
    if-ge v12, v3, :cond_5d

    .line 691
    nop

    .line 693
    sub-int v11, v3, v12

    .line 694
    add-int/2addr v7, v11

    .line 695
    add-int/2addr v8, v11

    .line 696
    sub-int/2addr v3, v11

    move v11, v6

    .line 699
    :cond_5d
    add-int v12, v3, v8

    if-le v13, v12, :cond_66

    .line 700
    nop

    .line 702
    sub-int/2addr v13, v12

    .line 703
    add-int/2addr v7, v13

    .line 704
    add-int/2addr v8, v13

    move v11, v6

    .line 686
    :cond_66
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    .line 707
    :cond_69
    if-nez v11, :cond_3a

    .line 712
    :cond_6b
    invoke-virtual {v0, v3}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v4

    .line 713
    invoke-virtual {v0, v4}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v9

    .line 715
    add-int v10, v3, v7

    invoke-virtual {v0, v10}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v10

    .line 716
    add-int v11, v3, v8

    if-ne v11, v2, :cond_81

    .line 717
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v10

    .line 718
    :cond_81
    invoke-virtual {v0, v10}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v12

    .line 719
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v13

    if-ne v10, v13, :cond_8d

    move v13, v6

    goto :goto_8e

    :cond_8d
    const/4 v13, 0x0

    .line 726
    :goto_8e
    sget-object v14, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v14

    .line 727
    :try_start_91
    sget-object v15, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 728
    sget-object v16, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 729
    const/16 v17, 0x0

    sput-object v17, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 730
    sput-object v17, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 731
    monitor-exit v14
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_248

    .line 733
    if-nez v16, :cond_ad

    .line 734
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v6

    invoke-static {v1, v3, v11, v14, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v16

    move-object/from16 v6, v16

    goto :goto_af

    .line 733
    :cond_ad
    move-object/from16 v6, v16

    .line 737
    :goto_af
    invoke-virtual {v6, v1, v3, v11}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 738
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 739
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 740
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 741
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v14

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v5

    invoke-virtual {v3, v14, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mFallbackLineSpacing:Z

    .line 742
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 743
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-object v5, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 744
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 745
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 746
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v5, v0, Landroid/text/DynamicLayout;->mJustificationMode:I

    .line 747
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-object v5, v0, Landroid/text/DynamicLayout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 748
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 749
    xor-int/lit8 v5, v13, 0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 750
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mUseBoundsForWidth:Z

    .line 751
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 752
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget-object v5, v0, Landroid/text/DynamicLayout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 753
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 754
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setCalculateBounds(Z)Landroid/text/StaticLayout$Builder;

    .line 756
    invoke-virtual {v6, v5, v15}, Landroid/text/StaticLayout$Builder;->buildPartialStaticLayoutForDynamicLayout(ZLandroid/text/StaticLayout;)Landroid/text/StaticLayout;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 762
    if-eq v11, v2, :cond_136

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    if-ne v2, v11, :cond_136

    .line 763
    add-int/lit8 v5, v5, -0x1

    .line 766
    :cond_136
    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v14, v10, v4

    invoke-virtual {v2, v4, v14}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 767
    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v2, v4, v14}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 771
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    .line 772
    nop

    .line 774
    iget-boolean v14, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v14, :cond_155

    if-nez v4, :cond_155

    .line 775
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v14

    .line 776
    iput v14, v0, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 777
    sub-int/2addr v2, v14

    goto :goto_156

    .line 779
    :cond_155
    const/4 v14, 0x0

    :goto_156
    iget-boolean v15, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v15, :cond_164

    if-eqz v13, :cond_164

    .line 780
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v13

    .line 781
    iput v13, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 782
    add-int/2addr v2, v13

    goto :goto_165

    .line 785
    :cond_164
    const/4 v13, 0x0

    :goto_165
    iget-object v15, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int/2addr v8, v7

    const/4 v7, 0x0

    invoke-virtual {v15, v4, v7, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 786
    iget-object v7, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v8, v9, v12

    add-int/2addr v8, v2

    const/4 v2, 0x1

    invoke-virtual {v7, v4, v2, v8}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 792
    iget-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    const/4 v7, 0x5

    if-eqz v2, :cond_182

    .line 793
    const/4 v2, 0x7

    new-array v2, v2, [I

    .line 794
    const/high16 v8, -0x80000000

    aput v8, v2, v7

    goto :goto_184

    .line 796
    :cond_182
    new-array v2, v7, [I

    .line 799
    :goto_184
    const/4 v8, 0x1

    new-array v12, v8, [Landroid/text/Layout$Directions;

    .line 801
    const/4 v8, 0x0

    :goto_188
    if-ge v8, v5, :cond_232

    .line 802
    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v15

    .line 803
    const/16 v16, 0x0

    aput v15, v2, v16

    .line 804
    aget v17, v2, v16

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x1e

    or-int v17, v17, v18

    aput v17, v2, v16

    .line 805
    aget v17, v2, v16

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v18

    if-eqz v18, :cond_1a9

    const/high16 v18, 0x20000000

    goto :goto_1ab

    :cond_1a9
    move/from16 v18, v16

    :goto_1ab
    or-int v17, v17, v18

    aput v17, v2, v16

    .line 807
    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v17

    add-int v17, v17, v9

    .line 808
    if-lez v8, :cond_1b9

    .line 809
    sub-int v17, v17, v14

    .line 810
    :cond_1b9
    const/16 v18, 0x1

    aput v17, v2, v18

    .line 812
    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v17

    .line 813
    move/from16 p2, v7

    add-int/lit8 v7, v5, -0x1

    if-ne v8, v7, :cond_1c9

    .line 814
    add-int v17, v17, v13

    .line 816
    :cond_1c9
    const/16 v18, 0x2

    aput v17, v2, v18

    .line 817
    const/16 v17, 0x3

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineExtra(I)I

    move-result v18

    aput v18, v2, v17

    .line 818
    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v12, v16

    .line 820
    if-ne v8, v7, :cond_1e1

    move v7, v11

    goto :goto_1e7

    :cond_1e1
    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 821
    :goto_1e7
    nop

    .line 822
    move-object/from16 v17, v6

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getStartHyphenEdit(I)I

    move-result v6

    move/from16 p3, v9

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getEndHyphenEdit(I)I

    move-result v9

    .line 821
    invoke-static {v6, v9}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v6

    const/4 v9, 0x4

    aput v6, v2, v9

    .line 823
    aget v6, v2, v9

    .line 824
    invoke-direct {v0, v1, v15, v7}, Landroid/text/DynamicLayout;->contentMayProtrudeFromLineTopOrBottom(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_206

    .line 825
    const/16 v7, 0x100

    goto :goto_208

    :cond_206
    move/from16 v7, v16

    :goto_208
    or-int/2addr v6, v7

    aput v6, v2, v9

    .line 827
    iget-boolean v6, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v6, :cond_21c

    .line 828
    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v6

    aput v6, v2, p2

    .line 829
    const/4 v6, 0x6

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v7

    aput v7, v2, v6

    .line 832
    :cond_21c
    iget-object v6, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v7, v4, v8

    invoke-virtual {v6, v7, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 833
    iget-object v6, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    invoke-virtual {v6, v7, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 801
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v6, v17

    goto/16 :goto_188

    .line 836
    :cond_232
    move-object/from16 v17, v6

    const/4 v2, 0x1

    sub-int/2addr v10, v2

    invoke-virtual {v0, v4, v10, v5}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 838
    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 839
    sget-object v1, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 840
    :try_start_23f
    sput-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 841
    sput-object v17, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 842
    monitor-exit v1

    .line 843
    return-void

    .line 842
    :catchall_245
    move-exception v0

    monitor-exit v1
    :try_end_247
    .catchall {:try_start_23f .. :try_end_247} :catchall_245

    throw v0

    .line 731
    :catchall_248
    move-exception v0

    :try_start_249
    monitor-exit v14
    :try_end_24a
    .catchall {:try_start_249 .. :try_end_24a} :catchall_248

    throw v0
.end method

.method public greylist-max-o setBlockIndex(II)V
    .registers 4

    .line 1120
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput p2, v0, p1

    .line 1121
    return-void
.end method

.method public greylist-max-o setBlocksDataForTest([I[III)V
    .registers 8

    .line 1082
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 1083
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 1084
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1085
    iget-object p1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 1087
    :goto_19
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p1}, Landroid/text/PackedIntVector;->size()I

    move-result p1

    if-ge p1, p4, :cond_30

    .line 1088
    iget-object p1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    iget-object p2, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {p2}, Landroid/text/PackedIntVector;->size()I

    move-result p2

    const/4 p3, 0x5

    new-array p3, p3, [I

    invoke-virtual {p1, p2, p3}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_19

    .line 1090
    :cond_30
    return-void
.end method

.method public greylist-max-r setIndexFirstChangedBlock(I)V
    .registers 2

    .line 1144
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 1145
    return-void
.end method

.method public greylist-max-o updateBlocks(III)V
    .registers 22

    .line 959
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_e

    .line 960
    invoke-direct {v0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 961
    return-void

    .line 964
    :cond_e
    nop

    .line 965
    nop

    .line 966
    const/4 v3, 0x0

    move v4, v3

    :goto_12
    iget v5, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    const/4 v6, -0x1

    if-ge v4, v5, :cond_22

    .line 967
    iget-object v5, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v5, v5, v4

    if-lt v5, v1, :cond_1f

    .line 968
    nop

    .line 969
    goto :goto_23

    .line 966
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_22
    move v4, v6

    .line 972
    :goto_23
    move v5, v4

    :goto_24
    iget v7, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v5, v7, :cond_33

    .line 973
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v7, v7, v5

    if-lt v7, v2, :cond_30

    .line 974
    nop

    .line 975
    goto :goto_34

    .line 972
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_33
    move v5, v6

    .line 978
    :goto_34
    iget-object v7, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v7, v7, v5

    .line 980
    const/4 v8, 0x1

    if-nez v4, :cond_3d

    move v9, v3

    goto :goto_44

    .line 981
    :cond_3d
    iget-object v9, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    add-int/2addr v9, v8

    :goto_44
    if-le v1, v9, :cond_48

    move v9, v8

    goto :goto_49

    :cond_48
    move v9, v3

    .line 982
    :goto_49
    if-lez p3, :cond_4d

    move v10, v8

    goto :goto_4e

    :cond_4d
    move v10, v3

    .line 983
    :goto_4e
    iget-object v11, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v11, v11, v5

    if-ge v2, v11, :cond_56

    move v11, v8

    goto :goto_57

    :cond_56
    move v11, v3

    .line 985
    :goto_57
    nop

    .line 986
    if-eqz v9, :cond_5c

    move v12, v8

    goto :goto_5d

    :cond_5c
    move v12, v3

    .line 987
    :goto_5d
    if-eqz v10, :cond_61

    add-int/lit8 v12, v12, 0x1

    .line 988
    :cond_61
    if-eqz v11, :cond_65

    add-int/lit8 v12, v12, 0x1

    .line 990
    :cond_65
    sub-int v13, v5, v4

    add-int/2addr v13, v8

    .line 991
    iget v14, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v13

    .line 993
    if-nez v14, :cond_79

    .line 995
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aput v3, v1, v3

    .line 996
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v6, v1, v3

    .line 997
    iput v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 998
    return-void

    .line 1001
    :cond_79
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v15, v15

    if-le v14, v15, :cond_b9

    .line 1002
    iget-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    .line 1003
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1002
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v15

    .line 1004
    move/from16 v16, v6

    array-length v6, v15

    new-array v6, v6, [I

    .line 1005
    move/from16 v17, v8

    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    invoke-static {v8, v3, v15, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1006
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    invoke-static {v8, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    iget-object v8, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v3, v5, 0x1

    add-int v1, v4, v12

    iget v2, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    invoke-static {v8, v3, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1009
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {v2, v3, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1011
    iput-object v15, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 1012
    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    goto :goto_de

    .line 1013
    :cond_b9
    move/from16 v16, v6

    move/from16 v17, v8

    add-int v1, v12, v13

    if-eqz v1, :cond_de

    .line 1014
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v2, v5, 0x1

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v6, v4, v12

    iget v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v2, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    iget v8, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v2, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_df

    .line 1013
    :cond_de
    :goto_de
    nop

    .line 1020
    :goto_df
    add-int v1, v12, v13

    if-eqz v1, :cond_11f

    iget-object v1, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    if-eqz v1, :cond_11f

    .line 1021
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1022
    sub-int v2, v12, v13

    .line 1023
    const/4 v3, 0x0

    :goto_ef
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_11d

    .line 1024
    iget-object v6, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1025
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v4, :cond_108

    .line 1027
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_108
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v5, :cond_11a

    .line 1031
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1032
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_11a
    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    .line 1035
    :cond_11d
    iput-object v1, v0, Landroid/text/DynamicLayout;->mBlocksAlwaysNeedToBeRedrawn:Landroid/util/ArraySet;

    .line 1038
    :cond_11f
    iput v14, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 1040
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p3, v1

    .line 1041
    if-eqz v1, :cond_139

    .line 1044
    add-int/2addr v12, v4

    .line 1045
    move v2, v12

    :goto_12b
    iget v3, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v2, v3, :cond_13b

    .line 1046
    iget-object v3, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    aget v5, v3, v2

    add-int/2addr v5, v1

    aput v5, v3, v2

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_12b

    .line 1049
    :cond_139
    iget v12, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 1051
    :cond_13b
    iget v2, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 1053
    nop

    .line 1054
    if-eqz v9, :cond_155

    .line 1055
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/lit8 v3, p1, -0x1

    aput v3, v2, v4

    .line 1056
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 1057
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v16, v2, v4

    .line 1058
    add-int/lit8 v4, v4, 0x1

    .line 1061
    :cond_155
    if-eqz v10, :cond_168

    .line 1062
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int v3, p1, p3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v4

    .line 1063
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 1064
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v16, v2, v4

    .line 1065
    add-int/lit8 v4, v4, 0x1

    .line 1068
    :cond_168
    if-eqz v11, :cond_176

    .line 1069
    iget-object v2, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    add-int/2addr v7, v1

    aput v7, v2, v4

    .line 1070
    invoke-direct {v0, v4}, Landroid/text/DynamicLayout;->updateAlwaysNeedsToBeRedrawn(I)V

    .line 1071
    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    aput v16, v0, v4

    .line 1073
    :cond_176
    return-void
.end method
