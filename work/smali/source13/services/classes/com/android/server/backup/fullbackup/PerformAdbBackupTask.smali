.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private final mAllApps:Z

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mCompress:Z

.field private final mCurrentOpToken:I

.field private final mCurrentPassword:Ljava/lang/String;

.field private mCurrentTarget:Landroid/content/pm/PackageInfo;

.field private final mDoWidgets:Z

.field private final mEncryptPassword:Ljava/lang/String;

.field private final mIncludeApks:Z

.field private final mIncludeObbs:Z

.field private final mIncludeShared:Z

.field private final mIncludeSystem:Z

.field private final mKeyValue:Z

.field private final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mOutputFD:I

.field private final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field private final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 34
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p5, "includeApks"    # Z
    .param p6, "includeObbs"    # Z
    .param p7, "includeShared"    # Z
    .param p8, "doWidgets"    # Z
    .param p9, "curPassword"    # Ljava/lang/String;
    .param p10, "encryptPassword"    # Ljava/lang/String;
    .param p11, "doAllApps"    # Z
    .param p12, "doSystem"    # Z
    .param p13, "doCompress"    # Z
    .param p14, "doKeyValue"    # Z
    .param p15, "packages"    # [Ljava/lang/String;
    .param p16, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p17, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p4

    invoke-direct {v0, v4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 102
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 103
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v7

    iput v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 105
    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 108
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 109
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 110
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 111
    move/from16 v11, p8

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 112
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 113
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 114
    if-nez p15, :cond_41

    .line 115
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4a

    .line 116
    :cond_41
    new-instance v14, Ljava/util/ArrayList;

    invoke-static/range {p15 .. p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4a
    iput-object v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 117
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 122
    if-eqz v3, :cond_5c

    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_59

    goto :goto_5c

    .line 125
    :cond_59
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_5e

    .line 123
    :cond_5c
    :goto_5c
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 127
    :goto_5e
    sget-boolean v14, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v14, :cond_7c

    .line 128
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encrypting backup with passphrase="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "BackupManagerService"

    invoke-static {v15, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_7c
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 131
    move/from16 v15, p14

    iput-boolean v15, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 132
    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 134
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->setOutputFileDescriptor(Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;Landroid/os/ParcelFileDescriptor;)V

    .line 135
    return-void
.end method

.method private addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 145
    :try_start_16
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 146
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    .line 145
    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/backup/BackupManagerServiceStub;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 148
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_29} :catch_2b

    .line 151
    nop

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_4a

    .line 149
    :catch_2b
    move-exception v2

    .line 150
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4a
    :goto_4a
    goto :goto_4

    .line 154
    :cond_4b
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 20
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 160
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 161
    .local v2, "newUserSalt":[B
    iget-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 162
    const-string v5, "PBKDF2WithHmacSHA1"

    const/16 v6, 0x2710

    invoke-static {v5, v4, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 167
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 168
    .local v7, "encryptionKey":[B
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 169
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 170
    invoke-virtual {v8, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 173
    .local v3, "checksumSalt":[B
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 174
    .local v9, "c":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v7, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 175
    .local v10, "encryptionKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 176
    new-instance v12, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13, v9}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 179
    .local v12, "finalOutput":Ljava/io/OutputStream;
    const-string v14, "AES-256"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 193
    .local v8, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v8, v11, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 195
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 196
    .local v11, "IV":[B
    invoke-static {v11}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 210
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    .line 211
    .local v15, "mk":[B
    nop

    .line 213
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 212
    invoke-static {v5, v14, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v5

    .line 216
    .local v5, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v14, v11

    array-length v0, v15

    add-int/2addr v14, v0

    array-length v0, v5

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x3

    invoke-direct {v6, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v6

    .line 218
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 219
    .local v6, "mkOut":Ljava/io/DataOutputStream;
    array-length v14, v11

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 220
    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 221
    array-length v14, v15

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 222
    invoke-virtual {v6, v15}, Ljava/io/DataOutputStream;->write([B)V

    .line 223
    array-length v14, v5

    invoke-virtual {v6, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 225
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 227
    .local v14, "encryptedMk":[B
    move-object/from16 v16, v0

    .end local v0    # "blob":Ljava/io/ByteArrayOutputStream;
    .local v16, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-static {v14}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    return-object v12
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 236
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 237
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 240
    .end local v0    # "eof":[B
    goto :goto_10

    .line 238
    :catch_8
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 534
    return-void
.end method

.method public handleCancel(Z)V
    .registers 5
    .param p1, "cancelAll"    # Z

    .line 543
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 545
    .local v0, "target":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v0, :cond_25

    .line 548
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 550
    :cond_25
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-interface {v1, v2}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 551
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 539
    return-void
.end method

.method public run()V
    .registers 37

    .line 245
    move-object/from16 v13, p0

    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    move-object v14, v0

    .line 246
    .local v14, "includeKeyValue":Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_37

    .line 250
    const-string v0, "BackupManagerService"

    const-string v1, "MIUI FD has been closed."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 255
    :cond_37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v15, v0

    .line 256
    .local v15, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    move-object v12, v0

    .line 258
    .local v12, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 261
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 264
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_7c

    .line 265
    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7c

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 270
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v3, :cond_74

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v10

    if-nez v3, :cond_79

    .line 272
    :cond_74
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 279
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1    # "i":I
    :cond_7c
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c4

    .line 281
    nop

    .line 282
    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_c4

    .line 284
    sget-boolean v2, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v2, :cond_c1

    .line 285
    const-string v2, "BackupManagerService"

    const-string v3, "Adding widget participants to backup set:"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 287
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 289
    .local v4, "s":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_a3

    .line 292
    :cond_b8
    const-string v3, "BackupManagerService"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_c1
    invoke-direct {v13, v15, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 301
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c4
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_cb

    .line 302
    invoke-direct {v13, v15, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 309
    :cond_cb
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 310
    .local v8, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v15}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 311
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_d9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_176

    .line 312
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 317
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_101

    iget-object v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 318
    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 319
    :cond_101
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    iget v4, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    invoke-interface {v3, v0, v4}, Lcom/android/server/backup/BackupManagerServiceStub;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v3

    if-nez v3, :cond_13a

    .line 320
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v3

    iget v4, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    invoke-interface {v3, v2, v4}, Lcom/android/server/backup/BackupManagerServiceStub;->errorOccur(II)V

    .line 323
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 325
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not eligible for backup, removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    .line 330
    :cond_13a
    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 331
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    iget v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    invoke-interface {v2, v0, v3}, Lcom/android/server/backup/BackupManagerServiceStub;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-nez v2, :cond_174

    .line 333
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 335
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is key-value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_174
    :goto_174
    goto/16 :goto_d9

    .line 343
    :cond_176
    new-instance v0, Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v15}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    .line 345
    .local v9, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v7, v0

    .line 346
    .local v7, "ofstream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 348
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 350
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_18e
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_18e .. :try_end_190} :catch_717
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_190} :catch_6c6
    .catchall {:try_start_18e .. :try_end_190} :catchall_6b6

    if-eqz v0, :cond_1c8

    :try_start_192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_192 .. :try_end_196} :catch_1b9
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_196} :catch_1aa
    .catchall {:try_start_192 .. :try_end_196} :catchall_19a

    if-lez v0, :cond_1c8

    move v0, v10

    goto :goto_1c9

    .line 508
    :catchall_19a
    move-exception v0

    move-object v1, v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_782

    .line 505
    :catch_1aa
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_6d3

    .line 503
    :catch_1b9
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_724

    .line 350
    :cond_1c8
    move v0, v1

    :goto_1c9
    move/from16 v17, v0

    .line 363
    .local v17, "encrypting":Z
    move-object v5, v7

    .line 365
    .local v5, "finalOutput":Ljava/io/OutputStream;
    :try_start_1cc
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    iget-object v6, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iget v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    invoke-interface {v0, v6, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V

    .line 369
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_1df
    .catch Landroid/os/RemoteException; {:try_start_1cc .. :try_end_1df} :catch_717
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1df} :catch_6c6
    .catchall {:try_start_1cc .. :try_end_1df} :catchall_6b6

    if-nez v0, :cond_23b

    .line 371
    :try_start_1e1
    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e8
    .catch Landroid/os/RemoteException; {:try_start_1e1 .. :try_end_1e8} :catch_1b9
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e8} :catch_1aa
    .catchall {:try_start_1e1 .. :try_end_1e8} :catchall_19a

    .line 509
    if-eqz v3, :cond_1f0

    .line 510
    :try_start_1ea
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 511
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 513
    :cond_1f0
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f5} :catch_1f6

    .line 516
    goto :goto_213

    .line 514
    :catch_1f6
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_213
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 518
    :try_start_216
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v1
    :try_end_221
    .catchall {:try_start_216 .. :try_end_221} :catchall_238

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 522
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 524
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 373
    return-void

    .line 520
    :catchall_238
    move-exception v0

    :try_start_239
    monitor-exit v1
    :try_end_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_238

    throw v0

    .line 401
    :cond_23b
    :try_start_23b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    .line 403
    .local v6, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_24e
    .catch Landroid/os/RemoteException; {:try_start_23b .. :try_end_24e} :catch_717
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_24e} :catch_6c6
    .catchall {:try_start_23b .. :try_end_24e} :catchall_6b6

    if-eqz v0, :cond_253

    :try_start_250
    const-string v0, "\n1\n"
    :try_end_252
    .catch Landroid/os/RemoteException; {:try_start_250 .. :try_end_252} :catch_1b9
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_252} :catch_1aa
    .catchall {:try_start_250 .. :try_end_252} :catchall_19a

    goto :goto_255

    :cond_253
    :try_start_253
    const-string v0, "\n0\n"

    :goto_255
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_258
    .catch Landroid/os/RemoteException; {:try_start_253 .. :try_end_258} :catch_717
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_258} :catch_6c6
    .catchall {:try_start_253 .. :try_end_258} :catchall_6b6

    .line 409
    if-eqz v17, :cond_271

    .line 410
    :try_start_25a
    invoke-direct {v13, v6, v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_25e} :catch_260
    .catch Landroid/os/RemoteException; {:try_start_25a .. :try_end_25e} :catch_1b9
    .catchall {:try_start_25a .. :try_end_25e} :catchall_19a

    move-object v5, v0

    goto :goto_277

    .line 425
    :catch_260
    move-exception v0

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_656

    .line 412
    :cond_271
    :try_start_271
    const-string/jumbo v0, "none\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :goto_277
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 416
    .local v0, "header":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 419
    iget-boolean v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_286} :catch_647
    .catch Landroid/os/RemoteException; {:try_start_271 .. :try_end_286} :catch_717
    .catchall {:try_start_271 .. :try_end_286} :catchall_6b6

    if-eqz v1, :cond_296

    .line 420
    :try_start_288
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 421
    .local v1, "deflater":Ljava/util/zip/Deflater;
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v5, v1, v10}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_292} :catch_260
    .catch Landroid/os/RemoteException; {:try_start_288 .. :try_end_292} :catch_1b9
    .catchall {:try_start_288 .. :try_end_292} :catchall_19a

    move-object v5, v2

    move-object/from16 v19, v5

    goto :goto_298

    .line 419
    .end local v1    # "deflater":Ljava/util/zip/Deflater;
    :cond_296
    move-object/from16 v19, v5

    .line 424
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "finalOutput":Ljava/io/OutputStream;
    :goto_298
    move-object/from16 v5, v19

    .line 429
    .end local v0    # "header":[B
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    nop

    .line 432
    :try_start_29b
    iget-boolean v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_29d
    .catch Landroid/os/RemoteException; {:try_start_29b .. :try_end_29d} :catch_637
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_29d} :catch_627
    .catchall {:try_start_29b .. :try_end_29d} :catchall_616

    if-eqz v0, :cond_2ea

    .line 434
    :try_start_29f
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v4, v0

    .line 436
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29f .. :try_end_2b0} :catch_2e2
    .catch Landroid/os/RemoteException; {:try_start_29f .. :try_end_2b0} :catch_2d2
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2b0} :catch_2c2
    .catchall {:try_start_29f .. :try_end_2b0} :catchall_2b1

    .line 439
    goto :goto_2ea

    .line 508
    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_2b1
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_782

    .line 505
    :catch_2c2
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_6d3

    .line 503
    :catch_2d2
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    goto/16 :goto_724

    .line 437
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_2e2
    move-exception v0

    .line 438
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2e3
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to find shared-storage backup handler"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ea
    .catch Landroid/os/RemoteException; {:try_start_2e3 .. :try_end_2ea} :catch_2d2
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_2ea} :catch_2c2
    .catchall {:try_start_2e3 .. :try_end_2ea} :catchall_2b1

    .line 443
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2ea
    :goto_2ea
    :try_start_2ea
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_2ee
    .catch Landroid/os/RemoteException; {:try_start_2ea .. :try_end_2ee} :catch_637
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2ee} :catch_627
    .catchall {:try_start_2ea .. :try_end_2ee} :catchall_616

    .line 444
    .local v0, "N":I
    const/4 v1, 0x0

    move-object/from16 v35, v4

    move v4, v1

    move-object/from16 v1, v35

    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    .local v4, "i":I
    :goto_2f4
    if-ge v4, v0, :cond_531

    .line 445
    :try_start_2f6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;
    :try_end_2fc
    .catch Landroid/os/RemoteException; {:try_start_2f6 .. :try_end_2fc} :catch_520
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_2fc} :catch_50f
    .catchall {:try_start_2f6 .. :try_end_2fc} :catchall_4fd

    move-object v3, v2

    .line 447
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_2fd
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_304
    .catch Landroid/os/RemoteException; {:try_start_2fd .. :try_end_304} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_304} :catch_4d9
    .catchall {:try_start_2fd .. :try_end_304} :catchall_4c6

    :try_start_304
    const-string v10, "--- Performing full backup for package "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " ---"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v20, v1

    .line 454
    .local v20, "isSharedStorage":Z
    new-instance v21, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v10, 0x0

    iget-boolean v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_32e
    .catch Landroid/os/RemoteException; {:try_start_304 .. :try_end_32e} :catch_4b5
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_32e} :catch_4a4
    .catchall {:try_start_304 .. :try_end_32e} :catchall_492

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v24, v8

    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v24, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_335
    iget v8, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_337
    .catch Landroid/os/RemoteException; {:try_start_335 .. :try_end_337} :catch_480
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_337} :catch_46e
    .catchall {:try_start_335 .. :try_end_337} :catchall_45b

    const/16 v25, 0x0

    move-object/from16 v26, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v26, "pm":Landroid/content/pm/PackageManager;
    :try_start_33b
    iget-object v11, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;
    :try_end_33d
    .catch Landroid/os/RemoteException; {:try_start_33b .. :try_end_33d} :catch_449
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_33d} :catch_437
    .catchall {:try_start_33b .. :try_end_33d} :catchall_424

    move/from16 v27, v1

    move-object/from16 v1, v21

    move-object/from16 v28, v3

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .local v28, "pkg":Landroid/content/pm/PackageInfo;
    move-object v3, v5

    move/from16 v29, v4

    .end local v4    # "i":I
    .local v29, "i":I
    move-object v4, v10

    move-object v10, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    move-object/from16 v5, v28

    move-object/from16 v30, v6

    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .local v30, "headerbuf":Ljava/lang/StringBuilder;
    move/from16 v6, v27

    move-object/from16 v27, v7

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .local v27, "ofstream":Ljava/io/FileOutputStream;
    move-object/from16 v7, p0

    move-object/from16 v32, v9

    move-object/from16 v31, v24

    move/from16 v24, v8

    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v31, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v32, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-wide/from16 v8, v22

    move-object/from16 v33, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .local v33, "out":Ljava/io/OutputStream;
    move/from16 v10, v24

    move-object/from16 v22, v11

    move-object/from16 v18, v26

    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move/from16 v11, v25

    move-object/from16 v34, v14

    move-object v14, v12

    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v34, "includeKeyValue":Ljava/lang/String;
    move-object/from16 v12, v22

    :try_start_369
    invoke-direct/range {v1 .. v12}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;)V

    move-object/from16 v1, v21

    .line 467
    .local v1, "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    iget v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFD:I

    invoke-interface {v2, v1, v3}, Lcom/android/server/backup/BackupManagerServiceStub;->setOutputFileDescriptor(Lcom/android/server/backup/fullbackup/FullBackupEngine;I)V
    :try_end_377
    .catch Landroid/os/RemoteException; {:try_start_369 .. :try_end_377} :catch_41b
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_377} :catch_412
    .catchall {:try_start_369 .. :try_end_377} :catchall_408

    .line 468
    if-eqz v20, :cond_398

    :try_start_379
    const-string v2, "Shared storage"
    :try_end_37b
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_37b} :catch_390
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_37b} :catch_388
    .catchall {:try_start_379 .. :try_end_37b} :catchall_37f

    move-object v3, v2

    move-object/from16 v2, v28

    goto :goto_39c

    .line 508
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v29    # "i":I
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_37f
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v28

    move-object/from16 v3, v33

    const/4 v6, 0x1

    goto/16 :goto_782

    .line 505
    :catch_388
    move-exception v0

    move-object/from16 v4, v28

    move-object/from16 v3, v33

    const/4 v6, 0x1

    goto/16 :goto_6d3

    .line 503
    :catch_390
    move-exception v0

    move-object/from16 v4, v28

    move-object/from16 v3, v33

    const/4 v6, 0x1

    goto/16 :goto_724

    .line 468
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v29    # "i":I
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_398
    move-object/from16 v2, v28

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_39a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_39c
    invoke-virtual {v13, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 471
    iput-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 472
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 476
    iget-boolean v3, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_3a6
    .catch Landroid/os/RemoteException; {:try_start_39a .. :try_end_3a6} :catch_401
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3a6} :catch_3fa
    .catchall {:try_start_39a .. :try_end_3a6} :catchall_3f2

    if-eqz v3, :cond_3dc

    if-nez v20, :cond_3dc

    .line 477
    move-object/from16 v3, v33

    .end local v33    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_3ac
    invoke-virtual {v14, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v4

    .line 478
    .local v4, "obbOkay":Z
    if-eqz v4, :cond_3b3

    goto :goto_3de

    .line 479
    :cond_3b3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure writing OBB stack for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v14    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v15    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    throw v5
    :try_end_3cc
    .catch Landroid/os/RemoteException; {:try_start_3ac .. :try_end_3cc} :catch_3d7
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3cc} :catch_3d2
    .catchall {:try_start_3ac .. :try_end_3cc} :catchall_3cc

    .line 508
    .end local v0    # "N":I
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v4    # "obbOkay":Z
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "isSharedStorage":Z
    .end local v29    # "i":I
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v14    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v15    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    :catchall_3cc
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    const/4 v6, 0x1

    goto/16 :goto_782

    .line 505
    :catch_3d2
    move-exception v0

    move-object v4, v2

    const/4 v6, 0x1

    goto/16 :goto_6d3

    .line 503
    :catch_3d7
    move-exception v0

    move-object v4, v2

    const/4 v6, 0x1

    goto/16 :goto_724

    .line 476
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "N":I
    .restart local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "isSharedStorage":Z
    .restart local v29    # "i":I
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :cond_3dc
    move-object/from16 v3, v33

    .line 444
    .end local v1    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v20    # "isSharedStorage":Z
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_3de
    add-int/lit8 v4, v29, 0x1

    move-object v1, v2

    move-object v5, v3

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v7, v27

    move-object/from16 v6, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v14, v34

    const/4 v10, 0x1

    .end local v29    # "i":I
    .local v4, "i":I
    goto/16 :goto_2f4

    .line 508
    .end local v0    # "N":I
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "i":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catchall_3f2
    move-exception v0

    move-object/from16 v3, v33

    move-object v1, v0

    move-object v4, v2

    const/4 v6, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto/16 :goto_782

    .line 505
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_3fa
    move-exception v0

    move-object/from16 v3, v33

    move-object v4, v2

    const/4 v6, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto/16 :goto_6d3

    .line 503
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_401
    move-exception v0

    move-object/from16 v3, v33

    move-object v4, v2

    const/4 v6, 0x1

    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto/16 :goto_724

    .line 508
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catchall_408
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v3, v33

    move-object v1, v0

    move-object v4, v2

    const/4 v6, 0x1

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto/16 :goto_782

    .line 505
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_412
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v3, v33

    move-object v4, v2

    const/4 v6, 0x1

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto/16 :goto_6d3

    .line 503
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v33    # "out":Ljava/io/OutputStream;
    :catch_41b
    move-exception v0

    move-object/from16 v2, v28

    move-object/from16 v3, v33

    move-object v4, v2

    const/4 v6, 0x1

    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v33    # "out":Ljava/io/OutputStream;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto/16 :goto_724

    .line 508
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catchall_424
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object/from16 v18, v26

    move-object v14, v12

    move-object v1, v0

    move-object v4, v2

    const/4 v6, 0x1

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_782

    .line 505
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_437
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object/from16 v18, v26

    move-object v14, v12

    move-object v4, v2

    const/4 v6, 0x1

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_6d3

    .line 503
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_449
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object/from16 v18, v26

    move-object v14, v12

    move-object v4, v2

    const/4 v6, 0x1

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_724

    .line 508
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_45b
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object v14, v12

    move-object v1, v0

    move-object v4, v2

    const/4 v6, 0x1

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_782

    .line 505
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_46e
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object v14, v12

    move-object v4, v2

    const/4 v6, 0x1

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_6d3

    .line 503
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_480
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object/from16 v31, v24

    move-object v14, v12

    move-object v4, v2

    const/4 v6, 0x1

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v24    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_724

    .line 508
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_492
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    move-object v4, v2

    const/4 v6, 0x1

    goto :goto_4d7

    .line 505
    :catch_4a4
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v2

    const/4 v6, 0x1

    goto :goto_4e9

    .line 503
    :catch_4b5
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v2

    const/4 v6, 0x1

    goto :goto_4fb

    .line 508
    :catchall_4c6
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    move-object v4, v2

    move v6, v10

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_4d7
    goto/16 :goto_782

    .line 505
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_4d9
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v2

    move v6, v10

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_4e9
    goto/16 :goto_6d3

    .line 503
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_4eb
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v2

    move v6, v10

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v3, "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_4fb
    goto/16 :goto_724

    .line 508
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_4fd
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v1

    move v6, v10

    move-object v1, v0

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_782

    .line 505
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_50f
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v1

    move v6, v10

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_6d3

    .line 503
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_520
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v4, v1

    move v6, v10

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_724

    .line 444
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :cond_531
    move/from16 v29, v4

    move-object v3, v5

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .line 484
    .end local v4    # "i":I
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :try_start_541
    iget-boolean v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_543
    .catch Landroid/os/RemoteException; {:try_start_541 .. :try_end_543} :catch_611
    .catch Ljava/lang/Exception; {:try_start_541 .. :try_end_543} :catch_60c
    .catchall {:try_start_541 .. :try_end_543} :catchall_606

    if-eqz v2, :cond_5ad

    .line 485
    :try_start_545
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_549
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 487
    .local v4, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Performing key-value backup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v5, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v6, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 493
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    iget-object v7, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 494
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v25

    iget-object v7, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 495
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v26

    move-object/from16 v20, v5

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    invoke-direct/range {v20 .. v26}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 496
    .local v5, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v5}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_59c
    .catch Landroid/os/RemoteException; {:try_start_545 .. :try_end_59c} :catch_5a8
    .catch Ljava/lang/Exception; {:try_start_545 .. :try_end_59c} :catch_5a3
    .catchall {:try_start_545 .. :try_end_59c} :catchall_59d

    .line 498
    .end local v4    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_549

    .line 508
    .end local v0    # "N":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_59d
    move-exception v0

    move-object v4, v1

    const/4 v6, 0x1

    move-object v1, v0

    goto/16 :goto_782

    .line 505
    :catch_5a3
    move-exception v0

    move-object v4, v1

    const/4 v6, 0x1

    goto/16 :goto_6d3

    .line 503
    :catch_5a8
    move-exception v0

    move-object v4, v1

    const/4 v6, 0x1

    goto/16 :goto_724

    .line 502
    .restart local v0    # "N":I
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_5ad
    :try_start_5ad
    invoke-direct {v13, v3}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_5b0
    .catch Landroid/os/RemoteException; {:try_start_5ad .. :try_end_5b0} :catch_611
    .catch Ljava/lang/Exception; {:try_start_5ad .. :try_end_5b0} :catch_60c
    .catchall {:try_start_5ad .. :try_end_5b0} :catchall_606

    .line 509
    .end local v0    # "N":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_5b8

    .line 510
    :try_start_5b2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 511
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 513
    :cond_5b8
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5bd
    .catch Ljava/io/IOException; {:try_start_5b2 .. :try_end_5bd} :catch_5be

    .line 516
    goto :goto_5db

    .line 514
    :catch_5be
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5db
    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 518
    :try_start_5de
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v2
    :try_end_5ea
    .catchall {:try_start_5de .. :try_end_5ea} :catchall_603

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 522
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 524
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 527
    move-object v5, v3

    goto/16 :goto_77c

    .line 520
    :catchall_603
    move-exception v0

    :try_start_604
    monitor-exit v2
    :try_end_605
    .catchall {:try_start_604 .. :try_end_605} :catchall_603

    throw v0

    .line 508
    :catchall_606
    move-exception v0

    const/4 v6, 0x1

    move-object v4, v1

    move-object v1, v0

    goto/16 :goto_782

    .line 505
    :catch_60c
    move-exception v0

    const/4 v6, 0x1

    move-object v4, v1

    goto/16 :goto_6d3

    .line 503
    :catch_611
    move-exception v0

    const/4 v6, 0x1

    move-object v4, v1

    goto/16 :goto_724

    .line 508
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .local v5, "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_616
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_782

    .line 505
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_627
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_6d3

    .line 503
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_637
    move-exception v0

    move-object v3, v5

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_724

    .line 425
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .local v5, "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    .restart local v17    # "encrypting":Z
    :catch_647
    move-exception v0

    move-object/from16 v30, v6

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .end local v6    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v30    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_656
    move-object v1, v0

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    :try_start_657
    const-string v0, "BackupManagerService"

    const-string v2, "Unable to emit archive header"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65e
    .catch Landroid/os/RemoteException; {:try_start_657 .. :try_end_65e} :catch_6b3
    .catch Ljava/lang/Exception; {:try_start_657 .. :try_end_65e} :catch_6b1
    .catchall {:try_start_657 .. :try_end_65e} :catchall_780

    .line 509
    if-eqz v3, :cond_666

    .line 510
    :try_start_660
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 511
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 513
    :cond_666
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66b
    .catch Ljava/io/IOException; {:try_start_660 .. :try_end_66b} :catch_66c

    .line 516
    goto :goto_689

    .line 514
    :catch_66c
    move-exception v0

    .line 515
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_689
    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 518
    :try_start_68c
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v2
    :try_end_697
    .catchall {:try_start_68c .. :try_end_697} :catchall_6ae

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 522
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 524
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 428
    return-void

    .line 520
    :catchall_6ae
    move-exception v0

    :try_start_6af
    monitor-exit v2
    :try_end_6b0
    .catchall {:try_start_6af .. :try_end_6b0} :catchall_6ae

    throw v0

    .line 505
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .end local v17    # "encrypting":Z
    .end local v30    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_6b1
    move-exception v0

    goto :goto_6d3

    .line 503
    :catch_6b3
    move-exception v0

    goto/16 :goto_724

    .line 508
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catchall_6b6
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    move-object v1, v0

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    goto/16 :goto_782

    .line 505
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_6c6
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .line 506
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v0, "e":Ljava/lang/Exception;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_6d3
    :try_start_6d3
    const-string v1, "BackupManagerService"

    const-string v2, "Internal exception during full backup"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6da
    .catchall {:try_start_6d3 .. :try_end_6da} :catchall_780

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6e2

    .line 510
    :try_start_6dc
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 511
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 513
    :cond_6e2
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6e7
    .catch Ljava/io/IOException; {:try_start_6dc .. :try_end_6e7} :catch_6e8

    .line 516
    goto :goto_705

    .line 514
    :catch_6e8
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_705
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 518
    :try_start_708
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v1

    goto :goto_764

    :catchall_714
    move-exception v0

    monitor-exit v1
    :try_end_716
    .catchall {:try_start_708 .. :try_end_716} :catchall_714

    throw v0

    .line 503
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "ofstream":Ljava/io/FileOutputStream;
    .end local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v34    # "includeKeyValue":Ljava/lang/String;
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v14, "includeKeyValue":Ljava/lang/String;
    :catch_717
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move v6, v10

    move-object/from16 v18, v11

    move-object/from16 v34, v14

    move-object v14, v12

    .line 504
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .local v0, "e":Landroid/os/RemoteException;
    .local v14, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v34    # "includeKeyValue":Ljava/lang/String;
    :goto_724
    :try_start_724
    const-string v1, "BackupManagerService"

    const-string v2, "App died during full backup"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72b
    .catchall {:try_start_724 .. :try_end_72b} :catchall_780

    .line 509
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v3, :cond_733

    .line 510
    :try_start_72d
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 511
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 513
    :cond_733
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_738
    .catch Ljava/io/IOException; {:try_start_72d .. :try_end_738} :catch_739

    .line 516
    goto :goto_756

    .line 514
    :catch_739
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_756
    iget-object v1, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 518
    :try_start_759
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v1
    :try_end_764
    .catchall {:try_start_759 .. :try_end_764} :catchall_77d

    .line 521
    :goto_764
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 522
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 524
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 527
    move-object v5, v3

    move-object v1, v4

    .line 528
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    .local v5, "out":Ljava/io/OutputStream;
    :goto_77c
    return-void

    .line 520
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_77d
    move-exception v0

    :try_start_77e
    monitor-exit v1
    :try_end_77f
    .catchall {:try_start_77e .. :try_end_77f} :catchall_77d

    throw v0

    .line 508
    :catchall_780
    move-exception v0

    move-object v1, v0

    .line 509
    :goto_782
    if-eqz v3, :cond_78a

    .line 510
    :try_start_784
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 511
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 513
    :cond_78a
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_78f
    .catch Ljava/io/IOException; {:try_start_784 .. :try_end_78f} :catch_790

    .line 516
    goto :goto_7ad

    .line 514
    :catch_790
    move-exception v0

    .line 515
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7ad
    iget-object v2, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 518
    :try_start_7b0
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v2
    :try_end_7bb
    .catchall {:try_start_7b0 .. :try_end_7bb} :catchall_7d2

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 522
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 524
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, v13, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 527
    throw v1

    .line 520
    :catchall_7d2
    move-exception v0

    :try_start_7d3
    monitor-exit v2
    :try_end_7d4
    .catchall {:try_start_7d3 .. :try_end_7d4} :catchall_7d2

    throw v0
.end method
