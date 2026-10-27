.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final greylist-max-o TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final whitelist boundingBox:Landroid/graphics/RectF;

.field public final whitelist length:F

.field private greylist-max-o mCachedPath:Landroid/graphics/Path;

.field public final whitelist points:[F

.field private final greylist-max-o timestamps:[J


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/RectF;F[F[J)V
    .registers 9

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 89
    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    .line 90
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 91
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 51
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [F

    .line 52
    new-array v3, v1, [J

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 58
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    const/4 v8, 0x0

    :goto_16
    if-ge v6, v1, :cond_73

    .line 59
    move-object/from16 v9, p1

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gesture/GesturePoint;

    .line 60
    mul-int/lit8 v11, v6, 0x2

    iget v12, v10, Landroid/gesture/GesturePoint;->x:F

    aput v12, v2, v11

    .line 61
    add-int/lit8 v11, v11, 0x1

    iget v12, v10, Landroid/gesture/GesturePoint;->y:F

    aput v12, v2, v11

    .line 62
    iget-wide v11, v10, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v11, v3, v7

    .line 64
    if-nez v4, :cond_4b

    .line 65
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 66
    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v4, Landroid/graphics/RectF;->top:F

    .line 67
    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 68
    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    iput v8, v4, Landroid/graphics/RectF;->right:F

    .line 69
    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    .line 70
    move/from16 v16, v6

    const/4 v8, 0x0

    goto :goto_6e

    .line 72
    :cond_4b
    float-to-double v11, v8

    iget v8, v10, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v13, v6, -0x1

    mul-int/lit8 v13, v13, 0x2

    aget v14, v2, v13

    sub-float/2addr v8, v14

    float-to-double v14, v8

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v13, v13, 0x1

    aget v13, v2, v13

    sub-float/2addr v8, v13

    move/from16 v16, v6

    float-to-double v5, v8

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    double-to-float v5, v11

    .line 73
    iget v6, v10, Landroid/gesture/GesturePoint;->x:F

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->union(FF)V

    move v8, v5

    .line 75
    :goto_6e
    add-int/lit8 v7, v7, 0x1

    .line 58
    add-int/lit8 v6, v16, 0x1

    goto :goto_16

    .line 78
    :cond_73
    iput-object v3, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 79
    iput-object v2, v0, Landroid/gesture/GestureStroke;->points:[F

    .line 80
    iput-object v4, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 81
    iput v8, v0, Landroid/gesture/GestureStroke;->length:F

    .line 82
    return-void
.end method

.method static greylist-max-o deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    .line 224
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 227
    :cond_16
    new-instance p0, Landroid/gesture/GestureStroke;

    invoke-direct {p0, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private greylist-max-o makePath()V
    .registers 12

    .line 121
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 122
    array-length v1, v0

    .line 124
    nop

    .line 126
    nop

    .line 127
    nop

    .line 129
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    :goto_b
    if-ge v5, v1, :cond_48

    .line 130
    aget v6, v0, v5

    .line 131
    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    .line 132
    if-nez v2, :cond_21

    .line 133
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 134
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    nop

    .line 136
    move v3, v6

    move v4, v7

    goto :goto_45

    .line 138
    :cond_21
    sub-float v8, v6, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 139
    sub-float v9, v7, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 140
    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v8, v8, v10

    if-gez v8, :cond_37

    cmpl-float v8, v9, v10

    if-ltz v8, :cond_45

    .line 141
    :cond_37
    add-float v8, v6, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v10, v7, v4

    div-float/2addr v10, v9

    invoke-virtual {v2, v3, v4, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 142
    nop

    .line 143
    move v3, v6

    move v4, v7

    .line 129
    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 148
    :cond_48
    iput-object v2, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 149
    return-void
.end method


# virtual methods
.method public whitelist clearPath()V
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 235
    :cond_9
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 96
    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public whitelist computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    .line 105
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_7

    .line 106
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 109
    :cond_7
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_7

    .line 114
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 117
    :cond_7
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method greylist-max-o serialize(Ljava/io/DataOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 202
    iget-object v1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 203
    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v2, v2

    .line 206
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_25

    .line 210
    aget v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 212
    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 214
    div-int/lit8 v4, v3, 0x2

    aget-wide v4, v1, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 208
    add-int/lit8 v3, v3, 0x2

    goto :goto_d

    .line 216
    :cond_25
    return-void
.end method

.method public whitelist toPath(FFI)Landroid/graphics/Path;
    .registers 12

    .line 161
    invoke-static {p0, p3}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object p3

    .line 162
    iget-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 164
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {p3, v1, v2}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 166
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr p1, v1

    .line 167
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p2, v0

    .line 168
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1e

    move p1, p2

    .line 169
    :cond_1e
    invoke-static {p3, p1, p1}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    .line 171
    nop

    .line 172
    nop

    .line 174
    nop

    .line 176
    array-length p1, p3

    .line 178
    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    move v0, p2

    :goto_2b
    if-ge v2, p1, :cond_69

    .line 179
    aget v3, p3, v2

    .line 180
    add-int/lit8 v4, v2, 0x1

    aget v4, p3, v4

    .line 181
    if-nez v1, :cond_42

    .line 182
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 183
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    nop

    .line 185
    move-object v1, p2

    move p2, v3

    move v0, v4

    goto :goto_66

    .line 187
    :cond_42
    sub-float v5, v3, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 188
    sub-float v6, v4, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 189
    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v5, v5, v7

    if-gez v5, :cond_58

    cmpl-float v5, v6, v7

    if-ltz v5, :cond_66

    .line 190
    :cond_58
    add-float v5, v3, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v7, v4, v0

    div-float/2addr v7, v6

    invoke-virtual {v1, p2, v0, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 191
    nop

    .line 192
    move p2, v3

    move v0, v4

    .line 178
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, 0x2

    goto :goto_2b

    .line 197
    :cond_69
    return-object v1
.end method
