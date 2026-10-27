.class public Lcom/android/server/locksettings/UnifiedProfilePasswordCache;
.super Ljava/lang/Object;
.source "UnifiedProfilePasswordCache.java"


# static fields
.field public static final CACHE_TIMEOUT_SECONDS:I


# instance fields
.field public final mEncryptedPasswords:Landroid/util/SparseArray;

.field public final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 71
    iput-object p1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public static getEncryptionKeyName(I)Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_v2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLegacyEncryptionKeyName(I)Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removePassword(I)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getLegacyEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    .line 168
    :try_start_b
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 169
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto :goto_1d

    :catchall_19
    move-exception p0

    goto :goto_4c

    :catch_1b
    move-exception v1

    goto :goto_2b

    .line 171
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 172
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_2a} :catch_1b
    .catchall {:try_start_b .. :try_end_2a} :catchall_19

    goto :goto_32

    .line 175
    :goto_2b
    :try_start_2b
    const-string v2, "UnifiedProfilePasswordCache"

    const-string v3, "Cannot delete key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 178
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 179
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 181
    :cond_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_19

    throw p0
.end method

.method public retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 8

    .line 126
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 129
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-object v2

    :catchall_10
    move-exception p0

    goto :goto_66

    .line 133
    :cond_12
    :try_start_12
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0
    :try_end_1c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12 .. :try_end_1c} :catch_5c
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_1c} :catch_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1c} :catch_5c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_10

    if-nez p0, :cond_20

    .line 139
    :try_start_1e
    monitor-exit v0

    return-object v2

    :cond_20
    const/16 p1, 0xc

    .line 141
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 142
    array-length v4, v1

    invoke-static {v1, p1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_10

    .line 145
    :try_start_2b
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 146
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 147
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_40
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_2b .. :try_end_40} :catch_53
    .catch Ljava/security/GeneralSecurityException; {:try_start_2b .. :try_end_40} :catch_49
    .catchall {:try_start_2b .. :try_end_40} :catchall_10

    .line 156
    :try_start_40
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 157
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    .line 158
    monitor-exit v0

    return-object p1

    :catch_49
    move-exception p0

    .line 152
    const-string p1, "UnifiedProfilePasswordCache"

    const-string v1, "Cannot decrypt"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    monitor-exit v0

    return-object v2

    .line 149
    :catch_53
    const-string p0, "UnifiedProfilePasswordCache"

    const-string p1, "Device not unlocked for more than 7 days"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit v0

    return-object v2

    :catch_5c
    move-exception p0

    .line 135
    const-string p1, "UnifiedProfilePasswordCache"

    const-string v1, "Cannot get key"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    monitor-exit v0

    return-object v2

    .line 159
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_40 .. :try_end_67} :catchall_10

    throw p0
.end method

.method public storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_8

    goto/16 :goto_a0

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 83
    :try_start_b
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 84
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto/16 :goto_a1

    .line 86
    :cond_18
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_15

    .line 90
    :try_start_1c
    const-string v2, "AES"

    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 91
    invoke-virtual {v3}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 92
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x100

    .line 94
    invoke-virtual {v3, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "GCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 96
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 98
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    sget p4, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 100
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    .line 101
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p3

    .line 92
    invoke-virtual {v2, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3
    :try_end_6a
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_6a} :catch_97
    .catchall {:try_start_1c .. :try_end_6a} :catchall_15

    .line 110
    :try_start_6a
    const-string p4, "AES/GCM/NoPadding"

    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 111
    invoke-virtual {p4, v3, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 112
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 113
    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p3

    .line 114
    filled-new-array {p3, p2}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p2

    .line 115
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8c
    .catch Ljava/security/GeneralSecurityException; {:try_start_6a .. :try_end_8c} :catch_8d
    .catchall {:try_start_6a .. :try_end_8c} :catchall_15

    goto :goto_95

    :catch_8d
    move-exception p0

    .line 117
    :try_start_8e
    const-string p1, "UnifiedProfilePasswordCache"

    const-string p2, "Cannot encrypt"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_95
    monitor-exit v0

    goto :goto_a0

    :catch_97
    move-exception p0

    .line 104
    const-string p1, "UnifiedProfilePasswordCache"

    const-string p2, "Cannot generate key"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    monitor-exit v0

    :goto_a0
    return-void

    .line 119
    :goto_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_15

    throw p0
.end method
