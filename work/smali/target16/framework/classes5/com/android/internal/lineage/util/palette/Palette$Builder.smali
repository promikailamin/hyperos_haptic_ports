.class public final Lcom/android/internal/lineage/util/palette/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/util/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private final blacklist mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGenerator:Lcom/android/internal/lineage/util/palette/Palette$Generator;

.field private blacklist mMaxColors:I

.field private blacklist mResizeMaxDimension:I

.field private blacklist mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mMaxColors:I

    .line 447
    const/16 v0, 0xc0

    iput v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mFilters:Ljava/util/List;

    .line 476
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Lcom/android/internal/lineage/util/palette/Palette;->-$$Nest$sfgetDEFAULT_FILTER()Lcom/android/internal/lineage/util/palette/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 456
    invoke-direct {p0}, Lcom/android/internal/lineage/util/palette/Palette$Builder;-><init>()V

    .line 457
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 460
    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 461
    return-void

    .line 458
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    .line 468
    invoke-direct {p0}, Lcom/android/internal/lineage/util/palette/Palette$Builder;-><init>()V

    .line 469
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 472
    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 473
    return-void

    .line 470
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List of Swatches is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist addFilter(Lcom/android/internal/lineage/util/palette/Palette$Filter;)Lcom/android/internal/lineage/util/palette/Palette$Builder;
    .registers 3

    .line 532
    if-eqz p1, :cond_7

    .line 533
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_7
    return-object p0
.end method

.method public blacklist clearFilters()Lcom/android/internal/lineage/util/palette/Palette$Builder;
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 522
    return-object p0
.end method

.method public blacklist generate(Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;",
            ")",
            "Landroid/os/AsyncTask<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            "Lcom/android/internal/lineage/util/palette/Palette;",
            ">;"
        }
    .end annotation

    .line 615
    if-eqz p1, :cond_15

    .line 619
    new-instance v0, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;-><init>(Lcom/android/internal/lineage/util/palette/Palette$Builder;Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;)V

    .line 630
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 631
    return-object v0

    .line 616
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generate()Lcom/android/internal/lineage/util/palette/Palette;
    .registers 12

    .line 542
    nop

    .line 548
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 551
    iget v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mResizeMaxDimension:I

    if-lez v0, :cond_4f

    .line 557
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mResizeMaxDimension:I

    invoke-static {v0, v2}, Lcom/android/internal/lineage/util/palette/Palette;->-$$Nest$smscaleBitmapDown(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 559
    nop

    .line 564
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 565
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 566
    mul-int v0, v6, v10

    new-array v4, v0, [I

    .line 567
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 569
    new-instance v0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;

    iget v2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mMaxColors:I

    .line 570
    iget-object v5, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_34

    move-object v5, v1

    goto :goto_3f

    :cond_34
    iget-object v5, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mFilters:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/internal/lineage/util/palette/Palette$Filter;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/lineage/util/palette/Palette$Filter;

    :goto_3f
    invoke-direct {v0, v4, v2, v5}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;-><init>([II[Lcom/android/internal/lineage/util/palette/Palette$Filter;)V

    .line 573
    iget-object v2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v2, :cond_49

    .line 574
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    :cond_49
    invoke-virtual {v0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v0

    .line 578
    nop

    .line 581
    goto :goto_59

    .line 552
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum dimension size for resizing should should be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_57
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mSwatches:Ljava/util/List;

    .line 587
    :goto_59
    iget-object v2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mGenerator:Lcom/android/internal/lineage/util/palette/Palette$Generator;

    if-nez v2, :cond_64

    .line 588
    new-instance v2, Lcom/android/internal/lineage/util/palette/DefaultGenerator;

    invoke-direct {v2}, Lcom/android/internal/lineage/util/palette/DefaultGenerator;-><init>()V

    iput-object v2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mGenerator:Lcom/android/internal/lineage/util/palette/Palette$Generator;

    .line 592
    :cond_64
    iget-object v2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mGenerator:Lcom/android/internal/lineage/util/palette/Palette$Generator;

    invoke-virtual {v2, v0}, Lcom/android/internal/lineage/util/palette/Palette$Generator;->generate(Ljava/util/List;)V

    .line 594
    nop

    .line 599
    new-instance v2, Lcom/android/internal/lineage/util/palette/Palette;

    iget-object v3, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mGenerator:Lcom/android/internal/lineage/util/palette/Palette$Generator;

    invoke-direct {v2, v0, v3, v1}, Lcom/android/internal/lineage/util/palette/Palette;-><init>(Ljava/util/List;Lcom/android/internal/lineage/util/palette/Palette$Generator;Lcom/android/internal/lineage/util/palette/Palette-IA;)V

    .line 601
    nop

    .line 606
    return-object v2
.end method

.method blacklist generator(Lcom/android/internal/lineage/util/palette/Palette$Generator;)Lcom/android/internal/lineage/util/palette/Palette$Builder;
    .registers 2

    .line 484
    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mGenerator:Lcom/android/internal/lineage/util/palette/Palette$Generator;

    .line 485
    return-object p0
.end method

.method public blacklist maximumColorCount(I)Lcom/android/internal/lineage/util/palette/Palette$Builder;
    .registers 2

    .line 497
    iput p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mMaxColors:I

    .line 498
    return-object p0
.end method

.method public blacklist resizeBitmapSize(I)Lcom/android/internal/lineage/util/palette/Palette$Builder;
    .registers 2

    .line 512
    iput p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder;->mResizeMaxDimension:I

    .line 513
    return-object p0
.end method
