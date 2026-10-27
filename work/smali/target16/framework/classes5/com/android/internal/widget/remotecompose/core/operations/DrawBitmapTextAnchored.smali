.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapTextAnchored.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapTextAnchored"

.field private static final blacklist OP_CODE:I = 0xb8


# instance fields
.field blacklist mBitmapFontID:I

.field blacklist mBounds:[F

.field blacklist mEnd:F

.field blacklist mOutEnd:F

.field blacklist mOutPanX:F

.field blacklist mOutPanY:F

.field blacklist mOutStart:F

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mPanX:F

.field blacklist mPanY:F

.field blacklist mStart:F

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IIFFFFFF)V
    .registers 10

    .line 62
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 235
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    .line 63
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mTextID:I

    .line 64
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBitmapFontID:I

    .line 65
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutStart:F

    .line 66
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutEnd:F

    .line 67
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutX:F

    .line 68
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutY:F

    .line 69
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutPanX:F

    .line 70
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutPanY:F

    .line 71
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFFF)V
    .registers 10

    .line 191
    const/16 v0, 0xb8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 194
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 195
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 196
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 197
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 198
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 199
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 200
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 208
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->id()I

    move-result v0

    const-string v1, "DrawBitmapTextAnchored"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 209
    const-string v0, "Draw a bitmap font text, all in a single direction"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 210
    const/4 v0, 0x0

    const-string/jumbo v1, "textId"

    const-string v2, "id of bitmap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 211
    const-string v1, "bitmapFontId"

    const-string v2, "id of the bitmap font"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 212
    const/4 v0, 0x1

    const-string/jumbo v1, "start"

    const-string v2, "The start of the text to render. -1=end of string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 216
    const-string v1, "end"

    const-string v2, "The end of the text to render"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 217
    const-string/jumbo v1, "x"

    const-string v2, "The x anchor point to which to draw the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 221
    const-string/jumbo v1, "y"

    const-string v2, "The y anchor point to which to draw the text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 225
    const-string/jumbo v1, "panX"

    const-string v2, "The x position relative to the anchor point"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 229
    const-string/jumbo v1, "panY"

    const-string v2, "The y position relative to the anchor point"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 233
    return-void
.end method

.method private blacklist getHorizontalOffset()F
    .registers 5

    .line 270
    nop

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 273
    nop

    .line 274
    const/4 v3, 0x0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutPanX:F

    add-float/2addr v0, v1

    mul-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    aget v0, v0, v2

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    return v3
.end method

.method private blacklist getVerticalOffset()F
    .registers 5

    .line 279
    nop

    .line 280
    nop

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 282
    const/4 v3, 0x0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutPanY:F

    sub-float v0, v1, v0

    mul-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    aget v0, v0, v2

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    return v3
.end method

.method public static blacklist id()I
    .registers 1

    .line 165
    const/16 v0, 0xb8

    return v0
.end method

.method private blacklist measure(Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;Ljava/lang/String;)V
    .registers 12

    .line 238
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    const v2, -0x800001

    const/4 v3, 0x0

    move v5, v0

    move v6, v5

    move v4, v3

    .line 244
    :goto_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4c

    .line 245
    invoke-virtual {p1, p2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v7

    .line 246
    if-nez v7, :cond_1e

    .line 247
    add-int/lit8 v4, v4, 0x1

    .line 248
    goto :goto_f

    .line 251
    :cond_1e
    iget-object v5, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 252
    iget-short v5, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v5, v8

    int-to-float v5, v5

    add-float/2addr v6, v5

    .line 253
    iget v5, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_35

    .line 255
    iget-short v5, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    int-to-float v5, v5

    add-float/2addr v6, v5

    .line 257
    :cond_35
    nop

    .line 258
    iget-short v5, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    iget-short v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    add-int/2addr v5, v8

    iget-short v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 259
    iget-short v5, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 260
    move v5, v6

    goto :goto_f

    .line 262
    :cond_4c
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    aput v0, p1, v3

    .line 263
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 p2, 0x1

    aput v1, p1, p2

    .line 264
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 p2, 0x2

    aput v5, p1, p2

    .line 265
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBounds:[F

    const/4 p2, 0x3

    aput v2, p1, p2

    .line 266
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 156
    const-string v0, "DrawBitmapTextAnchored"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 143
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;-><init>(IIFFFFFF)V

    .line 146
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 16

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 288
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mTextID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    if-nez v1, :cond_d

    .line 290
    return-void

    .line 292
    :cond_d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutEnd:F

    float-to-int v2, v2

    .line 293
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutStart:F

    float-to-int v3, v3

    .line 295
    nop

    .line 297
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 298
    if-ltz v2, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v2, v5, :cond_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 296
    :cond_25
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 299
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBitmapFontID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    .line 300
    if-nez v0, :cond_34

    .line 301
    return-void

    .line 303
    :cond_34
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->measure(Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;Ljava/lang/String;)V

    .line 305
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutX:F

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->getHorizontalOffset()F

    move-result v3

    add-float/2addr v2, v3

    .line 306
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutY:F

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->getVerticalOffset()F

    move-result v5

    add-float/2addr v3, v5

    .line 308
    nop

    .line 309
    const-string v5, ""

    move-object v6, v5

    .line 310
    :goto_49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_bc

    .line 311
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v7

    .line 312
    if-nez v7, :cond_5a

    .line 313
    add-int/lit8 v4, v4, 0x1

    .line 314
    nop

    .line 315
    move-object v6, v5

    goto :goto_49

    .line 318
    :cond_5a
    iget-object v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 319
    iget v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_70

    .line 320
    iget-short v6, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 321
    iget-object v6, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 322
    goto :goto_49

    .line 325
    :cond_70
    iget-short v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    int-to-float v8, v8

    add-float/2addr v2, v8

    .line 326
    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    .line 327
    if-eqz v6, :cond_99

    .line 328
    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    move v10, v2

    goto :goto_9a

    .line 327
    :cond_99
    move v10, v2

    .line 331
    :goto_9a
    iget-short v2, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    int-to-float v2, v2

    add-float v12, v10, v2

    .line 332
    iget v9, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    iget-short v2, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v2, v2

    add-float v11, v3, v2

    iget-short v2, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-short v6, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v6, v6

    add-float v13, v2, v6

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IFFFF)V

    .line 338
    iget-short p1, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    int-to-float p1, p1

    add-float v2, v12, p1

    .line 339
    iget-object v6, v7, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 340
    move-object p1, v8

    goto :goto_49

    .line 341
    :cond_bc
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 86
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 88
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 91
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 92
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 94
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 95
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 97
    :cond_44
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 100
    :cond_55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 103
    :cond_66
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 345
    nop

    .line 346
    const-string v0, "DrawBitmapTextAnchored"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mTextID:I

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBitmapFontID:I

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bitmapFontId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    .line 349
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    .line 350
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "end"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutX:F

    .line 351
    const-string/jumbo v2, "x"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutY:F

    .line 352
    const-string/jumbo v2, "y"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 353
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmapFontText ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBitmapFontID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutX:F

    .line 122
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutY:F

    .line 124
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutX:F

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutY:F

    .line 77
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutPanX:F

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    :goto_5a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutPanY:F

    .line 79
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_71

    :cond_6f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    :goto_71
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutStart:F

    .line 80
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_86

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_88

    :cond_86
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    :goto_88
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mOutEnd:F

    .line 81
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 11

    .line 107
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mBitmapFontID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mStart:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mEnd:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mX:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mY:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanX:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->mPanY:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFFF)V

    .line 108
    return-void
.end method
