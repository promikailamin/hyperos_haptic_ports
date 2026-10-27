.class public abstract Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;
.super Ljava/lang/Object;
.source "UnifiedProfilePasswordCrypto.java"


# direct methods
.method public static decryptProfilePassword(Ljava/security/KeyStore;I[B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 66
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 67
    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 71
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordDecryptAlias(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    .line 73
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 76
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 77
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 80
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->zeroize([B)V

    return-object p1
.end method

.method public static encryptProfilePassword(Ljava/security/KeyStore;IJLcom/android/internal/widget/LockscreenCredential;)[B
    .registers 13

    .line 98
    const-string v0, "NoPadding"

    const-string v1, "GCM"

    :try_start_4
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 100
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2
    :try_end_16
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_16} :catch_c6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_16} :catch_c6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_16} :catch_c6
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_16} :catch_c6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_16} :catch_c6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_16} :catch_c6
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_16} :catch_c6

    .line 103
    :try_start_16
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordEncryptAlias(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v5, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    .line 108
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v5

    .line 102
    invoke-virtual {p0, v3, v4, v5}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 110
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordDecryptAlias(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v2, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v6}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p2, p3}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p2

    const/16 p3, 0x1e

    .line 117
    invoke-virtual {p2, p3}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p2

    .line 118
    invoke-virtual {p2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p2

    .line 109
    invoke-virtual {p0, v3, v4, p2}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 121
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordEncryptAlias(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 120
    invoke-virtual {p0, p2, p3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljavax/crypto/SecretKey;

    .line 122
    const-string p3, "AES/GCM/NoPadding"

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 126
    invoke-virtual {p3, v6, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 127
    invoke-virtual {p4}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 128
    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p3
    :try_end_90
    .catchall {:try_start_16 .. :try_end_90} :catchall_bd

    .line 131
    :try_start_90
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordEncryptAlias(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_90 .. :try_end_97} :catch_c6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_90 .. :try_end_97} :catch_c6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_90 .. :try_end_97} :catch_c6
    .catch Ljava/security/KeyStoreException; {:try_start_90 .. :try_end_97} :catch_c6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_90 .. :try_end_97} :catch_c6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_90 .. :try_end_97} :catch_c6
    .catch Ljava/security/InvalidKeyException; {:try_start_90 .. :try_end_97} :catch_c6

    .line 138
    array-length p0, p3

    const/16 p1, 0xc

    if-ne p0, p1, :cond_a5

    .line 141
    filled-new-array {p3, p2}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    return-object p0

    .line 139
    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid iv length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_bd
    move-exception p2

    .line 131
    :try_start_be
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordEncryptAlias(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 132
    throw p2
    :try_end_c6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljava/security/KeyStoreException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_be .. :try_end_c6} :catch_c6
    .catch Ljava/security/InvalidKeyException; {:try_start_be .. :try_end_c6} :catch_c6

    :catch_c6
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to encrypt key"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static profilePasswordDecryptAlias(I)Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profile_key_name_decrypt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static profilePasswordEncryptAlias(I)Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profile_key_name_encrypt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeKeystoreProfileKey(Ljava/security/KeyStore;I)V
    .registers 7

    .line 156
    const-string v0, "UnifiedProfilePasswordCrypto"

    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordEncryptAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCrypto;->profilePasswordDecryptAlias(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    :try_start_a
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_1a

    :cond_17
    return-void

    :catch_18
    move-exception p0

    goto :goto_2e

    .line 160
    :cond_1a
    :goto_1a
    const-string v3, "Removing keystore profile key for user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_2d} :catch_18

    return-void

    .line 166
    :goto_2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error removing keystore profile key for user %d"

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
