.class public Landroid/graphics/Paint$FontMetricsInt;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontMetricsInt"
.end annotation


# instance fields
.field public whitelist ascent:I

.field public whitelist bottom:I

.field public whitelist descent:I

.field public whitelist leading:I

.field public whitelist top:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 2570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2629
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2630
    :cond_4
    instance-of v1, p1, Landroid/graphics/Paint$FontMetricsInt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2631
    :cond_a
    check-cast p1, Landroid/graphics/Paint$FontMetricsInt;

    .line 2632
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ne v1, v3, :cond_2b

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ne v1, v3, :cond_2b

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-ne v1, v3, :cond_2b

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-ne v1, v3, :cond_2b

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    if-ne v1, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 2641
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/graphics/Paint$FontMetrics;)V
    .registers 4

    .line 2614
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2615
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 2616
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 2617
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 2618
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 2619
    return-void
.end method

.method public whitelist set(Landroid/graphics/Paint$FontMetricsInt;)V
    .registers 3

    .line 2600
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 2601
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 2602
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 2603
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 2604
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 2605
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontMetricsInt: top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ascent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " descent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
