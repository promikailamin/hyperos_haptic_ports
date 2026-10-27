.class Lcom/android/server/clipboard/EmulatorClipboardMonitor;
.super Ljava/lang/Object;
.source "EmulatorClipboardMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/content/ClipData;",
        ">;"
    }
.end annotation


# static fields
.field private static final HOST_PORT:I = 0x1388

.field private static final LOG_CLIBOARD_ACCESS:Z

.field private static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"

.field private static final TAG:Ljava/lang/String; = "EmulatorClipboardMonitor"


# instance fields
.field private final mHostMonitorThread:Ljava/lang/Thread;

.field private mPipe:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    nop

    .line 46
    const-string/jumbo v0, "ro.boot.qemu.log_clipboard_access"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "setAndroidClipboard":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/ClipData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mHostMonitorThread:Ljava/lang/Thread;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    return-void
.end method

.method private static createOpenHandshake()[B
    .registers 3

    .line 54
    const-string/jumbo v0, "pipe:clipboard"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 55
    .local v1, "bits":[B
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 56
    return-object v1
.end method

.method private getClipString(Landroid/content/ClipData;)Ljava/lang/String;
    .registers 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 179
    const-string v0, ""

    if-nez p1, :cond_5

    .line 180
    return-object v0

    .line 183
    :cond_5
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 184
    return-object v0

    .line 187
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 188
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_18

    .line 189
    return-object v0

    .line 192
    :cond_18
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPipeFD()Ljava/io/FileDescriptor;
    .registers 2

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 60
    .end local p0    # "this":Lcom/android/server/clipboard/EmulatorClipboardMonitor;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$setHostClipboard$1(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 197
    sget-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    const-string v1, "EmulatorClipboardMonitor"

    if-eqz v0, :cond_22

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the host clipboard to \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->sendMessage(Ljava/io/FileDescriptor;[B)V
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_29} :catch_2c
    .catch Ljava/io/InterruptedIOException; {:try_start_22 .. :try_end_29} :catch_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_47

    .line 205
    :catch_2a
    move-exception v0

    goto :goto_48

    .line 203
    :catch_2c
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set host clipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    nop

    .line 207
    :goto_48
    return-void
.end method

.method private static openPipe()Ljava/io/FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 92
    .local v0, "fd":Ljava/io/FileDescriptor;
    :goto_4
    if-nez v0, :cond_10

    .line 93
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 94
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_4

    .line 97
    :cond_10
    return-object v0
.end method

.method private static openPipeImpl()Ljava/io/FileDescriptor;
    .registers 5

    .line 69
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_VSOCK:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_23

    .line 72
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_9
    new-instance v1, Landroid/system/VmSocketAddress;

    const/16 v3, 0x1388

    sget v4, Landroid/system/OsConstants;->VMADDR_CID_HOST:I

    invoke-direct {v1, v3, v4}, Landroid/system/VmSocketAddress;-><init>(II)V

    invoke-static {v0, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 74
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->createOpenHandshake()[B

    move-result-object v1

    .line 75
    .local v1, "handshake":[B
    array-length v3, v1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_1d} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_1d} :catch_1e
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 76
    return-object v0

    .line 77
    .end local v1    # "handshake":[B
    :catch_1e
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_22} :catch_23

    .line 81
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_24

    .line 80
    :catch_23
    move-exception v0

    .line 83
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readFully(Ljava/io/FileDescriptor;[BII)V
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 214
    :goto_0
    if-lez p3, :cond_11

    .line 215
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 216
    .local v0, "r":I
    if-lez v0, :cond_b

    .line 217
    add-int/2addr p2, v0

    .line 218
    sub-int/2addr p3, v0

    .line 222
    .end local v0    # "r":I
    goto :goto_0

    .line 220
    .restart local v0    # "r":I
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 223
    .end local v0    # "r":I
    :cond_11
    return-void
.end method

.method private static receiveMessage(Ljava/io/FileDescriptor;)[B
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 103
    .local v0, "lengthBits":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->readFully(Ljava/io/FileDescriptor;[BII)V

    .line 105
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 106
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 109
    .local v3, "msgLen":I
    new-array v4, v3, [B

    .line 110
    .local v4, "msg":[B
    array-length v5, v4

    invoke-static {p0, v4, v2, v5}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->readFully(Ljava/io/FileDescriptor;[BII)V

    .line 112
    return-object v4
.end method

.method private static sendMessage(Ljava/io/FileDescriptor;[B)V
    .registers 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 119
    .local v0, "lengthBits":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 120
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v2}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V

    .line 124
    array-length v2, p1

    invoke-static {p0, p1, v3, v2}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V

    .line 125
    return-void
.end method

.method private static setHostClipboard(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "value"    # Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method

.method private declared-synchronized setPipeFD(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    monitor-enter p0

    .line 64
    :try_start_1
    iput-object p1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 65
    monitor-exit p0

    return-void

    .line 63
    .end local p0    # "this":Lcom/android/server/clipboard/EmulatorClipboardMonitor;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static writeFully(Ljava/io/FileDescriptor;[BII)V
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 228
    :goto_0
    if-lez p3, :cond_16

    .line 229
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 230
    .local v0, "r":I
    if-lez v0, :cond_b

    .line 231
    add-int/2addr p2, v0

    .line 232
    sub-int/2addr p3, v0

    .line 236
    .end local v0    # "r":I
    goto :goto_0

    .line 234
    .restart local v0    # "r":I
    :cond_b
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->EIO:I

    const-string/jumbo v3, "write"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 237
    .end local v0    # "r":I
    :cond_16
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/ClipData;)V
    .registers 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 172
    invoke-direct {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->getPipeFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 173
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_d

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->getClipString(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setHostClipboard(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 176
    :cond_d
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 40
    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->accept(Landroid/content/ClipData;)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-server-clipboard-EmulatorClipboardMonitor(Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "setAndroidClipboard"    # Ljava/util/function/Consumer;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "fd":Ljava/io/FileDescriptor;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_72

    .line 133
    if-nez v0, :cond_11

    .line 134
    :try_start_9
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipe()Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 135
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setPipeFD(Ljava/io/FileDescriptor;)V

    .line 138
    :cond_11
    invoke-static {v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->receiveMessage(Ljava/io/FileDescriptor;)[B

    move-result-object v1

    .line 140
    .local v1, "receivedData":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 141
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Landroid/content/ClipData;

    const-string/jumbo v4, "host clipboard"

    const-string/jumbo v5, "text/plain"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v3, v4, v5, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 144
    .local v3, "clip":Landroid/content/ClipData;
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 145
    .local v4, "bundle":Landroid/os/PersistableBundle;
    const-string v5, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 148
    sget-boolean v5, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    if-eqz v5, :cond_62

    .line 149
    const-string v5, "EmulatorClipboardMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting the guest clipboard to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_62
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_65} :catch_66
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_65} :catch_66
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_65} :catch_66
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_65} :catch_66

    .end local v1    # "receivedData":[B
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "clip":Landroid/content/ClipData;
    .end local v4    # "bundle":Landroid/os/PersistableBundle;
    goto :goto_71

    .line 152
    :catch_66
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setPipeFD(Ljava/io/FileDescriptor;)V

    .line 157
    :try_start_6b
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6e
    .catch Landroid/system/ErrnoException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 160
    goto :goto_70

    .line 158
    :catch_6f
    move-exception v2

    .line 162
    :goto_70
    const/4 v0, 0x0

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_71
    goto :goto_1

    .line 165
    :cond_72
    return-void
.end method
