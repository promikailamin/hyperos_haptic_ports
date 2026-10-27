.class public Landroid/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o BITMAP_RENDERING_ANTIALIAS:Z = true

.field private static final greylist-max-o BITMAP_RENDERING_DITHER:Z = true

.field private static final greylist-max-o BITMAP_RENDERING_WIDTH:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o GESTURE_ID_BASE:J

.field private static final greylist-max-o sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o mBoundingBox:Landroid/graphics/RectF;

.field private greylist-max-o mGestureID:J

.field private final greylist-max-o mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmGestureID(Landroid/gesture/Gesture;J)V
    .registers 3

    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 283
    new-instance v0, Landroid/gesture/Gesture$1;

    invoke-direct {v0}, Landroid/gesture/Gesture$1;-><init>()V

    sput-object v0, Landroid/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 60
    sget-wide v0, Landroid/gesture/Gesture;->GESTURE_ID_BASE:J

    sget-object v2, Landroid/gesture/Gesture;->sGestureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    .line 61
    return-void
.end method

.method static greylist-max-o deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 272
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/gesture/Gesture;->mGestureID:J

    .line 274
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 276
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1c

    .line 277
    invoke-static {p0}, Landroid/gesture/GestureStroke;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 280
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public whitelist addStroke(Landroid/gesture/GestureStroke;)V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object p1, p1, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 98
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 7

    .line 65
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 66
    iget-object v1, v0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object v1, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_39

    .line 70
    iget-object v3, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    .line 71
    iget-object v4, v0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 73
    :cond_39
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/gesture/Gesture;->mBoundingBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist getID()J
    .registers 3

    .line 172
    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    return-wide v0
.end method

.method public whitelist getLength()F
    .registers 6

    .line 107
    nop

    .line 108
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 111
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_19

    .line 112
    int-to-float v3, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureStroke;

    iget v4, v4, Landroid/gesture/GestureStroke;->length:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 115
    :cond_19
    int-to-float v0, v3

    return v0
.end method

.method public whitelist getStrokes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GestureStroke;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStrokesCount()I
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-o serialize(Ljava/io/DataOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 259
    iget-wide v2, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 261
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 263
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1d

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v3, p1}, Landroid/gesture/GestureStroke;->serialize(Ljava/io/DataOutputStream;)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 266
    :cond_1d
    return-void
.end method

.method greylist-max-o setID(J)V
    .registers 3

    .line 165
    iput-wide p1, p0, Landroid/gesture/Gesture;->mGestureID:J

    .line 166
    return-void
.end method

.method public whitelist toBitmap(IIII)Landroid/graphics/Bitmap;
    .registers 13

    .line 221
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 226
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 228
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    sget-object p4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 231
    sget-object p4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 232
    const/high16 p4, 0x40000000    # 2.0f

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    invoke-virtual {p0}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v4

    .line 235
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 236
    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 238
    mul-int/lit8 v3, p3, 0x2

    sub-int v6, p1, v3

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    .line 239
    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v3, v7

    .line 240
    cmpl-float v7, v6, v3

    if-lez v7, :cond_51

    move v6, v3

    .line 241
    :cond_51
    div-float v3, p4, v6

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    iget v3, v5, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    int-to-float p1, p1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v6

    sub-float/2addr p1, v7

    div-float/2addr p1, p4

    add-float/2addr v3, p1

    iget p1, v5, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    int-to-float p2, p2

    .line 244
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v6

    sub-float/2addr p2, v5

    div-float/2addr p2, p4

    add-float/2addr p1, p2

    .line 243
    invoke-virtual {v4, v3, p1}, Landroid/graphics/Path;->offset(FF)V

    .line 246
    int-to-float p1, p3

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 249
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    return-object v0
.end method

.method public whitelist toBitmap(IIIII)Landroid/graphics/Bitmap;
    .registers 14

    .line 186
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    int-to-float v2, p3

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    sget-object p5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 197
    sget-object p5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    const/high16 p5, 0x40000000    # 2.0f

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object p5, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 203
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_53

    .line 204
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GestureStroke;

    mul-int/lit8 v6, p3, 0x2

    sub-int v7, p1, v6

    int-to-float v7, v7

    sub-int v6, p2, v6

    int-to-float v6, v6

    invoke-virtual {v5, v7, v6, p4}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v5

    .line 205
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 208
    :cond_53
    return-object v0
.end method

.method public whitelist toPath()Landroid/graphics/Path;
    .registers 2

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toPath(IIII)Landroid/graphics/Path;
    .registers 11

    .line 143
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/gesture/Gesture;->toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public whitelist toPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 6

    .line 130
    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 132
    :cond_7
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_20

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    invoke-virtual {v3}, Landroid/gesture/GestureStroke;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 139
    :cond_20
    return-object p1
.end method

.method public whitelist toPath(Landroid/graphics/Path;IIII)Landroid/graphics/Path;
    .registers 12

    .line 147
    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 149
    :cond_7
    iget-object v0, p0, Landroid/gesture/Gesture;->mStrokes:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 152
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_28

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GestureStroke;

    mul-int/lit8 v4, p4, 0x2

    sub-int v5, p2, v4

    int-to-float v5, v5

    sub-int v4, p3, v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4, p5}, Landroid/gesture/GestureStroke;->toPath(FFI)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 156
    :cond_28
    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 312
    iget-wide v0, p0, Landroid/gesture/Gesture;->mGestureID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 314
    nop

    .line 315
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    const v0, 0x8000

    invoke-direct {p2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 317
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 320
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_21
    .catchall {:try_start_13 .. :try_end_16} :catchall_1f

    .line 321
    nop

    .line 325
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 326
    invoke-static {p2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 327
    const/4 v0, 0x1

    goto :goto_30

    .line 325
    :catchall_1f
    move-exception p1

    goto :goto_3a

    .line 322
    :catch_21
    move-exception v1

    .line 323
    :try_start_22
    const-string v2, "Gestures"

    const-string v3, "Error writing Gesture to parcel:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 325
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 326
    invoke-static {p2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_30
    if-eqz v0, :cond_39

    .line 330
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 332
    :cond_39
    return-void

    .line 325
    :goto_3a
    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 326
    invoke-static {p2}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 327
    throw p1
.end method
