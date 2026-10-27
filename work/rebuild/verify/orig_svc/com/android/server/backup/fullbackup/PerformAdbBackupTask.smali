.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mAllApps:Z

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mCompress:Z

.field public final mCurrentOpToken:I

.field public final mCurrentPassword:Ljava/lang/String;

.field public mCurrentTarget:Landroid/content/pm/PackageInfo;

.field public final mDoWidgets:Z

.field public final mEncryptPassword:Ljava/lang/String;

.field public final mIncludeApks:Z

.field public final mIncludeObbs:Z

.field public final mIncludeShared:Z

.field public final mIncludeSystem:Z

.field public final mKeyValue:Z

.field public final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field public final mPackages:Ljava/util/ArrayList;

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 18

    .line 97
    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 98
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 99
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 100
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 p1, p16

    .line 101
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 104
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 105
    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 106
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 107
    iput-boolean p8, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 108
    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 109
    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p15, :cond_27

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_30

    .line 112
    :cond_27
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_30
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 113
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p10, :cond_42

    .line 118
    const-string p1, ""

    invoke-virtual {p1, p10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_42

    .line 121
    :cond_3f
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_44

    .line 119
    :cond_42
    :goto_42
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 126
    :goto_44
    iput-boolean p13, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 127
    iput-boolean p14, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    move-object/from16 p1, p17

    .line 128
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method


# virtual methods
.method public final addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 7

    .line 132
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    .line 133
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/high16 v2, 0x8000000

    .line 137
    :try_start_24
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 139
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2b} :catch_2c

    goto :goto_10

    .line 141
    :catch_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_48
    return-void
.end method

.method public final emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 12

    .line 150
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/16 v1, 0x200

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 153
    const-string v3, "PBKDF2WithHmacSHA1"

    const/16 v4, 0x2710

    invoke-static {v3, v2, v0, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v2

    const/16 v5, 0x20

    .line 158
    new-array v5, v5, [B

    .line 159
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 160
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object p0

    .line 164
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 165
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x1

    .line 166
    invoke-virtual {v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 167
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, p2, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 170
    const-string p2, "AES-256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 186
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 201
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2

    .line 204
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v5

    .line 203
    invoke-static {v3, v5, p0, v4}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object p0

    .line 207
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, p0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 209
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 211
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 212
    array-length v1, v2

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 213
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 214
    array-length v1, p0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 215
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 216
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 217
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v8
.end method

.method public execute()V
    .registers 1

    .line 0
    return-void
.end method

.method public final finalizeBackup(Ljava/io/OutputStream;)V
    .registers 2

    const/16 p0, 0x400

    .line 227
    :try_start_2
    new-array p0, p0, [B

    .line 228
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    .line 230
    :catch_8
    const-string p0, "BackupManagerService"

    const-string p1, "Error attempting to finalize backup stream"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleCancel(I)V
    .registers 4

    .line 489
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adb backup cancel of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_26

    .line 492
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 495
    :cond_26
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-interface {p1, p0}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public run()V
    .registers 23

    move-object/from16 v6, p0

    .line 236
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    .line 237
    :goto_b
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Performing adb backup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 240
    new-instance v13, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v13, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 242
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 244
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendStartBackup()V

    .line 245
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 248
    iget-boolean v2, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_6a

    const/high16 v2, 0x8000000

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move v2, v14

    .line 251
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 252
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 254
    iget-boolean v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v4, :cond_62

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v15

    if-nez v4, :cond_67

    .line 256
    :cond_62
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 263
    :cond_6a
    iget-boolean v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v1, :cond_77

    .line 266
    invoke-static {v14}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 278
    invoke-virtual {v6, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 285
    :cond_77
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_7e

    .line 286
    invoke-virtual {v6, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 293
    :cond_7e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 295
    :cond_8b
    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 297
    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_de

    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 298
    invoke-virtual {v4, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_b2

    goto :goto_de

    .line 302
    :cond_b2
    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 304
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is key-value."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 299
    :cond_de
    :goto_de
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 300
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not eligible for backup, removing."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 311
    :cond_ff
    new-instance v2, Ljava/util/ArrayList;

    .line 312
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 313
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v3, 0x0

    .line 318
    :try_start_114
    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_116} :catch_3d5
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_116} :catch_3d0
    .catchall {:try_start_114 .. :try_end_116} :catchall_373

    if-eqz v4, :cond_12c

    :try_start_118
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_11c
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_11c} :catch_129
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11c} :catch_125
    .catchall {:try_start_118 .. :try_end_11c} :catchall_120

    if-lez v4, :cond_12c

    move v4, v15

    goto :goto_12d

    :catchall_120
    move-exception v0

    move-object v2, v0

    :goto_122
    move-object v1, v6

    goto/16 :goto_467

    :catch_125
    move-exception v0

    :goto_126
    move-object v1, v6

    goto/16 :goto_3d9

    :catch_129
    :goto_129
    move-object v1, v6

    goto/16 :goto_421

    :cond_12c
    move v4, v14

    .line 324
    :goto_12d
    :try_start_12d
    iget-object v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v5
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_135} :catch_3d5
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_135} :catch_3d0
    .catchall {:try_start_12d .. :try_end_135} :catchall_373

    if-nez v5, :cond_187

    .line 325
    :try_start_137
    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_13e} :catch_129
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13e} :catch_125
    .catchall {:try_start_137 .. :try_end_13e} :catchall_120

    .line 461
    :try_start_13e
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_143} :catch_144

    goto :goto_15f

    :catch_144
    move-exception v0

    .line 463
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing adb backup file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_15f
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 466
    :try_start_162
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v1
    :try_end_16d
    .catchall {:try_start_162 .. :try_end_16d} :catchall_184

    .line 469
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 471
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    :goto_17c
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    return-void

    :catchall_184
    move-exception v0

    .line 468
    :try_start_185
    monitor-exit v1
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    throw v0

    .line 354
    :cond_187
    :try_start_187
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x400

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    const-string v7, "ANDROID BACKUP\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    .line 357
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    iget-boolean v7, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_199
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_199} :catch_3d5
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_199} :catch_3d0
    .catchall {:try_start_187 .. :try_end_199} :catchall_373

    if-eqz v7, :cond_19e

    :try_start_19b
    const-string v7, "\n1\n"
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_19b .. :try_end_19d} :catch_129
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_19d} :catch_125
    .catchall {:try_start_19b .. :try_end_19d} :catchall_120

    goto :goto_1a0

    :cond_19e
    :try_start_19e
    const-string v7, "\n0\n"

    :goto_1a0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_19e .. :try_end_1a3} :catch_3d5
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a3} :catch_3d0
    .catchall {:try_start_19e .. :try_end_1a3} :catchall_373

    if-eqz v4, :cond_1b0

    .line 363
    :try_start_1a5
    invoke-virtual {v6, v5, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1a9} :catch_1aa
    .catchall {:try_start_1a5 .. :try_end_1a9} :catchall_120

    goto :goto_1b7

    :catch_1aa
    move-exception v0

    move-object/from16 v18, v3

    move-object v1, v6

    goto/16 :goto_379

    .line 365
    :cond_1b0
    :try_start_1b0
    const-string/jumbo v4, "none\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    .line 368
    :goto_1b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 369
    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 372
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1c6} :catch_1aa
    .catchall {:try_start_1b0 .. :try_end_1c6} :catchall_373

    if-eqz v0, :cond_1d5

    .line 373
    :try_start_1c8
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 374
    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v5, v4, v0, v15}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d4} :catch_1aa
    .catchall {:try_start_1c8 .. :try_end_1d4} :catchall_120

    goto :goto_1d6

    :cond_1d5
    move-object v5, v4

    .line 385
    :goto_1d6
    :try_start_1d6
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1d8} :catch_2b5
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1d8} :catch_2b2
    .catchall {:try_start_1d6 .. :try_end_1d8} :catchall_2af

    if-eqz v0, :cond_1fd

    .line 387
    :try_start_1da
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v4, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 389
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1da .. :try_end_1e9} :catch_1f6
    .catch Landroid/os/RemoteException; {:try_start_1da .. :try_end_1e9} :catch_1f3
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e9} :catch_1ef
    .catchall {:try_start_1da .. :try_end_1e9} :catchall_1ea

    goto :goto_1fd

    :catchall_1ea
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    goto/16 :goto_122

    :catch_1ef
    move-exception v0

    move-object v3, v5

    goto/16 :goto_126

    :catch_1f3
    move-object v3, v5

    goto/16 :goto_129

    .line 391
    :catch_1f6
    :try_start_1f6
    const-string v0, "BackupManagerService"

    const-string v4, "Unable to find shared-storage backup handler"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fd
    .catch Landroid/os/RemoteException; {:try_start_1f6 .. :try_end_1fd} :catch_1f3
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_1fd} :catch_1ef
    .catchall {:try_start_1f6 .. :try_end_1fd} :catchall_1ea

    .line 396
    :cond_1fd
    :goto_1fd
    :try_start_1fd
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v14

    :goto_202
    if-ge v4, v0, :cond_2b7

    .line 398
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 399
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--- Performing full backup for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.android.sharedstoragebackup"

    .line 402
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    move v8, v0

    .line 405
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    move-object v9, v1

    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_235
    .catch Landroid/os/RemoteException; {:try_start_1fd .. :try_end_235} :catch_2b5
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_235} :catch_2b2
    .catchall {:try_start_1fd .. :try_end_235} :catchall_2af

    move-object v10, v2

    move-object v2, v5

    :try_start_237
    iget-boolean v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    move-object v11, v9

    iget v9, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object v12, v11

    iget-object v11, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v17, v12

    new-instance v12, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {v12, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    move-object/from16 v18, v3

    const/4 v3, 0x0

    move/from16 v20, v4

    move-object v4, v7

    move/from16 v19, v8

    const-wide v7, 0x7fffffffffffffffL

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V
    :try_end_259
    .catch Landroid/os/RemoteException; {:try_start_237 .. :try_end_259} :catch_2ad
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_259} :catch_2aa
    .catchall {:try_start_237 .. :try_end_259} :catchall_2a7

    move-object v1, v6

    if-eqz v16, :cond_26b

    .line 418
    :try_start_25c
    const-string v3, "Shared storage"

    goto :goto_26d

    :catchall_25f
    move-exception v0

    :goto_260
    move-object v3, v2

    :goto_261
    move-object v2, v0

    goto/16 :goto_467

    :catch_264
    move-exception v0

    :goto_265
    move-object v3, v2

    goto/16 :goto_3d9

    :catch_268
    :goto_268
    move-object v3, v2

    goto/16 :goto_421

    :cond_26b
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_26d
    invoke-virtual {v1, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 421
    iput-object v4, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 426
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    if-eqz v0, :cond_299

    if-nez v16, :cond_299

    .line 427
    invoke-virtual {v13, v4, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_282

    goto :goto_299

    .line 429
    :cond_282
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure writing OBB stack for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_299
    :goto_299
    add-int/lit8 v4, v20, 0x1

    move-object v6, v1

    move-object v5, v2

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v0, v19

    move-object/from16 v2, v21

    goto/16 :goto_202

    :catchall_2a7
    move-exception v0

    :goto_2a8
    move-object v1, v6

    goto :goto_260

    :catch_2aa
    move-exception v0

    :goto_2ab
    move-object v1, v6

    goto :goto_265

    :catch_2ad
    :goto_2ad
    move-object v1, v6

    goto :goto_268

    :catchall_2af
    move-exception v0

    move-object v2, v5

    goto :goto_2a8

    :catch_2b2
    move-exception v0

    move-object v2, v5

    goto :goto_2ab

    :catch_2b5
    move-object v2, v5

    goto :goto_2ad

    :cond_2b7
    move-object/from16 v17, v1

    move-object v2, v5

    move-object v1, v6

    .line 434
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_31c

    .line 435
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2c3
    if-ge v14, v0, :cond_31c

    move-object/from16 v11, v17

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v14, 0x1

    move-object v6, v3

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 436
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Performing key-value backup for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v4, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 441
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 442
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v9

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 443
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v10
    :try_end_301
    .catch Landroid/os/RemoteException; {:try_start_25c .. :try_end_301} :catch_268
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_301} :catch_264
    .catchall {:try_start_25c .. :try_end_301} :catchall_25f

    move-object v5, v2

    :try_start_302
    invoke-direct/range {v4 .. v10}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    :try_end_305
    .catch Landroid/os/RemoteException; {:try_start_302 .. :try_end_305} :catch_319
    .catch Ljava/lang/Exception; {:try_start_302 .. :try_end_305} :catch_315
    .catchall {:try_start_302 .. :try_end_305} :catchall_311

    move-object v2, v5

    .line 444
    :try_start_306
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v4}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V

    move-object/from16 v17, v11

    goto :goto_2c3

    :catchall_311
    move-exception v0

    move-object v2, v5

    goto/16 :goto_260

    :catch_315
    move-exception v0

    move-object v2, v5

    goto/16 :goto_265

    :catch_319
    move-object v2, v5

    goto/16 :goto_268

    .line 450
    :cond_31c
    invoke-virtual {v1, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_31f
    .catch Landroid/os/RemoteException; {:try_start_306 .. :try_end_31f} :catch_268
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_31f} :catch_264
    .catchall {:try_start_306 .. :try_end_31f} :catchall_25f

    if-eqz v2, :cond_32a

    .line 458
    :try_start_321
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_32a

    :catch_328
    move-exception v0

    goto :goto_330

    .line 461
    :cond_32a
    :goto_32a
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32f
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_32f} :catch_328

    goto :goto_34a

    .line 463
    :goto_330
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_34a
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 466
    :try_start_34d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v3
    :try_end_358
    .catchall {:try_start_34d .. :try_end_358} :catchall_370

    .line 469
    :goto_358
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 471
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    goto/16 :goto_463

    :catchall_370
    move-exception v0

    .line 468
    :try_start_371
    monitor-exit v3
    :try_end_372
    .catchall {:try_start_371 .. :try_end_372} :catchall_370

    throw v0

    :catchall_373
    move-exception v0

    move-object/from16 v18, v3

    move-object v1, v6

    goto/16 :goto_261

    .line 380
    :goto_379
    :try_start_379
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to emit archive header"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_380
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_380} :catch_3cd
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_380} :catch_3c9
    .catchall {:try_start_379 .. :try_end_380} :catchall_3c3

    .line 461
    :try_start_380
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_385
    .catch Ljava/io/IOException; {:try_start_380 .. :try_end_385} :catch_386

    goto :goto_3a1

    :catch_386
    move-exception v0

    .line 463
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_3a1
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 466
    :try_start_3a4
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v2
    :try_end_3af
    .catchall {:try_start_3a4 .. :try_end_3af} :catchall_3c0

    .line 469
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 471
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    goto/16 :goto_17c

    :catchall_3c0
    move-exception v0

    .line 468
    :try_start_3c1
    monitor-exit v2
    :try_end_3c2
    .catchall {:try_start_3c1 .. :try_end_3c2} :catchall_3c0

    throw v0

    :catchall_3c3
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v18

    goto/16 :goto_467

    :catch_3c9
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_3d9

    :catch_3cd
    move-object/from16 v3, v18

    goto :goto_421

    :catch_3d0
    move-exception v0

    move-object/from16 v18, v3

    goto/16 :goto_126

    :catch_3d5
    move-object/from16 v18, v3

    goto/16 :goto_129

    .line 454
    :goto_3d9
    :try_start_3d9
    const-string v2, "BackupManagerService"

    const-string v4, "Internal exception during full backup"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e0
    .catchall {:try_start_3d9 .. :try_end_3e0} :catchall_41e

    if-eqz v3, :cond_3eb

    .line 458
    :try_start_3e2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_3eb

    :catch_3e9
    move-exception v0

    goto :goto_3f1

    .line 461
    :cond_3eb
    :goto_3eb
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f0
    .catch Ljava/io/IOException; {:try_start_3e2 .. :try_end_3f0} :catch_3e9

    goto :goto_40b

    .line 463
    :goto_3f1
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_40b
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 466
    :try_start_40e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v2

    goto/16 :goto_358

    :catchall_41b
    move-exception v0

    monitor-exit v2
    :try_end_41d
    .catchall {:try_start_40e .. :try_end_41d} :catchall_41b

    throw v0

    :catchall_41e
    move-exception v0

    goto/16 :goto_261

    .line 452
    :goto_421
    :try_start_421
    const-string v0, "BackupManagerService"

    const-string v2, "App died during full backup"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_428
    .catchall {:try_start_421 .. :try_end_428} :catchall_41e

    if-eqz v3, :cond_433

    .line 458
    :try_start_42a
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_433

    :catch_431
    move-exception v0

    goto :goto_439

    .line 461
    :cond_433
    :goto_433
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_438
    .catch Ljava/io/IOException; {:try_start_42a .. :try_end_438} :catch_431

    goto :goto_453

    .line 463
    :goto_439
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_453
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 466
    :try_start_456
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v2

    goto/16 :goto_358

    :goto_463
    return-void

    :catchall_464
    move-exception v0

    monitor-exit v2
    :try_end_466
    .catchall {:try_start_456 .. :try_end_466} :catchall_464

    throw v0

    :goto_467
    if-eqz v3, :cond_472

    .line 458
    :try_start_469
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_472

    :catch_470
    move-exception v0

    goto :goto_478

    .line 461
    :cond_472
    :goto_472
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_477
    .catch Ljava/io/IOException; {:try_start_469 .. :try_end_477} :catch_470

    goto :goto_492

    .line 463
    :goto_478
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_492
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 466
    :try_start_495
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v3
    :try_end_4a0
    .catchall {:try_start_495 .. :try_end_4a0} :catchall_4b7

    .line 469
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 471
    const-string v0, "BackupManagerService"

    const-string v3, "Full backup pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 473
    throw v2

    :catchall_4b7
    move-exception v0

    .line 468
    :try_start_4b8
    monitor-exit v3
    :try_end_4b9
    .catchall {:try_start_4b8 .. :try_end_4b9} :catchall_4b7

    throw v0
.end method
