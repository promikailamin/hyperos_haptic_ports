.class public final Landroid/hardware/camera2/params/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# static fields
.field public static final blacklist COUNT:I = 0x3


# instance fields
.field private final blacklist mMaxStreamingSize:Landroid/util/Size;

.field private final blacklist mMode:I

.field private final blacklist mZoomRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILandroid/util/Size;Landroid/util/Range;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    .line 66
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-string v0, "maxStreamingSize.getWidth() must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    const-string v0, "maxStreamingSize.getHeight() must be nonnegative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 70
    iput-object p2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    .line 72
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_52

    .line 77
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string p2, "zoomRatioRange.getLower() must be positive"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 79
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string p2, "zoomRatioRange.getUpper() must be positive"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 81
    iput-object p3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 82
    return-void

    .line 73
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "zoomRatioRange.getLower() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 74
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is greater than zoomRatioRange.getUpper() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 75
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 126
    return v0

    .line 128
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 129
    return v1

    .line 131
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/Capability;

    if-eqz v2, :cond_2c

    .line 132
    check-cast p1, Landroid/hardware/camera2/params/Capability;

    .line 133
    iget v2, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    iget v3, p1, Landroid/hardware/camera2/params/Capability;->mMode:I

    if-ne v2, v3, :cond_2a

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    .line 134
    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    iget-object p1, p1, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 135
    invoke-virtual {v2, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    nop

    .line 133
    :goto_2b
    return v0

    .line 137
    :cond_2c
    return v0
.end method

.method public whitelist getMaxStreamingSize()Landroid/util/Size;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    return v0
.end method

.method public whitelist getZoomRatioRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 145
    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    .line 146
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 147
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x5

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    const/4 v0, 0x4

    aput v4, v5, v0

    .line 145
    invoke-static {v5}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 158
    iget v0, p0, Landroid/hardware/camera2/params/Capability;->mMode:I

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/Capability;->mMaxStreamingSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    .line 160
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/params/Capability;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 158
    const-string v1, "(mode:%d, maxStreamingSize:%d x %d, zoomRatio: %f-%f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
