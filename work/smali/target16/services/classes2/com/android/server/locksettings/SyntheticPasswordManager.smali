.class Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# static fields
.field public static final DEFAULT_PASSWORD:[B

.field static final FAILURE_COUNTER_FILE_SIZE:I = 0x8

.field static final FAILURE_COUNTER_NAME:Ljava/lang/String; = "failure_counter"

.field public static final PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

.field public static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field public static final PERSONALIZATION_CONTEXT:[B

.field public static final PERSONALIZATION_E0:[B

.field public static final PERSONALIZATION_FBE_KEY:[B

.field public static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field public static final PERSONALIZATION_PASSWORD_HASH:[B

.field public static final PERSONALIZATION_PASSWORD_METRICS:[B

.field public static final PERSONALIZATION_SECDISCARDABLE:[B

.field public static final PERSONALIZATION_SP_GK_AUTH:[B

.field public static final PERSONALIZATION_SP_SPLIT:[B

.field public static final PERSONALIZATION_USER_GK_AUTH:[B

.field public static final PERSONALIZATION_WEAVER_KEY:[B

.field public static final PERSONALIZATION_WEAVER_PASSWORD:[B

.field public static final PERSONALIZATION_WEAVER_TOKEN:[B


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field public mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile mWeaver:Landroid/hardware/weaver/IWeaver;

.field public mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

.field public tokenMap:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/IWeaver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/IWeaver;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_AUTHSECRET_KEY()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_CONTEXT()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_CONTEXT:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_E0()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_FBE_KEY()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_KEY_STORE_PASSWORD()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_PASSWORD_HASH()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_PASSWORD_METRICS()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SP_GK_AUTH()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SP_SPLIT()[B
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 156
    const-string v0, "default-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 199
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SECDISCARDABLE:[B

    .line 200
    const-string v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 201
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 202
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 203
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 204
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 205
    const-string/jumbo v0, "vendor-authsecret-encryption-key"

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    .line 207
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 208
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 209
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 210
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_PASSWORD:[B

    .line 211
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_KEY:[B

    .line 212
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_TOKEN:[B

    .line 213
    const-string/jumbo v0, "password-metrics"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 214
    const-string v0, "android-synthetic-password-personalization-context"

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_CONTEXT:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .registers 6

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 557
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 558
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 559
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 560
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    return-void
.end method

.method public static bytesToHex([B)[B
    .registers 1

    .line 2082
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static fakeUserId(I)I
    .registers 2

    .line 0
    const v0, 0x186a0

    add-int/2addr p0, v0

    return p0
.end method

.method public static generateProtectorId()J
    .registers 4

    .line 2010
    :cond_0
    invoke-static {}, Lcom/android/server/locksettings/SecureRandomUtils;->randomLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static hashInt(I)I
    .registers 2

    .line 0
    const v0, 0x1e35a7bd

    mul-int/2addr p0, v0

    return p0
.end method

.method public static isNoneCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 1204
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method

.method private native nativeSidFromPasswordHandle([B)J
.end method

.method public static verifyCredentialResponseFromWeaverResponse(Landroid/hardware/weaver/WeaverReadResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3

    .line 731
    iget v0, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    if-eqz v0, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 754
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 739
    :cond_d
    iget-wide v0, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 745
    :cond_18
    iget-wide v0, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 746
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    .line 745
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->credIncorrect(Ljava/time/Duration;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 732
    :cond_23
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method


# virtual methods
.method public addPendingToken([BIILcom/android/server/locksettings/EscrowTokenStateChangeCallback;)J
    .registers 10

    .line 1322
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateProtectorId()J

    move-result-wide v0

    .line 1323
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1324
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_1e
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager-IA;)V

    .line 1327
    iput p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    const/16 p2, 0x4000

    .line 1328
    invoke-static {p2}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object p2

    .line 1329
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 1330
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    iget v3, v3, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    invoke-static {v3}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1331
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_TOKEN:[B

    invoke-static {v3, v4, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_49

    .line 1334
    :cond_45
    iput-object p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 1335
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1337
    :goto_49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 1338
    iput-object p4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/server/locksettings/EscrowTokenStateChangeCallback;

    .line 1340
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public clearSidForUser(I)V
    .registers 5

    .line 901
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p4

    .line 1054
    const-string v2, "Failed to enroll LSKF for new SP protector for user "

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateProtectorId()J

    move-result-wide v3

    .line 1055
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v7

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->derivePinLength(IZI)I

    move-result v6

    .line 1057
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_23

    move-object v6, v8

    :goto_20
    move-object/from16 v7, p2

    goto :goto_2c

    .line 1058
    :cond_23
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v7

    invoke-static {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(II)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v6

    goto :goto_20

    .line 1059
    :goto_2c
    invoke-virtual {v0, v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v9

    .line 1063
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "SyntheticPasswordManager"

    const-string v12, "Creating LSKF-based protector %016x for user %d"

    invoke-static {v11, v12, v10}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    invoke-virtual {v7}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverDisabledOnUnsecuredUsers()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1068
    const-string v10, "Not using Weaver for unsecured user (disabled by config)"

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v8

    goto :goto_5a

    .line 1070
    :cond_56
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v10

    :goto_5a
    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    if-eqz v10, :cond_a7

    .line 1075
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v1

    .line 1076
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    const-string v15, "Enrolling LSKF for user %d into Weaver slot %d"

    invoke-static {v11, v15, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToWeaverKey([B)[B

    move-result-object v2

    .line 1077
    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B

    move-result-object v2

    if-eqz v2, :cond_90

    .line 1083
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1084
    iget-object v8, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v8, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1086
    invoke-virtual {v0, v6, v12, v5, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 1088
    invoke-virtual {v0, v9, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v1

    :goto_8d
    move-object v8, v1

    goto/16 :goto_11c

    .line 1080
    :cond_90
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to enroll user password under weaver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_a7
    invoke-virtual {v7}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v10

    if-nez v10, :cond_10f

    .line 1102
    :try_start_ad
    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b4} :catch_b5

    goto :goto_ba

    .line 1104
    :catch_b5
    const-string v10, "Failed to clear SID from gatekeeper"

    invoke-static {v11, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :goto_ba
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v13, "Enrolling LSKF for user %d into Gatekeeper"

    invoke-static {v11, v13, v10}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    :try_start_c7
    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result v10

    .line 1110
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    move-result-object v11

    .line 1109
    invoke-interface {v1, v10, v8, v8, v11}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_d3} :catch_f9

    .line 1115
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v8

    if-nez v8, :cond_e4

    .line 1119
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1120
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v13

    goto :goto_10f

    .line 1116
    :cond_e4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f9
    move-exception v0

    .line 1112
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1123
    :cond_10f
    :goto_10f
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v1

    .line 1122
    invoke-virtual {v0, v9, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v1

    .line 1125
    invoke-virtual {v0, v6, v12, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto/16 :goto_8d

    .line 1127
    :goto_11c
    invoke-virtual {v7}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_132

    .line 1128
    const-string/jumbo v1, "pwd"

    invoke-virtual {v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    move-object/from16 v2, p3

    move-object v1, v7

    .line 1129
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)V

    :cond_132
    move-wide v1, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move-object v5, v8

    move-wide v6, v13

    move/from16 v8, p4

    .line 1131
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V

    move-wide v3, v1

    move v5, v8

    .line 1133
    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    return-wide v3
.end method

.method public final createSecdiscardable(JI)[B
    .registers 5

    const/16 v0, 0x4000

    .line 1885
    invoke-static {v0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object v0

    .line 1886
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    return-object v0
.end method

.method public createSpBlob(Ljava/lang/String;[B[BJ)[B
    .registers 6

    .line 2000
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public final createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V
    .registers 17

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_d

    if-ne p3, v1, :cond_7

    goto :goto_d

    .line 1406
    :cond_7
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->getSyntheticPassword()[B

    move-result-object v0

    :goto_b
    move-object v4, v0

    goto :goto_12

    .line 1404
    :cond_d
    :goto_d
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->getEscrowSecret()[B

    move-result-object v0

    goto :goto_b

    .line 1408
    :goto_12
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSpBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object p5

    .line 1415
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->-$$Nest$fgetmVersion(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)B

    move-result p4

    const/4 v0, 0x3

    if-ne p4, v0, :cond_25

    move v1, v0

    .line 1418
    :cond_25
    invoke-static {v1, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->create(BB[B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object p3

    .line 1419
    const-string/jumbo v3, "spblob"

    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->toByte()[B

    move-result-object v4

    move-object v2, p0

    move-wide v5, p1

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public createTokenBasedProtector(JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Z
    .registers 16

    .line 1360
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1363
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

    if-nez v0, :cond_27

    return v1

    .line 1367
    :cond_27
    invoke-virtual {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_35

    .line 1368
    const-string p0, "User is not escrowable"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1371
    :cond_35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Creating token-based protector %016x for user %d"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 1374
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v4

    .line 1375
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Using Weaver slot %d for new token-based protector"

    invoke-static {v3, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 1376
    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B

    move-result-object v2

    if-nez v2, :cond_6c

    .line 1377
    const-string p0, "Failed to enroll weaver secret when activating token"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1380
    :cond_6c
    invoke-virtual {p0, v4, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1381
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1383
    :cond_74
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1384
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getTokenBasedProtectorType(I)B

    move-result v5

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V

    .line 1386
    invoke-virtual {v2, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 1387
    iget-object p0, v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    iget-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/server/locksettings/EscrowTokenStateChangeCallback;

    if-eqz p0, :cond_a7

    .line 1389
    invoke-interface {p0, v3, v4, v10}, Lcom/android/server/locksettings/EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    :cond_a7
    const/4 p0, 0x1

    return p0
.end method

.method public decryptSpBlob(Ljava/lang/String;[B[B)[B
    .registers 4

    .line 1994
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final derivePinLength(IZI)I
    .registers 4

    if-eqz p2, :cond_f

    .line 1138
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1139
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x6

    if-ge p1, p0, :cond_e

    goto :goto_f

    :cond_e
    return p1

    :cond_f
    :goto_f
    const/4 p0, -0x1

    return p0
.end method

.method public destroyAllWeakTokenBasedProtectors(I)V
    .registers 8

    .line 1823
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1824
    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1825
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1826
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v4

    .line 1828
    iget-byte v4, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 1829
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(JI)V

    goto :goto_d

    :cond_2e
    return-void
.end method

.method public destroyEscrowData(I)V
    .registers 5

    .line 947
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 948
    const-string/jumbo v0, "p1"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public destroyLskfBasedProtector(JI)V
    .registers 7

    .line 1838
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Destroying LSKF-based protector %016x for user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorCommon(JI)V

    .line 1840
    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1841
    const-string/jumbo v0, "metrics"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1842
    const-string v0, "failure_counter"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public final destroyProtectorCommon(JI)V
    .registers 5

    .line 1846
    const-string/jumbo v0, "spblob"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1847
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorKey(Ljava/lang/String;)V

    .line 1848
    const-string/jumbo v0, "secdis"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1849
    const-string/jumbo v0, "weaver"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1850
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    :cond_1f
    return-void
.end method

.method public destroyProtectorKey(Ljava/lang/String;)V
    .registers 2

    .line 2005
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyProtectorKey(Ljava/lang/String;)V

    return-void
.end method

.method public final destroyState(Ljava/lang/String;JI)V
    .registers 5

    .line 1989
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    return-void
.end method

.method public destroyTokenBasedProtector(JI)V
    .registers 7

    .line 1812
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Destroying token-based protector %016x for user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    const-string/jumbo v0, "spblob"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 1815
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorCommon(JI)V

    .line 1816
    iget-byte v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 1817
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->notifyWeakEscrowTokenRemovedListeners(JI)V

    :cond_29
    return-void
.end method

.method public final destroyWeaverSlot(JI)V
    .registers 6

    .line 979
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 980
    const-string/jumbo v1, "weaver"

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_4d

    .line 982
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object p1

    .line 983
    const-string p2, "SyntheticPasswordManager"

    if-nez p1, :cond_1b

    .line 984
    const-string p0, "Cannot erase Weaver slot because Weaver is unavailable"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 987
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object p3

    .line 988
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_40

    .line 989
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "Erasing Weaver slot %d"

    invoke-static {p2, v1, p3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 990
    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B

    .line 991
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V

    return-void

    .line 993
    :cond_40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Weaver slot %d was already reused; not erasing it"

    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method public getCredentialType(JI)I
    .registers 5

    .line 828
    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, -0x1

    return p0

    .line 832
    :cond_b
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return p0
.end method

.method public getHardwareRateLimiter(Lcom/android/server/locksettings/LskfIdentifier;)I
    .registers 7

    .line 2209
    invoke-virtual {p1}, Lcom/android/server/locksettings/LskfIdentifier;->isSpecialCredential()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 2210
    iget p1, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    return v1

    :cond_17
    return v2

    .line 2219
    :cond_18
    iget-wide v3, p1, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    iget p1, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    const-string/jumbo v0, "weaver"

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    if-eqz p0, :cond_26

    return v1

    :cond_26
    return v2
.end method

.method public final getNextAvailableWeaverSlot()I
    .registers 5

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1029
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1030
    iget v2, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 1031
    iget v1, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 1032
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    const/4 v1, 0x0

    .line 1035
    :goto_2a
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_3e

    .line 1036
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1040
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Run out of weaver slots."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Landroid/app/admin/PasswordMetrics;
    .registers 6

    .line 1923
    const-string/jumbo v0, "metrics"

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    const/4 p2, 0x0

    .line 1924
    const-string p3, "SyntheticPasswordManager"

    if-nez p0, :cond_1a

    .line 1925
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Failed to read password metrics file for user %d"

    invoke-static {p3, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 1928
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveMetricsKey()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1930
    :try_start_1f
    new-array v0, v0, [B

    invoke-static {p1, v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    if-nez p0, :cond_3a

    .line 1933
    const-string p0, "Failed to decrypt password metrics file for user %d"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p0, p4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_38

    .line 1938
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object p2

    :catchall_38
    move-exception p0

    goto :goto_46

    .line 1936
    :cond_3a
    :try_start_3a
    invoke-static {p0}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->getMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object p0
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_38

    .line 1938
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object p0

    :goto_46
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1939
    throw p0
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 4

    .line 1345
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1346
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 1348
    :cond_f
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPinLength(JI)I
    .registers 5

    .line 820
    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, -0x1

    return p0

    .line 824
    :cond_b
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    return p0
.end method

.method public final getProtectorKeyAlias(J)Ljava/lang/String;
    .registers 3

    .line 2026
    const-string/jumbo p0, "synthetic_password_"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s%x"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpecialUserCredentialType(I)I
    .registers 5

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    .line 837
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq p1, v0, :cond_e

    if-eq p1, v2, :cond_e

    return v1

    .line 841
    :cond_e
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    if-nez p1, :cond_13

    return v1

    .line 844
    :cond_13
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p1

    iget p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-eq p1, v2, :cond_1c

    return p1

    .line 848
    :cond_1c
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    move-result p0

    return p0
.end method

.method public final getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 4

    const/16 v0, -0x270f

    if-ne p1, v0, :cond_b

    .line 853
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, -0x270e

    if-ne p1, v0, :cond_16

    .line 856
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->readRepairModePersistentData()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p0

    return-object p0

    .line 858
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown special user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTokenBasedProtectorType(I)B
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public final getUsedWeaverSlots()Ljava/util/Set;
    .registers 8

    .line 1009
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    .line 1010
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1011
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1012
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1013
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1014
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v4

    .line 1015
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_52
    return-object v1
.end method

.method public getWeaverAidlService()Landroid/hardware/weaver/IWeaver;
    .registers 5

    .line 602
    const-string p0, "SyntheticPasswordManager"

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 603
    invoke-static {v1}, Landroid/hardware/weaver/IWeaver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/weaver/IWeaver;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1e} :catch_5e

    if-nez v1, :cond_21

    return-object v0

    .line 614
    :cond_21
    :try_start_21
    invoke-interface {v1}, Landroid/hardware/weaver/IWeaver;->getInterfaceVersion()I

    move-result v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_57

    const/4 v3, 0x2

    if-ge v2, v3, :cond_42

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring AIDL weaver service v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because only v2 and later are supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 626
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found AIDL weaver service v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_57
    move-exception v1

    .line 616
    const-string v2, "Cannot get AIDL weaver service version"

    invoke-static {p0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 606
    :catch_5e
    const-string v1, "Does not have permissions to get AIDL weaver service"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getWeaverHidlService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 576
    :try_start_1
    invoke-static {p0}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object p0
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getWeaverService()Landroid/hardware/weaver/IWeaver;
    .registers 5

    monitor-enter p0

    .line 662
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v0, :cond_7

    .line 664
    monitor-exit p0

    return-object v0

    .line 668
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverServiceInternal()Landroid/hardware/weaver/IWeaver;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_31

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 670
    monitor-exit p0

    return-object v1

    .line 675
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/weaver/IWeaver;->getConfig()Landroid/hardware/weaver/WeaverConfig;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_3c
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_14} :catch_3c
    .catchall {:try_start_10 .. :try_end_14} :catchall_31

    if-eqz v2, :cond_33

    .line 680
    :try_start_16
    iget v3, v2, Landroid/hardware/weaver/WeaverConfig;->slots:I

    if-gtz v3, :cond_1b

    goto :goto_33

    .line 685
    :cond_1b
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    .line 686
    iput-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 687
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V

    .line 688
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Weaver service initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_31

    .line 689
    monitor-exit p0

    return-object v0

    :catchall_31
    move-exception v0

    goto :goto_46

    .line 681
    :cond_33
    :goto_33
    :try_start_33
    const-string v0, "SyntheticPasswordManager"

    const-string v2, "Invalid weaver config"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_31

    .line 682
    monitor-exit p0

    return-object v1

    :catch_3c
    move-exception v0

    .line 677
    :try_start_3d
    const-string v2, "SyntheticPasswordManager"

    const-string v3, "Failed to get weaver config"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_31

    .line 678
    monitor-exit p0

    return-object v1

    :goto_46
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_31

    throw v0
.end method

.method public final getWeaverServiceInternal()Landroid/hardware/weaver/IWeaver;
    .registers 6

    .line 632
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverAidlService()Landroid/hardware/weaver/IWeaver;

    move-result-object v0

    const/4 v1, 0x0

    .line 633
    const-string v2, "SyntheticPasswordManager"

    if-eqz v0, :cond_23

    .line 634
    const-string v3, "Using AIDL weaver service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :try_start_e
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;

    invoke-direct {v4, p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager-IA;)V

    const/4 p0, 0x0

    invoke-interface {v3, v4, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception p0

    .line 638
    const-string v1, "Unable to register Weaver death recipient"

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 645
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverHidlService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 647
    const-string v0, "Using HIDL weaver service"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v0, Lcom/android/server/locksettings/WeaverHidlAdapter;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/WeaverHidlAdapter;-><init>(Landroid/hardware/weaver/V1_0/IWeaver;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    move-exception p0

    .line 651
    const-string v0, "Failed to get HIDL weaver service."

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    :cond_3a
    const-string p0, "Device does not support weaver"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public hasAnyEscrowData(I)Z
    .registers 5

    .line 942
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "p1"

    .line 943
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public hasEscrowData(I)Z
    .registers 5

    .line 937
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "p1"

    .line 938
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public hasPasswordData(JI)Z
    .registers 5

    .line 1914
    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public hasPasswordMetrics(JI)Z
    .registers 5

    .line 1962
    const-string/jumbo v0, "metrics"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public hasSidForUser(I)Z
    .registers 5

    .line 905
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public final hasState(Ljava/lang/String;JI)Z
    .registers 5

    .line 1966
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isDeviceProvisioned()Z
    .registers 3

    .line 564
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method public final isWeaverDisabledOnUnsecuredUsers()Z
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110150

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Z
    .registers 7

    .line 920
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 921
    const-string/jumbo v3, "p1"

    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    .line 922
    invoke-virtual {p1, v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->setEscrowData([B[B)V

    if-eqz v0, :cond_18

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final loadSecdiscardable(JI)[B
    .registers 5

    .line 1899
    const-string/jumbo v0, "secdis"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadState(Ljava/lang/String;JI)[B
    .registers 5

    .line 1970
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadSyntheticPasswordHandle(I)[B
    .registers 5

    .line 911
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadWeaverSlot(JI)I
    .registers 7

    .line 953
    const-string/jumbo v0, "weaver"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    const/4 p3, -0x1

    if-eqz p0, :cond_3e

    .line 954
    array-length v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    goto :goto_3e

    .line 957
    :cond_f
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 958
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 959
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 960
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_39

    .line 961
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid weaver slot version for protector "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 964
    :cond_39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    :cond_3e
    :goto_3e
    return p3
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 8

    .line 1187
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 1188
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    .line 1189
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    .line 1191
    const-string v0, "SyntheticPasswordManager"

    const-string v2, "Migrating FRP credential to persistent data block"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v0, "pwd"

    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1194
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result p1

    if-eq p1, v1, :cond_3b

    .line 1196
    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p4, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    return-void

    .line 1198
    :cond_3b
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    :cond_40
    return-void
.end method

.method public migrateKeyNamespace()Z
    .registers 6

    .line 2090
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    .line 2091
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2092
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2093
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2095
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    move-result-object v3

    .line 2094
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_22

    :cond_3c
    return v1
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V
    .registers 5

    .line 888
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, v0, p2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_3a

    .line 892
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_17

    .line 896
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    return-void

    .line 893
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to create new SID for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " response: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3a
    move-exception p0

    .line 890
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to create new SID for user"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public newSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .registers 3

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 876
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-result-object v0

    .line 877
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V

    return-object v0
.end method

.method public final notifyWeakEscrowTokenRemovedListeners(JI)V
    .registers 8

    .line 2114
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    if-lez v0, :cond_27

    add-int/lit8 v0, v0, -0x1

    .line 2119
    :try_start_a
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;->onWeakEscrowTokenRemoved(JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    move-exception p1

    goto :goto_21

    :catch_18
    move-exception v1

    .line 2121
    :try_start_19
    const-string v2, "SyntheticPasswordManager"

    const-string v3, "Exception while notifying WeakEscrowTokenRemovedListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    goto :goto_6

    .line 2126
    :goto_21
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2127
    throw p1

    .line 2126
    :cond_27
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public protectorExists(JI)Z
    .registers 5

    .line 1807
    const-string/jumbo v0, "spblob"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public readFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;)I
    .registers 5

    .line 2167
    iget-wide v0, p1, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    iget p1, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    const-string v2, "failure_counter"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_42

    .line 2168
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    goto :goto_42

    .line 2175
    :cond_13
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2176
    array-length v1, p0

    invoke-virtual {v0, p0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2177
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 2179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2180
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hashInt(I)I

    move-result v1

    if-eq v0, v1, :cond_41

    .line 2185
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2181
    const-string v0, "SyntheticPasswordManager"

    const-string v1, "%s file is corrupted! counter=%d, hash=0x%x"

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_41
    return p0

    :cond_42
    :goto_42
    return p1
.end method

.method public readVendorAuthSecret(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)[B
    .registers 6

    .line 2147
    const-string/jumbo v0, "vendor_auth_secret"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 2151
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveVendorAuthSecretEncryptionKey()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 2153
    :try_start_12
    new-array p2, p2, [B

    invoke-static {p1, p2, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 2155
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 2156
    throw p0
.end method

.method public refreshPinLengthOnDisk(Landroid/app/admin/PasswordMetrics;JI)Z
    .registers 16

    .line 1592
    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 1597
    :cond_b
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1598
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    iget p1, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v3, :cond_18

    move v1, v4

    :cond_18
    invoke-virtual {p0, v2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->derivePinLength(IZI)I

    move-result p1

    .line 1600
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    if-eq v1, p1, :cond_32

    .line 1601
    iput p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 1602
    const-string/jumbo v6, "pwd"

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v7

    move-object v5, p0

    move-wide v8, p2

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1603
    invoke-virtual {v5, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    :cond_32
    return v4
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 2

    .line 2104
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public removePendingToken(JI)Z
    .registers 6

    .line 1353
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1356
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method

.method public removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V
    .registers 6

    .line 805
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(Ljava/lang/String;I)Ljava/util/List;

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

    .line 807
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 808
    invoke-virtual {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorKey(Ljava/lang/String;)V

    goto :goto_d

    .line 813
    :cond_28
    :try_start_28
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    return-void

    .line 815
    :catch_30
    const-string p0, "SyntheticPasswordManager"

    const-string p1, "Failed to clear SID from gatekeeper"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V
    .registers 14

    .line 932
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->-$$Nest$fgetmEncryptedEscrowSplit0(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)[B

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v1, "e0"

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 933
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->-$$Nest$fgetmEscrowSplit1(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)[B

    move-result-object v7

    const-wide/16 v8, 0x0

    const-string/jumbo v6, "p1"

    move v10, v5

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public final savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)V
    .registers 13

    .line 1949
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveMetricsKey()[B

    move-result-object p2

    const/4 v0, 0x0

    .line 1951
    :try_start_5
    new-array v0, v0, [B

    new-instance v1, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1953
    invoke-virtual {v1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->serialize()[B

    move-result-object p1

    .line 1951
    invoke-static {p2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    .line 1954
    const-string/jumbo v2, "metrics"

    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    .line 1956
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1957
    throw p0
.end method

.method public final saveSecdiscardable(J[BI)V
    .registers 11

    .line 1895
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-wide v3, p1

    move-object v2, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public final saveState(Ljava/lang/String;[BJI)V
    .registers 8

    .line 1981
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move-wide v0, p3

    move-object p4, p1

    move p1, p5

    move-object p5, p2

    move-wide p2, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    return-void
.end method

.method public final saveSyntheticPasswordHandle([BI)V
    .registers 9

    .line 915
    const-string v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 916
    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    return-void
.end method

.method public final saveWeaverSlot(IJI)V
    .registers 13

    const/4 v0, 0x5

    .line 972
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 973
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 974
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 975
    const-string/jumbo v3, "weaver"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public scrypt([B[BIIII)[B
    .registers 7

    .line 2075
    new-instance p0, Landroid/security/Scrypt;

    invoke-direct {p0}, Landroid/security/Scrypt;-><init>()V

    invoke-virtual/range {p0 .. p6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public final secureConcat([B[B)[B
    .registers 5

    .line 1856
    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newNonMovableByteArray(I)[B

    move-result-object p0

    .line 1857
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1858
    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public final shouldSynchronizeFrpCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;I)Z
    .registers 5

    .line 1208
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1211
    :cond_a
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 1212
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result p2

    if-nez p2, :cond_19

    return v1

    .line 1225
    :cond_19
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isNoneCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isDeviceProvisioned()Z

    move-result p0

    if-nez p0, :cond_2d

    .line 1226
    const-string p0, "SyntheticPasswordManager"

    const-string p1, "Not clearing FRP credential yet because device is not yet provisioned"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldWriteRepairModeCredential(I)Z
    .registers 5

    .line 1293
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1294
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->canUserEnterRepairMode(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SyntheticPasswordManager"

    if-nez v0, :cond_1f

    .line 1295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d can\'t enter repair mode"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1298
    :cond_1f
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 1299
    const-string p0, "Can\'t write repair mode credential while repair mode is already active"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1302
    :cond_2d
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 1303
    const-string p0, "Can\'t write repair mode credential while GSI is running"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method public sidFromPasswordHandle([B)J
    .registers 2

    .line 2070
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 11

    .line 2041
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    :goto_8
    move-object v2, v0

    goto :goto_f

    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    goto :goto_8

    :goto_f
    if-nez p2, :cond_1f

    .line 2043
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/16 p0, 0x20

    .line 2044
    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    .line 2046
    :cond_1f
    iget-object v3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    const/4 v0, 0x1

    shl-int v4, v0, p1

    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    shl-int v5, v0, p1

    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    shl-int v6, v0, p1

    const/16 v7, 0x20

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public final stretchedLskfToGkPassword([B)[B
    .registers 2

    .line 2051
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final stretchedLskfToWeaverKey([B)[B
    .registers 3

    .line 2056
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_KEY:[B

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p1

    .line 2059
    :try_start_a
    array-length v0, p1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    if-lt v0, p0, :cond_1b

    .line 2062
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 2064
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object p0

    :catchall_19
    move-exception p0

    goto :goto_24

    .line 2060
    :cond_1b
    :try_start_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "weaver key length too small"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_19

    .line 2064
    :goto_24
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 2065
    throw p0
.end method

.method public final syncState(I)V
    .registers 2

    .line 1985
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->syncSyntheticPasswordState(I)V

    return-void
.end method

.method public final synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 7

    .line 1234
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->shouldSynchronizeFrpCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1235
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Syncing Gatekeeper-based FRP credential tied to user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isNoneCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1237
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v0, 0x1

    .line 1238
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 1237
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    return-void

    .line 1240
    :cond_26
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_2d
    return-void
.end method

.method public final synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 7

    .line 1247
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->shouldSynchronizeFrpCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "SyntheticPasswordManager"

    const-string v1, "Syncing Weaver-based FRP credential tied to user %d"

    invoke-static {v0, v1, p3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isNoneCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)Z

    move-result p3

    if-nez p3, :cond_26

    .line 1250
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p3, 0x2

    .line 1251
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 1250
    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    return-void

    .line 1253
    :cond_26
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_2d
    return-void
.end method

.method public final transformUnderSecdiscardable([B[B)[B
    .registers 4

    .line 1874
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SECDISCARDABLE:[B

    filled-new-array {p2}, [[B

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p2

    .line 1876
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureConcat([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final transformUnderWeaverSecret([B[B)[B
    .registers 4

    .line 1863
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_PASSWORD:[B

    filled-new-array {p2}, [[B

    move-result-object p2

    .line 1864
    invoke-static {v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p2

    .line 1867
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureConcat([B[B)[B

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 1869
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1870
    throw p0
.end method

.method public unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 29

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v9, p4

    move/from16 v6, p5

    .line 1430
    new-instance v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    .line 1432
    const-string v7, "SyntheticPasswordManager"

    if-nez v0, :cond_27

    .line 1434
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Synthetic password not found for user %d"

    invoke-static {v7, v1, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v10

    .line 1443
    :cond_27
    const-string/jumbo v0, "pwd"

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    const/4 v8, -0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_3e

    .line 1447
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1448
    iget v12, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    move/from16 v21, v12

    move-object v12, v0

    move/from16 v0, v21

    goto :goto_40

    :cond_3e
    move v0, v8

    move-object v12, v11

    .line 1450
    :goto_40
    invoke-virtual {v9, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v13

    if-nez v13, :cond_60

    .line 1452
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {v9}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1451
    const-string v1, "Credential type mismatch: stored type is %s but provided type is %s"

    invoke-static {v7, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1454
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v10

    .line 1464
    :cond_60
    :try_start_60
    invoke-virtual {v1, v9, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v13
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_25a

    .line 1466
    :try_start_64
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v8, :cond_ce

    .line 1469
    iput-boolean v14, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->usedWeaver:Z

    .line 1470
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v8

    if-nez v8, :cond_94

    .line 1472
    const-string v0, "Protector uses Weaver, but Weaver is unavailable"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_8c

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    :catchall_8c
    move-exception v0

    move-object v1, v11

    move-object v8, v1

    move-object v12, v8

    :goto_90
    move-object v14, v12

    :goto_91
    move-object v11, v13

    goto/16 :goto_25f

    .line 1476
    :cond_94
    :try_start_94
    invoke-virtual {v1, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToWeaverKey([B)[B

    move-result-object v12
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_8c

    .line 1477
    :try_start_98
    invoke-virtual {v1, v8, v0, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Landroid/hardware/weaver/WeaverReadResponse;

    move-result-object v0

    .line 1478
    iget-object v8, v0, Landroid/hardware/weaver/WeaverReadResponse;->value:[B
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_c9

    .line 1479
    :try_start_9e
    iget v14, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    if-eqz v14, :cond_bd

    .line 1480
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyCredentialResponseFromWeaverResponse(Landroid/hardware/weaver/WeaverReadResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_b8

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    :catchall_b8
    move-exception v0

    move-object v14, v8

    move-object v1, v11

    move-object v8, v1

    goto :goto_91

    .line 1483
    :cond_bd
    :try_start_bd
    invoke-virtual {v1, v13, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_b8

    move-object/from16 v15, p1

    move-object v14, v8

    move-object/from16 v20, v11

    :goto_c6
    move-object v11, v0

    goto/16 :goto_202

    :catchall_c9
    move-exception v0

    move-object v1, v11

    move-object v8, v1

    move-object v14, v8

    goto :goto_91

    :cond_ce
    if-eqz v12, :cond_d4

    .line 1488
    :try_start_d0
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-nez v0, :cond_d8

    :cond_d4
    move-object/from16 v15, p1

    goto/16 :goto_1b0

    .line 1495
    :cond_d8
    invoke-virtual {v1, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    move-result-object v20
    :try_end_dc
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_8c

    .line 1498
    :try_start_dc
    invoke-static {v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result v16

    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-wide/16 v17, 0x0

    move-object/from16 v15, p1

    move-object/from16 v19, v0

    invoke-interface/range {v15 .. v20}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_ec} :catch_194
    .catchall {:try_start_dc .. :try_end_ec} :catchall_18f

    move-object/from16 v8, v20

    .line 1505
    :try_start_ee
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_15f

    .line 1507
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1508
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0
    :try_end_fc
    .catchall {:try_start_ee .. :try_end_fc} :catchall_10b

    if-eqz v0, :cond_154

    .line 1511
    :try_start_fe
    invoke-static {v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result v0

    iget-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_104} :catch_111
    .catchall {:try_start_fe .. :try_end_104} :catchall_10b

    move-object/from16 v15, p1

    :try_start_106
    invoke-interface {v15, v0, v2, v8, v8}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10a} :catch_10f
    .catchall {:try_start_106 .. :try_end_10a} :catchall_10b

    goto :goto_11b

    :catchall_10b
    move-exception v0

    :goto_10c
    move-object v1, v11

    move-object v12, v1

    goto :goto_90

    :catch_10f
    move-exception v0

    goto :goto_114

    :catch_111
    move-exception v0

    move-object/from16 v15, p1

    .line 1514
    :goto_114
    :try_start_114
    const-string v2, "Fail to invoke gatekeeper.enroll"

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1515
    sget-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1518
    :goto_11b
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_13f

    .line 1520
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1523
    invoke-virtual {v9}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    iput v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1524
    const-string/jumbo v2, "pwd"

    invoke-virtual {v12}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1525
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    const/4 v0, 0x0

    .line 1526
    invoke-virtual {v1, v12, v0, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_156

    .line 1528
    :cond_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to re-enroll user password for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    :cond_154
    move-object/from16 v15, p1

    .line 1540
    :goto_156
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v2

    move-object/from16 v20, v8

    goto :goto_1d1

    :cond_15f
    if-ne v2, v14, :cond_17b

    .line 1534
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_16b
    .catchall {:try_start_114 .. :try_end_16b} :catchall_10b

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    .line 1537
    :cond_17b
    :try_start_17b
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_17f
    .catchall {:try_start_17b .. :try_end_17f} :catchall_10b

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    :catchall_18f
    move-exception v0

    move-object/from16 v8, v20

    goto/16 :goto_10c

    :catch_194
    move-exception v0

    move-object/from16 v8, v20

    .line 1501
    :try_start_197
    const-string v1, "gatekeeper verify failed"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1a0
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_10b

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    .line 1489
    :goto_1b0
    :try_start_1b0
    invoke-virtual {v9}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 1490
    const-string v0, "Missing Gatekeeper password handle for nonempty LSKF"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1bf
    .catchall {:try_start_1b0 .. :try_end_1bf} :catchall_8c

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    :cond_1cf
    move-object/from16 v20, v11

    .line 1542
    :goto_1d1
    :try_start_1d1
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    if-nez v0, :cond_1fa

    .line 1544
    const-string/jumbo v0, "secdiscardable file not found"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1e1
    .catchall {:try_start_1d1 .. :try_end_1e1} :catchall_1f1

    .line 1574
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    :catchall_1f1
    move-exception v0

    move-object v1, v11

    move-object v12, v1

    move-object v14, v12

    :goto_1f5
    move-object v11, v13

    move-object/from16 v8, v20

    goto/16 :goto_25f

    .line 1548
    :cond_1fa
    :try_start_1fa
    invoke-virtual {v1, v13, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v0
    :try_end_1fe
    .catchall {:try_start_1fa .. :try_end_1fe} :catchall_1f1

    move-object v12, v11

    move-object v14, v12

    goto/16 :goto_c6

    :goto_202
    if-eqz p6, :cond_212

    .line 1554
    :try_start_204
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_207
    .catch Landroid/os/RemoteException; {:try_start_204 .. :try_end_207} :catch_20b
    .catchall {:try_start_204 .. :try_end_207} :catchall_208

    goto :goto_212

    :catchall_208
    move-exception v0

    :goto_209
    move-object v1, v11

    goto :goto_1f5

    :catch_20b
    move-exception v0

    .line 1556
    :try_start_20c
    const-string/jumbo v8, "progressCallback throws exception"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_212
    .catchall {:try_start_20c .. :try_end_212} :catchall_208

    :cond_212
    :goto_212
    const/4 v4, 0x0

    move v8, v6

    move-object v5, v11

    move-wide v6, v2

    move-wide/from16 v2, p2

    .line 1559
    :try_start_218
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-result-object v0
    :try_end_21c
    .catchall {:try_start_218 .. :try_end_21c} :catchall_257

    move-wide v7, v2

    :try_start_21d
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p5

    move-object v3, v0

    move-object v2, v15

    .line 1563
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1567
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-eqz v0, :cond_247

    invoke-virtual {v9}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_247

    .line 1568
    invoke-virtual {v1, v7, v8, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasPasswordMetrics(JI)Z

    move-result v0

    if-nez v0, :cond_247

    .line 1569
    iget-object v3, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-wide v4, v7

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)V

    .line 1571
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V
    :try_end_247
    .catchall {:try_start_21d .. :try_end_247} :catchall_208

    .line 1574
    :cond_247
    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static/range {v20 .. v20}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object v10

    :catchall_257
    move-exception v0

    move-object v11, v5

    goto :goto_209

    :catchall_25a
    move-exception v0

    move-object v1, v11

    move-object v8, v1

    move-object v12, v8

    move-object v14, v12

    .line 1574
    :goto_25f
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1575
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1576
    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1577
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1578
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 1579
    throw v0
.end method

.method public unlockTokenBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 14

    .line 1615
    const-string/jumbo v0, "spblob"

    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    if-nez v0, :cond_27

    .line 1617
    new-instance p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 1618
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1619
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    const-string/jumbo p3, "spblob not found for protector %016x, user %d"

    invoke-static {p2, p3, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 1622
    :cond_27
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 1623
    iget-byte v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public final unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 16

    .line 1650
    new-instance v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 1651
    invoke-virtual {p0, p2, p3, p6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 1652
    const-string v1, "SyntheticPasswordManager"

    if-nez v0, :cond_18

    .line 1653
    const-string/jumbo p0, "secdiscardable file not found"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v8

    .line 1657
    :cond_18
    invoke-virtual {p0, p2, p3, p6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4e

    .line 1659
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 1661
    const-string p0, "Protector uses Weaver, but Weaver is unavailable"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v8

    :cond_2f
    const/4 v4, 0x0

    .line 1665
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Landroid/hardware/weaver/WeaverReadResponse;

    move-result-object v2

    .line 1666
    iget-object v3, v2, Landroid/hardware/weaver/WeaverReadResponse;->value:[B

    .line 1667
    iget v2, v2, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    if-nez v2, :cond_44

    if-nez v3, :cond_3d

    goto :goto_44

    .line 1674
    :cond_3d
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_TOKEN:[B

    .line 1675
    invoke-static {v3, v1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    goto :goto_4e

    .line 1669
    :cond_44
    :goto_44
    const-string p0, "Failed to retrieve Weaver secret when unlocking token-based protector"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v8

    .line 1680
    :cond_4e
    :goto_4e
    invoke-virtual {p0, p5, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v7, p6

    .line 1681
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    move-result-object v2

    iput-object v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    if-eqz v2, :cond_72

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p6

    .line 1684
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    iput-object p0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez p0, :cond_71

    .line 1688
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_71
    return-object v8

    .line 1691
    :cond_72
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object p0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->response:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v8
.end method

.method public unlockWeakTokenBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 13

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move v6, p5

    .line 1643
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 2

    .line 2110
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public final unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .registers 18

    move/from16 v8, p7

    .line 1698
    const-string/jumbo v0, "spblob"

    invoke-virtual {p0, v0, p1, p2, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 1702
    :cond_d
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 1703
    iget-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_36

    if-eq v2, v4, :cond_36

    if-ne v2, v6, :cond_1d

    goto :goto_36

    .line 1706
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown blob version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1708
    :cond_36
    :goto_36
    iget-byte v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    if-ne v3, p3, :cond_cc

    if-ne v2, v6, :cond_47

    .line 1713
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    invoke-static {v2, v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v2

    goto :goto_51

    .line 1716
    :cond_47
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    invoke-virtual {p0, v2, v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSpBlob(Ljava/lang/String;[B[B)[B

    move-result-object v2

    .line 1719
    :goto_51
    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_6a

    .line 1720
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Fail to decrypt SP for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1723
    :cond_6a
    new-instance v7, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    iget-byte v9, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    invoke-direct {v7, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;-><init>(B)V

    .line 1724
    iget-byte v9, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    if-eq v9, v6, :cond_7c

    if-ne v9, v4, :cond_78

    goto :goto_7c

    .line 1732
    :cond_78
    invoke-virtual {v7, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->recreateDirectly([B)V

    goto :goto_9a

    .line 1726
    :cond_7c
    :goto_7c
    invoke-virtual {p0, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Z

    move-result v4

    if-nez v4, :cond_97

    .line 1727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User is not escrowable: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1730
    :cond_97
    invoke-virtual {v7, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->recreateFromEscrow([B)V

    .line 1734
    :goto_9a
    iget-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    if-ne v1, v6, :cond_ca

    .line 1735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading v1 SP blob for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", protectorType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-byte v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p4

    move-object v4, v7

    move-wide v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V

    .line 1739
    invoke-virtual {p0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    return-object v4

    :cond_ca
    move-object v4, v7

    return-object v4

    .line 1709
    :cond_cc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid protector type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    .line 1753
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveGkPassword()[B

    move-result-object p2

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14

    .line 1759
    const-string v1, "SyntheticPasswordManager"

    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v6

    if-nez v6, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    move-object v2, p1

    move-object v7, p2

    move-wide v4, p3

    move v3, p5

    .line 1767
    :try_start_e
    invoke-interface/range {v2 .. v7}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_7c

    .line 1773
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_63

    .line 1775
    new-instance v4, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v4}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 1776
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1777
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1779
    :try_start_2f
    invoke-interface {p1, p5, v6, p2, p2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception v0

    .line 1782
    const-string v5, "Failed to invoke gatekeeper.enroll"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1783
    sget-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1785
    :goto_3c
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v5

    if-nez v5, :cond_4e

    .line 1786
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 1787
    invoke-virtual {p0, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1789
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 1793
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Fail to re-enroll SP handle for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-object v4

    :cond_63
    const/4 p0, 0x1

    if-ne v4, p0, :cond_74

    .line 1798
    const-string p0, "Gatekeeper verification of synthetic password failed with RESPONSE_RETRY"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 1801
    :cond_74
    const-string p0, "Gatekeeper verification of synthetic password failed with RESPONSE_ERROR"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :catch_7c
    move-exception v0

    move-object p0, v0

    .line 1770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to verify with gatekeeper "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public verifySpecialUserCredential(ILandroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13

    .line 1149
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p1

    .line 1150
    iget p4, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v0, 0x1

    const-string v1, "SyntheticPasswordManager"

    if-ne p4, v0, :cond_37

    .line 1151
    iget-object p4, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p4

    .line 1152
    invoke-virtual {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object p3

    .line 1156
    :try_start_15
    iget p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result v3

    iget-object v6, p4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1158
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    move-result-object v7

    const-wide/16 v4, 0x0

    move-object v2, p2

    .line 1156
    invoke-interface/range {v2 .. v7}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_28} :catch_2d

    .line 1163
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :catch_2d
    move-exception v0

    move-object p0, v0

    .line 1160
    const-string p1, "Persistent data credential verifyChallenge failed"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_37
    const/4 p2, 0x2

    if-ne p4, p2, :cond_61

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object p2

    if-nez p2, :cond_48

    .line 1167
    const-string p0, "No weaver service to verify SP-based persistent data credential"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 1170
    :cond_48
    iget-object p4, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p4

    .line 1171
    invoke-virtual {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object p3

    .line 1172
    iget p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 1175
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToWeaverKey([B)[B

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Landroid/hardware/weaver/WeaverReadResponse;

    move-result-object p0

    .line 1176
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyCredentialResponseFromWeaverResponse(Landroid/hardware/weaver/WeaverReadResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 1178
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "persistentData.type must be TYPE_SP_GATEKEEPER or TYPE_SP_WEAVER, but is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OTHER_ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public final weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B
    .registers 8

    .line 700
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5a

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    iget v1, p0, Landroid/hardware/weaver/WeaverConfig;->slots:I

    if-ge p2, v1, :cond_5a

    if-nez p3, :cond_12

    .line 704
    iget p3, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    new-array p3, p3, [B

    goto :goto_17

    .line 705
    :cond_12
    array-length v1, p3

    iget v2, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    if-ne v1, v2, :cond_52

    :goto_17
    if-nez p4, :cond_1f

    .line 709
    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    invoke-static {p0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object p4

    :cond_1f
    const/4 p0, 0x0

    .line 712
    :try_start_20
    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/weaver/IWeaver;->write(I[B[B)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_3b
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_23} :catch_24

    return-object p4

    :catch_24
    move-exception p1

    .line 717
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "weaver write failed, slot: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :catch_3b
    move-exception p1

    .line 714
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "weaver write binder call failed, slot: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    .line 706
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid key size for weaver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 701
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid slot for weaver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Landroid/hardware/weaver/WeaverReadResponse;
    .registers 9

    .line 763
    const-string v0, "SyntheticPasswordManager"

    const/4 v1, -0x1

    if-eq p2, v1, :cond_ce

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    iget v1, p0, Landroid/hardware/weaver/WeaverConfig;->slots:I

    if-ge p2, v1, :cond_ce

    if-nez p3, :cond_12

    .line 767
    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    new-array p3, p0, [B

    goto :goto_17

    .line 768
    :cond_12
    array-length v1, p3

    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    if-ne v1, p0, :cond_c6

    :goto_17
    const/4 p0, 0x1

    .line 773
    :try_start_18
    invoke-interface {p1, p2, p3}, Landroid/hardware/weaver/IWeaver;->read(I[B)Landroid/hardware/weaver/WeaverReadResponse;

    move-result-object p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_a8

    .line 781
    iget p3, p1, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    if-eqz p3, :cond_a7

    if-eq p3, p0, :cond_92

    const/4 p0, 0x2

    if-eq p3, p0, :cond_5e

    const/4 p0, 0x3

    if-eq p3, p0, :cond_48

    .line 798
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver read unknown status "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", slot: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 785
    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 788
    :cond_5e
    iget-wide v1, p1, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_7c

    .line 789
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 791
    :cond_7c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 795
    :cond_92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver read failed (FAILED), slot: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return-object p1

    :catch_a8
    move-exception p1

    .line 775
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weaver read failed, slot: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    new-instance p1, Landroid/hardware/weaver/WeaverReadResponse;

    invoke-direct {p1}, Landroid/hardware/weaver/WeaverReadResponse;-><init>()V

    .line 777
    iput p0, p1, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    return-object p1

    .line 769
    :cond_c6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid key size for weaver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 764
    :cond_ce
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid slot for weaver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeFailureCounter(Lcom/android/server/locksettings/LskfIdentifier;I)V
    .registers 10

    const/16 v0, 0x8

    .line 2197
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2198
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2202
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hashInt(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/locksettings/LskfIdentifier;->protectorId:J

    iget v6, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    const-string v2, "failure_counter"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 2204
    iget p0, p1, Lcom/android/server/locksettings/LskfIdentifier;->userId:I

    invoke-virtual {v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    return-void
.end method

.method public writeRepairModeCredentialLocked(JI)Z
    .registers 8

    .line 1265
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->shouldWriteRepairModeCredential(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1268
    :cond_8
    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 1269
    const-string v2, "SyntheticPasswordManager"

    if-nez v0, :cond_21

    .line 1270
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Password data not found for user %d"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1273
    :cond_21
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1274
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isNoneCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1275
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "User %d has NONE credential"

    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1278
    :cond_39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Writing repair mode credential tied to user %d"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result p1

    const/4 p2, -0x1

    const/4 v1, 0x1

    if-eq p1, p2, :cond_59

    .line 1282
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p2, 0x2

    .line 1283
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p3

    .line 1282
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRepairModePersistentData(II[B)V

    goto :goto_62

    .line 1286
    :cond_59
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1287
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 1286
    invoke-virtual {p0, v1, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRepairModePersistentData(II[B)V

    :goto_62
    return v1
.end method

.method public writeVendorAuthSecret([BLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V
    .registers 11

    .line 2134
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveVendorAuthSecretEncryptionKey()[B

    move-result-object p2

    const/4 v0, 0x0

    .line 2136
    :try_start_5
    new-array v0, v0, [B

    invoke-static {p2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    .line 2138
    const-string/jumbo v2, "vendor_auth_secret"

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 2139
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 2141
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 2142
    throw p0
.end method
