.class final Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;
.super Ljava/lang/Object;
.source "VirtualSensorDirectChannelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedMemoryWrapper"
.end annotation


# static fields
.field private static final blacklist MAXIMUM_NUMBER_OF_SENSOR_VALUES:I = 0x10

.field private static final blacklist SENSOR_EVENT_SIZE:I = 0x68


# instance fields
.field private final blacklist mEventBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mMemoryMapping:Ljava/nio/ByteBuffer;

.field private final blacklist mSharedMemory:Landroid/os/SharedMemory;

.field private final blacklist mWriteLock:Ljava/lang/Object;

.field private blacklist mWriteOffset:I


# direct methods
.method constructor blacklist <init>(Landroid/os/SharedMemory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteOffset:I

    .line 226
    nop

    .line 227
    const/16 v0, 0x68

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteLock:Ljava/lang/Object;

    .line 233
    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mSharedMemory:Landroid/os/SharedMemory;

    .line 234
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mMemoryMapping:Ljava/nio/ByteBuffer;

    .line 235
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 236
    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 3

    .line 239
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist write(IIJLandroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .registers 12

    .line 245
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x68

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 248
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 249
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 250
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    const-wide v4, 0xffffffffL

    and-long p2, p3, v4

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 251
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getTimestampNanos()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 253
    move p1, v2

    :goto_31
    const/16 p2, 0x10

    if-ge p1, p2, :cond_51

    .line 254
    invoke-virtual {p5}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getValues()[F

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_48

    .line 255
    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getValues()[F

    move-result-object p3

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_4e

    .line 257
    :cond_48
    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 253
    :goto_4e
    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 260
    :cond_51
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 262
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mMemoryMapping:Ljava/nio/ByteBuffer;

    iget p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteOffset:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    iget-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mMemoryMapping:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mEventBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 265
    iget p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteOffset:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteOffset:I

    .line 266
    iget p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteOffset:I

    add-int/2addr p1, v3

    iget-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p2}, Landroid/os/SharedMemory;->getSize()I

    move-result p2

    if-lt p1, p2, :cond_7a

    .line 267
    iput v2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->mWriteOffset:I

    .line 269
    :cond_7a
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_7c
    move-exception p1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw p1
.end method
