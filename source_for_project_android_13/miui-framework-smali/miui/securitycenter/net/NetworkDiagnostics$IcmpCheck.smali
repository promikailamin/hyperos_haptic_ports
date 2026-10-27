.class Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
.super Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final blacklist ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final blacklist ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final blacklist PACKET_BUFSIZE:I = 0x200

.field private static final blacklist TIMEOUT_RECV:I = 0x12c

.field private static final blacklist TIMEOUT_SEND:I = 0x64


# instance fields
.field private final blacklist mIcmpType:I

.field private final blacklist mProtocol:I


# direct methods
.method public constructor blacklist <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .registers 13
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "timeoutMs"    # J

    .line 208
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    .line 209
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "target"    # Ljava/net/InetAddress;
    .param p5, "timeoutMs"    # J

    .line 196
    invoke-direct/range {p0 .. p6}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    .line 198
    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_12

    .line 199
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 200
    const/16 v0, 0x80

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    goto :goto_1a

    .line 202
    :cond_12
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 203
    const/16 v0, 0x8

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 205
    :goto_1a
    return-void
.end method


# virtual methods
.method public blacklist call()Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    const-string v0, "IcmpCheck"

    const-string v1, "NetworkDiagnostics"

    const/4 v2, 0x0

    .line 214
    .local v2, "ret":Z
    :try_start_5
    sget v4, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v5, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x12c

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_12} :catch_65
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_65

    .line 218
    nop

    .line 221
    const/16 v3, 0x8

    new-array v3, v3, [B

    iget v4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v5, v3, v4

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    const/4 v6, 0x3

    aput-byte v5, v3, v6

    const/4 v6, 0x4

    aput-byte v5, v3, v6

    const/4 v6, 0x5

    aput-byte v5, v3, v6

    const/4 v6, 0x6

    aput-byte v5, v3, v6

    const/4 v6, 0x7

    aput-byte v5, v3, v6

    .line 225
    .local v3, "icmpPacket":[B
    const/4 v6, 0x0

    .line 226
    .local v6, "count":I
    :goto_33
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-$$Nest$smnow()J

    move-result-wide v7

    iget-wide v9, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mDeadlineTime:J

    const-wide/16 v11, 0x190

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_61

    .line 227
    add-int/lit8 v6, v6, 0x1

    .line 228
    array-length v7, v3

    sub-int/2addr v7, v4

    int-to-byte v8, v6

    aput-byte v8, v3, v7

    .line 230
    :try_start_47
    iget-object v7, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v8, v3

    invoke-static {v7, v3, v5, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_4d
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_4d} :catch_5d
    .catch Ljava/io/InterruptedIOException; {:try_start_47 .. :try_end_4d} :catch_5d

    .line 234
    nop

    .line 237
    const/16 v7, 0x200

    :try_start_50
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 238
    .local v7, "reply":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v8, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_59
    .catch Landroid/system/ErrnoException; {:try_start_50 .. :try_end_59} :catch_5b
    .catch Ljava/io/InterruptedIOException; {:try_start_50 .. :try_end_59} :catch_5b

    .line 240
    const/4 v2, 0x1

    .line 241
    goto :goto_61

    .line 242
    .end local v7    # "reply":Ljava/nio/ByteBuffer;
    :catch_5b
    move-exception v7

    .line 243
    .local v7, "e":Ljava/lang/Exception;
    goto :goto_33

    .line 231
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5d
    move-exception v4

    .line 232
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    invoke-virtual {p0}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->close()V

    .line 248
    return v2

    .line 215
    .end local v3    # "icmpPacket":[B
    .end local v6    # "count":I
    :catch_65
    move-exception v3

    .line 216
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    return v2
.end method
