.class Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final blacklist mAddressFamily:I

.field protected final blacklist mDeadlineTime:J

.field protected blacklist mFileDescriptor:Ljava/io/FileDescriptor;

.field protected final blacklist mInterfaceIndex:Ljava/lang/Integer;

.field protected blacklist mNetwork:Landroid/net/Network;

.field protected blacklist mSocketAddress:Ljava/net/SocketAddress;

.field protected final blacklist mSource:Ljava/net/InetAddress;

.field protected final blacklist mTarget:Ljava/net/InetAddress;


# direct methods
.method protected constructor blacklist <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .registers 13
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "timeoutMs"    # J

    .line 149
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    .line 150
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V
    .registers 11
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "source"    # Ljava/net/InetAddress;
    .param p4, "target"    # Ljava/net/InetAddress;
    .param p5, "timeoutMs"    # J

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mNetwork:Landroid/net/Network;

    .line 121
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-$$Nest$smnow()J

    move-result-wide v0

    add-long/2addr v0, p5

    iput-wide v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mDeadlineTime:J

    .line 122
    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    .line 123
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/securitycenter/net/NetworkDiagnostics;->-$$Nest$smgetInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    goto :goto_1c

    .line 125
    :cond_1a
    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    .line 127
    :goto_1c
    instance-of v1, p4, Ljava/net/Inet6Address;

    if-eqz v1, :cond_50

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    if-eqz v2, :cond_44

    .line 131
    nop

    .line 132
    :try_start_2c
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iget-object v3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mInterfaceIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 131
    invoke-static {v0, v2, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0
    :try_end_3a
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_3a} :catch_3c

    move-object v1, v0

    .line 135
    goto :goto_44

    .line 133
    :catch_3c
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "NetworkDiagnostics"

    const-string v3, "SimpleSocketCheck"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_44
    :goto_44
    if-eqz v1, :cond_48

    move-object v0, v1

    goto :goto_49

    :cond_48
    move-object v0, p4

    :goto_49
    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 138
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 139
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    goto :goto_56

    .line 140
    :cond_50
    iput-object p4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 141
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 145
    :goto_56
    iput-object p3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 181
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 182
    return-void
.end method

.method protected blacklist getSocketAddressString()Ljava/lang/String;
    .registers 7

    .line 172
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 173
    .local v0, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 175
    .local v1, "localAddr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_f

    const-string v2, "[%s]:%d"

    goto :goto_11

    :cond_f
    const-string v2, "%s:%d"

    :goto_11
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 174
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected blacklist setupSocket(IIJJI)V
    .registers 12
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v0, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 157
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 158
    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 157
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 159
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 160
    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 159
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 162
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 163
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    if-eqz v0, :cond_31

    .line 164
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 166
    :cond_31
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v0, v1, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 167
    iget-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    .line 168
    return-void
.end method
