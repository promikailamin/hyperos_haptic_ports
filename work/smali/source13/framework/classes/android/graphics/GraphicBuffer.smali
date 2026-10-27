.class public Landroid/graphics/GraphicBuffer;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o USAGE_HW_2D:I = 0x400

.field public static final greylist-max-o USAGE_HW_COMPOSER:I = 0x800

.field public static final greylist-max-o USAGE_HW_MASK:I = 0x71f00

.field public static final greylist-max-o USAGE_HW_RENDER:I = 0x200

.field public static final greylist-max-o USAGE_HW_TEXTURE:I = 0x100

.field public static final greylist-max-o USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field public static final greylist-max-o USAGE_PROTECTED:I = 0x4000

.field public static final greylist-max-o USAGE_SOFTWARE_MASK:I = 0xff

.field public static final greylist-max-o USAGE_SW_READ_MASK:I = 0xf

.field public static final greylist-max-o USAGE_SW_READ_NEVER:I = 0x0

.field public static final greylist-max-o USAGE_SW_READ_OFTEN:I = 0x3

.field public static final greylist-max-o USAGE_SW_READ_RARELY:I = 0x2

.field public static final greylist-max-o USAGE_SW_WRITE_MASK:I = 0xf0

.field public static final greylist-max-o USAGE_SW_WRITE_NEVER:I = 0x0

.field public static final greylist-max-o USAGE_SW_WRITE_OFTEN:I = 0x30

.field public static final greylist-max-o USAGE_SW_WRITE_RARELY:I = 0x20


# instance fields
.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mDestroyed:Z

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-r mNativeObject:J

.field private greylist-max-o mSaveCount:I

.field private final greylist-max-o mUsage:I

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 290
    new-instance v0, Landroid/graphics/GraphicBuffer$1;

    invoke-direct {v0}, Landroid/graphics/GraphicBuffer$1;-><init>()V

    sput-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(IIIIJ)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "usage"    # I
    .param p5, "nativeObject"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    .line 94
    iput p2, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    .line 95
    iput p3, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    .line 96
    iput p4, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    .line 97
    iput-wide p5, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJLandroid/graphics/GraphicBuffer-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-void
.end method

.method public static greylist-max-o create(IIII)Landroid/graphics/GraphicBuffer;
    .registers 14
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "usage"    # I

    .line 81
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/GraphicBuffer;->nCreateGraphicBuffer(IIII)J

    move-result-wide v7

    .line 82
    .local v7, "nativeObject":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_16

    .line 83
    new-instance v9, Landroid/graphics/GraphicBuffer;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-object v9

    .line 85
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final blacklist createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;
    .registers 2
    .param p0, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 105
    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->nCreateFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nCreateFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;
.end method

.method private static native greylist-max-o nCreateGraphicBuffer(IIII)J
.end method

.method private static native greylist-max-o nDestroyGraphicBuffer(J)V
.end method

.method private static native blacklist nGetPixelsLuma(J[F)V
.end method

.method private static native greylist-max-o nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z
.end method

.method private static native greylist-max-o nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o destroy()V
    .registers 3

    .line 231
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    .line 233
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V

    .line 235
    :cond_c
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_9

    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 256
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 257
    nop

    .line 258
    return-void

    .line 256
    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 257
    throw v0
.end method

.method public greylist-max-o getFormat()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    return v0
.end method

.method public blacklist getPixelsLuma([F)V
    .registers 4
    .param p1, "pixels"    # [F

    .line 216
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 217
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/GraphicBuffer;->nGetPixelsLuma(J[F)V

    .line 219
    :cond_9
    return-void
.end method

.method public greylist-max-o getUsage()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    return v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    return v0
.end method

.method public greylist-max-o isDestroyed()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    return v0
.end method

.method public greylist-max-o lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/GraphicBuffer;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 173
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 174
    return-object v1

    .line 177
    :cond_6
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_11

    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    .line 181
    :cond_11
    iget-wide v2, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/graphics/GraphicBuffer;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 182
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 183
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 186
    :cond_26
    return-object v1
.end method

.method public greylist-max-o unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 202
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_19

    if-ne p1, v0, :cond_19

    .line 203
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    .line 206
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v2, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v1, v2}, Landroid/graphics/GraphicBuffer;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z

    .line 208
    :cond_19
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 277
    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_1e

    .line 282
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/GraphicBuffer;->nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V

    .line 287
    return-void

    .line 278
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GraphicBuffer has been destroyed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
