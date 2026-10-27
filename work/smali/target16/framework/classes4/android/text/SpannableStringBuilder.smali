.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final greylist-max-o END_MASK:I = 0xf

.field private static final greylist-max-o MARK:I = 0x1

.field private static final greylist-max-o NO_FILTERS:[Landroid/text/InputFilter;

.field private static final greylist-max-o PARAGRAPH:I = 0x3

.field private static final greylist-max-o POINT:I = 0x2

.field private static final greylist-max-o SPAN_ADDED:I = 0x800

.field private static final greylist-max-o SPAN_END_AT_END:I = 0x8000

.field private static final greylist-max-o SPAN_END_AT_START:I = 0x4000

.field private static final greylist-max-o SPAN_START_AT_END:I = 0x2000

.field private static final greylist-max-o SPAN_START_AT_START:I = 0x1000

.field private static final greylist-max-o SPAN_START_END_MASK:I = 0xf000

.field private static final greylist-max-o START_MASK:I = 0xf0

.field private static final greylist-max-o START_SHIFT:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final greylist-max-o sCachedIntBuffer:[[I


# instance fields
.field private greylist-max-o mFilters:[Landroid/text/InputFilter;

.field private greylist mGapLength:I

.field private greylist mGapStart:I

.field private greylist-max-o mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLowWaterMark:I

.field private greylist mSpanCount:I

.field private greylist mSpanEnds:[I

.field private greylist mSpanFlags:[I

.field private greylist-max-o mSpanInsertCount:I

.field private greylist-max-o mSpanMax:[I

.field private greylist-max-o mSpanOrder:[I

.field private greylist mSpanStarts:[I

.field private greylist mSpans:[Ljava/lang/Object;

.field private greylist mText:[C

.field private greylist-max-o mTextWatcherDepth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1775
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    sput-object v1, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 1778
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 46
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 4

    .line 54
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .registers 16

    .line 61
    move v2, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    sget-object v3, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 62
    sub-int v7, v2, p2

    .line 64
    if-ltz v7, :cond_8b

    .line 66
    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v3

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 67
    iput v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 68
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v3, v3

    sub-int/2addr v3, v7

    iput v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 70
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v3, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 72
    iput v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 73
    iput v8, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 74
    sget-object v3, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 75
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 76
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 77
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 78
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 79
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 81
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_8a

    .line 82
    move-object v9, p1

    check-cast v9, Landroid/text/Spanned;

    .line 83
    const-class v1, Ljava/lang/Object;

    invoke-interface {v9, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .line 85
    move v11, v8

    :goto_4e
    array-length v1, v10

    if-ge v11, v1, :cond_87

    .line 86
    aget-object v1, v10, v11

    instance-of v1, v1, Landroid/text/NoCopySpan;

    if-eqz v1, :cond_58

    .line 87
    goto :goto_84

    .line 90
    :cond_58
    aget-object v1, v10, v11

    invoke-interface {v9, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, p2

    .line 91
    aget-object v2, v10, v11

    invoke-interface {v9, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    .line 92
    aget-object v3, v10, v11

    invoke-interface {v9, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 94
    if-gez v1, :cond_6f

    .line 95
    move v1, v8

    .line 96
    :cond_6f
    if-le v1, v7, :cond_73

    .line 97
    move v3, v7

    goto :goto_74

    .line 96
    :cond_73
    move v3, v1

    .line 99
    :goto_74
    if-gez v2, :cond_77

    .line 100
    move v2, v8

    .line 101
    :cond_77
    if-le v2, v7, :cond_7b

    .line 102
    move v4, v7

    goto :goto_7c

    .line 101
    :cond_7b
    move v4, v2

    .line 104
    :goto_7c
    aget-object v2, v10, v11

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 85
    :goto_84
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    .line 106
    :cond_87
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 108
    :cond_8a
    return-void

    .line 64
    :cond_8b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private greylist-max-o calcMax(I)I
    .registers 5

    .line 1707
    nop

    .line 1708
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    .line 1710
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    goto :goto_f

    .line 1708
    :cond_e
    const/4 v1, 0x0

    .line 1712
    :goto_f
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v2, :cond_29

    .line 1713
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1714
    if-eqz v0, :cond_29

    .line 1715
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1718
    :cond_29
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v1, v0, p1

    .line 1719
    return v1
.end method

.method private greylist-max-o change(IILjava/lang/CharSequence;II)V
    .registers 25

    .line 329
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    sub-int v12, v8, v7

    .line 330
    sub-int v13, v11, v10

    .line 331
    sub-int v14, v13, v12

    .line 333
    nop

    .line 334
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    const/16 v16, 0x0

    move/from16 v17, v1

    move/from16 v1, v16

    :goto_1d
    if-ltz v17, :cond_c5

    .line 335
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v17

    .line 336
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_2a

    .line 337
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 339
    :cond_2a
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v17

    .line 340
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_35

    .line 341
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 343
    :cond_35
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v17

    const/16 v5, 0x33

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9b

    .line 344
    nop

    .line 345
    nop

    .line 346
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 348
    const/16 v5, 0xa

    if-le v2, v7, :cond_5c

    if-gt v2, v8, :cond_5c

    .line 349
    move v6, v8

    :goto_4b
    if-ge v6, v4, :cond_5d

    .line 350
    if-le v6, v8, :cond_58

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v5, :cond_58

    .line 351
    goto :goto_5d

    .line 349
    :cond_58
    add-int/lit8 v6, v6, 0x1

    const/4 v15, 0x1

    goto :goto_4b

    .line 354
    :cond_5c
    move v6, v2

    :cond_5d
    :goto_5d
    if-le v3, v7, :cond_7c

    if-gt v3, v8, :cond_7c

    .line 355
    move v15, v8

    :goto_62
    if-ge v15, v4, :cond_78

    .line 356
    if-le v15, v8, :cond_71

    move/from16 v18, v1

    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_73

    .line 357
    goto :goto_7a

    .line 356
    :cond_71
    move/from16 v18, v1

    .line 355
    :cond_73
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v18

    goto :goto_62

    :cond_78
    move/from16 v18, v1

    .line 360
    :goto_7a
    move v4, v15

    goto :goto_7f

    .line 354
    :cond_7c
    move/from16 v18, v1

    .line 360
    move v4, v3

    :goto_7f
    if-ne v6, v2, :cond_89

    if-eq v4, v3, :cond_84

    goto :goto_89

    :cond_84
    move v3, v4

    move v2, v6

    move/from16 v1, v18

    goto :goto_9d

    .line 361
    :cond_89
    :goto_89
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v1, v17

    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v1, v17

    move v3, v6

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 363
    move v2, v3

    move v3, v4

    const/4 v1, 0x1

    goto :goto_9d

    .line 343
    :cond_9b
    move/from16 v18, v1

    .line 367
    :goto_9d
    nop

    .line 368
    if-ne v2, v7, :cond_a3

    const/16 v2, 0x1000

    goto :goto_ac

    .line 369
    :cond_a3
    add-int v4, v8, v14

    if-ne v2, v4, :cond_aa

    const/16 v2, 0x2000

    goto :goto_ac

    :cond_aa
    move/from16 v2, v16

    .line 370
    :goto_ac
    if-ne v3, v7, :cond_b1

    or-int/lit16 v2, v2, 0x4000

    goto :goto_b9

    .line 371
    :cond_b1
    add-int v4, v8, v14

    if-ne v3, v4, :cond_b9

    const v3, 0x8000

    or-int/2addr v2, v3

    .line 372
    :cond_b9
    :goto_b9
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v3, v17

    or-int/2addr v2, v4

    aput v2, v3, v17

    .line 334
    add-int/lit8 v17, v17, -0x1

    const/4 v15, 0x1

    goto/16 :goto_1d

    .line 374
    :cond_c5
    move/from16 v18, v1

    if-eqz v18, :cond_cc

    .line 375
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 378
    :cond_cc
    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 380
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v14, v1, :cond_dd

    .line 381
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v1, v1

    add-int/2addr v1, v14

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 384
    :cond_dd
    if-nez v13, :cond_e1

    const/4 v6, 0x1

    goto :goto_e3

    :cond_e1
    move/from16 v6, v16

    .line 387
    :goto_e3
    if-lez v12, :cond_f4

    .line 388
    :goto_e5
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v1, :cond_f4

    .line 389
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {v0, v7, v8, v6, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto :goto_e5

    .line 395
    :cond_f4
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v1, v14

    iput v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 396
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v14

    iput v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 398
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10d

    .line 399
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "mGapLength < 1"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    :cond_10d
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {v9, v10, v11, v1, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 403
    if-lez v12, :cond_15a

    .line 405
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v3

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v3, v3

    if-ne v1, v3, :cond_120

    move v5, v2

    goto :goto_122

    :cond_120
    move/from16 v5, v16

    .line 407
    :goto_122
    move/from16 v8, v16

    :goto_124
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v8, v1, :cond_157

    .line 408
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v8

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v4, v1, 0x4

    .line 409
    iget-object v12, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v8

    move v2, v7

    move v3, v14

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v1

    aput v1, v12, v8

    .line 412
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v8

    and-int/lit8 v4, v1, 0xf

    .line 413
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v8

    move/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v1

    aput v1, v7, v8

    .line 407
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, p1

    goto :goto_124

    .line 417
    :cond_157
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 420
    :cond_15a
    instance-of v1, v9, Landroid/text/Spanned;

    if-eqz v1, :cond_1a3

    .line 421
    move-object v7, v9

    check-cast v7, Landroid/text/Spanned;

    .line 422
    const-class v1, Ljava/lang/Object;

    invoke-interface {v7, v10, v11, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 424
    move/from16 v9, v16

    :goto_169
    array-length v1, v8

    if-ge v9, v1, :cond_1a0

    .line 425
    aget-object v1, v8, v9

    invoke-interface {v7, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 426
    aget-object v2, v8, v9

    invoke-interface {v7, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 428
    if-ge v1, v10, :cond_17b

    move v1, v10

    .line 429
    :cond_17b
    if-le v2, v11, :cond_17e

    move v2, v11

    .line 432
    :cond_17e
    aget-object v3, v8, v9

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_19b

    .line 433
    sub-int/2addr v1, v10

    add-int v3, v1, p1

    .line 434
    sub-int/2addr v2, v10

    add-int v4, v2, p1

    .line 435
    aget-object v1, v8, v9

    invoke-interface {v7, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    or-int/lit16 v5, v1, 0x800

    .line 437
    aget-object v2, v8, v9

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 424
    :cond_19b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_169

    .line 441
    :cond_1a0
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 443
    :cond_1a3
    return-void
.end method

.method private greylist-max-o checkRange(Ljava/lang/String;II)V
    .registers 8

    .line 1318
    const-string v0, " "

    if-lt p3, p2, :cond_5f

    .line 1323
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1325
    if-gt p2, v1, :cond_36

    if-gt p3, v1, :cond_36

    .line 1330
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    .line 1334
    return-void

    .line 1331
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1332
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " starts before 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1326
    :cond_36
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1327
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ends beyond length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1319
    :cond_5f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1320
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " has end before start"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkSortBuffer([II)[I
    .registers 3

    .line 1057
    if-eqz p0, :cond_7

    array-length v0, p0

    if-le p1, v0, :cond_6

    goto :goto_7

    .line 1060
    :cond_6
    return-object p0

    .line 1058
    :cond_7
    :goto_7
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method private final greylist-max-o compareSpans(II[I[I)I
    .registers 6

    .line 1148
    aget v0, p3, p1

    .line 1149
    aget p3, p3, p2

    .line 1150
    if-ne v0, p3, :cond_f

    .line 1151
    aget p1, p4, p1

    aget p2, p4, p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 1155
    :cond_f
    invoke-static {p3, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method private greylist-max-o countSpans(IILjava/lang/Class;I)I
    .registers 10

    .line 893
    nop

    .line 894
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b

    .line 896
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 897
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    .line 898
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_14

    .line 899
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 901
    :cond_14
    if-lt v2, p1, :cond_1b

    .line 902
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v1

    goto :goto_1c

    .line 905
    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v2, :cond_5d

    .line 906
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    .line 907
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_2b

    .line 908
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 910
    :cond_2b
    if-gt v2, p2, :cond_5d

    .line 911
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, p4

    .line 912
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_38

    .line 913
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 915
    :cond_38
    if-lt v3, p1, :cond_52

    if-eq v2, v3, :cond_42

    if-eq p1, p2, :cond_42

    if-eq v2, p2, :cond_52

    if-eq v3, p1, :cond_52

    :cond_42
    const-class v2, Ljava/lang/Object;

    if-eq v2, p3, :cond_50

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    .line 918
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 919
    :cond_50
    add-int/lit8 v1, v1, 0x1

    .line 921
    :cond_52
    if-eqz v0, :cond_5d

    .line 922
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result p1

    add-int/2addr v1, p1

    .line 926
    :cond_5d
    return v1
.end method

.method private greylist-max-o getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    .line 948
    move/from16 v0, p4

    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_2d

    .line 950
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v5

    .line 951
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, v5

    .line 952
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_15

    .line 953
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 955
    :cond_15
    if-lt v1, p1, :cond_2a

    .line 956
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v5

    goto :goto_31

    .line 955
    :cond_2a
    move-object/from16 v6, p5

    goto :goto_2f

    .line 948
    :cond_2d
    move-object/from16 v6, p5

    .line 960
    :goto_2f
    move/from16 v5, p8

    :goto_31
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lt v0, v7, :cond_36

    return v5

    .line 961
    :cond_36
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v7, v0

    .line 962
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v7, v8, :cond_41

    .line 963
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v7, v8

    .line 965
    :cond_41
    if-gt v7, p2, :cond_ba

    .line 966
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v8, v0

    .line 967
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v9, :cond_4e

    .line 968
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v9

    .line 970
    :cond_4e
    if-lt v8, p1, :cond_9e

    if-eq v7, v8, :cond_58

    if-eq p1, p2, :cond_58

    if-eq v7, p2, :cond_9e

    if-eq v8, p1, :cond_9e

    :cond_58
    const-class v7, Ljava/lang/Object;

    if-eq v7, p3, :cond_66

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v7, v7, v0

    .line 973
    invoke-virtual {p3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 974
    :cond_66
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v7, v7, v0

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    .line 975
    nop

    .line 976
    if-eqz p9, :cond_79

    .line 977
    aput v7, p6, v5

    .line 978
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v7, v7, v0

    aput v7, p7, v5

    goto :goto_93

    .line 979
    :cond_79
    if-eqz v7, :cond_93

    .line 981
    const/4 v9, 0x0

    .line 982
    :goto_7c
    if-ge v9, v5, :cond_8b

    .line 983
    aget-object v10, v6, v9

    invoke-virtual {p0, v10}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    and-int/2addr v10, v8

    .line 984
    if-le v7, v10, :cond_88

    goto :goto_8b

    .line 982
    :cond_88
    add-int/lit8 v9, v9, 0x1

    goto :goto_7c

    .line 986
    :cond_8b
    :goto_8b
    add-int/lit8 v7, v9, 0x1

    sub-int v8, v5, v9

    invoke-static {v6, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    goto :goto_94

    .line 989
    :cond_93
    :goto_93
    move v9, v5

    :goto_94
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v7, v7, v0

    aput-object v7, v6, v9

    .line 990
    add-int/lit8 v5, v5, 0x1

    move v8, v5

    goto :goto_9f

    .line 992
    :cond_9e
    move v8, v5

    :goto_9f
    array-length v5, v6

    if-ge v8, v5, :cond_b9

    if-eqz v11, :cond_b9

    .line 993
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v7, p7

    move/from16 v9, p9

    move v4, v0

    move-object v5, v6

    move-object v0, p0

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v5

    goto :goto_ba

    .line 997
    :cond_b9
    move v5, v8

    :cond_ba
    :goto_ba
    return v5
.end method

.method private static greylist-max-o hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .registers 7

    .line 588
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 589
    check-cast p0, Landroid/text/Spanned;

    .line 590
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 591
    array-length v0, p1

    .line 592
    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_20

    .line 593
    aget-object v3, p1, v2

    .line 594
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 595
    const/16 v4, 0x21

    if-eq v3, v4, :cond_1d

    const/4 p0, 0x1

    return p0

    .line 592
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 598
    :cond_20
    return v1
.end method

.method private greylist-max-o invalidateIndex(I)V
    .registers 3

    .line 1772
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1773
    return-void
.end method

.method private greylist-max-o isInvalidParagraph(II)Z
    .registers 4

    .line 784
    const/4 v0, 0x3

    if-ne p2, v0, :cond_16

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-eq p1, p2, :cond_16

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    return p2
.end method

.method private static greylist-max-o leftChild(I)I
    .registers 3

    .line 1691
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p0, v0

    return p0
.end method

.method private greylist-max-o moveGapTo(I)V
    .registers 9

    .line 170
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v0, :cond_5

    .line 171
    return-void

    .line 173
    :cond_5
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    .line 175
    :goto_f
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v2, :cond_24

    .line 176
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    .line 177
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v3, p1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    goto :goto_35

    .line 179
    :cond_24
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v2, p1, v2

    .line 180
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    :goto_35
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v2, :cond_98

    .line 185
    nop

    :goto_3a
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_91

    .line 186
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v1

    .line 187
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v1

    .line 189
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_4d

    .line 190
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 191
    :cond_4d
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v2, p1, :cond_55

    .line 192
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    goto :goto_68

    .line 193
    :cond_55
    if-ne v2, p1, :cond_68

    .line 194
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    .line 196
    if-eq v6, v5, :cond_65

    if-eqz v0, :cond_68

    if-ne v6, v4, :cond_68

    .line 197
    :cond_65
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    .line 200
    :cond_68
    :goto_68
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v6, :cond_6f

    .line 201
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v6

    .line 202
    :cond_6f
    if-le v3, p1, :cond_75

    .line 203
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    goto :goto_86

    .line 204
    :cond_75
    if-ne v3, p1, :cond_86

    .line 205
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0xf

    .line 207
    if-eq v6, v5, :cond_83

    if-eqz v0, :cond_86

    if-ne v6, v4, :cond_86

    .line 208
    :cond_83
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    .line 211
    :cond_86
    :goto_86
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v4, v1

    .line 212
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v2, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 214
    :cond_91
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 217
    :cond_98
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 218
    return-void
.end method

.method private greylist-max-o nextSpanTransitionRec(IILjava/lang/Class;I)I
    .registers 9

    .line 1172
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    .line 1174
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 1175
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-le v2, p1, :cond_16

    .line 1176
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1179
    :cond_16
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_54

    .line 1180
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    .line 1181
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    .line 1182
    if-le v1, p1, :cond_39

    if-ge v1, p2, :cond_39

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1183
    move p2, v1

    .line 1184
    :cond_39
    if-le v2, p1, :cond_48

    if-ge v2, p2, :cond_48

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1185
    move p2, v2

    .line 1186
    :cond_48
    if-ge v1, p2, :cond_54

    if-eqz v0, :cond_54

    .line 1187
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1191
    :cond_54
    return p2
.end method

.method private static greylist-max-o obtain(I)[I
    .registers 6

    .line 1007
    nop

    .line 1008
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    .line 1011
    nop

    .line 1012
    :try_start_5
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    move v3, v2

    :goto_c
    if-ltz v1, :cond_23

    .line 1013
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v4, v4, v1

    if-eqz v4, :cond_20

    .line 1014
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v4, v4, v1

    array-length v4, v4

    if-lt v4, p0, :cond_1d

    .line 1015
    nop

    .line 1016
    goto :goto_24

    .line 1017
    :cond_1d
    if-ne v3, v2, :cond_20

    .line 1018
    move v3, v1

    .line 1012
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_23
    move v1, v3

    .line 1023
    :goto_24
    const/4 v3, 0x0

    if-eq v1, v2, :cond_30

    .line 1024
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    .line 1025
    sget-object v4, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object v3, v4, v1

    move-object v3, v2

    .line 1027
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_36

    .line 1028
    invoke-static {v3, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object p0

    .line 1029
    return-object p0

    .line 1027
    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method private static greylist-max-o recycle([I)V
    .registers 5

    .line 1038
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    .line 1039
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 1040
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    array-length v2, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_18

    goto :goto_1b

    .line 1039
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1041
    :cond_1b
    :goto_1b
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v2, v1

    .line 1042
    nop

    .line 1045
    :cond_20
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private static greylist-max-o region(II)Ljava/lang/String;
    .registers 4

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ... "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o removeSpan(II)V
    .registers 10

    .line 479
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 481
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p1

    .line 482
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    .line 484
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v3, :cond_13

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v3

    .line 485
    :cond_13
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_1a

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 487
    :cond_1a
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    .line 488
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v5, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 496
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 497
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 500
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 502
    and-int/lit16 p1, p2, 0x200

    if-nez p1, :cond_5c

    .line 503
    invoke-direct {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 505
    :cond_5c
    return-void
.end method

.method private greylist-max-o removeSpansForChange(IIZI)Z
    .registers 11

    .line 303
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 305
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-lt v2, p1, :cond_1a

    .line 306
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 307
    return v1

    .line 310
    :cond_1a
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v3, 0x0

    if-ge p4, v2, :cond_80

    .line 311
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, p4

    const/16 v4, 0x21

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_67

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    if-lt v2, p1, :cond_67

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_67

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    if-lt v2, p1, :cond_67

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_67

    if-nez p3, :cond_5a

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    if-gt v2, p1, :cond_5a

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v2, v4, :cond_67

    .line 317
    :cond_5a
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object p2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object p2, p2, p4

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-direct {p0, p4, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    .line 319
    return v1

    .line 321
    :cond_67
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, p4

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    if-gt v2, p2, :cond_7e

    if-eqz v0, :cond_7e

    .line 322
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v3

    .line 321
    :goto_7f
    return v1

    .line 324
    :cond_80
    return v3
.end method

.method private greylist-max-o resizeFor(I)V
    .registers 8

    .line 143
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    .line 144
    add-int/lit8 v1, p1, 0x1

    if-gt v1, v0, :cond_8

    .line 145
    return-void

    .line 148
    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object p1

    .line 149
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length v1, p1

    .line 151
    sub-int v2, v1, v0

    .line 152
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 153
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr v0, v4

    sub-int/2addr v1, v4

    invoke-static {v5, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 156
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 157
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_3f

    .line 158
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "mGapLength < 1"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :cond_3f
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz p1, :cond_70

    .line 161
    nop

    :goto_44
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, p1, :cond_69

    .line 162
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget p1, p1, v3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_57

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, p1, v3

    add-int/2addr v0, v2

    aput v0, p1, v3

    .line 163
    :cond_57
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget p1, p1, v3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_66

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, p1, v3

    add-int/2addr v0, v2

    aput v0, p1, v3

    .line 161
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 165
    :cond_69
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 167
    :cond_70
    return-void
.end method

.method private greylist-max-o resolveGap(I)I
    .registers 3

    .line 811
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_7

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    :cond_7
    return p1
.end method

.method private greylist-max-o restoreInvariants()V
    .registers 11

    .line 1724
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_5

    return-void

    .line 1729
    :cond_5
    const/4 v0, 0x1

    :goto_6
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_7b

    .line 1730
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_78

    .line 1731
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1732
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 1733
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 1734
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v0

    .line 1735
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v5, v5, v0

    .line 1736
    move v6, v0

    .line 1738
    :cond_2b
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v6

    .line 1739
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1740
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1741
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1742
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1743
    add-int/lit8 v6, v6, -0x1

    .line 1744
    if-lez v6, :cond_61

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    if-lt v2, v7, :cond_2b

    .line 1745
    :cond_61
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 1746
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v1, v6

    .line 1747
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v1, v6

    .line 1748
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v4, v1, v6

    .line 1749
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v5, v1, v6

    .line 1750
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 1729
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1755
    :cond_7b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 1758
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_8d

    .line 1759
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1761
    :cond_8d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    :goto_8f
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_b7

    .line 1762
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1763
    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_b4

    .line 1764
    :cond_a7
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    :cond_b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 1767
    :cond_b7
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1768
    return-void
.end method

.method private static greylist-max-o rightChild(I)I
    .registers 3

    .line 1695
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p0, v0

    return p0
.end method

.method private greylist-max-o sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .registers 5

    .line 1275
    array-length v0, p1

    .line 1277
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1278
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    .line 1279
    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1281
    :cond_12
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1282
    return-void
.end method

.method private greylist-max-o sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8

    .line 1255
    array-length v0, p1

    .line 1257
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1258
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    .line 1259
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1261
    :cond_12
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1262
    return-void
.end method

.method private greylist-max-o sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8

    .line 1285
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1286
    array-length v1, v0

    .line 1288
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    .line 1289
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1291
    :cond_14
    return-void
.end method

.method private greylist-max-o sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16

    .line 1305
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1306
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    .line 1305
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1307
    array-length v1, v0

    .line 1308
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2a

    .line 1309
    aget-object v3, v0, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1311
    :cond_2a
    return-void
.end method

.method private greylist-max-o sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8

    .line 1294
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1295
    array-length v1, v0

    .line 1297
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    .line 1298
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1300
    :cond_14
    return-void
.end method

.method private greylist-max-o sendTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8

    .line 1265
    array-length v0, p1

    .line 1267
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1268
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    .line 1269
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1271
    :cond_12
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1272
    return-void
.end method

.method private greylist sendToSpanWatchers(III)V
    .registers 15

    .line 603
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_87

    .line 604
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, v1

    .line 607
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_11

    move-object v5, p0

    goto/16 :goto_83

    .line 608
    :cond_11
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v3, v1

    .line 609
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v1

    .line 610
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_20

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v5

    :cond_20
    move v9, v3

    .line 611
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v3, :cond_28

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v3

    :cond_28
    move v10, v4

    .line 613
    add-int v3, p2, p3

    .line 614
    nop

    .line 616
    nop

    .line 617
    const/4 v4, 0x1

    if-le v9, v3, :cond_37

    .line 618
    if-eqz p3, :cond_4c

    .line 619
    sub-int v5, v9, p3

    .line 620
    move v7, v5

    move v5, v4

    goto :goto_4e

    .line 622
    :cond_37
    if-lt v9, p1, :cond_4c

    .line 624
    if-ne v9, p1, :cond_41

    and-int/lit16 v5, v2, 0x1000

    const/16 v6, 0x1000

    if-eq v5, v6, :cond_4c

    :cond_41
    if-ne v9, v3, :cond_49

    and-int/lit16 v5, v2, 0x2000

    const/16 v6, 0x2000

    if-eq v5, v6, :cond_4c

    .line 631
    :cond_49
    move v5, v4

    move v7, v9

    goto :goto_4e

    .line 635
    :cond_4c
    move v5, v0

    move v7, v9

    :goto_4e
    nop

    .line 636
    if-le v10, v3, :cond_57

    .line 637
    if-eqz p3, :cond_6b

    .line 638
    sub-int v2, v10, p3

    .line 639
    move v8, v2

    goto :goto_6d

    .line 641
    :cond_57
    if-lt v10, p1, :cond_6b

    .line 643
    if-ne v10, p1, :cond_61

    and-int/lit16 v6, v2, 0x4000

    const/16 v8, 0x4000

    if-eq v6, v8, :cond_6b

    :cond_61
    if-ne v10, v3, :cond_69

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_6b

    .line 648
    :cond_69
    move v8, v10

    goto :goto_6d

    .line 652
    :cond_6b
    move v4, v5

    move v8, v10

    :goto_6d
    if-eqz v4, :cond_78

    .line 653
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v2, v1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    goto :goto_79

    .line 652
    :cond_78
    move-object v5, p0

    .line 655
    :goto_79
    iget-object v2, v5, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v1

    const v4, -0xf001

    and-int/2addr v3, v4

    aput v3, v2, v1

    .line 603
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 659
    :cond_87
    move-object v5, p0

    :goto_88
    iget p1, v5, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, p1, :cond_bc

    .line 660
    iget-object p1, v5, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget p1, p1, v0

    .line 661
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_b9

    .line 662
    iget-object p1, v5, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget p2, p1, v0

    and-int/lit16 p2, p2, -0x801

    aput p2, p1, v0

    .line 663
    iget-object p1, v5, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget p1, p1, v0

    .line 664
    iget-object p2, v5, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget p2, p2, v0

    .line 665
    iget p3, v5, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, p3, :cond_ab

    iget p3, v5, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, p3

    .line 666
    :cond_ab
    iget p3, v5, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p2, p3, :cond_b2

    iget p3, v5, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p2, p3

    .line 667
    :cond_b2
    iget-object p3, v5, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object p3, p3, v0

    invoke-direct {p0, p3, p1, p2}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 659
    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 670
    :cond_bc
    return-void
.end method

.method private greylist-max-o setSpan(ZLjava/lang/Object;IIIZ)V
    .registers 18

    .line 686
    move/from16 v2, p5

    const-string v3, "setSpan"

    invoke-direct {p0, v3, p3, p4}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 688
    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 689
    invoke-direct {p0, p3, v3}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v6

    const-string v7, ")"

    const-string v8, " follows "

    const/4 v9, 0x1

    if-eqz v6, :cond_44

    .line 690
    if-nez p6, :cond_19

    .line 692
    return-void

    .line 694
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    .line 695
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_44
    and-int/lit8 v6, v2, 0xf

    .line 699
    invoke-direct {p0, p4, v6}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 700
    if-nez p6, :cond_4f

    .line 702
    return-void

    .line 704
    :cond_4f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p4, -0x1

    .line 705
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_7a
    const/4 v7, 0x2

    if-ne v3, v7, :cond_8b

    if-ne v6, v9, :cond_8b

    if-ne p3, p4, :cond_8b

    .line 710
    if-eqz p1, :cond_8a

    .line 711
    const-string v0, "SpannableStringBuilder"

    const-string v1, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_8a
    return-void

    .line 719
    :cond_8b
    nop

    .line 720
    nop

    .line 722
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v10, 0x3

    if-le p3, v8, :cond_96

    .line 723
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p3

    goto :goto_a9

    .line 724
    :cond_96
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p3, v8, :cond_a8

    .line 725
    if-eq v3, v7, :cond_a4

    if-ne v3, v10, :cond_a8

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne p3, v3, :cond_a8

    .line 726
    :cond_a4
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p3

    goto :goto_a9

    .line 729
    :cond_a8
    move v3, p3

    :goto_a9
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p4, v8, :cond_b1

    .line 730
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, p4

    goto :goto_c4

    .line 731
    :cond_b1
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p4, v8, :cond_c3

    .line 732
    if-eq v6, v7, :cond_bf

    if-ne v6, v10, :cond_c3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p4, v6, :cond_c3

    .line 733
    :cond_bf
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, p4

    goto :goto_c4

    .line 736
    :cond_c3
    move v6, p4

    :goto_c4
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v8, :cond_107

    .line 737
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 738
    if-eqz v8, :cond_107

    .line 739
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 740
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v8, v8, v7

    .line 741
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v9, v9, v7

    .line 743
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v10, :cond_e5

    .line 744
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v10

    .line 745
    :cond_e5
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v9, v10, :cond_ec

    .line 746
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v9, v10

    .line 748
    :cond_ec
    iget-object v10, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v3, v10, v7

    .line 749
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v6, v3, v7

    .line 750
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v2, v3, v7

    .line 752
    if-eqz p1, :cond_106

    .line 753
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 754
    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 757
    :cond_106
    return-void

    .line 761
    :cond_107
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v10, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v8, v10, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 762
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v10, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v8, v10, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 763
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v3, v8, v6}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 764
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v3, v6, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 765
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v2, v3, v6}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 766
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 767
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v2, v9

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 768
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/2addr v2, v9

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 772
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v2

    mul-int/2addr v2, v7

    add-int/2addr v2, v9

    .line 773
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v3, v3

    if-ge v3, v2, :cond_159

    .line 774
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 777
    :cond_159
    if-eqz p1, :cond_161

    .line 778
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 779
    invoke-direct {p0, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 781
    :cond_161
    return-void
.end method

.method private final greylist-max-o siftDown(I[Ljava/lang/Object;I[I[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    .line 1110
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 1111
    :goto_4
    if-ge v0, p3, :cond_3b

    .line 1112
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_13

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v2

    if-gez v2, :cond_13

    .line 1113
    move v0, v1

    .line 1115
    :cond_13
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v1

    if-ltz v1, :cond_1a

    .line 1116
    goto :goto_3b

    .line 1119
    :cond_1a
    aget-object v1, p2, p1

    .line 1120
    aget-object v2, p2, v0

    aput-object v2, p2, p1

    .line 1121
    aput-object v1, p2, v0

    .line 1123
    aget v1, p4, p1

    .line 1124
    aget v2, p4, v0

    aput v2, p4, p1

    .line 1125
    aput v1, p4, v0

    .line 1127
    aget v1, p5, p1

    .line 1128
    aget v2, p5, v0

    aput v2, p5, p1

    .line 1129
    aput v1, p5, v0

    .line 1131
    nop

    .line 1132
    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 1133
    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_4

    .line 1134
    :cond_3b
    :goto_3b
    return-void
.end method

.method private final greylist-max-o sort([Ljava/lang/Object;[I[I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    .line 1076
    array-length v3, p1

    .line 1077
    div-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_12

    .line 1078
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1077
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1081
    :cond_12
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    add-int/lit8 v3, v3, -0x1

    move v7, v3

    :goto_18
    if-lez v7, :cond_40

    .line 1082
    const/4 p1, 0x0

    aget-object p2, v2, p1

    .line 1083
    aget-object p3, v2, v7

    aput-object p3, v2, p1

    .line 1084
    aput-object p2, v2, v7

    .line 1086
    aget p2, v4, p1

    .line 1087
    aget p3, v4, v7

    aput p3, v4, p1

    .line 1088
    aput p2, v4, v7

    .line 1090
    aget p2, v5, p1

    .line 1091
    aget p3, v5, v7

    aput p3, v5, p1

    .line 1092
    aput p2, v5, v7

    .line 1094
    move-object v9, v5

    const/4 v5, 0x0

    move-object v6, v2

    move-object v8, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1081
    move-object v4, v8

    move-object v5, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_18

    .line 1096
    :cond_40
    return-void
.end method

.method private greylist-max-o treeRoot()I
    .registers 2

    .line 1686
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o updatedIntervalBound(IIIIZZ)I
    .registers 9

    .line 447
    if-lt p1, p2, :cond_2d

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2d

    .line 448
    const/4 v0, 0x2

    if-ne p4, v0, :cond_16

    .line 453
    if-nez p6, :cond_10

    if-le p1, p2, :cond_2d

    .line 454
    :cond_10
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, p2

    return p1

    .line 457
    :cond_16
    const/4 v0, 0x3

    if-ne p4, v0, :cond_21

    .line 458
    if-eqz p5, :cond_2d

    .line 459
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, p2

    return p1

    .line 465
    :cond_21
    if-nez p6, :cond_2c

    iget p4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr p4, p3

    if-ge p1, p4, :cond_29

    goto :goto_2c

    .line 469
    :cond_29
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return p1

    .line 466
    :cond_2c
    :goto_2c
    return p2

    .line 474
    :cond_2d
    return p1
.end method

.method public static whitelist valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2

    .line 111
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_7

    .line 112
    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0

    .line 114
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist append(C)Landroid/text/Editable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(C)Landroid/text/SpannableStringBuilder;
    .registers 2

    .line 298
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8

    .line 271
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 272
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, v1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10

    .line 292
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 293
    move v2, v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .registers 5

    .line 284
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 285
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 286
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 287
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api charAt(I)C
    .registers 6

    .line 122
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 123
    const-string v1, "charAt: "

    if-ltz p1, :cond_3c

    .line 125
    if-ge p1, v0, :cond_1b

    .line 129
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_16

    .line 130
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1

    .line 132
    :cond_16
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char p1, v0, p1

    return p1

    .line 126
    :cond_1b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " >= length "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " < 0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clear()V
    .registers 7

    .line 242
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 243
    iput v1, v0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 244
    return-void
.end method

.method public whitelist clearSpans()V
    .registers 7

    .line 248
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_2d

    .line 249
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 250
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 251
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 253
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_19

    .line 254
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 255
    :cond_19
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_20

    .line 256
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 258
    :cond_20
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 259
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 261
    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 248
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 263
    :cond_2d
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_36

    .line 264
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 266
    :cond_36
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 267
    return-void
.end method

.method public bridge synthetic whitelist delete(II)Landroid/text/Editable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist delete(II)Landroid/text/SpannableStringBuilder;
    .registers 9

    .line 232
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 234
    iget p2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le p2, v1, :cond_1c

    .line 235
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 237
    :cond_1c
    return-object p1
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .registers 14

    .line 1423
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1425
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_12

    .line 1426
    move-object v0, p1

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p3, p2

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_37

    .line 1427
    :cond_12
    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, p1, :cond_26

    .line 1428
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, p1

    sub-int v3, p3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_37

    .line 1430
    :cond_26
    sub-int v3, p3, p2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1432
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, v1, p1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1433
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1434
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 1436
    :goto_37
    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 13

    .line 1446
    const-string v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1448
    move v0, p5

    sub-int p5, v0, p4

    .line 1449
    sub-int/2addr p3, p2

    .line 1450
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v0, v1, :cond_15

    .line 1451
    move-object v0, p1

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object p0, v0

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_39

    .line 1452
    :cond_15
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v1, :cond_27

    .line 1453
    move-object v0, p1

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p2, v1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p4, v1

    move-object p0, v0

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_39

    .line 1456
    :cond_27
    move-object v1, p1

    invoke-static {p5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p1

    .line 1457
    const/4 v2, 0x0

    invoke-virtual {p0, p4, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1458
    sub-int/2addr p2, p4

    const/4 p4, 0x0

    move-object p0, v1

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1459
    invoke-static {p1}, Landroid/text/TextUtils;->recycle([C)V

    .line 1461
    :goto_39
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10

    .line 1613
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    .line 1614
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1615
    check-cast p1, Landroid/text/Spanned;

    .line 1617
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1618
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 1619
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v4, v0

    if-ne v3, v4, :cond_85

    .line 1620
    move v3, v1

    :goto_2f
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v4, :cond_83

    .line 1621
    aget-object v4, v2, v3

    .line 1622
    aget-object v5, v0, v3

    .line 1623
    if-ne v4, p0, :cond_5a

    .line 1624
    if-ne p1, v5, :cond_59

    .line 1625
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_59

    .line 1626
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_59

    .line 1627
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_7f

    .line 1628
    :cond_59
    return v1

    .line 1630
    :cond_5a
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 1631
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_82

    .line 1632
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_82

    .line 1633
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_7f

    goto :goto_82

    .line 1620
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1634
    :cond_82
    :goto_82
    return v1

    .line 1637
    :cond_83
    const/4 p1, 0x1

    return p1

    .line 1640
    :cond_85
    return v1
.end method

.method public whitelist getChars(II[CI)V
    .registers 8

    .line 1207
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1209
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_10

    .line 1210
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_37

    .line 1211
    :cond_10
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1e

    .line 1212
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_37

    .line 1214
    :cond_1e
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1215
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr p4, v2

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1219
    :goto_37
    return-void
.end method

.method public whitelist getFilters()[Landroid/text/InputFilter;
    .registers 2

    .line 1607
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 4

    .line 829
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 830
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 831
    if-nez p1, :cond_11

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p1, v0, p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_1d
    return v1
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 4

    .line 839
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 840
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 841
    if-nez p1, :cond_11

    goto :goto_19

    :cond_11
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget v1, v0, p1

    :goto_19
    return v1
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 4

    .line 819
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 820
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 821
    if-nez p1, :cond_11

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p1, v0, p1

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_1d
    return v1
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 851
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    .line 871
    if-nez p3, :cond_9

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 872
    :cond_9
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v1, :cond_12

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 873
    :cond_12
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v1

    .line 874
    if-nez v1, :cond_21

    .line 875
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 879
    :cond_21
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 880
    if-eqz p4, :cond_2e

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v6

    goto :goto_30

    :cond_2e
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    .line 881
    :goto_30
    if-eqz p4, :cond_37

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v1

    goto :goto_39

    :cond_37
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    :goto_39
    move-object v7, v1

    .line 882
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    .line 884
    if-eqz p4, :cond_52

    .line 885
    invoke-direct {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    .line 886
    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 887
    invoke-static {v7}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 889
    :cond_52
    return-object v5
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 12

    .line 1520
    move-object v0, p8

    move p8, p7

    move-object p7, p6

    move p6, p5

    sub-int p5, p4, p3

    .line 1521
    move v1, p4

    move p4, p3

    sub-int p3, p2, p1

    .line 1523
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_17

    .line 1524
    move p2, p1

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object p0, v0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result p1

    goto :goto_3d

    .line 1526
    :cond_17
    move p2, p1

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, p1, :cond_2a

    .line 1527
    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p2, v1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr p4, v1

    move-object p0, v0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result p1

    goto :goto_3d

    .line 1530
    :cond_2a
    invoke-static {p5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p1

    .line 1531
    const/4 v2, 0x0

    invoke-virtual {p0, p4, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1532
    sub-int/2addr p2, p4

    const/4 p4, 0x0

    move-object p0, v0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result p2

    .line 1534
    invoke-static {p1}, Landroid/text/TextUtils;->recycle([C)V

    move p1, p2

    .line 1537
    :goto_3d
    return p1
.end method

.method public whitelist getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/SpannableStringBuilder;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result p1

    return p1
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .registers 14

    .line 1578
    sub-int v3, p2, p1

    .line 1579
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_13

    .line 1580
    move p2, p1

    iget-object p1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object p0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, v3

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    goto :goto_48

    .line 1582
    :cond_13
    move v0, p1

    move-object p1, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, v3

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v0, v1, :cond_33

    .line 1583
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, v0, p2

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p5, p2

    move-object v0, p1

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, p2

    goto :goto_48

    .line 1586
    :cond_33
    move-object v1, p1

    invoke-static {p3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p1

    .line 1587
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, p1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1588
    const/4 p2, 0x0

    sub-int/2addr p5, v0

    move-object p0, v1

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p2

    add-int/2addr p2, v0

    .line 1590
    invoke-static {p1}, Landroid/text/TextUtils;->recycle([C)V

    move p1, p2

    .line 1593
    :goto_48
    return p1
.end method

.method public whitelist getTextWatcherDepth()I
    .registers 2

    .line 1251
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 8

    .line 1492
    const-string v0, "getTextWidths"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1496
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_11

    .line 1497
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, p1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    goto :goto_31

    .line 1498
    :cond_11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_20

    .line 1499
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, v1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    goto :goto_31

    .line 1501
    :cond_20
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1503
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1504
    invoke-virtual {p4, v1, v2, v0, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    .line 1505
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 1508
    :goto_31
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1646
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1647
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v0, v1

    .line 1648
    const/4 v1, 0x0

    :goto_e
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_37

    .line 1649
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 1650
    if-eq v2, p0, :cond_1f

    .line 1651
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 1653
    :cond_1f
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1654
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1655
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1648
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1657
    :cond_37
    return v0
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9

    .line 227
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11

    .line 222
    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .registers 7

    .line 1468
    const-string v0, "measureText"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1472
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_11

    .line 1473
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, p1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_31

    .line 1474
    :cond_11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_20

    .line 1475
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, v1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_31

    .line 1477
    :cond_20
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1479
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1480
    invoke-virtual {p3, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    .line 1481
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 1484
    :goto_31
    return p1
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 1164
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_5

    return p2

    .line 1165
    :cond_5
    if-nez p3, :cond_9

    .line 1166
    const-class p3, Ljava/lang/Object;

    .line 1168
    :cond_9
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p1

    return p1
.end method

.method public whitelist removeSpan(Ljava/lang/Object;)V
    .registers 3

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;I)V

    .line 792
    return-void
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .registers 4

    .line 800
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    return-void

    .line 801
    :cond_5
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 802
    if-eqz p1, :cond_16

    .line 803
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    .line 805
    :cond_16
    return-void
.end method

.method public bridge synthetic whitelist replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10

    .line 509
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 23

    .line 515
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "replace"

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 517
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v7, v3

    .line 518
    const/4 v8, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v9, v8

    :goto_16
    if-ge v9, v7, :cond_4a

    .line 519
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v6, v6, v9

    move/from16 v16, v4

    move-object v4, v0

    move-object v0, v6

    move v6, v2

    move/from16 v2, v16

    move/from16 v16, v5

    move v5, v1

    move-object v1, v3

    move/from16 v3, v16

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 521
    move/from16 v16, v5

    move-object v5, v1

    move/from16 v1, v16

    if-eqz v0, :cond_3e

    .line 522
    nop

    .line 523
    nop

    .line 524
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move-object v3, v0

    move v5, v2

    move v2, v8

    goto :goto_43

    .line 521
    :cond_3e
    move-object/from16 v16, v5

    move v5, v3

    move-object/from16 v3, v16

    .line 518
    :goto_43
    add-int/lit8 v9, v9, 0x1

    move-object v0, v4

    move v4, v2

    move/from16 v2, p2

    goto :goto_16

    .line 528
    :cond_4a
    move v2, v5

    move-object v5, v3

    move v3, v2

    move v2, v4

    move-object v4, v0

    sub-int v7, p2, v1

    .line 529
    sub-int v9, v3, v2

    .line 531
    if-nez v7, :cond_5e

    if-nez v9, :cond_5e

    invoke-static {v5, v2}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 534
    return-object v4

    .line 537
    :cond_5e
    add-int v0, v1, v7

    const-class v6, Landroid/text/TextWatcher;

    invoke-virtual {v4, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/text/TextWatcher;

    .line 538
    invoke-direct {v4, v10, v1, v7, v9}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 543
    const/4 v11, 0x1

    if-eqz v7, :cond_73

    if-eqz v9, :cond_73

    move v6, v11

    goto :goto_74

    :cond_73
    move v6, v8

    .line 544
    :goto_74
    nop

    .line 545
    nop

    .line 546
    if-eqz v6, :cond_83

    .line 547
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 548
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    move v13, v12

    move v12, v0

    goto :goto_85

    .line 546
    :cond_83
    move v12, v8

    move v13, v12

    .line 551
    :goto_85
    move-object v0, v5

    move v5, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v2

    move/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 553
    move v14, v1

    move v15, v2

    if-eqz v6, :cond_d9

    .line 554
    nop

    .line 555
    if-le v12, v14, :cond_b2

    if-ge v12, v15, :cond_b2

    .line 556
    sub-int/2addr v12, v14

    int-to-long v0, v12

    .line 557
    int-to-long v2, v9

    mul-long/2addr v0, v2

    int-to-long v2, v7

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 558
    add-int v3, v14, v0

    .line 560
    nop

    .line 561
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v4, v3

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move v8, v11

    .line 564
    :cond_b2
    if-le v13, v14, :cond_d0

    if-ge v13, v15, :cond_d0

    .line 565
    sub-int/2addr v13, v14

    int-to-long v0, v13

    .line 566
    int-to-long v2, v9

    mul-long/2addr v0, v2

    int-to-long v2, v7

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 567
    add-int v3, v14, v0

    .line 569
    nop

    .line 570
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v4, v3

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    goto :goto_d3

    .line 564
    :cond_d0
    move-object/from16 v0, p0

    .line 573
    move v11, v8

    :goto_d3
    if-eqz v11, :cond_db

    .line 574
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    goto :goto_db

    .line 553
    :cond_d9
    move-object/from16 v0, p0

    .line 578
    :cond_db
    :goto_db
    invoke-direct {v0, v10, v14, v7, v9}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 579
    invoke-direct {v0, v10}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 582
    sub-int/2addr v9, v7

    invoke-direct {v0, v14, v15, v9}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    .line 584
    return-object v0
.end method

.method public whitelist setFilters([Landroid/text/InputFilter;)V
    .registers 2

    .line 1598
    if-eqz p1, :cond_5

    .line 1602
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1603
    return-void

    .line 1599
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist setSpan(Ljava/lang/Object;III)V
    .registers 12

    .line 678
    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 679
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 1199
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public greylist substring(II)Ljava/lang/String;
    .registers 5

    .line 1240
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 1241
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1242
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1226
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1227
    new-array v1, v0, [C

    .line 1229
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1230
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
