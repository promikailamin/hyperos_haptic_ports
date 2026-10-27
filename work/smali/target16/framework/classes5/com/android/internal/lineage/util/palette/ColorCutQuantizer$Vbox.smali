.class Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private blacklist mLowerIndex:I

.field private blacklist mMaxBlue:I

.field private blacklist mMaxGreen:I

.field private blacklist mMaxRed:I

.field private blacklist mMinBlue:I

.field private blacklist mMinGreen:I

.field private blacklist mMinRed:I

.field private blacklist mPopulation:I

.field private blacklist mUpperIndex:I

.field final synthetic blacklist this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 226
    iput p3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 228
    return-void
.end method


# virtual methods
.method final blacklist canSplit()Z
    .registers 3

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method final blacklist findSplitPoint()I
    .registers 7

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mColors:[I

    .line 344
    iget-object v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget-object v2, v2, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mHistogram:[I

    .line 349
    iget v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smmodifySignificantOctet([IIII)V

    .line 352
    iget v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 355
    iget v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smmodifySignificantOctet([IIII)V

    .line 357
    iget v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v0, v0, 0x2

    .line 358
    iget v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v4, 0x0

    :goto_2a
    iget v5, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v5, :cond_39

    .line 359
    aget v5, v1, v3

    aget v5, v2, v5

    add-int/2addr v4, v5

    .line 360
    if-lt v4, v0, :cond_36

    .line 361
    return v3

    .line 358
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 365
    :cond_39
    iget v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v0
.end method

.method final blacklist fitBox()V
    .registers 14

    .line 247
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mColors:[I

    .line 248
    iget-object v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mHistogram:[I

    .line 252
    nop

    .line 254
    nop

    .line 255
    nop

    .line 257
    iget v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v5

    move v4, v3

    move v5, v4

    :goto_19
    iget v10, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v10, :cond_43

    .line 258
    aget v10, v0, v2

    .line 259
    aget v11, v1, v10

    add-int/2addr v9, v11

    .line 261
    invoke-static {v10}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smquantizedRed(I)I

    move-result v11

    .line 262
    invoke-static {v10}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smquantizedGreen(I)I

    move-result v12

    .line 263
    invoke-static {v10}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smquantizedBlue(I)I

    move-result v10

    .line 264
    if-le v11, v6, :cond_31

    .line 265
    move v6, v11

    .line 267
    :cond_31
    if-ge v11, v3, :cond_34

    .line 268
    move v3, v11

    .line 270
    :cond_34
    if-le v12, v7, :cond_37

    .line 271
    move v7, v12

    .line 273
    :cond_37
    if-ge v12, v4, :cond_3a

    .line 274
    move v4, v12

    .line 276
    :cond_3a
    if-le v10, v8, :cond_3d

    .line 277
    move v8, v10

    .line 279
    :cond_3d
    if-ge v10, v5, :cond_40

    .line 280
    move v5, v10

    .line 257
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 284
    :cond_43
    iput v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 285
    iput v6, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 286
    iput v4, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 287
    iput v7, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 288
    iput v5, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 289
    iput v8, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 290
    iput v9, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 291
    return-void
.end method

.method final blacklist getAverageColor()Lcom/android/internal/lineage/util/palette/Palette$Swatch;
    .registers 11

    .line 372
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mColors:[I

    .line 373
    iget-object v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mHistogram:[I

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 379
    iget v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_12
    iget v7, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v7, :cond_30

    .line 380
    aget v7, v0, v2

    .line 381
    aget v8, v1, v7

    .line 383
    add-int/2addr v4, v8

    .line 384
    invoke-static {v7}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smquantizedRed(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 385
    invoke-static {v7}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smquantizedGreen(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 386
    invoke-static {v7}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smquantizedBlue(I)I

    move-result v7

    mul-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 389
    :cond_30
    int-to-float v0, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 390
    int-to-float v2, v5

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 391
    int-to-float v3, v6

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 393
    new-instance v3, Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    invoke-static {v0, v2, v1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->-$$Nest$smapproximateToRgb888(III)I

    move-result v0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;-><init>(II)V

    return-object v3
.end method

.method final blacklist getColorCount()I
    .registers 3

    .line 240
    iget v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final blacklist getLongestColorDimension()I
    .registers 5

    .line 319
    iget v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    .line 320
    iget v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    .line 321
    iget v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    .line 323
    if-lt v0, v1, :cond_15

    if-lt v0, v2, :cond_15

    .line 324
    const/4 v0, -0x3

    return v0

    .line 325
    :cond_15
    if-lt v1, v0, :cond_1b

    if-lt v1, v2, :cond_1b

    .line 326
    const/4 v0, -0x2

    return v0

    .line 328
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method final blacklist getVolume()I
    .registers 4

    .line 231
    iget v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final blacklist splitBox()Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;
    .registers 6

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 306
    new-instance v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;II)V

    .line 309
    iput v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 312
    return-object v1

    .line 300
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
