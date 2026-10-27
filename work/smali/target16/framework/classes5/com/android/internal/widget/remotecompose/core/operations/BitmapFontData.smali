.class public Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "BitmapFontData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BitmapFontData"

.field private static final blacklist MAX_GLYPHS:I = 0xffff

.field private static final blacklist MAX_KERNING_TABLE_SIZE:I = 0xffff

.field private static final blacklist OP_CODE:I = 0xa7

.field static final blacklist VERSION_1:S = 0x0s

.field static final blacklist VERSION_2:S = 0x1s


# instance fields
.field blacklist mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

.field blacklist mId:I

.field blacklist mKerningTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mVersion:S


# direct methods
.method public constructor blacklist <init>(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 111
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    .line 112
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 113
    const/4 p1, 0x0

    iput-short p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mVersion:S

    .line 114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    .line 116
    array-length p1, p2

    const p2, 0xffff

    if-ge p1, p2, :cond_22

    .line 121
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 122
    return-void

    .line 117
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many glyphs, the maximum is 65535"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;SLjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;",
            "S",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 140
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    .line 141
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 142
    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mVersion:S

    .line 143
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    .line 145
    array-length p1, p2

    const p2, 0xffff

    if-ge p1, p2, :cond_2a

    .line 149
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-ge p1, p2, :cond_22

    .line 155
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 156
    return-void

    .line 150
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Kerning table too big, the maximum size is 65535"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many glyphs, the maximum is 65535"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "I[",
            "Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 202
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 208
    if-eqz p3, :cond_18

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    .line 209
    array-length p1, p2

    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_1c

    .line 211
    :cond_18
    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 214
    :goto_1c
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p1, :cond_4d

    aget-object v1, p2, v0

    .line 215
    iget-object v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 216
    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 217
    iget-short v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 218
    iget-short v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 219
    iget-short v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 220
    iget-short v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 221
    iget-short v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 222
    iget-short v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 225
    :cond_4d
    if-eqz p3, :cond_88

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_88

    .line 226
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 227
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 229
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 230
    goto :goto_65

    .line 232
    :cond_88
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 279
    const/16 v0, 0xa7

    const-string v1, "BitmapFontData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 280
    const-string v0, "Bitmap font data"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 281
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of bitmap font data"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 282
    const/16 v0, 0xb

    const-string v1, "glyphNodes"

    const-string v2, "list used to greedily convert strings into glyphs"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 283
    const-string v1, "glyphElements"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 284
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 185
    const/16 v0, 0xa7

    return v0
.end method

.method static synthetic blacklist lambda$new$0(Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .registers 2

    .line 121
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method static synthetic blacklist lambda$new$1(Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .registers 2

    .line 155
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 176
    const-string v0, "BitmapFontData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 244
    ushr-int/lit8 v2, v1, 0x10

    int-to-short v2, v2

    .line 245
    const v3, 0xffff

    and-int/2addr v1, v3

    .line 246
    new-array v3, v1, [Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 247
    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v1, :cond_65

    .line 248
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    invoke-direct {v6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;-><init>()V

    aput-object v6, v3, v5

    .line 249
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    .line 250
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    iput v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapId:I

    .line 251
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginLeft:S

    .line 252
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginTop:S

    .line 253
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginRight:S

    .line 254
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mMarginBottom:S

    .line 255
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapWidth:S

    .line 256
    aget-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mBitmapHeight:S

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 259
    :cond_65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 261
    const/4 v5, 0x1

    if-lt v2, v5, :cond_87

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v5

    .line 263
    nop

    :goto_72
    if-ge v4, v5, :cond_87

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    .line 266
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    .line 270
    :cond_87
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;-><init>(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;SLjava/util/Map;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 288
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist lookupGlyph(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;
    .registers 8

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 303
    iget-object v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;->mChars:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 304
    return-object v3

    .line 302
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 307
    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 312
    const-string v0, "BitmapFontData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 313
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BITMAP FONT DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 160
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mFontGlyphs:[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->mKerningTable:Ljava/util/Map;

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Ljava/util/Map;)V

    .line 161
    return-void
.end method
