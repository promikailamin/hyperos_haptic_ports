.class public Lcom/miui/whetstone/steganography/DecodedObject;
.super Ljava/lang/Object;
.source "DecodedObject.java"


# instance fields
.field private final blacklist bytes:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/whetstone/steganography/DecodedObject;->bytes:[B

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist intoByteArray()[B
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/miui/whetstone/steganography/DecodedObject;->bytes:[B

    return-object v0
.end method

.method public blacklist intoFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist intoFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/steganography/DecodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist intoString()Ljava/lang/String;
    .registers 3

    .line 23
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/whetstone/steganography/DecodedObject;->bytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
