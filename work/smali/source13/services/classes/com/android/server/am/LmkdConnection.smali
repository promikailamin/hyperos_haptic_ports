.class public Lcom/android/server/am/LmkdConnection;
.super Ljava/lang/Object;
.source "LmkdConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;
    }
.end annotation


# static fields
.field private static final LMKD_REPLY_MAX_SIZE:I = 0xde

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mInputBuf:Ljava/nio/ByteBuffer;

.field private final mInputData:Ljava/io/DataInputStream;

.field private final mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

.field private mLmkdInputStream:Ljava/io/InputStream;

.field private mLmkdOutputStream:Ljava/io/OutputStream;

.field private mLmkdSocket:Landroid/net/LocalSocket;

.field private final mLmkdSocketLock:Ljava/lang/Object;

.field private final mMsgQueue:Landroid/os/MessageQueue;

.field private mReplyBuf:Ljava/nio/ByteBuffer;

.field private final mReplyBufLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mfileDescriptorEventHandler(Lcom/android/server/am/LmkdConnection;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/LmkdConnection;->fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V
    .registers 7
    .param p1, "msgQueue"    # Landroid/os/MessageQueue;
    .param p2, "listener"    # Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 95
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 97
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 101
    nop

    .line 102
    const/16 v1, 0xde

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 105
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 106
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 118
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 119
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    .line 120
    return-void
.end method

.method private fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 168
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 169
    return v1

    .line 171
    :cond_6
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_d

    .line 172
    invoke-direct {p0}, Lcom/android/server/am/LmkdConnection;->processIncomingData()V

    .line 174
    :cond_d
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_43

    .line 175
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_14
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 178
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 179
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 181
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_40

    .line 183
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_36

    .line 185
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 186
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    :cond_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3d

    .line 190
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    invoke-interface {v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onDisconnect()V

    .line 191
    return v1

    .line 188
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 181
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1

    .line 193
    :cond_43
    const/4 v0, 0x5

    return v0
.end method

.method private openSocket()Landroid/net/LocalSocket;
    .registers 5

    .line 253
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    .line 254
    .local v0, "socket":Landroid/net/LocalSocket;
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 260
    nop

    .line 261
    return-object v0

    .line 257
    .end local v0    # "socket":Landroid/net/LocalSocket;
    :catch_15
    move-exception v0

    .line 258
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    return-object v1
.end method

.method private processIncomingData()V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/LmkdConnection;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 198
    .local v0, "len":I
    if-lez v0, :cond_7e

    .line 201
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->reset()V

    .line 202
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_65

    .line 203
    :try_start_10
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_4f

    .line 204
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v2, v4, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 206
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 209
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_60

    .line 210
    :cond_35
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-interface {v2, v3, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result v2

    if-nez v2, :cond_60

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 214
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 215
    const-string v2, "ActivityManager"

    const-string v3, "Received an unexpected packet from lmkd"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 217
    :cond_4f
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-interface {v2, v3, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result v2

    if-nez v2, :cond_60

    .line 220
    const-string v2, "ActivityManager"

    const-string v3, "Received an unexpected packet from lmkd"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_60
    :goto_60
    monitor-exit v1

    .line 225
    goto :goto_7e

    .line 222
    :catchall_62
    move-exception v2

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_10 .. :try_end_64} :catchall_62

    .end local v0    # "len":I
    .end local p0    # "this":Lcom/android/server/am/LmkdConnection;
    :try_start_64
    throw v2
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_65} :catch_65

    .line 223
    .restart local v0    # "len":I
    .restart local p0    # "this":Lcom/android/server/am/LmkdConnection;
    :catch_65
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse lmkd data buffer. Size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7e
    :goto_7e
    return-void
.end method

.method private read(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 276
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_17
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v0

    return v1

    .line 282
    :catchall_15
    move-exception v1

    goto :goto_1b

    .line 279
    :catch_17
    move-exception v1

    .line 281
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 282
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_15

    throw v1
.end method

.method private write(Ljava/nio/ByteBuffer;)Z
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 265
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_17
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 270
    nop

    .line 271
    const/4 v1, 0x1

    :try_start_13
    monitor-exit v0

    return v1

    .line 272
    :catchall_15
    move-exception v1

    goto :goto_1a

    .line 268
    :catch_17
    move-exception v2

    .line 269
    .local v2, "ex":Ljava/io/IOException;
    monitor-exit v0

    return v1

    .line 272
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_15

    throw v1
.end method


# virtual methods
.method public connect()Z
    .registers 10

    .line 123
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 125
    monitor-exit v0

    return v2

    .line 128
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/LmkdConnection;->openSocket()Landroid/net/LocalSocket;

    move-result-object v1

    .line 130
    .local v1, "socket":Landroid/net/LocalSocket;
    const/4 v3, 0x0

    if-nez v1, :cond_1a

    .line 131
    const-string v2, "ActivityManager"

    const-string v4, "Failed to connect to lowmemorykiller, retry later"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_5b

    return v3

    .line 138
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 139
    .local v4, "ostream":Ljava/io/OutputStream;
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_55
    .catchall {:try_start_1a .. :try_end_22} :catchall_5b

    .line 143
    .local v5, "istream":Ljava/io/InputStream;
    nop

    .line 145
    :try_start_23
    iget-object v6, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    if-eqz v6, :cond_39

    invoke-interface {v6, v4}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onConnect(Ljava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 146
    const-string v2, "ActivityManager"

    const-string v6, "Failed to communicate with lowmemorykiller, retry later"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    monitor-exit v0

    return v3

    .line 151
    :cond_39
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 152
    iput-object v4, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 153
    iput-object v5, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 154
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x5

    new-instance v8, Lcom/android/server/am/LmkdConnection$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/LmkdConnection$1;-><init>(Lcom/android/server/am/LmkdConnection;)V

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 162
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 163
    .end local v1    # "socket":Landroid/net/LocalSocket;
    .end local v4    # "ostream":Ljava/io/OutputStream;
    .end local v5    # "istream":Ljava/io/InputStream;
    monitor-exit v0

    .line 164
    return v2

    .line 140
    .restart local v1    # "socket":Landroid/net/LocalSocket;
    :catch_55
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 142
    monitor-exit v0

    return v3

    .line 163
    .end local v1    # "socket":Landroid/net/LocalSocket;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 6
    .param p1, "req"    # Ljava/nio/ByteBuffer;
    .param p2, "repl"    # Ljava/nio/ByteBuffer;

    .line 292
    if-nez p2, :cond_7

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0

    .line 296
    :cond_7
    const/4 v0, 0x0

    .line 298
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_b
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 301
    invoke-direct {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_28

    if-eqz v2, :cond_23

    .line 304
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 305
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_21
    .catchall {:try_start_13 .. :try_end_1a} :catchall_28

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    move v0, v2

    .line 308
    goto :goto_23

    .line 306
    :catch_21
    move-exception v2

    .line 307
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 312
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_23
    :goto_23
    const/4 v2, 0x0

    :try_start_24
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 313
    monitor-exit v1

    .line 314
    return v0

    .line 313
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public isConnected()Z
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 232
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public waitForConnection(J)Z
    .registers 7
    .param p1, "timeoutMs"    # J

    .line 236
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 238
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    return v2

    .line 241
    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 242
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_18
    .catchall {:try_start_b .. :try_end_12} :catchall_1b

    if-eqz v3, :cond_15

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    :try_start_16
    monitor-exit v0

    return v2

    .line 243
    :catch_18
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/InterruptedException;
    monitor-exit v0

    return v1

    .line 246
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v1
.end method
