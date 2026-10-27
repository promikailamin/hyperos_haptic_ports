.class public Landroid/graphics/Paint$FontMetrics;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontMetrics"
.end annotation


# instance fields
.field public whitelist ascent:F

.field public whitelist bottom:F

.field public whitelist descent:F

.field public whitelist leading:F

.field public whitelist top:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 2350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2376
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2377
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    instance-of v2, p1, Landroid/graphics/Paint$FontMetrics;

    if-nez v2, :cond_c

    goto :goto_39

    .line 2378
    :cond_c
    check-cast p1, Landroid/graphics/Paint$FontMetrics;

    .line 2379
    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v3, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_37

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_37

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_37

    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_37

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    return v0

    .line 2377
    :cond_39
    :goto_39
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 2385
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontMetrics{top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ascent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
