.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapShader$FilterMode;
    }
.end annotation


# static fields
.field public static final whitelist FILTER_MODE_DEFAULT:I = 0x0

.field public static final whitelist FILTER_MODE_LINEAR:I = 0x2

.field public static final whitelist FILTER_MODE_NEAREST:I = 0x1


# instance fields
.field blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mFilterFromPaint:Z

.field private blacklist mFilterMode:I

.field private blacklist mIsDirectSampled:Z

.field private blacklist mRequestDirectSampling:Z

.field private blacklist mTileX:I

.field private blacklist mTileY:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/graphics/Bitmap;II)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .line 118
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 119
    if-eqz p1, :cond_15

    .line 122
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 123
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 124
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 126
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 127
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 128
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 129
    return-void

    .line 120
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 115
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 116
    return-void
.end method

.method private static native blacklist nativeCreate(JJIIZZ)J
.end method


# virtual methods
.method protected blacklist createNativeInstance(JZ)J
    .registers 15
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 158
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    move v2, v1

    .line 159
    .local v2, "enableLinearFilter":Z
    :goto_9
    if-nez v0, :cond_f

    .line 160
    iput-boolean p3, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 161
    iget-boolean v2, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 164
    :cond_f
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 165
    iput-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 167
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget-boolean v10, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    move-wide v3, p1

    move v9, v2

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapShader;->nativeCreate(JJIIZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapForDarkMode()Landroid/graphics/Bitmap;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getFilterMode()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    return v0
.end method

.method declared-synchronized blacklist getNativeInstanceWithDirectSampling()J
    .registers 3

    monitor-enter p0

    .line 151
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-wide v0

    .line 150
    .end local p0    # "this":Landroid/graphics/BitmapShader;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 190
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 191
    return-void
.end method

.method public whitelist setFilterMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 143
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-eq p1, v0, :cond_9

    .line 144
    iput p1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 145
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 147
    :cond_9
    return-void
.end method

.method protected blacklist shouldDiscardNativeInstance(Z)Z
    .registers 4
    .param p1, "filterFromPaint"    # Z

    .line 174
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    if-eq v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
