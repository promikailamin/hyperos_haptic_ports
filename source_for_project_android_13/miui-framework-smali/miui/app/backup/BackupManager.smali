.class public Lmiui/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"

# interfaces
.implements Lcom/miui/backup/BackupManagerStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupManager$BackupRestoreListener;,
        Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field public static final blacklist BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "MIUI BACKUP\n"

.field public static final blacklist BACKUP_FILE_VERSION:I = 0x2

.field public static blacklist DOMAIN_ATTACH:Ljava/lang/String; = null

.field public static blacklist DOMAIN_BAK:Ljava/lang/String; = null

.field public static blacklist DOMAIN_END:Ljava/lang/String; = null

.field public static blacklist DOMAIN_META:Ljava/lang/String; = null

.field public static final whitelist ERR_APK_INSTALL:I = 0xb

.field public static final whitelist ERR_AUTHENTICATION_FAILED:I = 0x3

.field public static final whitelist ERR_BAKFILE_BROKEN:I = 0x6

.field public static final whitelist ERR_BINDER_DIED:I = 0x8

.field public static final whitelist ERR_IO_PERMISSION:I = 0x7

.field public static final whitelist ERR_NONE:I = 0x0

.field public static final whitelist ERR_NOT_ALLOW:I = 0x9

.field public static final whitelist ERR_NO_BACKUPAGENT:I = 0x2

.field public static final whitelist ERR_UNKNOWN:I = 0x1

.field public static final whitelist ERR_USER_CANCEL:I = 0xa

.field public static final whitelist ERR_VERSION_TOO_OLD:I = 0x5

.field public static final whitelist ERR_VERSION_UNSUPPORTED:I = 0x4

.field public static final whitelist FEATURE_FULL_BACKUP:I = -0x1

.field public static final blacklist FEATURE_SUPPORT_XSPACE_APP_BACKUP:Z = true

.field private static final blacklist MIUI_RESTORE_SERVICE_NAME:Ljava/lang/String; = "miui.restore.service"

.field public static final whitelist PROG_TYPE_NORMAL:I = 0x0

.field public static final whitelist PROG_TYPE_RECORD:I = 0x1

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "MiuiBackup"

.field public static final whitelist STATE_BACKUP:I = 0x1

.field public static final whitelist STATE_IDLE:I = 0x0

.field public static final whitelist STATE_RESTORE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "Backup:BackupManager"

.field public static final blacklist TYPE_NORMAL_BACKUP_TIMEOUT_SCALE:I = 0x1

.field public static final blacklist TYPE_RECORD_BACKUP_TIMEOUT_SCALE:I = 0x6

.field private static blacklist mSystemAppWhiteSet:Ljava/util/HashSet;

.field private static blacklist sProgRecordAppSet:Ljava/util/HashSet;

.field private static blacklist sWRInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/app/backup/BackupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackupRestoreLatch:Ljava/lang/Object;

.field private blacklist mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mICaller:Landroid/os/IBinder;

.field private blacklist mIsAcquired:Z

.field private blacklist mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

.field private blacklist mPips:[Landroid/os/ParcelFileDescriptor;

.field private blacklist mService:Lmiui/app/backup/IBackupManager;

.field private blacklist mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBackupRestoreLatch(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackupRestoreListener(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;
    .registers 1

    iget-object p0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPips(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;
    .registers 1

    iget-object p0, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransactionLatch(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTransactionLatch(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    const-string v0, "miui_bak"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    .line 72
    const-string v0, "miui_meta"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    .line 76
    const-string v0, "miui_att"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    .line 80
    const-string v0, "miui_end"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    .line 167
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.mi.globalbrowser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.weather2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string v1, "com.miui.creation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    .line 207
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    .line 113
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    .line 228
    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 229
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    .line 230
    nop

    .line 231
    const-string v0, "miui.restore.service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 230
    invoke-static {v0}, Lmiui/app/backup/IMiuiRestoreManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IMiuiRestoreManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    .line 232
    return-void
.end method

.method public static final whitelist getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 219
    sget-object v0, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/BackupManager;

    .line 220
    .local v0, "instance":Lmiui/app/backup/BackupManager;
    :goto_c
    if-nez v0, :cond_1f

    .line 221
    new-instance v1, Lmiui/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 222
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    .line 224
    :cond_1f
    return-object v0
.end method

.method public static blacklist isProgRecordApp(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "feature"    # I

    .line 215
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "isSysApp":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 185
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    :try_start_7
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 186
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v3

    .line 188
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_12

    .line 187
    :catch_11
    move-exception v2

    .line 189
    :goto_12
    return v0
.end method

.method public static blacklist isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "isSysApp":Z
    if-eqz p0, :cond_1c

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1c

    .line 196
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1b

    sget-object v1, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 198
    :cond_1b
    const/4 v0, 0x1

    .line 201
    :cond_1c
    return v0
.end method


# virtual methods
.method public blacklist acquire(Lmiui/app/backup/IBackupServiceStateObserver;)Z
    .registers 4
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v0, :cond_e

    .line 121
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Lmiui/app/backup/IBackupManager;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 125
    :cond_e
    goto :goto_13

    .line 123
    :catch_f
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    iget-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return v0
.end method

.method public blacklist backupAppData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILmiui/app/backup/ITaskCommonCallback;)I
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "paths"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "parentPaths"    # [Ljava/lang/String;
    .param p5, "excludePaths"    # [Ljava/lang/String;
    .param p6, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "type"    # I
    .param p8, "callback"    # Lmiui/app/backup/ITaskCommonCallback;

    .line 396
    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lmiui/app/backup/IMiuiRestoreManager;->backupAppData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILmiui/app/backup/ITaskCommonCallback;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    return v0

    .line 397
    :catch_14
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, "backupToTar error"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 17
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 240
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/app/backup/BackupManager;->backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V

    .line 241
    return-void
.end method

.method public blacklist backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 19
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "shouldSkipData"    # Z
    .param p8, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 249
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lmiui/app/backup/BackupManager;->backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V

    .line 250
    return-void
.end method

.method public blacklist backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 28
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "shouldSkipData"    # Z
    .param p8, "isXSpace"    # Z
    .param p9, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 258
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v0, :cond_e

    .line 259
    const-string v0, "Backup:BackupManager"

    const-string v2, "You must acquire first to use the backup service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_e
    move-object/from16 v2, p9

    iput-object v2, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 264
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    if-eqz v0, :cond_e4

    .line 266
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_18
    iget-object v5, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_9f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_81
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_63
    .catchall {:try_start_18 .. :try_end_1b} :catchall_60

    .line 267
    :try_start_1b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    .line 268
    iget-object v6, v1, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    aget-object v7, v0, v3

    aget-object v8, v0, v4

    new-instance v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver-IA;)V

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, v0

    invoke-interface/range {v6 .. v17}, Lmiui/app/backup/IBackupManager;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 272
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 273
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_5d

    .line 281
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e4

    .line 283
    :try_start_4c
    aget-object v0, v0, v4

    if-eqz v0, :cond_53

    .line 284
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 286
    :cond_53
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_c5

    .line 287
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5c} :catch_bd

    goto :goto_c5

    .line 273
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    .end local p0    # "this":Lmiui/app/backup/BackupManager;
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "feature":I
    .end local p3    # "pwd":Ljava/lang/String;
    .end local p4    # "encryptedPwd":Ljava/lang/String;
    .end local p5    # "includeApk":Z
    .end local p6    # "forceBackup":Z
    .end local p7    # "shouldSkipData":Z
    .end local p8    # "isXSpace":Z
    .end local p9    # "l":Lmiui/app/backup/BackupManager$BackupRestoreListener;
    :try_start_5f
    throw v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_60} :catch_9f
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_60} :catch_81
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_60} :catch_63
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 281
    .restart local p0    # "this":Lmiui/app/backup/BackupManager;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "feature":I
    .restart local p3    # "pwd":Ljava/lang/String;
    .restart local p4    # "encryptedPwd":Ljava/lang/String;
    .restart local p5    # "includeApk":Z
    .restart local p6    # "forceBackup":Z
    .restart local p7    # "shouldSkipData":Z
    .restart local p8    # "isXSpace":Z
    .restart local p9    # "l":Lmiui/app/backup/BackupManager$BackupRestoreListener;
    :catchall_60
    move-exception v0

    move-object v5, v0

    goto :goto_c6

    .line 278
    :catch_63
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_64
    const-string v5, "Backup:BackupManager"

    const-string v6, "InterruptedException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_60

    .line 281
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e4

    .line 283
    :try_start_70
    aget-object v0, v0, v4

    if-eqz v0, :cond_77

    .line 284
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 286
    :cond_77
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_c5

    .line 287
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_80} :catch_bd

    goto :goto_c5

    .line 276
    :catch_81
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_82
    const-string v5, "Backup:BackupManager"

    const-string v6, "Remove invoking failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_60

    .line 281
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e4

    .line 283
    :try_start_8e
    aget-object v0, v0, v4

    if-eqz v0, :cond_95

    .line 284
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 286
    :cond_95
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_c5

    .line 287
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_9e} :catch_bd

    goto :goto_c5

    .line 274
    :catch_9f
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    :try_start_a0
    const-string v5, "Backup:BackupManager"

    const-string v6, "create pipe failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_60

    .line 281
    nop

    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e4

    .line 283
    :try_start_ac
    aget-object v0, v0, v4

    if-eqz v0, :cond_b3

    .line 284
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 286
    :cond_b3
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_c5

    .line 287
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_bc} :catch_bd

    goto :goto_c5

    .line 289
    :catch_bd
    move-exception v0

    .line 290
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c5
    :goto_c5
    goto :goto_e4

    .line 281
    :goto_c6
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e3

    .line 283
    :try_start_ca
    aget-object v0, v0, v4

    if-eqz v0, :cond_d1

    .line 284
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 286
    :cond_d1
    iget-object v0, v1, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_da

    .line 287
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_da} :catch_db

    .line 291
    :cond_da
    goto :goto_e3

    .line 289
    :catch_db
    move-exception v0

    .line 290
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e3
    :goto_e3
    throw v5

    .line 297
    :cond_e4
    :goto_e4
    return-void
.end method

.method public whitelist delCacheBackup()Z
    .registers 4

    .line 537
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->delCacheBackup()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 538
    const/4 v0, 0x1

    return v0

    .line 539
    :catch_7
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentRunningPackage()Ljava/lang/String;
    .registers 4

    .line 489
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 490
    :catch_7
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentWorkingFeature()I
    .registers 4

    .line 477
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getCurrentWorkingFeature()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 478
    :catch_7
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDataFileInfo(Ljava/lang/String;Lmiui/app/backup/IGetFileInfoCallback;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lmiui/app/backup/IGetFileInfoCallback;

    .line 424
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/IMiuiRestoreManager;->getDataFileInfo(Ljava/lang/String;Lmiui/app/backup/IGetFileInfoCallback;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 425
    :catch_7
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "get data file info error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMiuiRestoreManagerServiceIsRunning()Z
    .registers 2

    .line 469
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist getState()I
    .registers 4

    .line 501
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 502
    :catch_7
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isServiceIdle()Z
    .registers 3

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "isIdle":Z
    :try_start_1
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->isServiceIdle()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 161
    goto :goto_d

    .line 159
    :catch_9
    move-exception v1

    .line 160
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 162
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_d
    return v0
.end method

.method public blacklist listDataDir(Ljava/lang/String;JILmiui/app/backup/IListDirCallback;)Z
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "maxCount"    # I
    .param p5, "callback"    # Lmiui/app/backup/IListDirCallback;

    .line 436
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lmiui/app/backup/IMiuiRestoreManager;->listDataDir(Ljava/lang/String;JILmiui/app/backup/IListDirCallback;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 437
    :catch_b
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "list file dir error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 371
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lmiui/app/backup/BackupManager;->moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0

    return v0
.end method

.method public blacklist moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z
    .registers 14
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "isSdcardData"    # Z
    .param p6, "flag"    # I

    .line 380
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lmiui/app/backup/IMiuiRestoreManager;->moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 381
    :catch_d
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    const-string v0, "move data error"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/app/backup/IRestoreListener;

    .line 448
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IMiuiRestoreManager;->registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 451
    goto :goto_e

    .line 449
    :catch_6
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .registers 3
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .line 134
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 137
    goto :goto_a

    .line 135
    :catch_6
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    .line 139
    return-void
.end method

.method public blacklist restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "forceRestore"    # Z
    .param p4, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 303
    iget-boolean v0, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v0, :cond_c

    .line 304
    const-string v0, "Backup:BackupManager"

    const-string v1, "You must acquire first to use the restore service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 308
    :cond_c
    iput-object p4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    :try_start_10
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_65
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_50
    .catchall {:try_start_10 .. :try_end_13} :catchall_4e

    .line 312
    :try_start_13
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v0, v3

    .line 313
    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 314
    .local v3, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Lmiui/app/backup/BackupManager$1;

    invoke-direct {v4, p0, p1, v3}, Lmiui/app/backup/BackupManager$1;-><init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 345
    invoke-virtual {v4}, Lmiui/app/backup/BackupManager$1;->start()V

    .line 346
    iget-object v4, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    aget-object v5, v0, v1

    new-instance v6, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver-IA;)V

    invoke-interface {v4, v5, p2, p3, v6}, Lmiui/app/backup/IBackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 348
    iget-object v4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 349
    .end local v3    # "writeSide":Landroid/os/ParcelFileDescriptor;
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_4b

    .line 357
    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    .line 359
    :try_start_3c
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_4a

    .line 360
    :catch_42
    move-exception v1

    .line 361
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Backup:BackupManager"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4a
    goto :goto_8f

    .line 349
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lmiui/app/backup/BackupManager;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "pwd":Ljava/lang/String;
    .end local p3    # "forceRestore":Z
    .end local p4    # "l":Lmiui/app/backup/BackupManager$BackupRestoreListener;
    :try_start_4d
    throw v3
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_4e} :catch_65
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_50
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 357
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lmiui/app/backup/BackupManager;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "pwd":Ljava/lang/String;
    .restart local p3    # "forceRestore":Z
    .restart local p4    # "l":Lmiui/app/backup/BackupManager$BackupRestoreListener;
    :catchall_4e
    move-exception v2

    goto :goto_90

    .line 354
    :catch_50
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    :try_start_51
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4e

    .line 357
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    .line 359
    :try_start_5f
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_42

    goto :goto_4a

    .line 352
    :catch_65
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_66
    const-string v3, "Backup:BackupManager"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_4e

    .line 357
    nop

    .end local v2    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    .line 359
    :try_start_74
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_42

    goto :goto_4a

    .line 350
    :catch_7a
    move-exception v2

    .line 351
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7b
    const-string v3, "Backup:BackupManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_4e

    .line 357
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_8f

    aget-object v2, v0, v1

    if-eqz v2, :cond_8f

    .line 359
    :try_start_89
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_42

    goto :goto_4a

    .line 365
    :cond_8f
    :goto_8f
    return-void

    .line 357
    :goto_90
    if-eqz v0, :cond_a4

    aget-object v3, v0, v1

    if-eqz v3, :cond_a4

    .line 359
    :try_start_96
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_9c

    .line 362
    goto :goto_a4

    .line 360
    :catch_9c
    move-exception v1

    .line 361
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManager"

    const-string v4, "IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a4
    :goto_a4
    throw v2
.end method

.method public whitelist setCustomProgress(III)V
    .registers 6
    .param p1, "progType"    # I
    .param p2, "prog"    # I
    .param p3, "total"    # I

    .line 526
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 528
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/app/backup/IBackupManager;->setCustomProgress(III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 532
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_17
    goto :goto_1c

    .line 530
    :catch_18
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 533
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public blacklist setFutureTask(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->setFutureTask(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 149
    goto :goto_a

    .line 147
    :catch_6
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist setIsNeedBeKilled(Z)V
    .registers 5
    .param p1, "isNeedBeKilled"    # Z

    .line 510
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiui/app/backup/IBackupManager;->setIsNeedBeKilled(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 513
    goto :goto_14

    .line 511
    :catch_c
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method blacklist setWorkingError(I)V
    .registers 3
    .param p1, "errCode"    # I

    .line 518
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 521
    goto :goto_a

    .line 519
    :catch_6
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZLmiui/app/backup/ITransferDataCallback;)Z
    .registers 22
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "targetBase"    # Ljava/lang/String;
    .param p3, "targetRelative"    # Ljava/lang/String;
    .param p4, "targetPkgName"    # Ljava/lang/String;
    .param p5, "targetMode"    # I
    .param p6, "copy"    # Z
    .param p7, "userId"    # I
    .param p8, "isExternal"    # Z
    .param p9, "callback"    # Lmiui/app/backup/ITransferDataCallback;

    .line 411
    move-object v1, p0

    :try_start_1
    iget-object v2, v1, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lmiui/app/backup/IMiuiRestoreManager;->transferData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZLmiui/app/backup/ITransferDataCallback;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_17

    return v0

    .line 413
    :catch_17
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManager"

    const-string v3, "transfer data error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/app/backup/IRestoreListener;

    .line 459
    :try_start_0
    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mMiuiRestoreManagerService:Lmiui/app/backup/IMiuiRestoreManager;

    invoke-interface {v0, p1}, Lmiui/app/backup/IMiuiRestoreManager;->unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 462
    goto :goto_e

    .line 460
    :catch_6
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Backup:BackupManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
