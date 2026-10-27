.class public Lcom/android/server/testharness/TestHarnessModeService;
.super Lcom/android/server/SystemService;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;,
        Lcom/android/server/testharness/TestHarnessModeService$PersistentData;,
        Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    }
.end annotation


# static fields
.field private static final MITS_ENABLED:Ljava/lang/String; = "MITS_ENABLED"

.field private static final TAG:Ljava/lang/String;

.field public static final TEST_HARNESS_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.test_harness"


# instance fields
.field private mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPrimaryUser(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misMITSModeEnabled(Lcom/android/server/testharness/TestHarnessModeService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->isMITSModeEnabled()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/testharness/TestHarnessModeService$1;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    .line 82
    return-void
.end method

.method private completeTestHarnessModeSetup()V
    .registers 5

    .line 132
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Completing Test Harness Mode setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    .line 134
    .local v0, "testHarnessModeData":[B
    if-nez v0, :cond_e

    .line 135
    return-void

    .line 138
    :cond_e
    :try_start_e
    invoke-static {v0}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/testharness/TestHarnessModeService;->setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V

    .line 139
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureSettings()V

    .line 140
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureUser()V
    :try_end_1b
    .catch Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException; {:try_start_e .. :try_end_1b} :catch_26
    .catchall {:try_start_e .. :try_end_1b} :catchall_24

    .line 148
    nop

    :goto_1c
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    .line 149
    goto :goto_30

    .line 148
    :catchall_24
    move-exception v1

    goto :goto_31

    .line 141
    :catch_26
    move-exception v1

    .line 142
    .local v1, "e":Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
    :try_start_27
    sget-object v2, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set up Test Harness Mode. Bad data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    .line 148
    nop

    .end local v1    # "e":Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
    goto :goto_1c

    .line 150
    :goto_30
    return-void

    .line 148
    :goto_31
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    .line 149
    throw v1
.end method

.method private configureSettings()V
    .registers 7

    .line 208
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    .line 213
    const-string v1, "ctl.restart"

    const-string v4, "adbd"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v4, "Restarted adbd"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_20
    const-wide/16 v4, 0x0

    const-string v1, "adb_allowed_connection_time"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 220
    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    const-string/jumbo v1, "verifier_verify_adb_installs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    const/16 v1, 0xf

    const-string/jumbo v2, "stay_on_while_plugged_in"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    const-string/jumbo v1, "ota_disable_automatic_update"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    return-void
.end method

.method private configureUser()V
    .registers 5

    .line 242
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 244
    .local v0, "primaryUser":Landroid/content/pm/UserInfo;
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 247
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 248
    return-void
.end method

.method private disableLockScreen()V
    .registers 5

    .line 126
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 127
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 129
    return-void
.end method

.method private getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_15

    .line 315
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Getting PersistentDataBlockManagerInternal from LocalServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 317
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 319
    :cond_15
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method private getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 251
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 252
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private getTestHarnessModeData()[B
    .registers 5

    .line 193
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 194
    .local v0, "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 195
    sget-object v2, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start Test Harness Mode; no implementation of PersistentDataBlockManagerInternal was bound!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-object v1

    .line 199
    :cond_f
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getTestHarnessModeData()[B

    move-result-object v2

    .line 200
    .local v2, "testHarnessModeData":[B
    if-eqz v2, :cond_1a

    array-length v3, v2

    if-nez v3, :cond_19

    goto :goto_1a

    .line 204
    :cond_19
    return-object v2

    .line 202
    :cond_1a
    :goto_1a
    return-object v1
.end method

.method private isDeviceProvisioned()Z
    .registers 5

    .line 180
    const/4 v0, 0x1

    .line 181
    .local v0, "provisioned":Z
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 183
    .local v1, "cr":Landroid/content/ContentResolver;
    :try_start_9
    const-string v2, "device_provisioned"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_f} :catch_16

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    move v0, v3

    .line 186
    goto :goto_1a

    .line 184
    :catch_16
    move-exception v2

    .line 185
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 188
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1a
    return v0
.end method

.method private isMITSModeEnabled()Z
    .registers 6

    .line 154
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    .line 155
    .local v0, "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 156
    sget-object v2, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get MITS Mode; no implementation of PersistentDataBlockManagerInternal was bound!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1

    .line 160
    :cond_f
    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getMITSModeData()[B

    move-result-object v2

    .line 161
    .local v2, "mitsModeData":[B
    if-eqz v2, :cond_24

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v4, "MITS_ENABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 162
    const/4 v1, 0x1

    return v1

    .line 164
    :cond_24
    return v1
.end method

.method private setDeviceProvisioned()V
    .registers 5

    .line 273
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    const-string/jumbo v1, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 280
    return-void
.end method

.method private setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V
    .registers 5
    .param p1, "persistentData"    # Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    .line 230
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    .line 232
    .local v0, "adbManager":Landroid/debug/AdbManagerInternal;
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 233
    iget-object v1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 235
    :cond_1b
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 236
    iget-object v1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 238
    :cond_2e
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->notifyKeyFilesUpdated()V

    .line 239
    return-void
.end method

.method private setUpMITSMode()V
    .registers 4

    .line 168
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    return-void

    .line 172
    :cond_7
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->isMITSModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 173
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureSettings()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1e
    return-void
.end method

.method private setUpTestHarnessMode()V
    .registers 4

    .line 113
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Setting up test harness mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    .line 115
    .local v0, "testHarnessModeData":[B
    if-nez v0, :cond_e

    .line 116
    return-void

    .line 120
    :cond_e
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setDeviceProvisioned()V

    .line 121
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->disableLockScreen()V

    .line 122
    const-string/jumbo v1, "persist.sys.test_harness"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private showNotificationIfEnabled()V
    .registers 8

    .line 283
    const-string/jumbo v0, "persist.sys.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 284
    return-void

    .line 286
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040933

    .line 287
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040932

    .line 289
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/Notification$Builder;

    .line 292
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080850

    .line 293
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 294
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 295
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 296
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 297
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x106001c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 302
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 306
    .local v1, "notification":Landroid/app/Notification;
    nop

    .line 307
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 308
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const/4 v4, 0x0

    const/16 v5, 0x36

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 310
    return-void
.end method

.method private writeBytesToFile([BLjava/nio/file/Path;)V
    .registers 6
    .param p1, "keys"    # [B
    .param p2, "adbKeys"    # Ljava/nio/file/Path;

    .line 257
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 258
    .local v1, "fileOutputStream":Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 259
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 261
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v0

    .line 262
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {p2, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1d

    .line 268
    nop

    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v1    # "fileOutputStream":Ljava/io/OutputStream;
    goto :goto_25

    .line 264
    :catch_1d
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set up adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    :goto_25
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 91
    sparse-switch p1, :sswitch_data_16

    goto :goto_12

    .line 96
    :sswitch_4
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->completeTestHarnessModeSetup()V

    .line 97
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->showNotificationIfEnabled()V

    .line 99
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpMITSMode()V

    goto :goto_12

    .line 93
    :sswitch_e
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpTestHarnessMode()V

    .line 94
    nop

    .line 103
    :goto_12
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 104
    return-void

    :sswitch_data_16
    .sparse-switch
        0x1f4 -> :sswitch_e
        0x3e8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "testharness"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/testharness/TestHarnessModeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    return-void
.end method
