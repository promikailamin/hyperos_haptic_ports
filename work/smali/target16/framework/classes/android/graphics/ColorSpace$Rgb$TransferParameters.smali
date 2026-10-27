.class public Landroid/graphics/ColorSpace$Rgb$TransferParameters;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferParameters"
.end annotation


# static fields
.field private static final blacklist TYPE_HLGish:D = -3.0

.field private static final blacklist TYPE_PQish:D = -2.0


# instance fields
.field public final whitelist a:D

.field public final whitelist b:D

.field public final whitelist c:D

.field public final whitelist d:D

.field public final whitelist e:D

.field public final whitelist f:D

.field public final whitelist g:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .registers 1

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isHLGish()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .registers 1

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isPQish()Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(DDDDD)V
    .registers 26

    .line 2531
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    .line 2532
    return-void
.end method

.method public constructor whitelist <init>(DDDDDDD)V
    .registers 28

    .line 2549
    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2550
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    .line 2551
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    .line 2552
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_d0

    .line 2555
    invoke-static {v6, v7}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isSpecialG(D)Z

    move-result v8

    if-nez v8, :cond_bb

    .line 2559
    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-ltz v10, :cond_a2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Math;->ulp(F)F

    move-result v12

    add-float/2addr v12, v11

    float-to-double v11, v12

    cmpg-double v11, v4, v11

    if-gtz v11, :cond_a2

    .line 2564
    if-nez v10, :cond_5e

    cmpl-double v10, p1, v8

    if-eqz v10, :cond_56

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_56

    goto :goto_5e

    .line 2565
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2569
    :cond_5e
    :goto_5e
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v4, v10

    if-ltz v10, :cond_71

    cmpl-double v10, v2, v8

    if-eqz v10, :cond_69

    goto :goto_71

    .line 2570
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter c is zero, the transfer function is constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2574
    :cond_71
    :goto_71
    cmpl-double v10, p1, v8

    if-eqz v10, :cond_79

    cmpl-double v10, v6, v8

    if-nez v10, :cond_7d

    :cond_79
    cmpl-double v10, v2, v8

    if-eqz v10, :cond_9a

    .line 2579
    :cond_7d
    cmpg-double v10, v2, v8

    if-ltz v10, :cond_92

    .line 2584
    cmpg-double v10, p1, v8

    if-ltz v10, :cond_8a

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_8a

    goto :goto_bb

    .line 2585
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transfer function must be positive or increasing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2580
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transfer function must be increasing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2575
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2560
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter d must be in the range [0..1], was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2589
    :cond_bb
    :goto_bb
    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    .line 2590
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 2591
    iput-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    .line 2592
    iput-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    .line 2593
    move-wide/from16 v0, p9

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    .line 2594
    move-wide/from16 v0, p11

    iput-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    .line 2595
    iput-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    .line 2596
    return-void

    .line 2553
    :cond_d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isHLGish()Z
    .registers 5

    .line 2640
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isPQish()Z
    .registers 5

    .line 2644
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist isSpecialG(D)Z
    .registers 4

    .line 2506
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 2601
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2602
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_63

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_63

    .line 2604
    :cond_12
    check-cast p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2606
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    .line 2607
    :cond_1f
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2a

    return v1

    .line 2608
    :cond_2a
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_35

    return v1

    .line 2609
    :cond_35
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_40

    return v1

    .line 2610
    :cond_40
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4b

    return v1

    .line 2611
    :cond_4b
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_56

    return v1

    .line 2612
    :cond_56
    iget-wide v2, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_61

    goto :goto_62

    :cond_61
    move v0, v1

    :goto_62
    return v0

    .line 2602
    :cond_63
    :goto_63
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 2619
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2620
    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    .line 2621
    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 2622
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 2623
    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 2624
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 2625
    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 2626
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 2627
    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 2628
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 2629
    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 2630
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    .line 2631
    iget-wide v3, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 2632
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 2633
    return v0
.end method
