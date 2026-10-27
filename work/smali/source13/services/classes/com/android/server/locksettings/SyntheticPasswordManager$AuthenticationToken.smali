.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private mEncryptedEscrowSplit0:[B

.field private mEscrowSplit1:[B

.field private mSyntheticPassword:[B

.field private final mVersion:B


# direct methods
.method static bridge synthetic -$$Nest$fgetmEncryptedEscrowSplit0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEscrowSplit1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVersion(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B
    .registers 1

    iget-byte p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return p0
.end method

.method constructor <init>(B)V
    .registers 2
    .param p1, "version"    # B

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    .line 203
    return-void
.end method

.method static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 5

    .line 272
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    .line 273
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 274
    .local v2, "escrowSplit0":[B
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 275
    .local v1, "escrowSplit1":[B
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 276
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_E0()[B

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    .line 278
    .local v3, "encrypteEscrowSplit0":[B
    invoke-virtual {v0, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 279
    return-object v0
.end method

.method private derivePassword([B)[B
    .registers 5
    .param p1, "personalization"    # [B

    .line 206
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 207
    new-instance v0, Lcom/android/server/locksettings/SP800Derive;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SP800Derive;-><init>([B)V

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALISATION_CONTEXT()[B

    move-result-object v1

    .line 208
    invoke-virtual {v0, p1, v1}, Lcom/android/server/locksettings/SP800Derive;->withContext([B[B)[B

    move-result-object v0

    .line 207
    return-object v0

    .line 210
    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private recreate([B[B)V
    .registers 6
    .param p1, "escrowSplit0"    # [B
    .param p2, "escrowSplit1"    # [B

    .line 287
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SP_SPLIT()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 288
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 287
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 290
    return-void
.end method


# virtual methods
.method public deriveDiskEncryptionKey()[B
    .registers 2

    .line 224
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_FBE_KEY()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .registers 2

    .line 220
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_SP_GK_AUTH()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()[B
    .registers 2

    .line 216
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_KEY_STORE_PASSWORD()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$smbytesToHex([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveMetricsKey()[B
    .registers 2

    .line 237
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_PASSWORD_METRICS()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .registers 2

    .line 232
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_PASSWORD_HASH()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .registers 2

    .line 228
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_AUTHSECRET_KEY()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePassword([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEscrowSecret()[B
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    if-nez v0, :cond_6

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$sfgetPERSONALIZATION_E0()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSyntheticPassword()[B
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    return-object v0
.end method

.method public getVersion()B
    .registers 2

    .line 318
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mVersion:B

    return v0
.end method

.method public recreateDirectly([B)V
    .registers 3
    .param p1, "syntheticPassword"    # [B

    .line 265
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mSyntheticPassword:[B

    .line 266
    return-void
.end method

.method public recreateFromEscrow([B)V
    .registers 3
    .param p1, "escrowSplit0"    # [B

    .line 256
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B[B)V

    .line 259
    return-void
.end method

.method public setEscrowData([B[B)V
    .registers 3
    .param p1, "encryptedEscrowSplit0"    # [B
    .param p2, "escrowSplit1"    # [B

    .line 246
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEncryptedEscrowSplit0:[B

    .line 247
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->mEscrowSplit1:[B

    .line 248
    return-void
.end method
