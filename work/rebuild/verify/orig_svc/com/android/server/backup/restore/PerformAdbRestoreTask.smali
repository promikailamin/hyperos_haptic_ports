.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mCurrentPassword:Ljava/lang/String;

.field public final mDecryptPassword:Ljava/lang/String;

.field public final mInputFile:Landroid/os/ParcelFileDescriptor;

.field public final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 8

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 77
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 78
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 82
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance p2, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {p2, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    return-void
.end method

.method public static attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 16

    .line 230
    const-string v0, "Incorrect password"

    const-string v1, "AES"

    const-string v2, "BackupManagerService"

    const/4 v3, 0x0

    .line 233
    :try_start_7
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 235
    invoke-static {p1, p0, p2, p4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 237
    invoke-static {p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 238
    new-instance p5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p5, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 239
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 240
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {p2, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p0, 0x2

    .line 239
    invoke-virtual {v4, p0, p2, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 242
    invoke-static {p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 243
    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    const/4 p5, 0x0

    .line 247
    aget-byte p5, p2, p5

    const/4 p6, 0x1

    add-int v5, p6, p5

    .line 248
    invoke-static {p2, p6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p6

    add-int/2addr p5, p0

    .line 251
    aget-byte v5, p2, v5

    add-int/2addr v5, p5

    .line 252
    invoke-static {p2, p5, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p5

    add-int/lit8 v6, v5, 0x1

    .line 256
    aget-byte v5, p2, v5

    add-int/2addr v5, v6

    .line 257
    invoke-static {p2, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 261
    invoke-static {p1, p5, p3, p4}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object p1

    .line 263
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 264
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 265
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, p0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 269
    new-instance p0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0, p7, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p0

    :catch_67
    move-exception p0

    goto :goto_95

    :cond_69
    if-eqz p8, :cond_9c

    .line 271
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_6e} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_6e} :catch_8f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_6e} :catch_87
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_6e} :catch_7f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_6e} :catch_77
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_6e} :catch_6f

    return-object v3

    :catch_6f
    if-eqz p8, :cond_9c

    .line 299
    const-string p0, "Illegal password; aborting"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_77
    if-eqz p8, :cond_9c

    .line 295
    const-string p0, "Needed padding mechanism unavailable!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_7f
    if-eqz p8, :cond_9c

    .line 291
    const-string p0, "Needed decryption algorithm unavailable!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_87
    if-eqz p8, :cond_9c

    .line 287
    const-string p0, "Invalid block size in encryption key"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_8f
    if-eqz p8, :cond_9c

    .line 283
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :goto_95
    if-eqz p8, :cond_9c

    .line 275
    const-string p1, "Needed parameter spec unavailable!"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9c
    :goto_9c
    return-object v3
.end method

.method public static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 15

    .line 310
    const-string v0, "BackupManagerService"

    const/4 v1, 0x0

    .line 312
    :try_start_3
    const-string v2, "AES-256"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 314
    invoke-static {p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p1}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 317
    invoke-static {p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {p1}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 320
    invoke-static {p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 321
    invoke-static {p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-static {p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 326
    const-string v3, "PBKDF2WithHmacSHA1"

    const/4 v10, 0x0

    move-object v2, p0

    move-object v9, p3

    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_40

    if-eqz p2, :cond_40

    .line 329
    const-string v3, "PBKDF2WithHmacSHA1And8bit"

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_40
    return-object v1

    .line 334
    :cond_41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported encryption method: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_55} :catch_5c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_55} :catch_56

    return-object v1

    .line 339
    :catch_56
    const-string p0, "Can\'t read input header"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 337
    :catch_5c
    const-string p0, "Can\'t parse restore data header"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return-object v1
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 170
    new-array v0, v0, [B

    .line 171
    invoke-static {p0, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 172
    const-string v1, "ANDROID BACKUP\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 174
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    .line 176
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_5c

    const/4 v0, 0x1

    if-ne v3, v0, :cond_28

    move v3, v0

    goto :goto_29

    :cond_28
    move v3, v2

    .line 183
    :goto_29
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_35

    move v4, v0

    goto :goto_36

    :cond_35
    move v4, v2

    .line 185
    :goto_36
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 186
    const-string/jumbo v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    :goto_43
    move v2, v0

    goto :goto_59

    :cond_45
    if-eqz p1, :cond_54

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_54

    .line 190
    invoke-static {p1, v5, v3, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_59

    goto :goto_43

    .line 197
    :cond_54
    const-string p1, "Archive is encrypted but no password given"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    move p1, v2

    move v2, v4

    goto :goto_71

    .line 200
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong header version: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :goto_71
    move v7, v2

    move v2, p1

    move p1, v7

    goto :goto_7b

    .line 203
    :cond_75
    const-string p1, "Didn\'t read the right header magic"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :goto_7b
    if-nez v2, :cond_84

    .line 207
    const-string p0, "Invalid restore data; aborting."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_84
    if-eqz p1, :cond_8c

    .line 212
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_8c
    return-object p0
.end method

.method public static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 4

    const/4 v0, 0x0

    .line 150
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 151
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_e

    add-int/2addr v0, v1

    goto :goto_1

    .line 153
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Couldn\'t fully read data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    return-void
.end method

.method public static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_17

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12

    goto :goto_17

    :cond_12
    int-to-char v1, v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 224
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 88
    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 90
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    :try_start_16
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 95
    const-string v0, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_27} :catch_121
    .catchall {:try_start_16 .. :try_end_27} :catchall_65

    .line 132
    :try_start_27
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception v0

    .line 134
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_35
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 138
    :try_start_38
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_61

    .line 141
    :goto_43
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    return-void

    :catchall_61
    move-exception v0

    move-object p0, v0

    .line 140
    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_61

    throw p0

    :catchall_65
    move-exception v0

    move-object v3, v2

    :goto_67
    move-object v2, v0

    goto/16 :goto_151

    .line 99
    :cond_6a
    :try_start_6a
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_121
    .catchall {:try_start_6a .. :try_end_75} :catchall_65

    .line 101
    :try_start_75
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_120
    .catchall {:try_start_75 .. :try_end_7b} :catchall_11d

    if-nez v0, :cond_a1

    .line 130
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 132
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_85} :catch_86

    goto :goto_8e

    :catch_86
    move-exception v0

    .line 134
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_8e
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 138
    :try_start_91
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v2

    goto :goto_43

    :catchall_9d
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_9d

    throw p0

    .line 109
    :cond_a1
    :try_start_a1
    new-instance v4, Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 110
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 111
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 112
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v7

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 113
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;I)V

    move-object v14, v4

    .line 115
    new-instance v4, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v14}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 118
    new-instance v2, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v2, v4, v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 120
    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_dc} :catch_120
    .catchall {:try_start_a1 .. :try_end_dc} :catchall_11d

    .line 130
    :try_start_dc
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 132
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e4} :catch_e5

    goto :goto_ed

    :catch_e5
    move-exception v0

    .line 134
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_ed
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 138
    :try_start_f0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_f0 .. :try_end_fb} :catchall_119

    .line 141
    :goto_fb
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    goto :goto_14c

    :catchall_119
    move-exception v0

    move-object p0, v0

    .line 140
    :try_start_11b
    monitor-exit v2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_119

    throw p0

    :catchall_11d
    move-exception v0

    goto/16 :goto_67

    :catch_120
    move-object v2, v3

    .line 126
    :catch_121
    :try_start_121
    const-string v0, "BackupManagerService"

    const-string v3, "Unable to read restore input"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catchall {:try_start_121 .. :try_end_128} :catchall_65

    if-eqz v2, :cond_130

    .line 130
    :try_start_12a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_130

    :catch_12e
    move-exception v0

    goto :goto_136

    .line 132
    :cond_130
    :goto_130
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_135} :catch_12e

    goto :goto_13d

    .line 134
    :goto_136
    const-string v2, "BackupManagerService"

    const-string v3, "Close of restore data pipe threw"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_13d
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 138
    :try_start_140
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v3

    goto :goto_fb

    :goto_14c
    return-void

    :catchall_14d
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_150
    .catchall {:try_start_140 .. :try_end_150} :catchall_14d

    throw p0

    :goto_151
    if-eqz v3, :cond_159

    .line 130
    :try_start_153
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_159

    :catch_157
    move-exception v0

    goto :goto_15f

    .line 132
    :cond_159
    :goto_159
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_15e} :catch_157

    goto :goto_166

    .line 134
    :goto_15f
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_166
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 138
    :try_start_169
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v3
    :try_end_174
    .catchall {:try_start_169 .. :try_end_174} :catchall_192

    .line 141
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v1, "Full restore pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 145
    throw v2

    :catchall_192
    move-exception v0

    move-object p0, v0

    .line 140
    :try_start_194
    monitor-exit v3
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_192

    throw p0
.end method
