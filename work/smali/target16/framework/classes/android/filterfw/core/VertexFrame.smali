.class public Landroid/filterfw/core/VertexFrame;
.super Landroid/filterfw/core/Frame;
.source "VertexFrame.java"


# instance fields
.field private greylist-max-o vertexFrameId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 32
    const/4 p1, -0x1

    iput p1, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I

    .line 36
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result p1

    if-lez p1, :cond_27

    .line 39
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->nativeAllocate(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 43
    return-void

    .line 40
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not allocate vertex frame!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializing vertex frame with zero size!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native greylist-max-o getNativeVboId()I
.end method

.method private native greylist-max-o nativeAllocate(I)Z
.end method

.method private native greylist-max-o nativeDeallocate()Z
.end method

.method private native greylist-max-o setNativeData([BII)Z
.end method

.method private native greylist-max-o setNativeFloats([F)Z
.end method

.method private native greylist-max-o setNativeInts([I)Z
.end method


# virtual methods
.method public greylist-max-o getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getFloats()[F
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getInts()[I
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getObjectValue()Ljava/lang/Object;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getVboId()I
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/filterfw/core/VertexFrame;->getNativeVboId()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized greylist-max-o hasNativeAllocation()Z
    .registers 3

    monitor-enter p0

    .line 47
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    .line 47
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected declared-synchronized greylist-max-o releaseNativeAllocation()V
    .registers 2

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-direct {p0}, Landroid/filterfw/core/VertexFrame;->nativeDeallocate()Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 54
    monitor-exit p0

    return-void

    .line 51
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 105
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported: Cannot set vertex frame bitmap value!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setData(Ljava/nio/ByteBuffer;II)V
    .registers 6

    .line 89
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_21

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/VertexFrame;->setNativeData([BII)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 96
    return-void

    .line 94
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not set vertex frame data!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data size in setData does not match vertex frame size!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .registers 2

    .line 116
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 117
    return-void
.end method

.method public greylist-max-o setFloats([F)V
    .registers 3

    .line 76
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->setNativeFloats([F)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 80
    return-void

    .line 78
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not set int values for vertex frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setInts([I)V
    .registers 3

    .line 63
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->setNativeInts([I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 67
    return-void

    .line 65
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not set int values for vertex frame!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VertexFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with VBO ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getVboId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
