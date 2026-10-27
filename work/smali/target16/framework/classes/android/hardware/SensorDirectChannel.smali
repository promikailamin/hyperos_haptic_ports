.class public final Landroid/hardware/SensorDirectChannel;
.super Ljava/lang/Object;
.source "SensorDirectChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorDirectChannel$RateLevel;,
        Landroid/hardware/SensorDirectChannel$MemoryType;
    }
.end annotation


# static fields
.field public static final whitelist RATE_FAST:I = 0x2

.field public static final whitelist RATE_NORMAL:I = 0x1

.field public static final whitelist RATE_STOP:I = 0x0

.field public static final whitelist RATE_VERY_FAST:I = 0x3

.field public static final whitelist TYPE_HARDWARE_BUFFER:I = 0x2

.field public static final whitelist TYPE_MEMORY_FILE:I = 0x1


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mManager:Landroid/hardware/SensorManager;

.field private final greylist-max-o mNativeHandle:I

.field private final greylist-max-o mSize:J

.field private final greylist-max-o mType:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/SensorManager;IIJ)V
    .registers 7

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 194
    iput-object p1, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    .line 195
    iput p2, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    .line 196
    iput p3, p0, Landroid/hardware/SensorDirectChannel;->mType:I

    .line 197
    iput-wide p4, p0, Landroid/hardware/SensorDirectChannel;->mSize:J

    .line 198
    iget-object p1, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "SensorDirectChannel"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method static greylist-max-o encodeData(Landroid/os/MemoryFile;)[J
    .registers 6

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 217
    goto :goto_b

    .line 215
    :catch_9
    move-exception p0

    .line 216
    const/4 p0, -0x1

    .line 218
    :goto_b
    int-to-long v0, p0

    const/4 p0, 0x3

    new-array p0, p0, [J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, p0, v4

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    aput-wide v2, p0, v4

    const/4 v2, 0x2

    aput-wide v0, p0, v2

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 137
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 138
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 140
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V

    .line 142
    :cond_14
    return-void
.end method

.method public whitelist configure(Landroid/hardware/Sensor;I)I
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result p1

    return p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 228
    :cond_9
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 230
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 231
    throw v0
.end method

.method greylist-max-o getNativeHandle()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    return v0
.end method

.method public whitelist test-api isOpen()Z
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist isValid()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    return v0
.end method
