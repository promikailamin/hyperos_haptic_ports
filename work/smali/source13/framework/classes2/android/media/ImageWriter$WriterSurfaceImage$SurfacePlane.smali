.class Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter$WriterSurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mPixelStride:I

.field private final greylist-max-o mRowStride:I

.field final synthetic blacklist this$0:Landroid/media/ImageWriter$WriterSurfaceImage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearBuffer(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/ImageWriter$WriterSurfaceImage;IILjava/nio/ByteBuffer;)V
    .registers 5
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1291
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1292
    iput p2, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    .line 1293
    iput p3, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    .line 1294
    iput-object p4, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1300
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1301
    return-void
.end method

.method private greylist-max-o clearBuffer()V
    .registers 2

    .line 1324
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 1325
    return-void

    .line 1328
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1329
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 1331
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1332
    return-void
.end method


# virtual methods
.method public whitelist getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1317
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1318
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getPixelStride()I
    .registers 2

    .line 1311
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1312
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    return v0
.end method

.method public whitelist getRowStride()I
    .registers 2

    .line 1305
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1306
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    return v0
.end method
