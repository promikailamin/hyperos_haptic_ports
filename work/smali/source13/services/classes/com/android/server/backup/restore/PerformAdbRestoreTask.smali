.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 9
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "curPassword"    # Ljava/lang/String;
    .param p5, "decryptPassword"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p7, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 81
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 82
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 85
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 87
    return-void
.end method

.method private static attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 29
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "encryptionKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .line 264
    move-object/from16 v1, p1

    move/from16 v2, p4

    const-string v0, "AES"

    const-string v3, "Incorrect password"

    const-string v4, "BackupManagerService"

    const/4 v5, 0x0

    .line 267
    .local v5, "result":Ljava/io/InputStream;
    :try_start_b
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_11} :catch_12e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_11} :catch_121
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_11} :catch_112
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_11} :catch_103
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_11} :catch_f4
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_11} :catch_e5

    .line 268
    .local v6, "c":Ljavax/crypto/Cipher;
    nop

    .line 269
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    :try_start_16
    invoke-static {v1, v7, v8, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 271
    .local v9, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 272
    .local v10, "IV":[B
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 273
    .local v11, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    .line 274
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 273
    const/4 v13, 0x2

    invoke-virtual {v6, v13, v12, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 276
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 277
    .local v12, "mkCipher":[B
    invoke-virtual {v6, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 280
    .local v14, "mkBlob":[B
    const/4 v15, 0x0

    .line 281
    .local v15, "offset":I
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "offset":I
    .local v13, "offset":I
    aget-byte v15, v14, v15
    :try_end_3d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_3d} :catch_e3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_3d} :catch_e1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_3d} :catch_df
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_3d} :catch_dd
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_3d} :catch_db
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_3d} :catch_d9

    .line 282
    .local v15, "len":I
    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .local v16, "result":Ljava/io/InputStream;
    add-int v5, v13, v15

    :try_start_41
    invoke-static {v14, v13, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 283
    .end local v10    # "IV":[B
    .local v5, "IV":[B
    add-int/2addr v13, v15

    .line 285
    add-int/lit8 v10, v13, 0x1

    .end local v13    # "offset":I
    .local v10, "offset":I
    aget-byte v13, v14, v13

    .line 286
    .end local v15    # "len":I
    .local v13, "len":I
    add-int v15, v10, v13

    invoke-static {v14, v10, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 288
    .local v15, "encryptionKey":[B
    add-int/2addr v10, v13

    .line 290
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "offset":I
    .local v7, "offset":I
    aget-byte v10, v14, v10

    .line 291
    .end local v13    # "len":I
    .local v10, "len":I
    add-int v13, v7, v10

    invoke-static {v14, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13
    :try_end_5b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_41 .. :try_end_5b} :catch_d4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_41 .. :try_end_5b} :catch_cf
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_41 .. :try_end_5b} :catch_cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_5b} :catch_c7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_41 .. :try_end_5b} :catch_c3
    .catch Ljava/security/InvalidKeyException; {:try_start_41 .. :try_end_5b} :catch_bf

    .line 295
    .local v13, "mkChecksum":[B
    move/from16 v17, v7

    move-object/from16 v7, p3

    .end local v7    # "offset":I
    .local v17, "offset":I
    :try_start_5f
    invoke-static {v1, v15, v7, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 297
    .local v19, "calculatedCk":[B
    move-object/from16 v1, v19

    .end local v19    # "calculatedCk":[B
    .local v1, "calculatedCk":[B
    invoke-static {v1, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18
    :try_end_6b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5f .. :try_end_6b} :catch_bc
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5f .. :try_end_6b} :catch_b9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5f .. :try_end_6b} :catch_b6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_6b} :catch_b3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5f .. :try_end_6b} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_5f .. :try_end_6b} :catch_af

    if-eqz v18, :cond_a4

    .line 298
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .local v18, "calculatedCk":[B
    :try_start_6f
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 299
    .end local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v11, v15, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v11, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 303
    new-instance v0, Ljavax/crypto/CipherInputStream;
    :try_end_7f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6f .. :try_end_7f} :catch_9f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6f .. :try_end_7f} :catch_9a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6f .. :try_end_7f} :catch_95
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_7f} :catch_90
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6f .. :try_end_7f} :catch_8b
    .catch Ljava/security/InvalidKeyException; {:try_start_6f .. :try_end_7f} :catch_86

    move-object/from16 v11, p7

    :try_start_81
    invoke-direct {v0, v11, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v5, v0

    .end local v16    # "result":Ljava/io/InputStream;
    .local v0, "result":Ljava/io/InputStream;
    goto :goto_ad

    .line 331
    .end local v0    # "result":Ljava/io/InputStream;
    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v9    # "userKey":Ljavax/crypto/SecretKey;
    .end local v10    # "len":I
    .end local v12    # "mkCipher":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkBlob":[B
    .end local v15    # "encryptionKey":[B
    .end local v17    # "offset":I
    .end local v18    # "calculatedCk":[B
    .restart local v16    # "result":Ljava/io/InputStream;
    :catch_86
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_ec

    .line 327
    :catch_8b
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_fb

    .line 323
    :catch_90
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_10a

    .line 319
    :catch_95
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_119

    .line 311
    :catch_9a
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_128

    .line 307
    :catch_9f
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_135

    .line 304
    .local v1, "calculatedCk":[B
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v9    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v10    # "len":I
    .restart local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v12    # "mkCipher":[B
    .restart local v13    # "mkChecksum":[B
    .restart local v14    # "mkBlob":[B
    .restart local v15    # "encryptionKey":[B
    .restart local v17    # "offset":I
    :cond_a4
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .restart local v18    # "calculatedCk":[B
    if-eqz p8, :cond_ab

    .line 305
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_81 .. :try_end_ab} :catch_bc
    .catch Ljavax/crypto/BadPaddingException; {:try_start_81 .. :try_end_ab} :catch_b9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_81 .. :try_end_ab} :catch_b6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_81 .. :try_end_ab} :catch_b3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_81 .. :try_end_ab} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_81 .. :try_end_ab} :catch_af

    .line 335
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v9    # "userKey":Ljavax/crypto/SecretKey;
    .end local v10    # "len":I
    .end local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v12    # "mkCipher":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkBlob":[B
    .end local v15    # "encryptionKey":[B
    .end local v17    # "offset":I
    .end local v18    # "calculatedCk":[B
    :cond_ab
    move-object/from16 v5, v16

    .end local v16    # "result":Ljava/io/InputStream;
    .local v5, "result":Ljava/io/InputStream;
    :goto_ad
    goto/16 :goto_13f

    .line 331
    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    :catch_af
    move-exception v0

    goto :goto_ec

    .line 327
    :catch_b1
    move-exception v0

    goto :goto_fb

    .line 323
    :catch_b3
    move-exception v0

    goto/16 :goto_10a

    .line 319
    :catch_b6
    move-exception v0

    goto/16 :goto_119

    .line 311
    :catch_b9
    move-exception v0

    goto/16 :goto_128

    .line 307
    :catch_bc
    move-exception v0

    goto/16 :goto_135

    .line 331
    :catch_bf
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_ec

    .line 327
    :catch_c3
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_fb

    .line 323
    :catch_c7
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_10a

    .line 319
    :catch_cb
    move-exception v0

    move-object/from16 v7, p3

    goto :goto_119

    .line 311
    :catch_cf
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_128

    .line 307
    :catch_d4
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_135

    .line 331
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_d9
    move-exception v0

    goto :goto_e8

    .line 327
    :catch_db
    move-exception v0

    goto :goto_f7

    .line 323
    :catch_dd
    move-exception v0

    goto :goto_106

    .line 319
    :catch_df
    move-exception v0

    goto :goto_115

    .line 311
    :catch_e1
    move-exception v0

    goto :goto_124

    .line 307
    :catch_e3
    move-exception v0

    goto :goto_131

    .line 331
    :catch_e5
    move-exception v0

    move-object/from16 v8, p2

    :goto_e8
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 332
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_ec
    if-eqz p8, :cond_13d

    .line 333
    const-string v1, "Illegal password; aborting"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 327
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_f4
    move-exception v0

    move-object/from16 v8, p2

    :goto_f7
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 328
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_fb
    if-eqz p8, :cond_13c

    .line 329
    const-string v1, "Needed padding mechanism unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 323
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_103
    move-exception v0

    move-object/from16 v8, p2

    :goto_106
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 324
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_10a
    if-eqz p8, :cond_13c

    .line 325
    const-string v1, "Needed decryption algorithm unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 319
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_112
    move-exception v0

    move-object/from16 v8, p2

    :goto_115
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 320
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_119
    if-eqz p8, :cond_13c

    .line 321
    const-string v1, "Invalid block size in encryption key"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 311
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_121
    move-exception v0

    move-object/from16 v8, p2

    :goto_124
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 316
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_128
    if-eqz p8, :cond_13c

    .line 317
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 307
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_12e
    move-exception v0

    move-object/from16 v8, p2

    :goto_131
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .line 308
    .end local v5    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_135
    if-eqz p8, :cond_13c

    .line 309
    const-string v1, "Needed parameter spec unavailable!"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_13c
    :goto_13c
    nop

    .line 337
    :cond_13d
    :goto_13d
    move-object/from16 v5, v16

    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :goto_13f
    return-object v5
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 27
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .line 344
    move-object/from16 v1, p1

    const-string v2, "BackupManagerService"

    const/4 v3, 0x0

    .line 346
    .local v3, "result":Ljava/io/InputStream;
    :try_start_5
    const-string v0, "AES-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 348
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "userSaltHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 351
    .local v6, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 352
    .local v13, "ckSaltHex":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 354
    .local v7, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 355
    .local v8, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, "encryptionKeyBlobHex":Ljava/lang/String;
    const-string v5, "PBKDF2WithHmacSHA1"

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 362
    if-nez v3, :cond_55

    if-eqz p2, :cond_55

    .line 363
    const-string v15, "PBKDF2WithHmacSHA1And8bit"

    const/16 v22, 0x1

    move-object/from16 v14, p0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, p3

    invoke-static/range {v14 .. v22}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 367
    .end local v0    # "userSaltHex":Ljava/lang/String;
    .end local v6    # "userSalt":[B
    .end local v7    # "ckSalt":[B
    .end local v8    # "rounds":I
    .end local v9    # "userIvHex":Ljava/lang/String;
    .end local v10    # "encryptionKeyBlobHex":Ljava/lang/String;
    .end local v13    # "ckSaltHex":Ljava/lang/String;
    :cond_55
    goto :goto_7a

    .line 368
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encryption method: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_6c} :catch_74
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6c} :catch_6d

    goto :goto_7a

    .line 372
    :catch_6d
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Can\'t read input header"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :catch_74
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Can\'t parse restore data header"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7a
    nop

    .line 376
    :goto_7b
    return-object v3
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 15
    .param p0, "rawInputStream"    # Ljava/io/InputStream;
    .param p1, "decryptPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "compressed":Z
    move-object v1, p0

    .line 182
    .local v1, "preCompressStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 183
    .local v2, "okay":Z
    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 184
    .local v4, "headerLen":I
    new-array v5, v4, [B

    .line 185
    .local v5, "streamHeader":[B
    invoke-static {p0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 186
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 188
    .local v3, "magicBytes":[B
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "BackupManagerService"

    if-eqz v6, :cond_93

    .line 190
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 194
    .local v9, "archiveVersion":I
    const/4 v10, 0x5

    if-le v9, v10, :cond_4a

    .line 195
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v10

    invoke-interface {v10, p0}, Lcom/android/server/backup/BackupManagerServiceStub;->isRunningFromMiui(Ljava/io/InputStream;)Z

    move-result v10

    if-eqz v10, :cond_33

    goto :goto_4a

    .line 230
    :cond_33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong header version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 199
    :cond_4a
    :goto_4a
    const/4 v10, 0x0

    if-ne v9, v7, :cond_4f

    move v11, v7

    goto :goto_50

    :cond_4f
    move v11, v10

    .line 201
    .local v11, "pbkdf2Fallback":Z
    :goto_50
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5b

    move v10, v7

    :cond_5b
    move v0, v10

    .line 203
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 204
    const-string/jumbo v10, "none"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 206
    const/4 v2, 0x1

    goto :goto_91

    .line 207
    :cond_6b
    const/4 v10, 0x3

    if-eqz p1, :cond_85

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_85

    .line 208
    invoke-static {p1, v6, v11, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_7b

    .line 212
    const/4 v2, 0x1

    .line 215
    :cond_7b
    if-nez v1, :cond_91

    .line 216
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v12

    invoke-interface {v12, v10, p0}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(ILjava/io/InputStream;)V

    goto :goto_91

    .line 222
    :cond_85
    const-string v12, "Archive is encrypted but no password given"

    invoke-static {v8, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v12

    invoke-interface {v12, v10, p0}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(ILjava/io/InputStream;)V

    .line 229
    .end local v11    # "pbkdf2Fallback":Z
    :cond_91
    :goto_91
    nop

    .line 232
    .end local v6    # "s":Ljava/lang/String;
    .end local v9    # "archiveVersion":I
    :goto_92
    goto :goto_98

    .line 233
    :cond_93
    const-string v6, "Didn\'t read the right header magic"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_98
    if-nez v2, :cond_a8

    .line 237
    const-string v6, "Invalid restore data; aborting."

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v6

    invoke-interface {v6, v7, p0}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(ILjava/io/InputStream;)V

    .line 242
    const/4 v6, 0x0

    return-object v6

    .line 246
    :cond_a8
    if-eqz v0, :cond_b0

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_b1

    :cond_b0
    move-object v6, v1

    :goto_b1
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "offset":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 165
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 166
    .local v1, "bytesRead":I
    if-lez v1, :cond_e

    .line 169
    add-int/2addr v0, v1

    .line 170
    .end local v1    # "bytesRead":I
    goto :goto_1

    .line 167
    .restart local v1    # "bytesRead":I
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v1    # "bytesRead":I
    :cond_16
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_18

    .line 253
    const/16 v1, 0xa

    if-ne v2, v1, :cond_13

    .line 254
    goto :goto_18

    .line 256
    :cond_13
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 258
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 91
    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/BackupManagerServiceStub;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V

    .line 95
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 96
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "rawInStream":Ljava/io/FileInputStream;
    const/4 v1, 0x1

    :try_start_23
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 102
    const-string v2, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_13d
    .catchall {:try_start_23 .. :try_end_34} :catchall_13b

    .line 143
    if-eqz v0, :cond_39

    .line 144
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    :cond_39
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_3f

    .line 150
    goto :goto_47

    .line 147
    :catch_3f
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :goto_47
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 152
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_73

    .line 155
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 156
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 157
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 104
    return-void

    .line 154
    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v1

    .line 107
    :cond_76
    :try_start_76
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 109
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_88} :catch_13d
    .catchall {:try_start_76 .. :try_end_88} :catchall_13b

    .line 111
    .local v2, "tarInputStream":Ljava/io/InputStream;
    if-nez v2, :cond_cb

    .line 143
    nop

    .line 144
    :try_start_8b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_93} :catch_94

    .line 150
    goto :goto_9c

    .line 147
    :catch_94
    move-exception v3

    .line 148
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    :goto_9c
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 152
    :try_start_9f
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_9f .. :try_end_aa} :catchall_c8

    .line 155
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 156
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 157
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 114
    return-void

    .line 154
    :catchall_c8
    move-exception v1

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v1

    .line 117
    :cond_cb
    :try_start_cb
    new-instance v14, Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 118
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 119
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 120
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v14, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    .line 122
    .local v14, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    new-instance v3, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v14}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 129
    .local v3, "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/server/backup/BackupManagerServiceStub;->setInputFileDescriptor(Lcom/android/server/backup/restore/FullRestoreEngine;I)V

    .line 132
    new-instance v4, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v4, v3, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 134
    .local v4, "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V

    .line 136
    sget-boolean v5, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v5, :cond_117

    .line 137
    const-string v5, "BackupManagerService"

    const-string v6, "Done consuming input tarfile."

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_117} :catch_13d
    .catchall {:try_start_cb .. :try_end_117} :catchall_13b

    .line 143
    .end local v2    # "tarInputStream":Ljava/io/InputStream;
    .end local v3    # "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    .end local v4    # "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    .end local v14    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    :cond_117
    nop

    .line 144
    :try_start_118
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_120} :catch_121

    .line 150
    goto :goto_129

    .line 147
    :catch_121
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :goto_129
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 152
    :try_start_12c
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v2

    goto :goto_166

    :catchall_138
    move-exception v1

    monitor-exit v2
    :try_end_13a
    .catchall {:try_start_12c .. :try_end_13a} :catchall_138

    throw v1

    .line 142
    :catchall_13b
    move-exception v2

    goto :goto_188

    .line 139
    :catch_13d
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    :try_start_13e
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to read restore input"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_13b

    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_14a

    .line 144
    :try_start_147
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    :cond_14a
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14f} :catch_150

    .line 150
    goto :goto_158

    .line 147
    :catch_150
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :goto_158
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 152
    :try_start_15b
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v2
    :try_end_166
    .catchall {:try_start_15b .. :try_end_166} :catchall_185

    .line 155
    :goto_166
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 156
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 157
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 159
    nop

    .line 160
    return-void

    .line 154
    :catchall_185
    move-exception v1

    :try_start_186
    monitor-exit v2
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_185

    throw v1

    .line 143
    :goto_188
    if-eqz v0, :cond_18d

    .line 144
    :try_start_18a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 146
    :cond_18d
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_192} :catch_193

    .line 150
    goto :goto_19b

    .line 147
    :catch_193
    move-exception v3

    .line 148
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    :goto_19b
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 152
    :try_start_19e
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit v3
    :try_end_1a9
    .catchall {:try_start_19e .. :try_end_1a9} :catchall_1c7

    .line 155
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 156
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 157
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 159
    throw v2

    .line 154
    :catchall_1c7
    move-exception v1

    :try_start_1c8
    monitor-exit v3
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v1
.end method
