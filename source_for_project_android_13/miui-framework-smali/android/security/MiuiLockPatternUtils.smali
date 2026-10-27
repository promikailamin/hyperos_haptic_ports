.class public Landroid/security/MiuiLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;,
        Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    }
.end annotation


# static fields
.field public static final blacklist FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

.field public static final blacklist LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final blacklist MATCHED_BLUETOOTH_DEVICE_ADDRESS_TO_UNLOCK:Ljava/lang/String; = "bluetooth_address_to_unlock"

.field private static final blacklist MATCHED_BLUETOOTH_DEVICE_NAME_TO_UNLOCK:Ljava/lang/String; = "bluetooth_name_to_unlock"

.field private static final blacklist MATCHED_BLUETOOTH_KEY_TO_UNLOCK:Ljava/lang/String; = "bluetooth_key_to_unlock"

.field private static final blacklist MATCHED_BLUETOOTH_UNLOCK_STATUS:Ljava/lang/String; = "bluetooth_unlock_status"

.field public static final blacklist MIUI_LOCK_PATTERN_DATA_TYPE_AC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MIUI_LOCK_PATTERN_DATA_TYPE_GALLERY:I = 0x2

.field public static final blacklist MIUI_LOCK_PATTERN_DATA_TYPE_PRIVACY_PASSWORD:I = 0x3

.field public static final blacklist MIUI_LOCK_PATTERN_DATA_TYPE_SMS:I = 0x1

.field public static final blacklist PASSWORD_LENGTH_KEY:Ljava/lang/String; = "lockscreen.password_length"

.field private static final blacklist SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiLockPatternUtils"

.field private static blacklist mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final blacklist mMultiUserMode:Z

.field private blacklist mSecurityManager:Lmiui/security/SecurityManager;

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmMiuiLockPatternDatas()[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    .registers 1

    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 57
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    sput-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    .line 80
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "access_control"

    const-string v4, "access_control.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "sms"

    const-string v4, "sms_private.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "gallery"

    const-string v4, "gallery_private.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "privacy_password_setting"

    const-string v4, "privacy_password_setting.key"

    invoke-direct {v2, v3, v4}, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    sput-object v1, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-void

    nop

    :array_3e
    .array-data 4
        0x1e
        0x3c
        0x12c
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    .line 119
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 127
    iput-object p1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    .line 128
    iput p2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    .line 129
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    aget-object v0, v0, p2

    .line 130
    .local v0, "data":Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;
    iget-object v1, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_68

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/system/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "dataSystemDirectory":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 133
    iget-object v4, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_56

    move v5, v2

    goto :goto_57

    :cond_56
    move v5, v3

    :goto_57
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    const/16 v4, 0x388

    .line 136
    .local v4, "fileObserverMask":I
    new-instance v5, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;

    invoke-direct {v5, v1, v4}, Landroid/security/MiuiLockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    iput-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    .line 137
    iget-object v5, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 142
    .end local v1    # "dataSystemDirectory":Ljava/lang/String;
    .end local v4    # "fileObserverMask":I
    :cond_68
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_71

    goto :goto_72

    :cond_71
    move v2, v3

    :goto_72
    iput-boolean v2, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    .line 144
    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 145
    return-void
.end method

.method private blacklist checkAccessKeyguardStoragePermission()Z
    .registers 6

    .line 411
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 412
    .local v0, "permissionString":Ljava/lang/String;
    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 413
    .local v1, "result":I
    if-nez v1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method public static blacklist checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 473
    if-eqz p0, :cond_5a

    .line 476
    const/4 v0, 0x0

    .line 479
    .local v0, "raf":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 480
    .local v2, "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 481
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 482
    .local v3, "stored":[B
    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 483
    invoke-static {v2}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_2c
    .catchall {:try_start_4 .. :try_end_23} :catchall_2a

    .line 489
    nop

    .line 490
    :try_start_24
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    .line 493
    goto :goto_29

    .line 492
    :catch_28
    move-exception v4

    .line 483
    :goto_29
    return v1

    .line 488
    .end local v2    # "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v3    # "stored":[B
    :catchall_2a
    move-exception v1

    goto :goto_50

    .line 484
    :catch_2c
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string v3, "MiuiLockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPrivacyPasswordPattern error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_2a

    .line 486
    nop

    .line 489
    if-eqz v0, :cond_4e

    .line 490
    :try_start_48
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_4e

    .line 492
    :catch_4c
    move-exception v3

    goto :goto_4f

    .line 493
    :cond_4e
    :goto_4e
    nop

    .line 486
    :goto_4f
    return v1

    .line 489
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_50
    if-eqz v0, :cond_58

    .line 490
    :try_start_52
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_58

    .line 492
    :catch_56
    move-exception v2

    goto :goto_59

    .line 493
    :cond_58
    :goto_58
    nop

    .line 494
    :goto_59
    throw v1

    .line 474
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    :cond_5a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getFileNameAsUser(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 430
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 431
    .local v0, "filename":Ljava/lang/String;
    if-eqz p1, :cond_1f

    .line 432
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v4, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_1f
    return-object v0
.end method

.method private blacklist getLockSettingsService()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .line 299
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    .line 300
    nop

    .line 301
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 303
    :cond_11
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private blacklist getTimeoutInMsByFailedAttempts(I)I
    .registers 5
    .param p1, "failedAttempts"    # I

    .line 338
    add-int/lit8 v0, p1, -0x5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Landroid/security/MiuiLockPatternUtils;->FAILED_ATTEMPT_TIMEOUT_SECONDS_ARRAY:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 339
    .local v0, "timeoutIdx":I
    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public static blacklist patternToByteArray(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .line 551
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_6

    .line 552
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 554
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 556
    .local v0, "patternSize":I
    new-array v1, v0, [B

    .line 557
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_28

    .line 558
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 559
    .local v3, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 557
    .end local v3    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 561
    .end local v2    # "i":I
    :cond_28
    return-object v1
.end method

.method public static blacklist patternToHash(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .line 508
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 509
    const/4 v0, 0x0

    return-object v0

    .line 512
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 513
    .local v0, "patternSize":I
    new-array v1, v0, [B

    .line 514
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_24

    .line 515
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 516
    .local v3, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 514
    .end local v3    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 519
    .end local v2    # "i":I
    :cond_24
    :try_start_24
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 520
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2e} :catch_2f

    .line 521
    .local v3, "hash":[B
    return-object v3

    .line 522
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "hash":[B
    :catch_2f
    move-exception v2

    .line 523
    .local v2, "nsa":Ljava/security/NoSuchAlgorithmException;
    return-object v1
.end method

.method public static blacklist patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 541
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static blacklist savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 441
    if-eqz p0, :cond_48

    .line 444
    const/4 v0, 0x0

    .line 447
    .local v0, "raf":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 448
    .local v1, "hash":[B
    :try_start_4
    invoke-static {p0}, Landroid/security/MiuiLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 449
    .local v2, "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v2}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    move-object v1, v3

    .line 450
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 451
    if-eqz v1, :cond_21

    array-length v3, v1

    if-nez v3, :cond_1b

    goto :goto_21

    .line 454
    :cond_1b
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_26

    .line 452
    :cond_21
    :goto_21
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_30
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    .line 461
    .end local v1    # "hash":[B
    .end local v2    # "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :goto_26
    nop

    .line 462
    :try_start_27
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 465
    goto :goto_2d

    .line 464
    :catch_2b
    move-exception v1

    .line 466
    nop

    .line 467
    :goto_2d
    return-void

    .line 460
    :catchall_2e
    move-exception v1

    goto :goto_3e

    .line 456
    :catch_30
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v2, "MiuiLockPatternUtils"

    const-string v3, "savePrivacyPasswordPattern error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "pattern":Ljava/lang/String;
    .end local p1    # "filename":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v2
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_2e

    .line 461
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "pattern":Ljava/lang/String;
    .restart local p1    # "filename":Ljava/lang/String;
    .restart local p2    # "userId":I
    :goto_3e
    if-eqz v0, :cond_46

    .line 462
    :try_start_40
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_46

    .line 464
    :catch_44
    move-exception v2

    goto :goto_47

    .line 465
    :cond_46
    :goto_46
    nop

    .line 466
    :goto_47
    throw v1

    .line 442
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setLong(Ljava/lang/String;JI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 291
    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 295
    goto :goto_29

    .line 292
    :catch_c
    move-exception v0

    .line 294
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiLockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method private blacklist setMiuiLong(Ljava/lang/String;JI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 583
    :try_start_0
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 587
    goto :goto_25

    .line 584
    :catch_8
    move-exception v0

    .line 586
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiLockPatternUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method public static blacklist stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 528
    if-nez p0, :cond_4

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/MiuiLockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist checkMiuiLockPattern(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .line 154
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_14

    .line 155
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v2, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/security/PrivacyLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 159
    :cond_14
    const/4 v0, 0x1

    :try_start_15
    sget-object v2, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v3, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 160
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v3, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 162
    .local v4, "stored":[B
    array-length v5, v4

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 163
    .local v1, "got":I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 164
    if-gtz v1, :cond_36

    .line 165
    return v0

    .line 168
    :cond_36
    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_3e} :catch_41
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3e} :catch_3f

    return v0

    .line 171
    .end local v1    # "got":I
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .end local v4    # "stored":[B
    :catch_3f
    move-exception v1

    .line 172
    .local v1, "ioe":Ljava/io/IOException;
    return v0

    .line 169
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_41
    move-exception v1

    .line 170
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    return v0
.end method

.method public blacklist checkMiuiLockPatternAsUser(Ljava/util/List;I)Z
    .registers 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .line 178
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p2, :cond_1a

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    .line 180
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/security/PrivacyLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 182
    :cond_15
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->checkMiuiLockPattern(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 185
    :cond_1a
    invoke-direct {p0, p2}, Landroid/security/MiuiLockPatternUtils;->getFileNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v1, v0}, Lmiui/security/SecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "storedString":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public blacklist clearLockoutAttemptDeadline()V
    .registers 4

    .line 267
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 268
    return-void
.end method

.method public blacklist getBluetoothAddressToUnlock()Ljava/lang/String;
    .registers 3

    .line 355
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 356
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBluetoothKeyToUnlock()Ljava/lang/String;
    .registers 3

    .line 387
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 388
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBluetoothNameToUnlock()Ljava/lang/String;
    .registers 3

    .line 371
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 372
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBluetoothUnlockEnabled()Z
    .registers 4

    .line 403
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 404
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_unlock_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x1

    :goto_17
    return v2

    .line 406
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getCurrentOrCallingUserId()I
    .registers 2

    .line 307
    iget-boolean v0, p0, Landroid/security/MiuiLockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_9

    .line 309
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0

    .line 311
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public blacklist getKeyguardLockoutAttemptDeadline(I)J
    .registers 10
    .param p1, "failedAttempts"    # I

    .line 325
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 326
    .local v3, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 327
    .local v5, "now":J
    cmp-long v7, v3, v5

    if-gez v7, :cond_11

    .line 328
    return-wide v1

    .line 330
    :cond_11
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_2b

    .line 331
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 332
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v5

    return-wide v0

    .line 334
    :cond_2b
    return-wide v3
.end method

.method public blacklist getLockPasswordLength(I)J
    .registers 7
    .param p1, "userId"    # I

    .line 499
    const-wide/16 v0, 0x4

    :try_start_2
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_length"

    invoke-interface {v2, v3, v0, v1, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    return-wide v0

    .line 500
    :catch_d
    move-exception v2

    .line 501
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockPasswordLength error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiLockPatternUtils"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    return-wide v0
.end method

.method protected blacklist getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 278
    :try_start_0
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->getLockSettingsService()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 278
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 280
    :catch_d
    move-exception v0

    .line 281
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method public blacklist getOwnerInfo()Ljava/lang/String;
    .registers 3

    .line 343
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_owner_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isTactileFeedbackEnabled()Z
    .registers 5

    .line 591
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public blacklist reportSuccessfulPasswordAttempt()V
    .registers 2

    .line 316
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 317
    return-void
.end method

.method public blacklist reportSuccessfulPasswordAttempt(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 320
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 321
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 322
    return-void
.end method

.method public blacklist saveMiuiLockPattern(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v0, "Unable to save lock pattern to "

    const-string v1, "MiuiLockPatternUtils"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_17

    .line 217
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Landroid/security/PrivacyLockPatternUtils;->savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_66

    .line 220
    :cond_17
    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 221
    .local v2, "hash":[B
    sget-object v4, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v5, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 224
    .local v4, "filename":Ljava/lang/String;
    :try_start_23
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v5, "raf":Ljava/io/RandomAccessFile;
    if-nez p1, :cond_32

    .line 227
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_36

    .line 229
    :cond_32
    array-length v6, v2

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 231
    :goto_36
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_39} :catch_50
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_39} :catch_3a

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_65

    .line 235
    :catch_3a
    move-exception v3

    .line 237
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 232
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_50
    move-exception v3

    .line 234
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_65
    nop

    .line 240
    .end local v2    # "hash":[B
    .end local v4    # "filename":Ljava/lang/String;
    :goto_66
    return-void
.end method

.method public blacklist saveMiuiLockPatternAsUser(Ljava/util/List;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .line 243
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p2, :cond_18

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_14

    .line 245
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/security/PrivacyLockPatternUtils;->savePrivacyPasswordPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_3f

    .line 247
    :cond_14
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    goto :goto_3f

    .line 250
    :cond_18
    invoke-static {p1}, Landroid/security/MiuiLockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 251
    .local v0, "hash":[B
    invoke-direct {p0, p2}, Landroid/security/MiuiLockPatternUtils;->getFileNameAsUser(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "filename":Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 254
    :try_start_22
    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_36

    .line 256
    :cond_2f
    iget-object v2, p0, Landroid/security/MiuiLockPatternUtils;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_36} :catch_37

    .line 260
    :goto_36
    goto :goto_3f

    .line 258
    :catch_37
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "MiuiLockPatternUtils"

    const-string v4, "save pattern as user failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "hash":[B
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3f
    return-void
.end method

.method public blacklist savedMiuiLockPatternExists()Z
    .registers 2

    .line 196
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExistsAsUser(I)Z

    move-result v0

    return v0
.end method

.method public blacklist savedMiuiLockPatternExistsAsUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 204
    if-nez p1, :cond_f

    .line 205
    sget-object v0, Landroid/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Landroid/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 207
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setBluetoothAddressToUnlock(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 348
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 352
    return-void

    .line 350
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBluetoothKeyToUnlock(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 380
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_key_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    return-void

    .line 382
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBluetoothNameToUnlock(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 364
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name_to_unlock"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    return-void

    .line 366
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBluetoothUnlockEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 395
    invoke-direct {p0}, Landroid/security/MiuiLockPatternUtils;->checkAccessKeyguardStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 396
    iget-object v0, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_unlock_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    return-void

    .line 398
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need android.permission.ACCESS_KEYGUARD_SECURE_STORAGE permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setKeyguardLockoutAttemptDeadline(I)J
    .registers 6
    .param p1, "failedAttempts"    # I

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getTimeoutInMsByFailedAttempts(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 272
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0, v2, v0, v1}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 273
    return-wide v0
.end method

.method public blacklist setKeyguardPasswordQuality(I)V
    .registers 7
    .param p1, "quality"    # I

    .line 420
    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 421
    .local v0, "permissionString":Ljava/lang/String;
    iget-object v1, p0, Landroid/security/MiuiLockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 422
    .local v1, "result":I
    if-nez v1, :cond_1b

    .line 423
    int-to-long v2, p1

    const-string v4, "lockscreen.password_type"

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 427
    return-void

    .line 425
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need miui.permission.USE_INTERNAL_GENERAL_API permission to access"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 9
    .param p1, "newCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userHandle"    # I

    .line 570
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0

    .line 571
    .local v0, "result":Z
    if-eqz v0, :cond_20

    .line 572
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/security/MiuiLockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v1

    .line 573
    .local v1, "quality":I
    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_16

    const/high16 v2, 0x30000

    if-ne v1, v2, :cond_20

    .line 575
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "lockscreen.password_length"

    invoke-direct {p0, v4, v2, v3, p3}, Landroid/security/MiuiLockPatternUtils;->setMiuiLong(Ljava/lang/String;JI)V

    .line 578
    .end local v1    # "quality":I
    :cond_20
    return v0
.end method

.method protected blacklist setLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 286
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 287
    return-void
.end method
