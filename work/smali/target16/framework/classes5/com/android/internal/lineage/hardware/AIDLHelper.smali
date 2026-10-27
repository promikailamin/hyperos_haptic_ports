.class Lcom/android/internal/lineage/hardware/AIDLHelper;
.super Ljava/lang/Object;
.source "AIDLHelper.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist fromAIDLGestures([Lvendor/lineage/touch/Gesture;)[Lcom/android/internal/lineage/hardware/TouchscreenGesture;
    .registers 8

    .line 52
    array-length v0, p0

    .line 53
    new-array v1, v0, [Lcom/android/internal/lineage/hardware/TouchscreenGesture;

    .line 54
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_18

    .line 55
    aget-object v3, p0, v2

    .line 56
    new-instance v4, Lcom/android/internal/lineage/hardware/TouchscreenGesture;

    iget v5, v3, Lvendor/lineage/touch/Gesture;->id:I

    iget-object v6, v3, Lvendor/lineage/touch/Gesture;->name:Ljava/lang/String;

    iget v3, v3, Lvendor/lineage/touch/Gesture;->keycode:I

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/lineage/hardware/TouchscreenGesture;-><init>(ILjava/lang/String;I)V

    aput-object v4, v1, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 58
    :cond_18
    return-object v1
.end method

.method static blacklist fromAIDLHSIC(Lvendor/lineage/livedisplay/HSIC;)Lcom/android/internal/lineage/hardware/HSIC;
    .registers 7

    .line 28
    new-instance v0, Lcom/android/internal/lineage/hardware/HSIC;

    iget v1, p0, Lvendor/lineage/livedisplay/HSIC;->hue:F

    iget v2, p0, Lvendor/lineage/livedisplay/HSIC;->saturation:F

    iget v3, p0, Lvendor/lineage/livedisplay/HSIC;->intensity:F

    iget v4, p0, Lvendor/lineage/livedisplay/HSIC;->contrast:F

    iget v5, p0, Lvendor/lineage/livedisplay/HSIC;->saturationThreshold:F

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method static blacklist fromAIDLMode(Lvendor/lineage/livedisplay/DisplayMode;)Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 3

    .line 24
    new-instance v0, Lcom/android/internal/lineage/hardware/DisplayMode;

    iget v1, p0, Lvendor/lineage/livedisplay/DisplayMode;->id:I

    iget-object p0, p0, Lvendor/lineage/livedisplay/DisplayMode;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/lineage/hardware/DisplayMode;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static blacklist fromAIDLModes([Lvendor/lineage/livedisplay/DisplayMode;)[Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 7

    .line 14
    array-length v0, p0

    .line 15
    new-array v1, v0, [Lcom/android/internal/lineage/hardware/DisplayMode;

    .line 16
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_16

    .line 17
    aget-object v3, p0, v2

    .line 18
    new-instance v4, Lcom/android/internal/lineage/hardware/DisplayMode;

    iget v5, v3, Lvendor/lineage/livedisplay/DisplayMode;->id:I

    iget-object v3, v3, Lvendor/lineage/livedisplay/DisplayMode;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/android/internal/lineage/hardware/DisplayMode;-><init>(ILjava/lang/String;)V

    aput-object v4, v1, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 20
    :cond_16
    return-object v1
.end method

.method static blacklist fromAIDLRange(Lvendor/lineage/livedisplay/FloatRange;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/lineage/livedisplay/FloatRange;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lvendor/lineage/livedisplay/FloatRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Lvendor/lineage/livedisplay/FloatRange;->max:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static blacklist fromAIDLRange(Lvendor/lineage/livedisplay/Range;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/lineage/livedisplay/Range;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lvendor/lineage/livedisplay/Range;->min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lvendor/lineage/livedisplay/Range;->max:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static blacklist toAIDLGesture(Lcom/android/internal/lineage/hardware/TouchscreenGesture;)Lvendor/lineage/touch/Gesture;
    .registers 3

    .line 62
    new-instance v0, Lvendor/lineage/touch/Gesture;

    invoke-direct {v0}, Lvendor/lineage/touch/Gesture;-><init>()V

    .line 63
    iget v1, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->id:I

    iput v1, v0, Lvendor/lineage/touch/Gesture;->id:I

    .line 64
    iget-object v1, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/lineage/touch/Gesture;->name:Ljava/lang/String;

    .line 65
    iget p0, p0, Lcom/android/internal/lineage/hardware/TouchscreenGesture;->keycode:I

    iput p0, v0, Lvendor/lineage/touch/Gesture;->keycode:I

    .line 66
    return-object v0
.end method

.method static blacklist toAIDLHSIC(Lcom/android/internal/lineage/hardware/HSIC;)Lvendor/lineage/livedisplay/HSIC;
    .registers 3

    .line 33
    new-instance v0, Lvendor/lineage/livedisplay/HSIC;

    invoke-direct {v0}, Lvendor/lineage/livedisplay/HSIC;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->getHue()F

    move-result v1

    iput v1, v0, Lvendor/lineage/livedisplay/HSIC;->hue:F

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->getSaturation()F

    move-result v1

    iput v1, v0, Lvendor/lineage/livedisplay/HSIC;->saturation:F

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->getIntensity()F

    move-result v1

    iput v1, v0, Lvendor/lineage/livedisplay/HSIC;->intensity:F

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->getContrast()F

    move-result v1

    iput v1, v0, Lvendor/lineage/livedisplay/HSIC;->contrast:F

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/HSIC;->getSaturationThreshold()F

    move-result p0

    iput p0, v0, Lvendor/lineage/livedisplay/HSIC;->saturationThreshold:F

    .line 39
    return-object v0
.end method
