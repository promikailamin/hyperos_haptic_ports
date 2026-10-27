.class public abstract Landroid/graphics/MiuiCanvas;
.super Landroid/graphics/BaseCanvas;
.source "MiuiCanvas.java"


# instance fields
.field private blacklist mHasForceDark:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 216
    if-nez p7, :cond_6

    .line 217
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 218
    return-void

    .line 220
    :cond_6
    invoke-virtual {p7}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 221
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p7}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 222
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p7, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 224
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .registers 9
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 229
    if-nez p5, :cond_6

    .line 230
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    .line 231
    return-void

    .line 233
    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 234
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 235
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 237
    return-void
.end method

.method public blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 7
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 106
    if-nez p3, :cond_6

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 108
    return-void

    .line 110
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 111
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p3}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 114
    return-void
.end method

.method public blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 7
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 118
    if-nez p3, :cond_6

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 120
    return-void

    .line 122
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 123
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p3}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 126
    return-void
.end method

.method public blacklist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 142
    if-nez p3, :cond_6

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 144
    return-void

    .line 146
    :cond_6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 147
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p3}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 150
    return-void
.end method

.method public blacklist drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 130
    if-nez p5, :cond_6

    .line 131
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 132
    return-void

    .line 134
    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 135
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 136
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 138
    return-void
.end method

.method public blacklist drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 154
    if-nez p5, :cond_6

    .line 155
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    return-void

    .line 158
    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 159
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 160
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 162
    return-void
.end method

.method public blacklist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 166
    if-nez p2, :cond_6

    .line 167
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    return-void

    .line 170
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 171
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 172
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 174
    return-void
.end method

.method public blacklist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 178
    if-nez p2, :cond_6

    .line 179
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 180
    return-void

    .line 182
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 183
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 184
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 185
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 186
    return-void
.end method

.method public blacklist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 191
    if-nez p7, :cond_6

    .line 192
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 193
    return-void

    .line 195
    :cond_6
    invoke-virtual {p7}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 196
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p7}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 197
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 198
    invoke-virtual {p7, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 199
    return-void
.end method

.method public blacklist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 203
    if-nez p4, :cond_6

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    return-void

    .line 207
    :cond_6
    invoke-virtual {p4}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 208
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p4}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 210
    invoke-virtual {p4, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 211
    return-void
.end method

.method public blacklist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 45
    if-nez p6, :cond_6

    .line 46
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 47
    return-void

    .line 49
    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 50
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p6}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 51
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 53
    return-void
.end method

.method public blacklist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 57
    if-nez p4, :cond_6

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    return-void

    .line 61
    :cond_6
    invoke-virtual {p4}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 62
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p4}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p4, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 65
    return-void
.end method

.method public blacklist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 69
    if-nez p6, :cond_6

    .line 70
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 71
    return-void

    .line 73
    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 74
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p6}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 75
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 77
    return-void
.end method

.method public blacklist drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 10
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 33
    if-nez p6, :cond_6

    .line 34
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 35
    return-void

    .line 37
    :cond_6
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 38
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p6}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 39
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 40
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 41
    return-void
.end method

.method public blacklist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 94
    if-nez p5, :cond_6

    .line 95
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 96
    return-void

    .line 98
    :cond_6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 99
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p5}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p5, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 102
    return-void
.end method

.method public blacklist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 82
    if-nez p7, :cond_6

    .line 83
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 84
    return-void

    .line 86
    :cond_6
    invoke-virtual {p7}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 87
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p7}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 88
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p7, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 90
    return-void
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "measuredText"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 268
    if-nez p9, :cond_6

    .line 269
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 270
    return-void

    .line 272
    :cond_6
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 273
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p9}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 274
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 275
    invoke-virtual {p9, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 276
    return-void
.end method

.method public blacklist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 255
    if-nez p9, :cond_6

    .line 256
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 257
    return-void

    .line 259
    :cond_6
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 260
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p9}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 261
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 262
    invoke-virtual {p9, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 263
    return-void
.end method

.method public blacklist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 242
    if-nez p9, :cond_6

    .line 243
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 244
    return-void

    .line 246
    :cond_6
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v0

    .line 247
    .local v0, "color":J
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, p0, p9}, Landroid/view/ForceDarkHelperStub;->changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z

    .line 248
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 249
    invoke-virtual {p9, v0, v1}, Landroid/graphics/Paint;->setColor(J)V

    .line 250
    return-void
.end method

.method public blacklist hasForceDark()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Landroid/graphics/MiuiCanvas;->mHasForceDark:Z

    return v0
.end method

.method public blacklist setHasForceDark(Z)V
    .registers 2
    .param p1, "force"    # Z

    .line 21
    iput-boolean p1, p0, Landroid/graphics/MiuiCanvas;->mHasForceDark:Z

    .line 22
    return-void
.end method
