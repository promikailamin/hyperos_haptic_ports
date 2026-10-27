.class public Lcom/android/server/companion/transport/SecureTransport;
.super Lcom/android/server/companion/transport/Transport;
.source "SecureTransport.java"

# interfaces
.implements Lcom/android/server/companion/securechannel/SecureChannel$Callback;


# instance fields
.field public final mRequestQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

.field public volatile mShouldProcessRequests:Z


# direct methods
.method public static synthetic $r8$lambda$NpzH_C9jUjEknX6CvYQb4u1741I(Lcom/android/server/companion/transport/SecureTransport;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->lambda$onSecureConnection$0()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;I)V
    .registers 11

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 40
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 44
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannel;

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;Landroid/content/Context;I)V

    iput-object v0, v3, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V
    .registers 14

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;-><init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 40
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 50
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannel;

    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    iput-object v0, v3, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 76
    invoke-super {p0}, Lcom/android/server/companion/transport/Transport;->close()V

    return-void
.end method

.method public final establishSecureConnection()V
    .registers 4

    .line 112
    const-string v0, "Establishing secure connection."

    const-string v1, "CDM_CompanionTransport"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_7
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v0}, Lcom/android/server/companion/securechannel/SecureChannel;->establishSecureConnection()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 116
    const-string v2, "Failed to initiate secure channel handshake."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/companion/transport/SecureTransport;->translateError(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/transport/Transport;->eventCallback(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    return-void
.end method

.method public final synthetic lambda$onSecureConnection$0()V
    .registers 4

    .line 142
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    if-eqz v0, :cond_25

    .line 144
    :try_start_4
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 145
    iget-object v1, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendSecureMessage([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_0

    :catch_12
    move-exception v0

    .line 147
    const-string v1, "CDM_CompanionTransport"

    const-string v2, "Failed to send secure message."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/companion/transport/SecureTransport;->translateError(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/transport/Transport;->eventCallback(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    goto :goto_0

    :cond_25
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 176
    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Secure transport encountered an error."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/SecureTransport;->translateError(Ljava/lang/Throwable;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/Transport;->eventCallback(I)V

    .line 180
    iget-object p1, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {p1}, Lcom/android/server/companion/securechannel/SecureChannel;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 181
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    :cond_19
    return-void
.end method

.method public onSecureConnection()V
    .registers 3

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    .line 138
    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Secure connection established."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/transport/SecureTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/transport/SecureTransport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/16 v0, 0xc8

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/server/companion/transport/Transport;->eventCallback(I)V

    return-void
.end method

.method public onSecureMessageReceived([B)V
    .registers 5

    .line 158
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 162
    new-array v2, v2, [B

    .line 163
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 166
    :try_start_15
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/SecureTransport;->translateError(Ljava/lang/Throwable;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/Transport;->eventCallback(I)V

    return-void
.end method

.method public sendMessage(II[B)V
    .registers 7

    .line 83
    iget-boolean v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mShouldProcessRequests:Z

    if-nez v0, :cond_7

    .line 84
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->establishSecureConnection()V

    .line 87
    :cond_7
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    const-string v1, "CDM_CompanionTransport"

    if-eqz v0, :cond_40

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queueing message 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sequence "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to association "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/android/server/companion/transport/SecureTransport;->mRequestQueue:Ljava/util/concurrent/BlockingQueue;

    array-length v2, p3

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 96
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 97
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v2, p3

    .line 98
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 99
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 95
    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p2

    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to queue message 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " . Request buffer is full; detaching transport."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/companion/transport/SecureTransport;->translateError(Ljava/lang/Throwable;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/Transport;->eventCallback(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    return-void
.end method

.method public start()V
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureTransport{mAssociationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSecureChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final translateError(Ljava/lang/Throwable;)I
    .registers 2

    .line 126
    instance-of p0, p1, Lcom/android/server/companion/securechannel/AttestationVerificationException;

    if-eqz p0, :cond_11

    .line 127
    check-cast p1, Lcom/android/server/companion/securechannel/AttestationVerificationException;

    invoke-virtual {p1}, Lcom/android/server/companion/securechannel/AttestationVerificationException;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-lez p0, :cond_11

    const/16 p0, 0x1ab

    return p0

    :cond_11
    const/16 p0, 0x1f4

    return p0
.end method
