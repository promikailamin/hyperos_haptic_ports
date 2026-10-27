.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenType;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:[B

.field protected static final HEX_ARRAY:[B

.field private static final INVALID_WEAVER_SLOT:I = -0x1

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_METRICS_NAME:Ljava/lang/String; = "metrics"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_CONTEXT:[B

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALISATION_WEAVER_KEY:[B

.field private static final PERSONALISATION_WEAVER_PASSWORD:[B

.field private static final PERSONALISATION_WEAVER_TOKEN:[B

.field private static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_PASSWORD_HASH:[B

.field private static final PERSONALIZATION_PASSWORD_METRICS:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field public static final PROP_REMOTE_AUTH_ENABLE:Ljava/lang/String; = "sys.locksettings.remoteauth.enable"

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_STRONG_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V2:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V3:B = 0x3t

.field private static final SYNTHETIC_PASSWORD_WEAK_TOKEN_BASED:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field static final TOKEN_TYPE_STRONG:I = 0x0

.field static final TOKEN_TYPE_WEAK:I = 0x1

.field private static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field private static final WEAVER_VERSION:B = 0x1t


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field private mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field private mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetPERSONALISATION_CONTEXT()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_AUTHSECRET_KEY()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_E0()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_FBE_KEY()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_KEY_STORE_PASSWORD()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_PASSWORD_HASH()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_PASSWORD_METRICS()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SP_GK_AUTH()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SP_SPLIT()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smbytesToHex([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 117
    const-string v0, "default-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 139
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 140
    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 141
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 142
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 143
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 144
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 145
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 146
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 147
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 148
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    .line 149
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    .line 150
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    .line 151
    const-string/jumbo v0, "password-metrics"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 152
    nop

    .line 153
    const-string v0, "android-synthetic-password-personalization-context"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    .line 1610
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;
    .param p3, "userManager"    # Landroid/os/UserManager;
    .param p4, "passwordSlotManager"    # Lcom/android/server/locksettings/PasswordSlotManager;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 970
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 442
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 443
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 444
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 445
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 446
    return-void
.end method

.method private static bytesToHex([B)[B
    .registers 7
    .param p0, "bytes"    # [B

    .line 1612
    if-nez p0, :cond_a

    .line 1613
    const-string/jumbo v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 1615
    :cond_a
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1616
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    .line 1617
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1618
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v5, v4, v5

    aput-byte v5, v0, v3

    .line 1619
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 1616
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1621
    .end local v1    # "j":I
    :cond_2e
    return-object v0
.end method

.method private computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 11
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "data"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 1567
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    :goto_d
    move-object v2, v0

    .line 1568
    .local v2, "password":[B
    iget-object v3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x1

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v5, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v6, v1, v0

    const/16 v7, 0x20

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1461
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 1462
    .local v0, "data":[B
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1463
    return-object v0
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 20
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I

    .line 1071
    move v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_8

    goto :goto_d

    .line 1075
    :cond_8
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .local v2, "secret":[B
    goto :goto_11

    .line 1073
    .end local v2    # "secret":[B
    :cond_d
    :goto_d
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getEscrowSecret()[B

    move-result-object v2

    .line 1077
    .restart local v2    # "secret":[B
    :goto_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v5, v2

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v3

    .line 1083
    .local v3, "content":[B
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmVersion(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_28

    .line 1084
    move v1, v5

    goto :goto_29

    :cond_28
    nop

    .line 1086
    .local v1, "version":B
    :goto_29
    invoke-static {v1, p3, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->create(BB[B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v4

    .line 1087
    .local v4, "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->toByte()[B

    move-result-object v7

    const-string/jumbo v6, "spblob"

    move-object v5, p0

    move-wide v8, p1

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1088
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1525
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 1526
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1435
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1436
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 1437
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1438
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 1440
    :cond_19
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .registers 10
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 754
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 755
    .local v0, "slot":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 756
    const/4 v1, -0x1

    if-eq v0, v1, :cond_65

    .line 757
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    .line 758
    .local v1, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " for user "

    const-string v4, "SyntheticPasswordManager"

    if-nez v2, :cond_47

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroy weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    .line 761
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V

    goto :goto_65

    .line 763
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip destroying reused weaver slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .end local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_65
    :goto_65
    return-void
.end method

.method private fakeUid(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 1550
    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method protected static fromByteArrayList(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1603
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1604
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1605
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1604
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1607
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static generateHandle()J
    .registers 5

    .line 1541
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1544
    .local v0, "rng":Ljava/security/SecureRandom;
    :goto_5
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1545
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    .line 1546
    return-wide v1

    .line 1545
    :cond_10
    goto :goto_5
.end method

.method static getFrpCredentialType([B)I
    .registers 2
    .param p0, "payload"    # [B

    .line 607
    if-nez p0, :cond_4

    .line 608
    const/4 v0, -0x1

    return v0

    .line 610
    :cond_4
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return v0
.end method

.method private getKeyName(J)Ljava/lang/String;
    .registers 6
    .param p1, "handle"    # J

    .line 1563
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "synthetic_password_"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableWeaverSlot()I
    .registers 4

    .line 792
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 793
    .local v0, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_22

    .line 795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 796
    return v1

    .line 794
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 799
    .end local v1    # "i":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Run out of weaver slots."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTokenBasedBlobType(I)B
    .registers 3
    .param p1, "type"    # I

    .line 1475
    packed-switch p1, :pswitch_data_8

    .line 1480
    const/4 v0, 0x1

    return v0

    .line 1477
    :pswitch_5
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private getUsedWeaverSlots()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 781
    .local v0, "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 782
    .local v1, "slots":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 783
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 784
    .local v5, "handle":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v6

    .line 785
    .local v6, "slot":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 786
    .end local v5    # "handle":Ljava/lang/Long;
    .end local v6    # "slot":I
    goto :goto_2c

    .line 787
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_52
    goto :goto_16

    .line 788
    :cond_53
    return-object v1
.end method

.method private hasPasswordMetrics(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1509
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1513
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized isWeaverAvailable()Z
    .registers 2

    monitor-enter p0

    .line 483
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_8

    .line 485
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 487
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return v0

    .line 482
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$weaverVerify$1([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 7
    .param p0, "response"    # [Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "slot"    # I
    .param p2, "status"    # I
    .param p3, "readResponse"    # Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 540
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_c0

    .line 566
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v2, p0, v1

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read unknown status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    .line 546
    :pswitch_2d
    iget v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 547
    invoke-static {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    aput-object v2, p0, v1

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    goto :goto_bf

    .line 551
    :pswitch_4d
    iget v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez v2, :cond_6d

    .line 552
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v2, p0, v1

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 555
    :cond_6d
    iget v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 556
    invoke-static {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    aput-object v2, p0, v1

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    goto :goto_bf

    .line 562
    :pswitch_8d
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v2, p0, v1

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (FAILED), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    goto :goto_bf

    .line 542
    :pswitch_a9
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    iget-object v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 543
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 542
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    aput-object v0, p0, v1

    .line 544
    nop

    .line 570
    :goto_bf
    return-void

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_8d
        :pswitch_4d
        :pswitch_2d
    .end packed-switch
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 7
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 709
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 710
    .local v0, "e0":[B
    const-string/jumbo v3, "p1"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 711
    .local v1, "p1":[B
    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    .line 712
    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method private loadSecdiscardable(JI)[B
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1471
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1517
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .registers 5
    .param p1, "userId"    # I

    .line 701
    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadWeaverSlot(JI)I
    .registers 10
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 731
    const/4 v0, 0x5

    .line 732
    .local v0, "LENGTH":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 733
    .local v1, "data":[B
    const/4 v2, -0x1

    if-eqz v1, :cond_41

    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_10

    goto :goto_41

    .line 736
    :cond_10
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 737
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 738
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 739
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    .line 740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid weaver slot version of handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyntheticPasswordManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return v2

    .line 743
    :cond_3c
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2

    .line 734
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_41
    :goto_41
    return v2
.end method

.method private notifyWeakEscrowTokenRemovedListeners(JI)V
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1652
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1654
    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_28

    .line 1655
    add-int/lit8 v0, v0, -0x1

    .line 1657
    :try_start_a
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;->onWeakEscrowTokenRemoved(JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    .line 1661
    goto :goto_6

    .line 1664
    :catchall_16
    move-exception v1

    goto :goto_22

    .line 1658
    :catch_18
    move-exception v1

    .line 1659
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v2, "SyntheticPasswordManager"

    const-string v3, "Exception while notifying WeakEscrowTokenRemovedListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 1661
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_6

    .line 1664
    :goto_22
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1665
    throw v1

    .line 1664
    :cond_28
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1665
    nop

    .line 1666
    return-void
.end method

.method private passwordTokenToGkInput([B)[B
    .registers 5
    .param p1, "token"    # [B

    .line 1573
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToWeaverKey([B)[B
    .registers 5
    .param p1, "token"    # [B

    .line 1577
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1578
    .local v0, "key":[B
    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v1, v2, :cond_1c

    .line 1581
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 1579
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "weaver key length too small"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 14
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 716
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmEncryptedEscrowSplit0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 717
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmEscrowSplit1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 718
    return-void
.end method

.method private savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V
    .registers 15
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 1502
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    new-instance v2, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v2, p1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1504
    invoke-virtual {v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->serialize()[B

    move-result-object v2

    .line 1502
    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    .line 1505
    .local v0, "encrypted":[B
    const-string/jumbo v4, "metrics"

    move-object v3, p0

    move-object v5, v0

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1506
    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .registers 11
    .param p1, "handle"    # J
    .param p3, "secdiscardable"    # [B
    .param p4, "userId"    # I

    .line 1467
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1468
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .registers 12
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 1521
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 1522
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .registers 9
    .param p1, "spHandle"    # [B
    .param p2, "userId"    # I

    .line 705
    const-string/jumbo v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 706
    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .registers 13
    .param p1, "slot"    # I
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 747
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 748
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 749
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 750
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v3, "weaver"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 751
    return-void
.end method

.method protected static secureRandom(I)[B
    .registers 3
    .param p0, "length"    # I

    .line 1555
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1556
    :catch_b
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1558
    const/4 v1, 0x0

    return-object v1
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 7
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I

    .line 944
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 946
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 945
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 947
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 948
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x1

    .line 949
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 948
    invoke-virtual {v0, v1, p3, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 951
    :cond_26
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 954
    :cond_2d
    :goto_2d
    return-void
.end method

.method private synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 8
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I
    .param p4, "weaverSlot"    # I

    .line 958
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 960
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 959
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 961
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 962
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    .line 963
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 962
    invoke-virtual {v0, v1, p4, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 965
    :cond_26
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 968
    :cond_2d
    :goto_2d
    return-void
.end method

.method protected static toByteArrayList([B)Ljava/util/ArrayList;
    .registers 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1596
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1597
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1599
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .registers 8
    .param p1, "data"    # [B
    .param p2, "rawSecdiscardable"    # [B

    .line 1452
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1454
    .local v0, "secdiscardable":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1455
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1456
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1457
    return-object v1
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .registers 8
    .param p1, "data"    # [B
    .param p2, "secret"    # [B

    .line 1443
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1445
    .local v0, "weaverSecret":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1446
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1447
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1448
    return-object v1
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 27
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I

    .line 1286
    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p7

    const-string/jumbo v0, "spblob"

    move-wide/from16 v13, p1

    invoke-direct {v9, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v15

    .line 1287
    .local v15, "data":[B
    const/4 v0, 0x0

    if-nez v15, :cond_15

    .line 1288
    return-object v0

    .line 1290
    :cond_15
    invoke-static {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v8

    .line 1291
    .local v8, "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    iget-byte v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_31

    iget-byte v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    if-eq v1, v3, :cond_31

    iget-byte v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    if-ne v1, v4, :cond_29

    goto :goto_31

    .line 1294
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_31
    :goto_31
    iget-byte v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    if-ne v1, v10, :cond_de

    .line 1300
    iget-byte v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    if-ne v1, v4, :cond_45

    .line 1301
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    invoke-static {v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .local v1, "secret":[B
    goto :goto_50

    .line 1304
    .end local v1    # "secret":[B
    :cond_45
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    invoke-virtual {v9, v1, v2, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v1

    move-object v6, v1

    .line 1306
    .local v6, "secret":[B
    :goto_50
    const-string v1, "SyntheticPasswordManager"

    if-nez v6, :cond_6b

    .line 1307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-object v0

    .line 1310
    :cond_6b
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget-byte v5, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    invoke-direct {v2, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    move-object v7, v2

    .line 1311
    .local v7, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eq v10, v4, :cond_7c

    if-ne v10, v3, :cond_78

    goto :goto_7c

    .line 1319
    :cond_78
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    goto :goto_9c

    .line 1313
    :cond_7c
    :goto_7c
    invoke-direct {v9, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    if-nez v2, :cond_99

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return-object v0

    .line 1317
    :cond_99
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateFromEscrow([B)V

    .line 1321
    :goto_9c
    iget-byte v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    if-ne v0, v4, :cond_d7

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v1 SP blob for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object v4, v7

    move-object/from16 v5, p4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v16, "secret":[B
    .local v17, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    move-wide/from16 v6, p5

    move-object/from16 v18, v8

    .end local v8    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .local v18, "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    goto :goto_dd

    .line 1321
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .restart local v6    # "secret":[B
    .restart local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v8    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    :cond_d7
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 1325
    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v8    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .restart local v16    # "secret":[B
    .restart local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v18    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    :goto_dd
    return-object v17

    .line 1297
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .restart local v8    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    :cond_de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 24
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "type"    # B
    .param p5, "token"    # [B
    .param p6, "userId"    # I

    .line 1250
    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    move/from16 v11, p6

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v12, v0

    .line 1251
    .local v12, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 1252
    .local v0, "secdiscardable":[B
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v13

    .line 1253
    .local v13, "slotId":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_51

    .line 1254
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    const-string v2, "SyntheticPasswordManager"

    if-nez v1, :cond_29

    .line 1255
    const-string v1, "No weaver service to unwrap token based SP"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1257
    return-object v12

    .line 1259
    :cond_29
    const/4 v1, 0x0

    invoke-direct {v8, v13, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 1260
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_47

    .line 1261
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_47

    .line 1266
    :cond_3b
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    move-object v14, v0

    goto :goto_52

    .line 1262
    :cond_47
    :goto_47
    const-string v3, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1264
    return-object v12

    .line 1253
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_51
    move-object v14, v0

    .line 1269
    .end local v0    # "secdiscardable":[B
    .local v14, "secdiscardable":[B
    :goto_52
    move-object/from16 v15, p5

    invoke-direct {v8, v15, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v16

    .line 1270
    .local v16, "applicationId":[B
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, v16

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1271
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_87

    .line 1272
    iget-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1273
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v0, :cond_8b

    .line 1276
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_8b

    .line 1279
    :cond_87
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1281
    :cond_8b
    :goto_8b
    return-object v12
.end method

.method private weaverEnroll(I[B[B)[B
    .registers 9
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .param p3, "value"    # [B

    .line 498
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v1, :cond_6a

    .line 501
    if-nez p2, :cond_14

    .line 502
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v1, [B

    goto :goto_1b

    .line 503
    :cond_14
    array-length v1, p2

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v1, v2, :cond_62

    .line 506
    :goto_1b
    if-nez p3, :cond_25

    .line 507
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    .line 510
    :cond_25
    const/4 v1, 0x0

    :try_start_26
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    .line 511
    .local v2, "writeStatus":I
    if-eqz v2, :cond_58

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weaver write failed, slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_57} :catch_5a

    .line 513
    return-object v1

    .line 518
    .end local v2    # "writeStatus":I
    :cond_58
    nop

    .line 519
    return-object p3

    .line 515
    :catch_5a
    move-exception v2

    .line 516
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "weaver write failed"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    return-object v1

    .line 504
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8
    .param p1, "slot"    # I
    .param p2, "key"    # [B

    .line 528
    const/4 v0, -0x1

    if-eq p1, v0, :cond_55

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_55

    .line 531
    if-nez p2, :cond_12

    .line 532
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_19

    .line 533
    :cond_12
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_4d

    .line 536
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 538
    .local v0, "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    const/4 v1, 0x0

    :try_start_1d
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda1;-><init>([Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {v2, p1, v3, v4}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2b} :catch_2c

    .line 574
    goto :goto_4a

    .line 571
    :catch_2c
    move-exception v2

    .line 572
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v3, v0, v1

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weaver read failed, slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyntheticPasswordManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4a
    aget-object v1, v0, v1

    return-object v1

    .line 534
    .end local v0    # "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 16
    .param p1, "handle"    # J
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 1037
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1038
    return v1

    .line 1040
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 1041
    .local v0, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    if-nez v0, :cond_27

    .line 1042
    return v1

    .line 1044
    :cond_27
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_35

    .line 1045
    const-string v2, "User is not escrowable"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v1

    .line 1048
    :cond_35
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1049
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v2

    .line 1050
    .local v2, "slot":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weaver enroll token to slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v4

    if-nez v4, :cond_6e

    .line 1052
    const-string v4, "Failed to enroll weaver secret when activating token"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return v1

    .line 1055
    :cond_6e
    invoke-direct {p0, v2, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1056
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1058
    .end local v2    # "slot":I
    :cond_76
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1059
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getTokenBasedBlobType(I)B

    move-result v5

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 1061
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    if-eqz v1, :cond_a8

    .line 1063
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    .line 1065
    :cond_a8
    const/4 v1, 0x1

    return v1
.end method

.method public clearSidForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 690
    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 691
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 24
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 818
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    const-string/jumbo v1, "locksettings"

    const-string v2, "appname"

    const-string v3, "Password GateKeeperService no response"

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v13

    .line 819
    .local v13, "handle":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v15

    .line 820
    .local v15, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    move-object/from16 v9, p2

    invoke-direct {v10, v9, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v7

    .line 824
    .local v7, "pwdToken":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "SyntheticPasswordManager"

    if-eqz v0, :cond_87

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v0

    .line 827
    .local v0, "weaverSlot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weaver enroll password to slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {v10, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v1

    invoke-direct {v10, v0, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v1

    .line 830
    .local v1, "weaverSecret":[B
    if-eqz v1, :cond_6e

    .line 834
    invoke-direct {v10, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 835
    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v2, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 837
    invoke-direct {v10, v15, v4, v12, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 839
    iput-object v5, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 840
    const-wide/16 v2, 0x0

    .line 841
    .local v2, "sid":J
    invoke-direct {v10, v7, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v0

    .line 842
    .end local v1    # "weaverSecret":[B
    .local v0, "applicationId":[B
    move-wide/from16 v16, v2

    goto/16 :goto_e4

    .line 831
    .end local v2    # "sid":J
    .local v0, "weaverSlot":I
    .restart local v1    # "weaverSecret":[B
    :cond_6e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to enroll user password under weaver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    .end local v0    # "weaverSlot":I
    .end local v1    # "weaverSecret":[B
    :cond_87
    const/4 v5, 0x2

    :try_start_88
    invoke-direct {v10, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_8f} :catch_90

    .line 854
    goto :goto_b5

    .line 847
    :catch_90
    move-exception v0

    .line 849
    .local v0, "ignore":Landroid/os/RemoteException;
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v8

    move-object/from16 v18, v0

    .end local v0    # "ignore":Landroid/os/RemoteException;
    .local v18, "ignore":Landroid/os/RemoteException;
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const/16 v17, 0x1

    aput-object v1, v0, v17

    const v5, 0x35e1f5eb

    invoke-virtual {v8, v5, v0}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v0

    .line 851
    .local v0, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 853
    const-string v5, "Failed to clear SID from gatekeeper"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v0    # "event":Lcom/miui/misight/MiEventStub;
    .end local v18    # "ignore":Landroid/os/RemoteException;
    :goto_b5
    :try_start_b5
    invoke-direct {v10, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    .line 859
    invoke-direct {v10, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v5

    .line 858
    const/4 v8, 0x0

    invoke-interface {v11, v0, v8, v8, v5}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_c2} :catch_122

    .line 867
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 868
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_109

    .line 872
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 873
    iget-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v10, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v2

    .line 874
    .restart local v2    # "sid":J
    nop

    .line 875
    invoke-direct {v10, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v1

    .line 874
    invoke-direct {v10, v7, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v1

    .line 877
    .local v1, "applicationId":[B
    invoke-direct {v10, v15, v4, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    move-object v0, v1

    move-wide/from16 v16, v2

    .line 879
    .end local v1    # "applicationId":[B
    .end local v2    # "sid":J
    .local v0, "applicationId":[B
    .local v16, "sid":J
    :goto_e4
    invoke-virtual {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move-wide v4, v13

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 880
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    .line 881
    const/4 v4, 0x0

    move-wide v2, v13

    move-object/from16 v5, p3

    move-object v6, v0

    move-object/from16 v18, v7

    .end local v7    # "pwdToken":[B
    .local v18, "pwdToken":[B
    move-wide/from16 v7, v16

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 883
    return-wide v13

    .line 869
    .end local v16    # "sid":J
    .end local v18    # "pwdToken":[B
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v7    # "pwdToken":[B
    :cond_109
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 860
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_122
    move-exception v0

    move-object/from16 v18, v7

    .line 862
    .end local v7    # "pwdToken":[B
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "pwdToken":[B
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const v1, 0x35e1f5eb

    invoke-virtual {v3, v1, v5}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v1

    .line 864
    .local v1, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 866
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to enroll password for new SP blob"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .registers 7
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J

    .line 1533
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public createStrongTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "changeCallback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 11
    .param p1, "token"    # [B
    .param p2, "type"    # I
    .param p3, "userId"    # I
    .param p4, "changeCallback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 998
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 999
    .local v0, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1000
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_1e
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 1003
    .local v2, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    iput p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    .line 1004
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 1005
    .local v3, "secdiscardable":[B
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1006
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1007
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_4b

    .line 1010
    :cond_46
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 1011
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1013
    :goto_4b
    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 1014
    iput-object p4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 1016
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    return-wide v0
.end method

.method public createWeakTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "changeCallback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 988
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .registers 5
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .line 1529
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroyAllWeakTokenBasedSyntheticPasswords(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 1416
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "secdis"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1418
    .local v0, "handles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1419
    .local v2, "handle":J
    const-string/jumbo v4, "spblob"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v4

    .line 1421
    .local v4, "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    iget-byte v5, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_30

    .line 1422
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 1424
    .end local v2    # "handle":J
    .end local v4    # "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    :cond_30
    goto :goto_d

    .line 1425
    :cond_31
    return-void
.end method

.method public destroyEscrowData(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 726
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 727
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 728
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1428
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1429
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1430
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1431
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1432
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 1537
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 1538
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1405
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 1407
    .local v0, "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1408
    const-string/jumbo v1, "secdis"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1409
    iget-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 1410
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->notifyWeakEscrowTokenRemovedListeners(JI)V

    .line 1412
    :cond_1c
    return-void
.end method

.method public existsHandle(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1400
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method getCredentialType(JI)I
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 598
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 599
    .local v0, "passwordData":[B
    if-nez v0, :cond_23

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v1, -0x1

    return v1

    .line 603
    :cond_23
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return v1
.end method

.method public getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;
    .registers 9
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1492
    const-string/jumbo v0, "metrics"

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 1493
    .local v0, "encrypted":[B
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 1494
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    .line 1496
    .local v2, "decrypted":[B
    if-nez v2, :cond_19

    return-object v1

    .line 1497
    :cond_19
    invoke-static {v2}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->getMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    return-object v1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1022
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_11
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 452
    :catch_6
    move-exception v0

    .line 453
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Device does not support weaver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasEscrowData(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 721
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 722
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 721
    :goto_16
    return v0
.end method

.method public hasSidForUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 694
    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initWeaverService()V
    .registers 4

    monitor-enter p0

    .line 459
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-eqz v0, :cond_7

    .line 460
    monitor-exit p0

    return-void

    .line 463
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 464
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 465
    if-eqz v0, :cond_23

    .line 466
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_24
    .catchall {:try_start_8 .. :try_end_23} :catchall_2e

    .line 479
    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    :cond_23
    goto :goto_2c

    .line 477
    :catch_24
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    monitor-exit p0

    return-void

    .line 458
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$initWeaverService$0$com-android-server-locksettings-SyntheticPasswordManager(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "config"    # Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 467
    if-nez p1, :cond_9

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_9

    .line 468
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_30

    .line 470
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get weaver config, status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 474
    :goto_30
    return-void
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p4, "requestedQuality"    # I

    .line 927
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 928
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 929
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 931
    .local v0, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 932
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    .line 933
    .local v1, "weaverSlot":I
    if-eq v1, v2, :cond_30

    .line 934
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_35

    .line 936
    :cond_30
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 940
    .end local v0    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v1    # "weaverSlot":I
    :cond_35
    :goto_35
    return-void
.end method

.method public migrateKeyNamespace()Z
    .registers 9

    .line 1628
    const/4 v0, 0x1

    .line 1629
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1630
    const-string/jumbo v2, "spblob"

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1631
    .local v1, "allHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1632
    .local v3, "userHandles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1633
    .local v5, "handle":J
    invoke-direct {p0, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v0, v7

    .line 1634
    .end local v5    # "handle":J
    goto :goto_22

    .line 1635
    .end local v3    # "userHandles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3c
    goto :goto_12

    .line 1636
    :cond_3d
    return v0
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 10
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I

    .line 672
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_3f

    .line 680
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 681
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_18

    .line 685
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 686
    return-void

    .line 682
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 683
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_3f
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Password GateKeeperService no response"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v1

    const v2, 0x35e1f5eb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "appname"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "locksettings"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v1

    .line 677
    .local v1, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 679
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to create new SID for user"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 12
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "hash"    # [B
    .param p3, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p4, "userId"    # I

    .line 637
    const-string v0, "SyntheticPasswordManager"

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    .line 639
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz p2, :cond_6b

    .line 641
    :try_start_8
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    .line 642
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 641
    invoke-interface {p1, p4, p2, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_3d

    .line 650
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 651
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_35

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_6e

    .line 655
    :cond_35
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_6e

    .line 643
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_3d
    move-exception v2

    .line 645
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Password GateKeeperService no response"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v0

    const v3, 0x35e1f5eb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appname"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "locksettings"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v0

    .line 647
    .local v0, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 649
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to enroll credential duing SP init"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 658
    .end local v0    # "event":Lcom/miui/misight/MiEventStub;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6b
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 660
    :goto_6e
    invoke-direct {p0, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 661
    return-object v1
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1642
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public removePendingToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1029
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1030
    return v1

    .line 1032
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V
    .registers 10
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "userId"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 580
    .local v1, "handle":J
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 581
    invoke-direct {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 582
    .end local v1    # "handle":J
    goto :goto_d

    .line 586
    :cond_28
    :try_start_28
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 594
    goto :goto_5d

    .line 587
    :catch_30
    move-exception v0

    .line 589
    .local v0, "ignore":Landroid/os/RemoteException;
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Password GateKeeperService no response"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    const v3, 0x35e1f5eb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appname"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "locksettings"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v2

    .line 591
    .local v2, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 593
    const-string v3, "Failed to clear SID from gatekeeper"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v0    # "ignore":Landroid/os/RemoteException;
    .end local v2    # "event":Lcom/miui/misight/MiEventStub;
    :goto_5d
    return-void
.end method

.method protected scrypt([B[BIIII)[B
    .registers 14
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "n"    # I
    .param p4, "r"    # I
    .param p5, "p"    # I
    .param p6, "outLen"    # I

    .line 1589
    new-instance v0, Landroid/security/Scrypt;

    invoke-direct {v0}, Landroid/security/Scrypt;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected sidFromPasswordHandle([B)J
    .registers 4
    .param p1, "handle"    # [B

    .line 1585
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 1648
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 30
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 1098
    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    const-string/jumbo v1, "locksettings"

    const-string v2, "appname"

    const-string v3, "Password GateKeeperService no response"

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v14, v0

    .line 1099
    .local v14, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    const-string/jumbo v0, "pwd"

    invoke-direct {v9, v0, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v15

    .line 1101
    .local v15, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "SyntheticPasswordManager"

    if-nez v0, :cond_4f

    .line 1102
    new-array v0, v4, [Ljava/lang/Object;

    iget v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1102
    const-string v1, "Credential type mismatch: expected %d actual %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1105
    return-object v14

    .line 1108
    :cond_4f
    invoke-direct {v9, v12, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v6

    .line 1112
    .local v6, "pwdToken":[B
    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v5

    .line 1113
    .local v5, "weaverSlot":I
    const/4 v0, -0x1

    if-eq v5, v0, :cond_92

    .line 1115
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 1116
    const-string v0, "No weaver service to unwrap password based SP"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1118
    return-object v14

    .line 1120
    :cond_6a
    invoke-direct {v9, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1121
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_7d

    .line 1122
    return-object v14

    .line 1124
    :cond_7d
    const-wide/16 v0, 0x0

    .line 1125
    .local v0, "sid":J
    iget-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1126
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v2

    .line 1125
    invoke-direct {v9, v6, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v2

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move/from16 v19, v5

    move-object v12, v6

    .local v2, "applicationId":[B
    goto/16 :goto_165

    .line 1128
    .end local v0    # "sid":J
    .end local v2    # "applicationId":[B
    :cond_92
    invoke-direct {v9, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v7

    .line 1131
    .local v7, "gkPwdToken":[B
    :try_start_96
    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v18

    const-wide/16 v19, 0x0

    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v17, p1

    move-object/from16 v21, v0

    move-object/from16 v22, v7

    invoke-interface/range {v17 .. v22}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_a8} :catch_1c9

    move-object/from16 v17, v0

    .line 1142
    .local v17, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1143
    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    .line 1144
    .local v4, "responseCode":I
    const-string/jumbo v0, "sys.locksettings.remoteauth.enable"

    if-nez v4, :cond_1ab

    .line 1146
    move/from16 v19, v4

    .end local v4    # "responseCode":I
    .local v19, "responseCode":I
    const-string/jumbo v4, "true"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1149
    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1152
    :try_start_c6
    invoke-direct {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    iget-object v4, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cc} :catch_d5

    move-object/from16 v12, p1

    :try_start_ce
    invoke-interface {v12, v0, v4, v7, v7}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d2} :catch_d3

    .line 1163
    .local v0, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_ff

    .line 1154
    .end local v0    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_d3
    move-exception v0

    goto :goto_d8

    :catch_d5
    move-exception v0

    move-object/from16 v12, p1

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    :goto_d8
    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v4, v20

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const v1, 0x35e1f5eb

    invoke-virtual {v3, v1, v4}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v1

    .line 1158
    .local v1, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 1160
    const-string v2, "Fail to invoke gatekeeper.enroll"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    sget-object v2, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v0, v2

    .line 1164
    .end local v1    # "event":Lcom/miui/misight/MiEventStub;
    .local v0, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_ff
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_12d

    .line 1165
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1168
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    iput v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1169
    invoke-virtual {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move-object/from16 v20, v7

    move/from16 v7, v19

    move/from16 v19, v5

    .end local v5    # "weaverSlot":I
    .local v7, "responseCode":I
    .local v19, "weaverSlot":I
    .local v20, "gkPwdToken":[B
    move-wide/from16 v4, p2

    move-object v12, v6

    .end local v6    # "pwdToken":[B
    .local v12, "pwdToken":[B
    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1170
    const/4 v1, 0x0

    invoke-direct {v9, v15, v1, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_14a

    .line 1172
    .end local v12    # "pwdToken":[B
    .end local v20    # "gkPwdToken":[B
    .restart local v5    # "weaverSlot":I
    .restart local v6    # "pwdToken":[B
    .local v7, "gkPwdToken":[B
    .local v19, "responseCode":I
    :cond_12d
    move-object v12, v6

    move-object/from16 v20, v7

    move/from16 v7, v19

    move/from16 v19, v5

    .end local v5    # "weaverSlot":I
    .end local v6    # "pwdToken":[B
    .local v7, "responseCode":I
    .restart local v12    # "pwdToken":[B
    .local v19, "weaverSlot":I
    .restart local v20    # "gkPwdToken":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to re-enroll user password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .end local v0    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_14a
    goto :goto_152

    .line 1149
    .end local v12    # "pwdToken":[B
    .end local v20    # "gkPwdToken":[B
    .restart local v5    # "weaverSlot":I
    .restart local v6    # "pwdToken":[B
    .local v7, "gkPwdToken":[B
    .local v19, "responseCode":I
    :cond_14b
    move-object v12, v6

    move-object/from16 v20, v7

    move/from16 v7, v19

    move/from16 v19, v5

    .line 1186
    .end local v5    # "weaverSlot":I
    .end local v6    # "pwdToken":[B
    .local v7, "responseCode":I
    .restart local v12    # "pwdToken":[B
    .local v19, "weaverSlot":I
    .restart local v20    # "gkPwdToken":[B
    :goto_152
    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v9, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 1187
    .local v0, "sid":J
    nop

    .line 1188
    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 1187
    invoke-direct {v9, v12, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    .line 1192
    .end local v0    # "sid":J
    .end local v7    # "responseCode":I
    .end local v17    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v20    # "gkPwdToken":[B
    .local v16, "sid":J
    .local v18, "applicationId":[B
    :goto_165
    if-eqz p6, :cond_174

    .line 1194
    :try_start_167
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_16a
    .catch Landroid/os/RemoteException; {:try_start_167 .. :try_end_16a} :catch_16b

    .line 1197
    goto :goto_174

    .line 1195
    :catch_16b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1196
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "progressCallback throws exception"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_174
    :goto_174
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v5, v18

    move-wide/from16 v6, v16

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1203
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1207
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_1aa

    invoke-direct {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasPasswordMetrics(JI)Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 1208
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v4, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    .line 1210
    :cond_1aa
    return-object v14

    .line 1176
    .end local v12    # "pwdToken":[B
    .end local v16    # "sid":J
    .end local v18    # "applicationId":[B
    .end local v19    # "weaverSlot":I
    .restart local v4    # "responseCode":I
    .restart local v5    # "weaverSlot":I
    .restart local v6    # "pwdToken":[B
    .local v7, "gkPwdToken":[B
    .restart local v17    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_1ab
    move/from16 v19, v5

    move-object v12, v6

    move-object/from16 v20, v7

    move v7, v4

    .end local v4    # "responseCode":I
    .end local v5    # "weaverSlot":I
    .end local v6    # "pwdToken":[B
    .local v7, "responseCode":I
    .restart local v12    # "pwdToken":[B
    .restart local v19    # "weaverSlot":I
    .restart local v20    # "gkPwdToken":[B
    const/4 v1, 0x1

    if-ne v7, v1, :cond_1c4

    .line 1178
    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1181
    return-object v14

    .line 1183
    :cond_1c4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1184
    return-object v14

    .line 1133
    .end local v12    # "pwdToken":[B
    .end local v17    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v19    # "weaverSlot":I
    .end local v20    # "gkPwdToken":[B
    .restart local v5    # "weaverSlot":I
    .restart local v6    # "pwdToken":[B
    .local v7, "gkPwdToken":[B
    :catch_1c9
    move-exception v0

    move/from16 v19, v5

    move-object v12, v6

    move-object/from16 v20, v7

    .line 1135
    .end local v5    # "weaverSlot":I
    .end local v6    # "pwdToken":[B
    .end local v7    # "gkPwdToken":[B
    .restart local v0    # "e":Landroid/os/RemoteException;
    .restart local v12    # "pwdToken":[B
    .restart local v19    # "weaverSlot":I
    .restart local v20    # "gkPwdToken":[B
    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const v1, 0x35e1f5eb

    invoke-virtual {v3, v1, v4}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v1

    .line 1137
    .restart local v1    # "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 1139
    const-string v2, "gatekeeper verify failed"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1141
    return-object v14
.end method

.method public unwrapStrongTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 13
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 1233
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 14
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 1220
    nop

    .line 1221
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 1222
    .local v0, "blob":Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    iget-byte v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    return-object v1
.end method

.method public unwrapWeakTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 13
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 1244
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    return-object v0
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 1338
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method protected verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 22
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "gatekeeperPassword"    # [B
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .line 1344
    move-object/from16 v1, p0

    move/from16 v8, p5

    const-string/jumbo v9, "locksettings"

    const-string v10, "appname"

    const-string v11, "Password GateKeeperService no response"

    const-string v12, "SyntheticPasswordManager"

    invoke-direct {v1, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v13

    .line 1345
    .local v13, "spHandle":[B
    if-nez v13, :cond_15

    .line 1348
    const/4 v0, 0x0

    return-object v0

    .line 1352
    :cond_15
    const/4 v14, 0x0

    const/4 v15, 0x2

    const v7, 0x35e1f5eb

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p5

    move-wide/from16 v4, p3

    move-object v6, v13

    move-object/from16 v7, p2

    :try_start_24
    invoke-interface/range {v2 .. v7}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_b8

    move-object v2, v0

    .line 1362
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1363
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    .line 1364
    .local v3, "responseCode":I
    if-nez v3, :cond_a5

    .line 1365
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 1366
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1367
    .local v4, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1369
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    :try_start_4b
    invoke-interface {v5, v8, v13, v13, v6}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4f} :catch_51

    .line 1379
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    move-object v2, v0

    goto :goto_77

    .line 1371
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_51
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v7

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v10, v11, v14

    const/4 v10, 0x1

    aput-object v9, v11, v10

    const v9, 0x35e1f5eb

    invoke-virtual {v7, v9, v11}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v7

    .line 1375
    .local v7, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 1377
    const-string v9, "Failed to invoke gatekeeper.enroll"

    invoke-static {v12, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1378
    sget-object v2, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1380
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "event":Lcom/miui/misight/MiEventStub;
    :goto_77
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_89

    .line 1381
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 1382
    .end local v13    # "spHandle":[B
    .local v0, "spHandle":[B
    invoke-direct {v1, v0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1384
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    return-object v7

    .line 1388
    .end local v0    # "spHandle":[B
    .restart local v13    # "spHandle":[B
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to re-enroll SP handle for user "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 1367
    :cond_a0
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 1391
    :goto_a4
    return-object v4

    .line 1392
    .end local v4    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_a5
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    const/4 v10, 0x1

    if-ne v3, v10, :cond_b5

    .line 1393
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    .line 1395
    :cond_b5
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1354
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "responseCode":I
    :catch_b8
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    const v2, 0x35e1f5eb

    const/4 v3, 0x1

    move-object v4, v0

    move-object v0, v4

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v4

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v10, v7, v14

    aput-object v9, v7, v3

    invoke-virtual {v4, v2, v7}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v2

    .line 1358
    .local v2, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to verify with gatekeeper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v3
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 889
    move-object v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v3

    .line 890
    .local v3, "persistentData":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "SyntheticPasswordManager"

    if-ne v0, v5, :cond_61

    .line 891
    iget-object v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v7

    .line 892
    .local v7, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, v2, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v8

    .line 896
    .local v8, "pwdToken":[B
    :try_start_1b
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v10

    const-wide/16 v11, 0x0

    iget-object v13, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 897
    invoke-direct {p0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v14

    .line 896
    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v14}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2f} :catch_35

    .line 906
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 907
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 898
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_35
    move-exception v0

    .line 900
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "Password GateKeeperService no response"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v9

    const v10, 0x35e1f5eb

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "appname"

    aput-object v12, v4, v11

    const-string/jumbo v11, "locksettings"

    aput-object v11, v4, v5

    invoke-virtual {v9, v10, v4}, Lcom/miui/misight/MiSightStub;->constructEvent(I[Ljava/lang/Object;)Lcom/miui/misight/MiEventStub;

    move-result-object v4

    .line 902
    .local v4, "event":Lcom/miui/misight/MiEventStub;
    invoke-static {}, Lcom/miui/misight/MiSightStub;->get()Lcom/miui/misight/MiSightStub;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/misight/MiSightStub;->sendEvent(Lcom/miui/misight/MiEventStub;)V

    .line 904
    const-string v5, "FRP verifyChallenge failed"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v5

    .line 908
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "event":Lcom/miui/misight/MiEventStub;
    .end local v7    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v8    # "pwdToken":[B
    :cond_61
    iget v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-ne v0, v4, :cond_8c

    .line 909
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-nez v0, :cond_73

    .line 910
    const-string v0, "No weaver service to verify SP-based FRP credential"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 913
    :cond_73
    iget-object v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 914
    .local v0, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, v2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v4

    .line 915
    .local v4, "pwdToken":[B
    iget v5, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 917
    .local v5, "weaverSlot":I
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    return-object v6

    .line 919
    .end local v0    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v4    # "pwdToken":[B
    .end local v5    # "weaverSlot":I
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method
