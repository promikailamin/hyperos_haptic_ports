.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapFontTextOnPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapFontTextOnPath"

.field private static final blacklist OP_CODE:I = 0x31


# instance fields
.field blacklist mBitmapFontID:I

.field blacklist mEnd:I

.field blacklist mOutYAdj:F

.field blacklist mPathID:I

.field blacklist mStart:I

.field blacklist mTextID:I

.field blacklist mYAdj:F


# direct methods
.method public constructor blacklist <init>(IIIIIF)V
    .registers 7

    .line 46
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mTextID:I

    .line 48
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mBitmapFontID:I

    .line 49
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mPathID:I

    .line 50
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    .line 51
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    .line 52
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    .line 53
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIF)V
    .registers 8

    .line 146
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 149
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 150
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 151
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 152
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 153
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 161
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->id()I

    move-result v0

    const-string v1, "DrawBitmapFontTextOnPath"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 162
    const-string v0, "Draw a run of bitmap font text, all in a single direction"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 163
    const/4 v0, 0x0

    const-string/jumbo v1, "textId"

    const-string v2, "id of bitmap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 164
    const-string v1, "bitmapFontId"

    const-string v2, "id of the bitmap font"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 165
    const-string/jumbo v1, "pathId"

    const-string v2, "id of the path"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 166
    const-string/jumbo v1, "start"

    const-string v2, "The start of the text to render. -1=end of string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 170
    const-string v1, "end"

    const-string v2, "The end of the text to render"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 171
    const-string v1, "contextStart"

    const-string/jumbo v2, "the index of the start of the shaping context"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 175
    const-string v1, "contextEnd"

    const-string/jumbo v2, "the index of the end of the shaping context"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 179
    const/4 v0, 0x1

    const-string/jumbo v1, "yAdj"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 183
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 124
    const/16 v0, 0x31

    return v0
.end method

.method private blacklist measureWidth(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;)I
    .registers 10

    .line 186
    nop

    .line 187
    nop

    .line 188
    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    move-object v3, v1

    .line 189
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5b

    .line 190
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v4

    .line 191
    if-nez v4, :cond_18

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    nop

    .line 194
    move-object v3, v1

    goto :goto_7

    .line 197
    :cond_18
    iget-object v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 198
    iget v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2d

    .line 200
    iget-short v3, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v4, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 201
    nop

    .line 202
    move-object v3, v1

    goto :goto_7

    .line 205
    :cond_2d
    iget-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    add-int/2addr v2, v5

    .line 206
    iget-object v5, p2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    .line 207
    if-eqz v3, :cond_52

    .line 208
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    add-int/2addr v2, v3

    .line 211
    :cond_52
    iget-short v3, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    iget-short v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 212
    iget-object v3, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 213
    goto :goto_7

    .line 215
    :cond_5b
    return v2
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 115
    const-string v0, "DrawBitmapFontTextOnPath"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 102
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;-><init>(IIIIIF)V

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 20

    .line 220
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 221
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mTextID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    if-nez v2, :cond_f

    .line 223
    return-void

    .line 225
    :cond_f
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    .line 226
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    if-eqz v3, :cond_36

    .line 227
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    .line 229
    :cond_1f
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_2e

    .line 230
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    .line 232
    :cond_2e
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 235
    :cond_36
    :goto_36
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mBitmapFontID:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    .line 236
    if-nez v1, :cond_41

    .line 237
    return-void

    .line 240
    :cond_41
    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->measureWidth(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;)I

    move-result v3

    int-to-float v3, v3

    .line 241
    nop

    .line 242
    nop

    .line 243
    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move v8, v5

    move-object v9, v6

    .line 244
    :goto_4e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_d9

    .line 245
    invoke-virtual {v1, v2, v7}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v10

    .line 246
    if-nez v10, :cond_5f

    .line 247
    add-int/lit8 v7, v7, 0x1

    .line 248
    nop

    .line 249
    move-object v9, v6

    goto :goto_4e

    .line 252
    :cond_5f
    iget-object v11, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    .line 253
    iget v11, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    if-ne v11, v4, :cond_74

    .line 255
    iget-short v9, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v10, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 256
    nop

    .line 257
    move-object v9, v6

    goto :goto_4e

    .line 260
    :cond_74
    iget-short v11, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    int-to-float v11, v11

    add-float/2addr v8, v11

    .line 261
    iget-object v11, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    .line 262
    if-eqz v9, :cond_9b

    .line 263
    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 266
    :cond_9b
    iget-short v9, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    int-to-float v9, v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v9, v11

    .line 267
    add-float v11, v8, v9

    div-float/2addr v11, v3

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 269
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mPathID:I

    const/4 v13, 0x3

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v11, v5, v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixFromPath(IFFI)V

    .line 270
    iget v13, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    neg-float v14, v9

    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mOutYAdj:F

    iget-short v12, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v12, v12

    add-float v15, v11, v12

    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mOutYAdj:F

    iget-short v12, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-short v12, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v12, v12

    add-float v17, v11, v12

    move-object/from16 v12, p1

    move/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IFFFF)V

    .line 276
    iget-short v9, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    iget-short v11, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v9, v11

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 277
    iget-object v9, v10, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 279
    goto/16 :goto_4e

    .line 280
    :cond_d9
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 70
    :cond_11
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 284
    nop

    .line 285
    const-string v0, "DrawBitmapFontTextOnPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mTextID:I

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mBitmapFontID:I

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bitmapFontId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mPathID:I

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "path"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "end"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 291
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmapFontTextOnPath ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mBitmapFontID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mPathID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_15

    :cond_13
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    :goto_15
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mOutYAdj:F

    .line 63
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 9

    .line 57
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mBitmapFontID:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mPathID:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mStart:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mEnd:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->mYAdj:F

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIF)V

    .line 58
    return-void
.end method
