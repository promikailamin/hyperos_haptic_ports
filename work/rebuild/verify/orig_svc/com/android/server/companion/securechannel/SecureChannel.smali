.class public Lcom/android/server/companion/securechannel/SecureChannel;
.super Ljava/lang/Object;
.source "SecureChannel.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAlias:Ljava/lang/String;

.field public final mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

.field public mClientInit:[B

.field public mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

.field public final mFlags:I

.field public mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

.field public final mHandshakeLock:Ljava/lang/Object;

.field public volatile mInProgress:Z

.field public final mInput:Ljava/io/InputStream;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPreSharedKey:[B

.field public mPskVerified:Z

.field public mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

.field public volatile mStopped:Z

.field public mVerificationResult:I

.field public final mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;


# direct methods
.method public static synthetic $r8$lambda$iCAm1ptJuD73fs84njR5KGHZPAU(Lcom/android/server/companion/securechannel/SecureChannel;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->lambda$start$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 53
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;Landroid/content/Context;I)V
    .registers 13

    .line 116
    new-instance v5, Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-direct {v5, p4, p5}, Lcom/android/server/companion/securechannel/AttestationVerifier;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/companion/securechannel/SecureChannel;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/securechannel/SecureChannel$Callback;[BLcom/android/server/companion/securechannel/AttestationVerifier;I)V
    .registers 8

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    .line 128
    iput-object p2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    .line 129
    iput-object p3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    .line 130
    iput-object p4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 131
    iput-object p5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    .line 132
    iput p6, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mFlags:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 187
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->stop()V

    .line 189
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 190
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Closing secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_e
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->cleanUp(Ljava/lang/String;)V

    return-void
.end method

.method public final compareByteArray([B[B)I
    .registers 6

    const/4 p0, 0x0

    if-ne p1, p2, :cond_4

    return p0

    .line 603
    :cond_4
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_c

    .line 604
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0

    :cond_c
    move v0, p0

    .line 606
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 607
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_18

    sub-int/2addr v1, v2

    return v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    return p0
.end method

.method public final completeHandshake([B)V
    .registers 5

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->handleHandshakeCollision([B)[B

    move-result-object p1

    .line 435
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_4b

    .line 436
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 437
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->forResponder()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 440
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 441
    const-string v2, "Receiving Ukey2 Client Init message"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1d
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v2, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_29

    .line 447
    const-string p1, "Sending Ukey2 Server Init message"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_29
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 450
    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->constructHandshakeInitMessage([B)[B

    move-result-object v2

    .line 449
    invoke-virtual {p0, p1, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    if-eqz v0, :cond_3f

    .line 454
    const-string p1, "Receiving Ukey2 Client Finish message"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_3f
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    goto :goto_6b

    .line 460
    :cond_4b
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_54

    .line 461
    const-string v2, "Receiving Ukey2 Server Init message"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_54
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v2, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_60

    .line 467
    const-string p1, "Sending Ukey2 Client Finish message"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_60
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 473
    :goto_6b
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->isHandshakeComplete()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 474
    sget-boolean p1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz p1, :cond_7c

    .line 475
    const-string p1, "Ukey2 Handshake completed successfully"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_7c
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    return-void

    .line 479
    :cond_85
    const-string p0, "Failed to complete Ukey2 Handshake"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ukey2 Handshake did not complete as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final constructHandshakeInitMessage([B)[B
    .registers 4

    .line 580
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 581
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-virtual {v1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 582
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 583
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B
    .registers 5

    .line 588
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 589
    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne p1, v0, :cond_d

    const-string p1, "Initiator"

    goto :goto_f

    :cond_d
    const-string p1, "Responder"

    .line 590
    :goto_f
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 591
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    .line 592
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 594
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 595
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 592
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public establishSecureConnection()V
    .registers 3

    .line 217
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_e

    .line 218
    const-string p0, "Channel is already secure."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    if-eqz v0, :cond_18

    .line 222
    const-string p0, "Channel has already started establishing secure connection."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const/4 v0, 0x1

    .line 227
    :try_start_19
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->initiateHandshake()V
    :try_end_1e
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_19 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 230
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Failed to initiate handshake protocol."

    invoke-direct {v0, v1, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final exchangeAttestation()V
    .registers 6

    .line 520
    iget v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_c

    .line 521
    const-string p0, "Remote attestation was already verified."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 526
    :cond_c
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 527
    const-string v2, "Exchanging device attestation."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_15
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 530
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->generateAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    .line 532
    :cond_1f
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v2

    .line 533
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->generateAttestationKeyPair(Ljava/lang/String;[B)V

    .line 534
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->getEncodedCertificateChain(Ljava/lang/String;)[B

    move-result-object v2

    .line 535
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 536
    invoke-virtual {p0, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 539
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne v3, v4, :cond_47

    .line 540
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 541
    :cond_47
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    .line 542
    invoke-virtual {v3}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v3

    .line 539
    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    .line 543
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/companion/securechannel/AttestationVerifier;->verifyAttestation([B[B)I

    move-result v2

    iput v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const/4 v2, 0x4

    .line 546
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 548
    iget v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const/4 v4, 0x1

    if-nez v3, :cond_65

    const/4 v3, 0x0

    goto :goto_66

    :cond_65
    move v3, v4

    :goto_66
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 550
    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 551
    invoke-virtual {p0, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 553
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-nez v2, :cond_95

    .line 558
    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez p0, :cond_8d

    if-eqz v0, :cond_8c

    .line 564
    const-string p0, "Remote attestation was successfully verified."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    return-void

    .line 559
    :cond_8d
    new-instance v0, Lcom/android/server/companion/securechannel/AttestationVerificationException;

    const-string v1, "Failed to verify remote attestation."

    invoke-direct {v0, v1, p0}, Lcom/android/server/companion/securechannel/AttestationVerificationException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 554
    :cond_95
    new-instance p0, Lcom/android/server/companion/securechannel/AttestationVerificationException;

    const-string v0, "Remote device failed to verify local attestation."

    invoke-direct {p0, v0, v4}, Lcom/android/server/companion/securechannel/AttestationVerificationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final exchangeAuthentication()V
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    if-eqz v0, :cond_7

    .line 487
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangePreSharedKey()V

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    if-eqz v0, :cond_e

    .line 490
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAttestation()V

    :cond_e
    return-void
.end method

.method public final exchangeHandshake()V
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    if-eqz v0, :cond_c

    .line 412
    const-string p0, "CDM_SecureChannel"

    const-string v0, "Ukey2 handshake is already completed."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_c
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 420
    iput-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 423
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_18
    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->completeHandshake([B)V

    .line 425
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final exchangePreSharedKey()V
    .registers 6

    .line 498
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_b

    .line 499
    const-string v2, "Exchanging pre-shared keys."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_b
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 502
    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v2

    .line 503
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne v3, v4, :cond_24

    .line 504
    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 505
    :cond_24
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    .line 503
    invoke-virtual {p0, v4, v3}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v3

    .line 507
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-eqz v2, :cond_3a

    if-eqz v0, :cond_39

    .line 514
    const-string p0, "The pre-shared key was successfully authenticated."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void

    .line 510
    :cond_3a
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify the hash of pre-shared key."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateAlias()Ljava/lang/String;
    .registers 2

    .line 617
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "secure-channel-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 618
    invoke-static {p0}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->aliasExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0
.end method

.method public final handleHandshakeCollision([B)[B
    .registers 4

    .line 373
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 375
    :goto_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 376
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 380
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    if-eqz p1, :cond_5c

    if-nez v0, :cond_1d

    goto :goto_5c

    .line 384
    :cond_1d
    const-string p1, "Detected a Ukey2 handshake role collision. Negotiating a role."

    const-string v0, "CDM_SecureChannel"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->compareByteArray([B[B)I

    move-result p1

    if-gez p1, :cond_35

    .line 388
    const-string p1, "Assigned: Responder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    return-object v1

    .line 392
    :cond_35
    const-string p1, "Assigned: Initiator; Discarding received Client Init"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 398
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_54

    .line 402
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 403
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    .line 400
    :cond_54
    new-instance p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;

    const-string p1, "Failed to resolve Ukey2 handshake role collision."

    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public final initiateHandshake()V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    if-eqz v1, :cond_12

    .line 350
    const-string p0, "CDM_SecureChannel"

    const-string v1, "Ukey2 handshake is already completed."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_3a

    .line 354
    :cond_12
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    .line 355
    invoke-static {}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->forInitiator()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    .line 356
    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    .line 359
    sget-boolean v1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v1, :cond_2d

    .line 360
    const-string v1, "CDM_SecureChannel"

    const-string v2, "Sending Ukey2 Client Init message"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2d
    sget-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    invoke-virtual {p0, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->constructHandshakeInitMessage([B)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    .line 363
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_10

    throw p0
.end method

.method public final isSecured()Z
    .registers 3

    .line 570
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 574
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-nez v0, :cond_10

    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez p0, :cond_f

    goto :goto_10

    :cond_f
    return v1

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public isStopped()Z
    .registers 1

    .line 205
    iget-boolean p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    return p0
.end method

.method public final synthetic lambda$start$0()V
    .registers 4

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeHandshake()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->exchangeAuthentication()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    .line 153
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onSecureConnection()V

    .line 156
    :goto_e
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-nez v0, :cond_1b

    .line 157
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->receiveSecureMessage()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_e

    :catch_16
    move-exception v0

    .line 160
    iget-boolean v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-eqz v1, :cond_1c

    :cond_1b
    return-void

    .line 165
    :cond_1c
    const-string v1, "CDM_SecureChannel"

    const-string v2, "Secure channel encountered an error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->close()V

    .line 167
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B
    .registers 9

    .line 273
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 274
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 275
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Waiting to receive next secure message."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 277
    :cond_12
    const-string v0, "CDM_SecureChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting to receive next "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    monitor-enter v0

    const/4 v1, 0x6

    .line 285
    :try_start_31
    new-array v1, v1, [B

    .line 286
    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v2, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 287
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 289
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    if-ne v3, v4, :cond_be

    .line 297
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v3

    if-ne v2, v3, :cond_89

    const/4 v2, 0x4

    .line 306
    new-array v2, v2, [B

    .line 307
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 308
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_62
    .catchall {:try_start_31 .. :try_end_62} :catchall_71

    .line 313
    :try_start_62
    new-array v2, v2, [B
    :try_end_64
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_64} :catch_7b
    .catchall {:try_start_62 .. :try_end_64} :catchall_71

    .line 319
    :try_start_64
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 320
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$smshouldEncrypt(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 321
    monitor-exit v0

    return-object v2

    :catchall_71
    move-exception p0

    goto :goto_cb

    .line 324
    :cond_73
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {p0, v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decodeMessageFromPeer([B[B)[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catch_7b
    move-exception p1

    .line 315
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 316
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Payload is too large."

    invoke-direct {p0, v1, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 298
    :cond_89
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 299
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected message type. Expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; Found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {v2}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Skipping rest of data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_be
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v5, v6}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    .line 293
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string p1, "Secure channel version mismatch. Currently on version 1. Skipping rest of data."

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :goto_cb
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_64 .. :try_end_cc} :catchall_71

    throw p0
.end method

.method public final receiveSecureMessage()V
    .registers 3

    .line 256
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    const-string v1, "CDM_SecureChannel"

    if-nez v0, :cond_1a

    .line 257
    const-string v0, "Received a message without a secure connection. Message will be ignored."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not secure."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 264
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    .line 265
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/securechannel/SecureChannel$Callback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel$Callback;->onSecureMessageReceived([B)V
    :try_end_25
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_1a .. :try_end_25} :catch_26
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/CryptoException; {:try_start_1a .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 267
    const-string v0, "Ignoring received message."

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    .registers 6

    .line 330
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    monitor-enter v0

    const/4 v1, 0x6

    .line 331
    :try_start_4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 332
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v2

    .line 333
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 335
    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$smshouldEncrypt(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 336
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {p1, p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encodeMessageToPeer([B[B)[B

    move-result-object p2

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_4c

    .line 338
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 339
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    .line 340
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 342
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 343
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 344
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_26

    throw p0
.end method

.method public sendSecureMessage([B)V
    .registers 3

    .line 241
    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 248
    :try_start_6
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    :try_end_b
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_6 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 250
    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to encrypt data."

    invoke-direct {p1, v0, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 242
    :cond_15
    const-string p0, "CDM_SecureChannel"

    const-string p1, "Cannot send a message without a secure connection."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Channel is not secured yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .registers 3

    .line 139
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 140
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Starting secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/securechannel/SecureChannel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/securechannel/SecureChannel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 176
    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 177
    const-string v0, "CDM_SecureChannel"

    const-string v1, "Stopping secure channel."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    return-void
.end method
