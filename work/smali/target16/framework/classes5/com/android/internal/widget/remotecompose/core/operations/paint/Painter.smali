.class Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
.super Ljava/lang/Object;
.source "Painter.java"


# instance fields
.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist commit()Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-object v0
.end method

.method public blacklist setAlpha(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_b

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    :cond_b
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setAlpha(F)V

    .line 118
    return-object p0
.end method

.method public blacklist setAntiAlias(Z)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setAntiAlias(Z)V

    .line 33
    return-object p0
.end method

.method public blacklist setColor(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 39
    return-object p0
.end method

.method public blacklist setColorId(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorId(I)V

    .line 45
    return-object p0
.end method

.method public blacklist setFilterBitmap(Z)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setFilterBitmap(Z)V

    .line 257
    return-object p0
.end method

.method public blacklist setLinearGradient(FFFF[I[FI)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 17

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v1, p5

    move-object v3, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setLinearGradient([II[FFFFFI)V

    .line 168
    return-object p0
.end method

.method public blacklist setPorterDuffColorFilter(II)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorFilter(II)V

    .line 130
    return-object p0
.end method

.method public blacklist setPorterDuffColorIdFilter(II)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColorFilterId(II)V

    .line 142
    return-object p0
.end method

.method public blacklist setRadialGradient(FFF[I[FI)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 15

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v1, p4

    move-object v3, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setRadialGradient([II[FFFFI)V

    .line 193
    return-object p0
.end method

.method public blacklist setShader(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setShader(I)V

    .line 263
    return-object p0
.end method

.method public blacklist setStrokeCap(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeCap(I)V

    .line 93
    return-object p0
.end method

.method public blacklist setStrokeJoin(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeJoin(I)V

    .line 56
    return-object p0
.end method

.method public blacklist setStrokeMiter(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeMiter(F)V

    .line 106
    return-object p0
.end method

.method public blacklist setStrokeWidth(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeWidth(F)V

    .line 69
    return-object p0
.end method

.method public blacklist setStyle(I)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    .line 81
    return-object p0
.end method

.method public blacklist setSweepGradient(FF[I[F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 11

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    move-object v1, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setSweepGradient([II[FFF)V

    .line 212
    return-object p0
.end method

.method public blacklist setTextSize(F)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    .line 223
    return-object p0
.end method

.method public blacklist setTypeface(IIZ)Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/Painter;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    .line 251
    return-object p0
.end method
