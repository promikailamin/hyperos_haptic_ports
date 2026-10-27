.class public final Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;
.super Ljava/lang/Object;
.source "ImageCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/media/imagecodec/ImageCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageSpec"
.end annotation


# instance fields
.field public final blacklist format:I

.field public final blacklist height:I

.field public final blacklist width:I


# direct methods
.method private constructor blacklist <init>(III)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    .line 33
    iput p2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    .line 34
    iput p3, p0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;-><init>(III)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/media/imagecodec/ImageCodec$ImageSpec;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "ImageSpec(%d, %d, %d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
