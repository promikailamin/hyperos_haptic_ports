.class public final Landroid/graphics/text/MeasuredText$Builder;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/MeasuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder$HyphenationMode;
    }
.end annotation


# static fields
.field public static final whitelist HYPHENATION_MODE_FAST:I = 0x2

.field public static final whitelist HYPHENATION_MODE_NONE:I = 0x0

.field public static final whitelist HYPHENATION_MODE_NORMAL:I = 0x1

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mBottom:I

.field private blacklist mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private blacklist mComputeBounds:Z

.field private blacklist mComputeHyphenation:Z

.field private blacklist mComputeLayout:Z

.field private blacklist mCurrentOffset:I

.field private blacklist mFastHyphenation:Z

.field private blacklist mHintMt:Landroid/graphics/text/MeasuredText;

.field private blacklist mNativePtr:J

.field private final blacklist mText:[C

.field private blacklist mTop:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 224
    const-class v0, Landroid/graphics/text/MeasuredText;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/MeasuredText;->-$$Nest$smnGetReleaseFunc()J

    move-result-wide v1

    .line 225
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 224
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/text/MeasuredText;)V
    .registers 4

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 233
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    .line 234
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 235
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 237
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 238
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 239
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 264
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    .line 266
    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 267
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 271
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 272
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 273
    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 274
    return-void

    .line 268
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input MeasuredText must not be created with setComputeLayout(false)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>([C)V
    .registers 4

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 233
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    .line 234
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 235
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 237
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 238
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 239
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 250
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    .line 252
    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 253
    return-void
.end method

.method private blacklist ensureNativePtrNoReuse()V
    .registers 5

    .line 508
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 511
    return-void

    .line 509
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can not be reused."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native blacklist nAddReplacementRun(JJIIF)V
.end method

.method private static native blacklist nAddStyleRun(JJIIZIIZ)V
.end method

.method private static native blacklist nBuildMeasuredText(JJ[CZZZZ)J
.end method

.method private static native blacklist nFreeBuilder(J)V
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;
    .registers 14

    .line 348
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string/jumbo v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 349
    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int v8, v2, p2

    .line 350
    iget-object p2, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length p2, p2

    if-gt v8, p2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    const-string p2, "Replacement exceeds the text length"

    invoke-static {v0, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 351
    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move v9, p3

    invoke-static/range {v3 .. v9}, Landroid/graphics/text/MeasuredText$Builder;->nAddReplacementRun(JJIIF)V

    .line 352
    iput v8, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 353
    return-object p0
.end method

.method public whitelist appendStyleRun(Landroid/graphics/Paint;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .registers 5

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .registers 18

    .line 313
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    :goto_a
    const-string/jumbo v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 315
    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int v11, v2, p3

    .line 316
    iget-object v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v2, v2

    if-gt v11, v2, :cond_1b

    move v2, v1

    goto :goto_1c

    :cond_1b
    move v2, v0

    :goto_1c
    const-string v3, "Style exceeds the text length"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 317
    invoke-static {p2}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v7

    .line 318
    invoke-static {p2}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v8

    .line 319
    invoke-static {p2}, Landroid/graphics/text/LineBreakConfig;->getResolvedHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result p2

    if-ne p2, v1, :cond_31

    move v9, v1

    goto :goto_32

    :cond_31
    move v9, v0

    .line 321
    :goto_32
    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v10, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move/from16 v12, p4

    invoke-static/range {v3 .. v12}, Landroid/graphics/text/MeasuredText$Builder;->nAddStyleRun(JJIIZIIZ)V

    .line 323
    iput v11, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 325
    iget-object p2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 326
    iget p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    iget-object p2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 327
    iget p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    iget-object p2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 328
    return-object p0
.end method

.method public whitelist build()Landroid/graphics/text/MeasuredText;
    .registers 26

    .line 479
    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/graphics/text/MeasuredText$Builder;->ensureNativePtrNoReuse()V

    .line 480
    iget v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    iget-object v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v2, v2

    if-ne v0, v2, :cond_7a

    .line 483
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-eqz v0, :cond_23

    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-static {v0}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iget-boolean v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    if-ne v0, v2, :cond_1b

    goto :goto_23

    .line 484
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The hyphenation configuration is different from given hint MeasuredText"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_23
    :goto_23
    const-wide/16 v2, 0x0

    :try_start_25
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_2b

    move-wide v8, v2

    goto :goto_32

    :cond_2b
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v4

    move-wide v8, v4

    .line 489
    :goto_32
    iget-wide v6, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    iget-object v10, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v11, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v12, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iget-boolean v13, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    iget-boolean v14, v1, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    invoke-static/range {v6 .. v14}, Landroid/graphics/text/MeasuredText$Builder;->nBuildMeasuredText(JJ[CZZZZ)J

    move-result-wide v16

    .line 491
    new-instance v15, Landroid/graphics/text/MeasuredText;

    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v5, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iget-boolean v6, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    iget v7, v1, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    iget v8, v1, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-direct/range {v15 .. v24}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZZIILandroid/graphics/text/MeasuredText-IA;)V

    move-wide/from16 v4, v16

    .line 493
    sget-object v0, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, v15, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    :try_end_68
    .catchall {:try_start_25 .. :try_end_68} :catchall_71

    .line 494
    nop

    .line 496
    iget-wide v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    .line 497
    iput-wide v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 494
    return-object v15

    .line 496
    :catchall_71
    move-exception v0

    iget-wide v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    .line 497
    iput-wide v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 498
    throw v0

    .line 481
    :cond_7a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Style info has not been provided for all text."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;
    .registers 2

    .line 466
    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    .line 467
    return-object p0
.end method

.method public whitelist setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;
    .registers 5

    .line 417
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_32

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hyphenation mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MeasuredText"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 433
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    goto :goto_31

    .line 427
    :pswitch_22
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 428
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 429
    goto :goto_31

    .line 423
    :pswitch_27
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 424
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 425
    goto :goto_31

    .line 419
    :pswitch_2c
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 420
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 421
    nop

    .line 436
    :goto_31
    return-object p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist setComputeHyphenation(Z)Landroid/graphics/text/MeasuredText$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    nop

    .line 372
    nop

    .line 371
    invoke-virtual {p0, p1}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    .line 373
    return-object p0
.end method

.method public whitelist setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;
    .registers 2

    .line 452
    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 453
    return-object p0
.end method
