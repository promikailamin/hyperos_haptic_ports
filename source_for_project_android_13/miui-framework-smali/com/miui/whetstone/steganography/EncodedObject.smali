.class public Lcom/miui/whetstone/steganography/EncodedObject;
.super Ljava/lang/Object;
.source "EncodedObject.java"


# instance fields
.field private final blacklist bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist intoBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist intoFile(Ljava/io/File;)Ljava/io/File;
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/miui/whetstone/steganography/EncodedObject;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 37
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 38
    .local v1, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 41
    return-object p1
.end method

.method public blacklist intoFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
