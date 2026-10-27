.class public Landroid/graphics/fonts/FontFileUtil;
.super Ljava/lang/Object;
.source "FontFileUtil.java"


# static fields
.field private static final blacklist ANALYZE_ERROR:I = -0x1

.field private static final blacklist FVAR_TABLE_TAG:I = 0x66766172

.field private static final blacklist OS2_TABLE_TAG:I = 0x4f532f32

.field private static final blacklist SFNT_VERSION_1:I = 0x10000

.field private static final blacklist SFNT_VERSION_OTTO:I = 0x4f54544f

.field private static final blacklist TTC_TAG:I = 0x74746366


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I
    .registers 14

    .line 78
    nop

    .line 79
    nop

    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p2, :cond_3f

    .line 81
    array-length v3, p2

    move v4, v1

    move v5, v2

    move v6, v5

    :goto_b
    if-ge v4, v3, :cond_41

    aget-object v7, p2, v4

    .line 82
    const-string/jumbo v8, "wght"

    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 83
    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v5

    float-to-int v5, v5

    goto :goto_3c

    .line 84
    :cond_22
    const-string/jumbo v8, "ital"

    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 85
    invoke-virtual {v7}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3b

    move v6, v0

    goto :goto_3c

    :cond_3b
    move v6, v1

    .line 81
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 80
    :cond_3f
    move v5, v2

    move v6, v5

    .line 90
    :cond_41
    if-eq v5, v2, :cond_4e

    if-eq v6, v2, :cond_4e

    .line 94
    if-ne v6, v0, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    :goto_49
    invoke-static {v5, v0}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result p0

    return p0

    .line 97
    :cond_4e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    .line 98
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    nop

    .line 101
    :try_start_58
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 102
    const v4, 0x74746366

    const/16 v7, 0x8

    if-ne v3, v4, :cond_77

    .line 104
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_dd

    if-lt p1, v3, :cond_6e

    .line 105
    nop

    .line 138
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    return v2

    .line 107
    :cond_6e
    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0xc

    :try_start_72
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_78

    .line 102
    :cond_77
    move p1, v1

    .line 110
    :goto_78
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_dd

    .line 112
    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_8a

    const v4, 0x4f54544f    # 3.562295E9f

    if-eq v3, v4, :cond_8a

    .line 113
    nop

    .line 138
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    return v2

    .line 116
    :cond_8a
    add-int/lit8 v3, p1, 0x4

    :try_start_8c
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    .line 117
    nop

    .line 118
    move v4, v1

    :goto_92
    if-ge v4, v3, :cond_ab

    .line 119
    add-int/lit8 v8, p1, 0xc

    mul-int/lit8 v9, v4, 0x10

    add-int/2addr v8, v9

    .line 121
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v10, 0x4f532f32

    if-ne v9, v10, :cond_a8

    .line 122
    add-int/2addr v8, v7

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 123
    goto :goto_ac

    .line 118
    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    :cond_ab
    move p1, v2

    .line 127
    :goto_ac
    if-ne p1, v2, :cond_b8

    .line 129
    const/16 p1, 0x190

    invoke-static {p1, v1}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result p1
    :try_end_b4
    .catchall {:try_start_8c .. :try_end_b4} :catchall_dd

    .line 138
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    return p1

    .line 132
    :cond_b8
    add-int/lit8 v3, p1, 0x4

    :try_start_ba
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    .line 133
    add-int/lit8 p1, p1, 0x3e

    .line 134
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_c9

    move p1, v0

    goto :goto_ca

    :cond_c9
    move p1, v1

    .line 135
    :goto_ca
    if-ne v5, v2, :cond_cd

    move v5, v3

    .line 136
    :cond_cd
    if-ne v6, v2, :cond_d1

    move v0, p1

    goto :goto_d5

    :cond_d1
    if-ne v6, v0, :cond_d4

    goto :goto_d5

    :cond_d4
    move v0, v1

    .line 135
    :goto_d5
    invoke-static {v5, v0}, Landroid/graphics/fonts/FontFileUtil;->pack(IZ)I

    move-result p1
    :try_end_d9
    .catchall {:try_start_ba .. :try_end_d9} :catchall_dd

    .line 138
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    return p1

    .line 138
    :catchall_dd
    move-exception p1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    throw p1
.end method

.method public static blacklist getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 2

    .line 171
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nGetFontPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRevision(Ljava/nio/ByteBuffer;I)J
    .registers 2

    .line 156
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nGetFontRevision(Ljava/nio/ByteBuffer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 221
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 223
    nop

    .line 224
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 225
    const v3, 0x74746366

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2b

    .line 227
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    if-lt p1, v2, :cond_22

    .line 228
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    return-object p1

    .line 230
    :cond_22
    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0xc

    :try_start_26
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_2c

    .line 225
    :cond_2b
    move p1, v1

    .line 233
    :goto_2c
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 235
    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_3f

    const v3, 0x4f54544f    # 3.562295E9f

    if-eq v2, v3, :cond_3f

    .line 236
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 236
    return-object p1

    .line 239
    :cond_3f
    add-int/lit8 v2, p1, 0x4

    :try_start_41
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    .line 240
    nop

    .line 241
    move v3, v1

    :goto_47
    const/4 v5, -0x1

    if-ge v3, v2, :cond_61

    .line 242
    add-int/lit8 v6, p1, 0xc

    mul-int/lit8 v7, v3, 0x10

    add-int/2addr v6, v7

    .line 244
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const v8, 0x66766172

    if-ne v7, v8, :cond_5e

    .line 245
    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 246
    goto :goto_62

    .line 241
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_61
    move p1, v5

    .line 250
    :goto_62
    if-ne p1, v5, :cond_6a

    .line 252
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_66
    .catchall {:try_start_41 .. :try_end_66} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    return-object p1

    .line 255
    :cond_6a
    :try_start_6a
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ac

    add-int/lit8 v2, p1, 0x2

    .line 256
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_ac

    .line 260
    :cond_7a
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 261
    add-int/lit8 v3, p1, 0x8

    invoke-static {p0, v3}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 262
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Landroid/graphics/fonts/FontFileUtil;->getUInt16(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 264
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 265
    nop

    :goto_92
    if-ge v1, v3, :cond_a7

    .line 266
    add-int v6, p1, v2

    mul-int v7, v4, v1

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_6a .. :try_end_a4} :catchall_b2

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 269
    :cond_a7
    nop

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 269
    return-object v5

    .line 257
    :cond_ac
    :goto_ac
    :try_start_ac
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_b2

    .line 271
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    return-object p1

    .line 271
    :catchall_b2
    move-exception p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    throw p1
.end method

.method private static blacklist getUInt16(Ljava/nio/ByteBuffer;I)I
    .registers 2

    .line 209
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static blacklist isCollectionFont(Ljava/nio/ByteBuffer;)I
    .registers 3

    .line 196
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 197
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 199
    const v1, 0x74746366

    if-ne p0, v1, :cond_15

    .line 200
    const/4 p0, 0x1

    return p0

    .line 201
    :cond_15
    const/high16 v1, 0x10000

    if-eq p0, v1, :cond_21

    const v1, 0x4f54544f    # 3.562295E9f

    if-ne p0, v1, :cond_1f

    goto :goto_21

    .line 204
    :cond_1f
    const/4 p0, -0x1

    return p0

    .line 202
    :cond_21
    :goto_21
    return v0
.end method

.method public static blacklist isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I
    .registers 2

    .line 188
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->nIsPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static blacklist isSuccess(I)Z
    .registers 2

    .line 58
    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private static native blacklist nGetFontPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontRevision(Ljava/nio/ByteBuffer;I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nIsPostScriptType1Font(Ljava/nio/ByteBuffer;I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static blacklist pack(IZ)I
    .registers 2

    .line 62
    if-eqz p1, :cond_5

    const/high16 p1, 0x10000

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    or-int/2addr p0, p1

    return p0
.end method

.method public static blacklist unpackItalic(I)Z
    .registers 2

    .line 51
    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static blacklist unpackWeight(I)I
    .registers 2

    .line 44
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method
