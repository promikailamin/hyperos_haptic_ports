.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "BitmapTextMeasure.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapTextMeasure"

.field public static final blacklist MEASURE_BOTTOM:I = 0x5

.field public static final blacklist MEASURE_HEIGHT:I = 0x1

.field public static final blacklist MEASURE_LEFT:I = 0x2

.field public static final blacklist MEASURE_MAX_HEIGHT_FLAG:I = 0x200

.field public static final blacklist MEASURE_MONOSPACE_FLAG:I = 0x100

.field public static final blacklist MEASURE_RIGHT:I = 0x3

.field public static final blacklist MEASURE_TOP:I = 0x4

.field public static final blacklist MEASURE_WIDTH:I = 0x0

.field private static final blacklist OP_CODE:I = 0xb7


# instance fields
.field private final blacklist mBitmapFontId:I

.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTextId:I

.field public blacklist mType:I


# direct methods
.method public constructor blacklist <init>(IIII)V
    .registers 6

    .line 56
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    .line 57
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    .line 58
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mTextId:I

    .line 59
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBitmapFontId:I

    .line 60
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mType:I

    .line 61
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V
    .registers 6

    .line 102
    const/16 v0, 0xb7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 106
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 107
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 129
    const/16 v0, 0xb7

    const-string v1, "BitmapTextMeasure"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 130
    const-string v0, "Measure text"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 131
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of float result of the measure"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 132
    const-string/jumbo v1, "textId"

    const-string v2, "id of text"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 133
    const-string v1, "bitmapFontId"

    const-string v2, "id of bitmapFont"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 134
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type: measure 0=width,1=height"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 135
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 88
    const/16 v0, 0xb7

    return v0
.end method

.method private blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 15

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    .line 147
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBitmapFontId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    .line 148
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mTextId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 157
    const/4 v2, 0x0

    const/high16 v3, 0x447a0000    # 1000.0f

    const v4, -0x800001

    const/4 v5, 0x0

    const-string v6, ""

    move v8, v2

    move v9, v8

    move v7, v5

    move-object v10, v6

    .line 158
    :goto_29
    if-ge v7, v1, :cond_89

    .line 159
    invoke-virtual {v0, p1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    move-result-object v11

    .line 161
    if-nez v11, :cond_36

    .line 162
    add-int/lit8 v7, v7, 0x1

    .line 163
    nop

    .line 164
    move-object v10, v6

    goto :goto_29

    .line 167
    :cond_36
    iget-object v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 168
    iget-short v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    iget-short v12, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    add-int/2addr v8, v12

    int-to-float v8, v8

    add-float/2addr v9, v8

    .line 169
    iget v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_4d

    .line 171
    iget-short v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    int-to-float v8, v8

    add-float/2addr v9, v8

    .line 174
    :cond_4d
    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    .line 175
    if-eqz v8, :cond_70

    .line 176
    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    .line 179
    :cond_70
    nop

    .line 180
    iget-short v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    iget-short v10, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    add-int/2addr v8, v10

    iget-short v10, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    add-int/2addr v8, v10

    int-to-float v8, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 181
    iget-short v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    int-to-float v8, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 182
    iget-object v10, v11, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 183
    move v8, v9

    goto :goto_29

    .line 185
    :cond_89
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aput v2, p1, v5

    .line 186
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    const/4 v0, 0x1

    aput v3, p1, v0

    .line 187
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    const/4 v0, 0x2

    aput v8, p1, v0

    .line 188
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    const/4 v0, 0x3

    aput v4, p1, v0

    .line 189
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 79
    const-string v0, "BitmapTextMeasure"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    .line 120
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;-><init>(IIII)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method private blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 230
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mType:I

    and-int/lit16 v0, v0, 0xff

    .line 231
    packed-switch v0, :pswitch_data_1c

    .line 245
    const-string v0, "INVALID_TYPE"

    return-object v0

    .line 243
    :pswitch_a
    const-string v0, "MEASURE_BOTTOM"

    return-object v0

    .line 239
    :pswitch_d
    const-string v0, "MEASURE_TOP"

    return-object v0

    .line 241
    :pswitch_10
    const-string v0, "MEASURE_RIGHT"

    return-object v0

    .line 237
    :pswitch_13
    const-string v0, "MEASURE_LEFT"

    return-object v0

    .line 235
    :pswitch_16
    const-string v0, "MEASURE_HEIGHT"

    return-object v0

    .line 233
    :pswitch_19
    const-string v0, "MEASURE_WIDTH"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7

    .line 193
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mType:I

    and-int/lit16 v0, v0, 0xff

    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 197
    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_6e

    goto :goto_6d

    .line 214
    :pswitch_f
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    goto :goto_6d

    .line 208
    :pswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v1, v2, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 209
    goto :goto_6d

    .line 211
    :pswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v1, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 212
    goto :goto_6d

    .line 205
    :pswitch_39
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 206
    goto :goto_6d

    .line 202
    :pswitch_47
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v2, v3, v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v1, v3, v1

    sub-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 203
    goto :goto_6d

    .line 199
    :pswitch_5a
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBounds:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 200
    nop

    .line 217
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_47
        :pswitch_39
        :pswitch_2b
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 221
    nop

    .line 222
    const-string v0, "BitmapTextMeasure"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mTextId:I

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBitmapFontId:I

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bitmapFontId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 226
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->typeToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "measureType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 227
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBitmapFontId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mTextId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mBitmapFontId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->mType:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 66
    return-void
.end method
