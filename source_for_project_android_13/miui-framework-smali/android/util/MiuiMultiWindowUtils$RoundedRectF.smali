.class public Landroid/util/MiuiMultiWindowUtils$RoundedRectF;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MiuiMultiWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedRectF"
.end annotation


# instance fields
.field blacklist mCenterX:F

.field blacklist mCenterY:F

.field blacklist mHeight:F

.field blacklist mRadius:F

.field blacklist mWidth:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FFFFF)V
    .registers 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "radius"    # F

    .line 3901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3902
    iput p1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    .line 3903
    iput p2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    .line 3904
    iput p3, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    .line 3905
    iput p4, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    .line 3906
    iput p5, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    .line 3907
    return-void
.end method


# virtual methods
.method public blacklist contains(FF)Z
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3922
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    iget v2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v4, v1, v4

    iget v5, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    div-float v7, v6, v3

    sub-float v7, v5, v7

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-direct {v0, v4, v7, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3924
    .local v0, "rectRegion":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3925
    .local v1, "leftTopCenter":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3926
    .local v2, "rightTopCenter":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    sub-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3927
    .local v3, "leftBottomCenter":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    sub-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3928
    .local v4, "rightBottomCenter":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_e8

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3929
    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_e8

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, v6

    mul-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    mul-float/2addr v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_e8

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, v6

    mul-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    iget v7, v2, Landroid/graphics/PointF;->y:F

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    mul-float/2addr v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_e8

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    iget v6, v3, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, v6

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    mul-float/2addr v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_e8

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v5

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, v6

    mul-float/2addr v5, v6

    iget v6, v4, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, v6

    iget v7, v4, Landroid/graphics/PointF;->y:F

    sub-float v7, p2, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    mul-float/2addr v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_e6

    goto :goto_e8

    :cond_e6
    const/4 v5, 0x0

    goto :goto_e9

    :cond_e8
    :goto_e8
    const/4 v5, 0x1

    .line 3928
    :goto_e9
    return v5
.end method

.method public blacklist isEmpty()Z
    .registers 3

    .line 3952
    iget v0, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public blacklist set(FFFFF)V
    .registers 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "radius"    # F

    .line 3914
    iput p1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    .line 3915
    iput p2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    .line 3916
    iput p3, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    .line 3917
    iput p4, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    .line 3918
    iput p5, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    .line 3919
    return-void
.end method

.method public blacklist set(Landroid/util/MiuiMultiWindowUtils$RoundedRectF;)V
    .registers 8
    .param p1, "other"    # Landroid/util/MiuiMultiWindowUtils$RoundedRectF;

    .line 3910
    iget v1, p1, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    iget v2, p1, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    iget v3, p1, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    iget v4, p1, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    iget v5, p1, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->set(FFFFF)V

    .line 3911
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CenterX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CenterY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist union(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 3941
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3942
    .local v0, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6e

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_6e

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_6e

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    iget v2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v4, v1, v4

    div-float v5, v2, v3

    add-float/2addr v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6e

    iget v4, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    iget v5, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    div-float v6, v5, v3

    sub-float v6, v4, v6

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    cmpg-float v4, v6, v4

    if-gez v4, :cond_6e

    .line 3943
    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3944
    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    iget v2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3945
    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterX:F

    iget v2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3946
    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mCenterY:F

    iget v2, p0, Landroid/util/MiuiMultiWindowUtils$RoundedRectF;->mHeight:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3948
    :cond_6e
    return-object v0
.end method
