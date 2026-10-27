.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field static final greylist-max-o MAX_USBFS_BUFFER_SIZE:I = 0x4000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private greylist mBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mClientData:Ljava/lang/Object;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private greylist-max-o mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private greylist-max-o mIsUsingNewQueue:Z

.field private greylist mLength:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-r mNativeContext:J

.field private greylist-max-o mTempBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private native greylist-max-o native_cancel()Z
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_dequeue_array([BIZ)I
.end method

.method private native greylist-max-o native_dequeue_direct()I
.end method

.method private native greylist-max-o native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native greylist-max-o native_queue(Ljava/nio/ByteBuffer;II)Z
.end method

.method private native greylist-max-o native_queue_array([BIZ)Z
.end method

.method private native greylist-max-o native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public whitelist cancel()Z
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 413
    if-nez v0, :cond_6

    .line 414
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_6
    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbDeviceConnection;->cancelRequest(Landroid/hardware/usb/UsbRequest;)Z

    move-result v0

    return v0
.end method

.method blacklist cancelIfOpen()Z
    .registers 6

    .line 432
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 433
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 438
    :cond_13
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    move-result v0

    return v0

    .line 434
    :cond_18
    :goto_18
    const-string v0, "UsbRequest"

    const-string v1, "Detected attempt to cancel a request on a connection which isn\'t open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist close()V
    .registers 6

    .line 116
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 119
    iput-object v1, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 120
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    .line 121
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 123
    :cond_18
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method greylist-max-o dequeue(Z)V
    .registers 8

    .line 350
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 353
    :goto_c
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_f
    iget-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_54

    .line 355
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result p1

    .line 356
    iput-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 358
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_20

    goto/16 :goto_af

    .line 360
    :cond_20
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_32

    .line 361
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_af

    .line 363
    :cond_32
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_b5

    .line 369
    if-eqz v0, :cond_46

    .line 370
    :try_start_39
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4d

    .line 373
    :cond_46
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_50

    .line 376
    :goto_4d
    :try_start_4d
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 377
    goto :goto_af

    .line 376
    :catchall_50
    move-exception p1

    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 377
    throw p1

    .line 380
    :cond_54
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 381
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v0

    goto :goto_6d

    .line 383
    :cond_61
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v5, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-direct {p0, v3, v5, v0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    move-result v0

    .line 385
    :goto_6d
    if-ltz v0, :cond_af

    .line 386
    iget v3, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_75
    .catchall {:try_start_4d .. :try_end_75} :catchall_b5

    .line 388
    :try_start_75
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7a} :catch_7b
    .catchall {:try_start_75 .. :try_end_7a} :catchall_b5

    .line 397
    goto :goto_af

    .line 389
    :catch_7b
    move-exception v1

    .line 390
    if-eqz p1, :cond_ae

    .line 391
    :try_start_7e
    const-string p1, "UsbRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have enough space to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1

    .line 395
    :cond_ae
    throw v1

    .line 401
    :cond_af
    :goto_af
    iput-object v4, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 402
    iput v1, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 403
    monitor-exit v2

    .line 404
    return-void

    .line 403
    :catchall_b5
    move-exception p1

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_7e .. :try_end_b7} :catchall_b5

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 133
    :cond_9
    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    nop

    .line 137
    return-void

    .line 135
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    throw v0
.end method

.method public whitelist getClientData()Ljava/lang/Object;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public whitelist initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .registers 10

    .line 99
    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 100
    const-string v0, "connection"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDeviceConnection;

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 102
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    .line 103
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v6

    .line 102
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    move-result p1

    .line 105
    if-eqz p1, :cond_2b

    .line 106
    iget-object p2, v1, Landroid/hardware/usb/UsbRequest;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "UsbRequest.close"

    invoke-virtual {p2, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 109
    :cond_2b
    return p1
.end method

.method public whitelist queue(Ljava/nio/ByteBuffer;)Z
    .registers 3

    .line 270
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 271
    if-eqz v0, :cond_9

    .line 278
    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbDeviceConnection;->queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    .line 273
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist queue(Ljava/nio/ByteBuffer;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 197
    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->queueRequest(Landroid/hardware/usb/UsbRequest;Ljava/nio/ByteBuffer;I)Z

    move-result p1

    return p1

    .line 199
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invalid connection"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist queueIfConnectionOpen(Ljava/nio/ByteBuffer;)Z
    .registers 10

    .line 286
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 287
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 293
    iget-wide v1, p0, Landroid/hardware/usb/UsbRequest;->mNativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    const-string v4, "request is not initialized"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 296
    iget-boolean v1, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    xor-int/2addr v1, v2

    const-string v4, "this request is currently queued"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 298
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    if-nez v1, :cond_2e

    move v1, v2

    goto :goto_2f

    :cond_2e
    move v1, v3

    .line 301
    :goto_2f
    iget-object v4, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 302
    :try_start_32
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 304
    const/4 v5, 0x0

    if-nez p1, :cond_3e

    .line 306
    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 307
    invoke-direct {p0, v5, v3, v3}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result p1

    goto :goto_a2

    .line 309
    :cond_3e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1c

    if-ge v0, v6, :cond_57

    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const-string v6, "number of remaining bytes"

    const/16 v7, 0x4000

    invoke-static {v0, v3, v7, v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 317
    :cond_57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_62

    if-eqz v1, :cond_60

    goto :goto_62

    :cond_60
    move v0, v3

    goto :goto_63

    :cond_62
    :goto_62
    move v0, v2

    :goto_63
    const-string v6, "buffer can not be read-only when receiving data"

    invoke-static {v0, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_94

    .line 321
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 323
    if-eqz v1, :cond_92

    .line 325
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 326
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 327
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 328
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 332
    :cond_92
    iget-object p1, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 335
    :cond_94
    iput-boolean v2, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/usb/UsbRequest;->native_queue(Ljava/nio/ByteBuffer;II)Z

    move-result p1

    .line 338
    :goto_a2
    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_32 .. :try_end_a3} :catchall_ac

    .line 340
    if-nez p1, :cond_ab

    .line 341
    iput-boolean v3, p0, Landroid/hardware/usb/UsbRequest;->mIsUsingNewQueue:Z

    .line 342
    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mTempBuffer:Ljava/nio/ByteBuffer;

    .line 343
    iput-object v5, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 346
    :cond_ab
    return p1

    .line 338
    :catchall_ac
    move-exception p1

    :try_start_ad
    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p1

    .line 289
    :cond_af
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist queueIfConnectionOpen(Ljava/nio/ByteBuffer;I)Z
    .registers 7

    .line 212
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 213
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 218
    iget-object v1, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    move v1, v2

    .line 221
    :goto_16
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_29

    const/16 v0, 0x4000

    if-le p2, v0, :cond_29

    .line 223
    move p2, v0

    .line 226
    :cond_29
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_2c
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 229
    iput p2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 235
    invoke-direct {p0, p1, p2, v1}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    move-result p1

    goto :goto_49

    .line 236
    :cond_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    move-result p1

    .line 241
    :goto_49
    if-nez p1, :cond_50

    .line 242
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 243
    iput v2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 245
    :cond_50
    monitor-exit v0

    .line 247
    return p1

    .line 239
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer is not direct and has no array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2c .. :try_end_5c} :catchall_5a

    throw p1

    .line 215
    :cond_5d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invalid connection"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setClientData(Ljava/lang/Object;)V
    .registers 2

    .line 171
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    .line 172
    return-void
.end method
