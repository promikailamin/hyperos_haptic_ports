.class public Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public mEncryptedEscrowSplit0:[B

.field public mEscrowSplit1:[B

.field public mSyntheticPassword:[B

.field public final mVersion:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEncryptedEscrowSplit0(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEscrowSplit1(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)B
    .registers 1

    .line 0
    iget-byte p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    return p0
.end method

.method public constructor <init>(B)V
    .registers 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    return-void
.end method

.method public static create()Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .registers 5

    .line 336
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;-><init>(B)V

    const/16 v1, 0x20

    .line 338
    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object v2

    .line 340
    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object v1

    .line 341
    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->recreate([B[B)V

    .line 342
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_E0()[B

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v2

    .line 344
    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->setEscrowData([B[B)V

    return-object v0
.end method


# virtual methods
.method public deriveFileBasedEncryptionKey()[B
    .registers 2

    .line 284
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_FBE_KEY()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveGkPassword()[B
    .registers 2

    .line 280
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SP_GK_AUTH()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveKeyStorePassword()[B
    .registers 2

    .line 276
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_KEY_STORE_PASSWORD()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveMetricsKey()[B
    .registers 2

    .line 297
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_PASSWORD_METRICS()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public derivePasswordHashFactor()[B
    .registers 2

    .line 292
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_PASSWORD_HASH()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final deriveSubkey([B)[B
    .registers 4

    .line 266
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 267
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_CONTEXT()[B

    move-result-object p0

    .line 268
    invoke-virtual {v0, p1, p0}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object p0

    return-object p0

    .line 270
    :cond_15
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    filled-new-array {p0}, [[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveVendorAuthSecret()[B
    .registers 2

    .line 288
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_AUTHSECRET_KEY()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public deriveVendorAuthSecretEncryptionKey()[B
    .registers 2

    .line 301
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getEscrowSecret()[B
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_E0()[B

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    invoke-static {v0, v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSyntheticPassword()[B
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    return-object p0
.end method

.method public getVersion()B
    .registers 1

    .line 382
    iget-byte p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    return p0
.end method

.method public final recreate([B[B)V
    .registers 4

    .line 353
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SP_SPLIT()[B

    move-result-object v0

    filled-new-array {p1, p2}, [[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    return-void
.end method

.method public recreateDirectly([B)V
    .registers 3

    .line 329
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    return-void
.end method

.method public recreateFromEscrow([B)V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->recreate([B[B)V

    return-void
.end method

.method public setEscrowData([B[B)V
    .registers 3

    .line 310
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    .line 311
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    return-void
.end method
