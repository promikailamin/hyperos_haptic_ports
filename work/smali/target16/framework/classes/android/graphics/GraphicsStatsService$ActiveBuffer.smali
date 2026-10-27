.class final Landroid/graphics/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/view/IGraphicsStatsCallback;

.field final blacklist mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

.field blacklist mMapping:Ljava/nio/ByteBuffer;

.field final blacklist mPid:I

.field blacklist mProcessBuffer:Landroid/os/SharedMemory;

.field final blacklist mToken:Landroid/os/IBinder;

.field final blacklist mUid:I

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    new-instance v0, Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p1

    move v2, p3

    move-object v3, p5

    move-wide v4, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicsStatsService$BufferInfo;-><init>(Landroid/graphics/GraphicsStatsService;ILjava/lang/String;JJ)V

    iput-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    .line 509
    iput v2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mUid:I

    .line 510
    iput p4, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 511
    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    .line 512
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {p1}, Landroid/view/IGraphicsStatsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    .line 513
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 515
    :try_start_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GFXStats-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p3

    invoke-static {p1, p3}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    .line 516
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_4d
    .catch Landroid/system/ErrnoException; {:try_start_28 .. :try_end_4d} :catch_4e

    .line 519
    goto :goto_53

    .line 517
    :catch_4e
    move-exception v0

    move-object p1, v0

    .line 518
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 520
    :goto_53
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 521
    iget-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmZeroData(Landroid/graphics/GraphicsStatsService;)[B

    move-result-object p3

    invoke-static {v1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p4

    invoke-virtual {p1, p3, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 522
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 526
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 527
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-static {v0, p0}, Landroid/graphics/GraphicsStatsService;->-$$Nest$mprocessDied(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    .line 528
    return-void
.end method

.method blacklist closeAllBuffers()V
    .registers 3

    .line 531
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 532
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 533
    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    .line 535
    :cond_c
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    if-eqz v0, :cond_17

    .line 536
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 537
    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    .line 539
    :cond_17
    return-void
.end method

.method blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 543
    :try_start_0
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 544
    :catch_7
    move-exception v0

    .line 545
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist readBytes([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_10

    .line 553
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 554
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 555
    return-void

    .line 551
    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SharedMemory has been deactivated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
