.class public Lcom/android/server/am/LmkdConnection;
.super Ljava/lang/Object;
.source "LmkdConnection.java"


# instance fields
.field public final mInputBuf:Ljava/nio/ByteBuffer;

.field public final mInputData:Ljava/io/DataInputStream;

.field public final mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

.field public mLmkdInputStream:Ljava/io/InputStream;

.field public final mLmkdInputStreamLock:Ljava/lang/Object;

.field public mLmkdOutputStream:Ljava/io/OutputStream;

.field public final mLmkdOutputStreamLock:Ljava/lang/Object;

.field public mLmkdSocket:Landroid/net/LocalSocket;

.field public final mLmkdSocketLock:Ljava/lang/Object;

.field public final mMsgQueue:Landroid/os/MessageQueue;

.field public mReplyBuf:Ljava/nio/ByteBuffer;

.field public final mReplyBufLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mfileDescriptorEventHandler(Lcom/android/server/am/LmkdConnection;Ljava/io/FileDescriptor;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/LmkdConnection;->fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V
    .registers 7

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStreamLock:Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStreamLock:Ljava/lang/Object;

    .line 105
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    const/16 v1, 0xd6

    .line 110
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    .line 113
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 126
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    .line 127
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    return-void
.end method


# virtual methods
.method public connect()Z
    .registers 8

    .line 131
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 133
    monitor-exit v0

    return v2

    :catchall_a
    move-exception p0

    goto :goto_6a

    .line 136
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/LmkdConnection;->openSocket()Landroid/net/LocalSocket;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    .line 139
    const-string p0, "ActivityManager"

    const-string v1, "Failed to connect to lowmemorykiller, retry later"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_a

    return v3

    .line 146
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 147
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_65
    .catchall {:try_start_1c .. :try_end_24} :catchall_a

    .line 153
    :try_start_24
    iget-object v6, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    if-eqz v6, :cond_3a

    invoke-interface {v6, v4}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onConnect(Ljava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 154
    const-string p0, "ActivityManager"

    const-string v2, "Failed to communicate with lowmemorykiller, retry later"

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    monitor-exit v0

    return v3

    .line 159
    :cond_3a
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStreamLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_a

    .line 160
    :try_start_3d
    iget-object v6, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStreamLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_5e

    .line 161
    :try_start_40
    iput-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 162
    iput-object v4, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 163
    iput-object v5, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 164
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_60

    .line 165
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_5e

    .line 166
    :try_start_48
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v4, Lcom/android/server/am/LmkdConnection$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/LmkdConnection$1;-><init>(Lcom/android/server/am/LmkdConnection;)V

    const/4 v5, 0x5

    invoke-virtual {v3, v1, v5, v4}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 174
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_a

    return v2

    :catchall_5e
    move-exception p0

    goto :goto_63

    :catchall_60
    move-exception p0

    .line 164
    :try_start_61
    monitor-exit v6
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw p0

    .line 165
    :goto_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_5e

    :try_start_64
    throw p0

    .line 149
    :catch_65
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 150
    monitor-exit v0

    return v3

    .line 175
    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_a

    throw p0
.end method

.method public exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 4

    if-nez p2, :cond_7

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_a
    iput-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/am/LmkdConnection;->write(Ljava/nio/ByteBuffer;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1e

    const/4 p2, 0x0

    if-eqz p1, :cond_20

    .line 331
    :try_start_13
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 332
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_20
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    if-eqz p1, :cond_20

    const/4 p2, 0x1

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_25

    :catch_20
    :cond_20
    :goto_20
    const/4 p1, 0x0

    .line 339
    :try_start_21
    iput-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 340
    monitor-exit v0

    return p2

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    throw p0
.end method

.method public final fileDescriptorEventHandler(Ljava/io/FileDescriptor;I)I
    .registers 6

    .line 180
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_d

    .line 184
    invoke-virtual {p0}, Lcom/android/server/am/LmkdConnection;->processIncomingData()V

    :cond_d
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_59

    .line 187
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter p1

    .line 189
    :try_start_14
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mMsgQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 190
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 189
    invoke-virtual {p2, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 191
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStreamLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_4e

    .line 193
    :try_start_27
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStreamLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_50

    const/4 v2, 0x0

    .line 194
    :try_start_2b
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;

    .line 195
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;

    .line 196
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    .line 197
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_52

    .line 198
    :try_start_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_50

    .line 199
    :try_start_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_4e

    .line 201
    iget-object p2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter p2

    .line 202
    :try_start_37
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_45

    .line 203
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 204
    iget-object p1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_4c

    .line 206
    :cond_45
    :goto_45
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_43

    .line 208
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    invoke-interface {p0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->onDisconnect()V

    return v0

    .line 206
    :goto_4c
    :try_start_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_43

    throw p0

    :catchall_4e
    move-exception p0

    goto :goto_57

    :catchall_50
    move-exception p0

    goto :goto_55

    :catchall_52
    move-exception p0

    .line 197
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    .line 198
    :goto_55
    monitor-exit p2
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_50

    :try_start_56
    throw p0

    .line 199
    :goto_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_4e

    throw p0

    :cond_59
    const/4 p0, 0x5

    return p0
.end method

.method public isConnected()Z
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 250
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final openSocket()Landroid/net/LocalSocket;
    .registers 4

    .line 271
    :try_start_0
    new-instance p0, Landroid/net/LocalSocket;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/LocalSocket;-><init>(I)V

    .line 272
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "lmkd"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {p0, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final processIncomingData()V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/LmkdConnection;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_7c

    .line 219
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->reset()V

    .line 220
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_66

    .line 221
    :try_start_10
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_51

    .line 222
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v4, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v2, v4, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 224
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 225
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 227
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_62

    :catchall_35
    move-exception p0

    goto :goto_64

    .line 228
    :cond_37
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-interface {v2, v3, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result v2

    if-nez v2, :cond_62

    const/4 v2, 0x0

    .line 231
    iput-object v2, p0, Lcom/android/server/am/LmkdConnection;->mReplyBuf:Ljava/nio/ByteBuffer;

    .line 232
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mReplyBufLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 233
    const-string p0, "ActivityManager"

    const-string v2, "Received an unexpected packet from lmkd"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 235
    :cond_51
    iget-object v2, p0, Lcom/android/server/am/LmkdConnection;->mListener:Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;

    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mInputData:Ljava/io/DataInputStream;

    invoke-interface {v2, p0, v0}, Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;->handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z

    move-result p0

    if-nez p0, :cond_62

    .line 238
    const-string p0, "ActivityManager"

    const-string v2, "Received an unexpected packet from lmkd"

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_62
    :goto_62
    monitor-exit v1

    return-void

    :goto_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_10 .. :try_end_65} :catchall_35

    :try_start_65
    throw p0
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_66} :catch_66

    .line 242
    :catch_66
    const-string p0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse lmkd data buffer. Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdInputStream:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz p0, :cond_18

    .line 304
    :try_start_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length p1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_18
    .catchall {:try_start_7 .. :try_end_15} :catchall_16

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :catch_18
    :cond_18
    const/4 p0, -0x1

    .line 308
    :goto_19
    :try_start_19
    monitor-exit v0

    return p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public waitForConnection(J)Z
    .registers 7

    .line 254
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 256
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return v2

    :catchall_a
    move-exception p0

    goto :goto_1c

    :cond_c
    const/4 v1, 0x0

    .line 259
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocketLock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 260
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdSocket:Landroid/net/LocalSocket;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_1a
    .catchall {:try_start_d .. :try_end_14} :catchall_a

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    :try_start_18
    monitor-exit v0

    return v2

    .line 262
    :catch_1a
    monitor-exit v0

    return v1

    .line 264
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_a

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)Z
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/LmkdConnection;->mLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    const/4 v1, 0x0

    if-eqz p0, :cond_17

    .line 288
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_17
    .catchall {:try_start_8 .. :try_end_13} :catchall_15

    const/4 v1, 0x1

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 293
    :catch_17
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return v1

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_15

    throw p0
.end method
