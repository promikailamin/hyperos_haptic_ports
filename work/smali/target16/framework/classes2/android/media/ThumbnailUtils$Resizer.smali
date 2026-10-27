.class Landroid/media/ThumbnailUtils$Resizer;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ThumbnailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resizer"
.end annotation


# instance fields
.field private final blacklist signal:Landroid/os/CancellationSignal;

.field private final blacklist size:Landroid/util/Size;


# direct methods
.method public constructor blacklist <init>(Landroid/util/Size;Landroid/os/CancellationSignal;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/media/ThumbnailUtils$Resizer;->size:Landroid/util/Size;

    .line 89
    iput-object p2, p0, Landroid/media/ThumbnailUtils$Resizer;->signal:Landroid/os/CancellationSignal;

    .line 90
    return-void
.end method


# virtual methods
.method public whitelist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    .line 95
    iget-object p3, p0, Landroid/media/ThumbnailUtils$Resizer;->signal:Landroid/os/CancellationSignal;

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroid/media/ThumbnailUtils$Resizer;->signal:Landroid/os/CancellationSignal;

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 99
    :cond_9
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 103
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/media/ThumbnailUtils$Resizer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 104
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object v1, p0, Landroid/media/ThumbnailUtils$Resizer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/2addr p2, v1

    .line 105
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 106
    if-le p2, p3, :cond_34

    .line 107
    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 109
    :cond_34
    return-void
.end method
