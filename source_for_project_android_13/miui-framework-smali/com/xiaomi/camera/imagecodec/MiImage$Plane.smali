.class public Lcom/xiaomi/camera/imagecodec/MiImage$Plane;
.super Ljava/lang/Object;
.source "MiImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/MiImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Plane"
.end annotation


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mPixelStride:I

.field private final blacklist mRowStride:I

.field final synthetic blacklist this$0:Lcom/xiaomi/camera/imagecodec/MiImage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearBuffer(Lcom/xiaomi/camera/imagecodec/MiImage$Plane;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->clearBuffer()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/MiImage;IILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "this$0"    # Lcom/xiaomi/camera/imagecodec/MiImage;
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    .line 277
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->this$0:Lcom/xiaomi/camera/imagecodec/MiImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mRowStride:I

    .line 279
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mPixelStride:I

    .line 280
    iput-object p4, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 286
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 287
    return-void
.end method

.method private blacklist clearBuffer()V
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 305
    return-void

    .line 308
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 309
    return-void
.end method


# virtual methods
.method public blacklist getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist getPixelStride()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mPixelStride:I

    return v0
.end method

.method public blacklist getRowStride()I
    .registers 2

    .line 290
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/MiImage$Plane;->mRowStride:I

    return v0
.end method
