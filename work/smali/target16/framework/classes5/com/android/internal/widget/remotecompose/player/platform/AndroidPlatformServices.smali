.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices;
.super Ljava/lang/Object;
.source "AndroidPlatformServices.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Platform;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RemoteCompose"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist androidPathToFloatArray(Landroid/graphics/Path;)[F
    .registers 11

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Path;->getPathIterator()Landroid/graphics/PathIterator;

    move-result-object p1

    .line 103
    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/PathIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 106
    invoke-virtual {p1}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 110
    :cond_12
    mul-int/lit8 v1, v1, 0xa

    new-array v1, v1, [F

    .line 112
    move v2, v0

    .line 113
    :goto_17
    invoke-virtual {p1}, Landroid/graphics/PathIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 114
    invoke-virtual {p1}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/graphics/PathIterator$Segment;->getVerb()I

    move-result v4

    packed-switch v4, :pswitch_data_88

    goto :goto_60

    .line 136
    :pswitch_29
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->DONE_NAN:F

    aput v5, v1, v2

    move v2, v4

    goto :goto_60

    .line 133
    :pswitch_31
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CLOSE_NAN:F

    aput v5, v1, v2

    .line 134
    move v2, v4

    goto :goto_60

    .line 130
    :pswitch_39
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CUBIC_NAN:F

    aput v5, v1, v2

    .line 131
    move v2, v4

    goto :goto_60

    .line 127
    :pswitch_41
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CONIC_NAN:F

    aput v5, v1, v2

    .line 128
    move v2, v4

    goto :goto_60

    .line 124
    :pswitch_49
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->QUADRATIC_NAN:F

    aput v5, v1, v2

    .line 125
    move v2, v4

    goto :goto_60

    .line 121
    :pswitch_51
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->LINE_NAN:F

    aput v5, v1, v2

    .line 122
    move v2, v4

    goto :goto_60

    .line 118
    :pswitch_59
    add-int/lit8 v4, v2, 0x1

    sget v5, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    aput v5, v1, v2

    .line 119
    move v2, v4

    .line 139
    :goto_60
    invoke-virtual {v3}, Landroid/graphics/PathIterator$Segment;->getPoints()[F

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_66
    if-ge v6, v5, :cond_72

    aget v7, v4, v6

    .line 140
    add-int/lit8 v8, v2, 0x1

    aput v7, v1, v2

    .line 139
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_66

    .line 142
    :cond_72
    invoke-virtual {v3}, Landroid/graphics/PathIterator$Segment;->getVerb()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_82

    .line 143
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Landroid/graphics/PathIterator$Segment;->getConicWeight()F

    move-result v3

    aput v3, v1, v2

    move v2, v4

    .line 145
    :cond_82
    goto :goto_17

    .line 147
    :cond_83
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    return-object p1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public blacklist getImageHeight(Ljava/lang/Object;)I
    .registers 3

    .line 56
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 57
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    return p1

    .line 59
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getImageWidth(Ljava/lang/Object;)I
    .registers 3

    .line 48
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 49
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    return p1

    .line 51
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist imageToByteArray(Ljava/lang/Object;)[B
    .registers 5

    .line 37
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 43
    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist isAlpha8Image(Ljava/lang/Object;)Z
    .registers 3

    .line 64
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 65
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 67
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist log(Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;Ljava/lang/String;)V
    .registers 4

    .line 85
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices$1;->$SwitchMap$com$android$internal$widget$remotecompose$core$Platform$LogCategory:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "RemoteCompose"

    packed-switch p1, :pswitch_data_1e

    .line 96
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 93
    :pswitch_11
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto :goto_1d

    .line 90
    :pswitch_15
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_1d

    .line 87
    :pswitch_19
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    nop

    .line 99
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist parsePath(Ljava/lang/String;)Ljava/lang/Object;
    .registers 21

    .line 158
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 159
    const/4 v1, 0x6

    new-array v7, v1, [F

    .line 161
    const-string v1, "(?=[MmZzLlHhVvCcSsQqTtAa])"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 162
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_13
    if-ge v11, v9, :cond_14f

    aget-object v1, v8, v11

    .line 163
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 164
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[,\\s]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 165
    const/4 v15, 0x3

    const/16 v16, 0x2

    sparse-switch v12, :sswitch_data_150

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :sswitch_49
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 203
    goto/16 :goto_111

    .line 191
    :sswitch_4e
    move v1, v10

    :goto_4f
    array-length v2, v14

    if-ge v1, v2, :cond_8e

    .line 192
    aget v2, v7, v10

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    aget v4, v7, v16

    sub-float/2addr v2, v4

    aget v4, v7, v13

    mul-float/2addr v4, v3

    aget v3, v7, v15

    sub-float/2addr v4, v3

    aget-object v3, v14, v1

    .line 195
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v14, v5

    .line 196
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v6, v1, 0x2

    aget-object v6, v14, v6

    .line 197
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-int/lit8 v17, v1, 0x3

    aget-object v17, v14, v17

    .line 198
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 192
    move/from16 v18, v17

    move/from16 v17, v1

    move v1, v2

    move v2, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 191
    add-int/lit8 v1, v17, 0x4

    goto :goto_4f

    .line 200
    :cond_8e
    goto/16 :goto_111

    .line 167
    :sswitch_90
    aget-object v1, v14, v10

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aget-object v2, v14, v13

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 168
    goto/16 :goto_111

    .line 170
    :sswitch_a1
    move v1, v10

    :goto_a2
    array-length v2, v14

    if-ge v1, v2, :cond_b9

    .line 171
    aget-object v2, v14, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    add-int/lit8 v1, v1, 0x2

    goto :goto_a2

    .line 173
    :cond_b9
    goto :goto_111

    .line 175
    :sswitch_ba
    array-length v1, v14

    move v2, v10

    :goto_bc
    if-ge v2, v1, :cond_cc

    aget-object v3, v14, v2

    .line 176
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aget v4, v7, v13

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    .line 178
    :cond_cc
    goto :goto_111

    .line 180
    :sswitch_cd
    move v1, v10

    :goto_ce
    array-length v2, v14

    if-ge v1, v2, :cond_110

    .line 181
    aget-object v2, v14, v1

    .line 182
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v14, v3

    .line 183
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/lit8 v4, v1, 0x2

    aget-object v4, v14, v4

    .line 184
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-int/lit8 v5, v1, 0x3

    aget-object v5, v14, v5

    .line 185
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    add-int/lit8 v6, v1, 0x4

    aget-object v6, v14, v6

    .line 186
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-int/lit8 v17, v1, 0x5

    aget-object v17, v14, v17

    .line 187
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 181
    move/from16 v18, v17

    move/from16 v17, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 180
    add-int/lit8 v1, v17, 0x6

    goto :goto_ce

    .line 189
    :cond_110
    nop

    .line 207
    :goto_111
    const/16 v1, 0x5a

    if-eq v12, v1, :cond_14b

    const/16 v1, 0x48

    if-eq v12, v1, :cond_14b

    .line 208
    array-length v1, v14

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v7, v10

    .line 209
    array-length v1, v14

    sub-int/2addr v1, v13

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v7, v13

    .line 210
    const/16 v1, 0x43

    if-eq v12, v1, :cond_136

    const/16 v1, 0x53

    if-ne v12, v1, :cond_14b

    .line 211
    :cond_136
    array-length v1, v14

    add-int/lit8 v1, v1, -0x4

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v7, v16

    .line 212
    array-length v1, v14

    sub-int/2addr v1, v15

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v7, v15

    .line 162
    :cond_14b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 217
    :cond_14f
    return-object v0

    :sswitch_data_150
    .sparse-switch
        0x43 -> :sswitch_cd
        0x48 -> :sswitch_ba
        0x4c -> :sswitch_a1
        0x4d -> :sswitch_90
        0x53 -> :sswitch_4e
        0x5a -> :sswitch_49
    .end sparse-switch
.end method

.method public blacklist pathToFloatArray(Ljava/lang/Object;)[F
    .registers 3

    .line 76
    instance-of v0, p1, Landroid/graphics/Path;

    if-eqz v0, :cond_b

    .line 77
    check-cast p1, Landroid/graphics/Path;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPlatformServices;->androidPathToFloatArray(Landroid/graphics/Path;)[F

    move-result-object p1

    return-object p1

    .line 80
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
