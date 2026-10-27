.class final Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final blacklist COMPONENT_BLUE:I = -0x1

.field private static final blacklist COMPONENT_GREEN:I = -0x2

.field private static final blacklist COMPONENT_RED:I = -0x3

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final blacklist LOG_TIMINGS:Z = false

.field private static final blacklist QUANTIZE_WORD_MASK:I = 0x1f

.field private static final blacklist QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final blacklist VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mColors:[I

.field final blacklist mFilters:[Lcom/android/internal/lineage/util/palette/Palette$Filter;

.field final blacklist mHistogram:[I

.field final blacklist mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTempHsl:[F

.field final blacklist mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smapproximateToRgb888(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmodifySignificantOctet([IIII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smquantizedBlue(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smquantizedGreen(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smquantizedRed(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 454
    new-instance v0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>([II[Lcom/android/internal/lineage/util/palette/Palette$Filter;)V
    .registers 10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mTempHsl:[F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 75
    iput-object p3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/lineage/util/palette/Palette$Filter;

    .line 77
    const p3, 0x8000

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mHistogram:[I

    .line 78
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    .line 79
    aget v3, p1, v2

    invoke-static {v3}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v3

    .line 81
    aput v3, p1, v2

    .line 83
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 91
    :cond_2a
    nop

    .line 92
    move p1, v1

    move v2, p1

    :goto_2d
    if-ge p1, p3, :cond_44

    .line 93
    aget v3, v0, p1

    if-lez v3, :cond_3b

    invoke-direct {p0, p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 95
    aput v1, v0, p1

    .line 97
    :cond_3b
    aget v3, v0, p1

    if-lez v3, :cond_41

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 92
    :cond_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_2d

    .line 108
    :cond_44
    new-array p1, v2, [I

    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mColors:[I

    .line 109
    nop

    .line 110
    move v3, v1

    move v4, v3

    :goto_4b
    if-ge v3, p3, :cond_59

    .line 111
    aget v5, v0, v3

    if-lez v5, :cond_56

    .line 112
    add-int/lit8 v5, v4, 0x1

    aput v3, p1, v4

    move v4, v5

    .line 110
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 120
    :cond_59
    if-gt v2, p2, :cond_7a

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 123
    nop

    :goto_63
    if-ge v1, v2, :cond_80

    aget p2, p1, v1

    .line 124
    iget-object p3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v3, Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    invoke-static {p2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v4

    aget p2, v0, p2

    invoke-direct {v3, v4, p2}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 133
    :cond_7a
    invoke-direct {p0, p2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 140
    :cond_80
    return-void
.end method

.method private static blacklist approximateToRgb888(I)I
    .registers 3

    .line 481
    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result p0

    return p0
.end method

.method private static blacklist approximateToRgb888(III)I
    .registers 5

    .line 475
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p0

    .line 476
    invoke-static {p1, v0, v1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p1

    .line 477
    invoke-static {p2, v0, v1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p2

    .line 475
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private blacklist generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    .line 200
    invoke-virtual {v1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/lineage/util/palette/Palette$Swatch;

    move-result-object v1

    .line 201
    invoke-direct {p0, v1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->shouldIgnoreColor(Lcom/android/internal/lineage/util/palette/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_26
    goto :goto_d

    .line 207
    :cond_27
    return-object v0
.end method

.method private static blacklist modifySignificantOctet([IIII)V
    .registers 6

    .line 405
    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 420
    :pswitch_4
    nop

    :goto_5
    if-gt p2, p3, :cond_3e

    .line 421
    aget p1, p0, p2

    .line 422
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    .line 423
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 424
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    .line 420
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 411
    :pswitch_20
    nop

    :goto_21
    if-gt p2, p3, :cond_3c

    .line 412
    aget p1, p0, p2

    .line 413
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    .line 414
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 415
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    .line 411
    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    .line 417
    :cond_3c
    goto :goto_3e

    .line 408
    :pswitch_3d
    nop

    .line 428
    :cond_3e
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch -0x3
        :pswitch_3d
        :pswitch_20
        :pswitch_4
    .end packed-switch
.end method

.method private static blacklist modifyWordWidth(III)I
    .registers 3

    .line 507
    if-le p2, p1, :cond_6

    .line 509
    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_8

    .line 512
    :cond_6
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    .line 514
    :goto_8
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method

.method private static blacklist quantizeFromRgb888(I)I
    .registers 5

    .line 465
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 466
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 467
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0, v1, v2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p0

    .line 468
    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v1, v3, 0x5

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private blacklist quantizePixels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 155
    new-instance v1, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0, v0, p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 162
    invoke-direct {p0, v0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist quantizedBlue(I)I
    .registers 1

    .line 502
    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static blacklist quantizedGreen(I)I
    .registers 1

    .line 495
    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static blacklist quantizedRed(I)I
    .registers 1

    .line 488
    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private blacklist shouldIgnoreColor(I)Z
    .registers 3

    .line 431
    invoke-static {p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result p1

    .line 432
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {p1, v0}, Lcom/android/internal/lineage/util/palette/ColorUtils;->colorToHSL(I[F)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result p1

    return p1
.end method

.method private blacklist shouldIgnoreColor(I[F)Z
    .registers 7

    .line 441
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/lineage/util/palette/Palette$Filter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/lineage/util/palette/Palette$Filter;

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 442
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/lineage/util/palette/Palette$Filter;

    array-length v0, v0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_1f

    .line 443
    iget-object v3, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/lineage/util/palette/Palette$Filter;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lcom/android/internal/lineage/util/palette/Palette$Filter;->isAllowed(I[F)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 444
    const/4 p1, 0x1

    return p1

    .line 442
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 448
    :cond_1f
    return v1
.end method

.method private blacklist shouldIgnoreColor(Lcom/android/internal/lineage/util/palette/Palette$Swatch;)Z
    .registers 3

    .line 437
    invoke-virtual {p1}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/lineage/util/palette/Palette$Swatch;->getHsl()[F

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result p1

    return p1
.end method

.method private blacklist splitBoxes(Ljava/util/PriorityQueue;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 175
    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_21

    .line 176
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    .line 178
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 180
    invoke-virtual {v0}, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/lineage/util/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 194
    goto :goto_1

    .line 192
    :cond_20
    return-void

    .line 195
    :cond_21
    return-void
.end method


# virtual methods
.method blacklist getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/lineage/util/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
