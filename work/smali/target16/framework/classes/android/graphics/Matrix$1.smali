.class Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist oops()V
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postConcat(Landroid/graphics/Matrix;)Z
    .registers 2

    .line 207
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 208
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postRotate(F)Z
    .registers 2

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 190
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postRotate(FFF)Z
    .registers 4

    .line 183
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 184
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postScale(FF)Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 178
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postScale(FFFF)Z
    .registers 5

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 172
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postSkew(FF)Z
    .registers 3

    .line 201
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 202
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postSkew(FFFF)Z
    .registers 5

    .line 195
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 196
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist postTranslate(FF)Z
    .registers 3

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 166
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preConcat(Landroid/graphics/Matrix;)Z
    .registers 2

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 160
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preRotate(F)Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 142
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preRotate(FFF)Z
    .registers 4

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 136
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preScale(FF)Z
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 130
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preScale(FFFF)Z
    .registers 5

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 124
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preSkew(FF)Z
    .registers 3

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 154
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preSkew(FFFF)Z
    .registers 5

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 148
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist preTranslate(FF)Z
    .registers 3

    .line 117
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 118
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist reset()V
    .registers 1

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 62
    return-void
.end method

.method public whitelist set(Landroid/graphics/Matrix;)V
    .registers 2

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 57
    return-void
.end method

.method public whitelist setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 3

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 112
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setPolyToPoly([FI[FII)Z
    .registers 6

    .line 220
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 221
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 4

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 214
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setRotate(F)V
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 87
    return-void
.end method

.method public whitelist setRotate(FFF)V
    .registers 4

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 82
    return-void
.end method

.method public whitelist setScale(FF)V
    .registers 3

    .line 76
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 77
    return-void
.end method

.method public whitelist setScale(FFFF)V
    .registers 5

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 72
    return-void
.end method

.method public whitelist setSinCos(FF)V
    .registers 3

    .line 96
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 97
    return-void
.end method

.method public whitelist setSinCos(FFFF)V
    .registers 5

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 92
    return-void
.end method

.method public whitelist setSkew(FF)V
    .registers 3

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 107
    return-void
.end method

.method public whitelist setSkew(FFFF)V
    .registers 5

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 102
    return-void
.end method

.method public whitelist setTranslate(FF)V
    .registers 3

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 67
    return-void
.end method

.method public whitelist setValues([F)V
    .registers 2

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 227
    return-void
.end method
