.class public Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKUP_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-activated"

.field private static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field private static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field private static final BACKUP_THREAD:Ljava/lang/String; = "backup"

.field public static final DEBUG:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"

.field public static final MORE_DEBUG:Z

.field private static final REMEMBER_ACTIVATED_FILENAME:Ljava/lang/String; = "backup-remember-activated"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobalDisable:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mStateLock:Ljava/lang/Object;

.field private final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monRemovedNonSystemUser(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 98
    const-string v0, "BackupManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p2, "userServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/backup/UserBackupManagerService;>;"
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 167
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "backup"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 169
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    .line 172
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 174
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v2

    .line 175
    .local v2, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_47

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_48

    :cond_47
    move-object v3, v2

    :goto_48
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 176
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private activateBackupForUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    if-nez p1, :cond_a

    .line 274
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    goto :goto_11

    .line 276
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 278
    :goto_11
    return-void
.end method

.method private createFile(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    return-void

    .line 234
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_30

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_30
    return-void
.end method

.method private deactivateBackupForUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    if-nez p1, :cond_a

    .line 259
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    goto :goto_11

    .line 261
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    .line 263
    :goto_11
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    return-void

    .line 246
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_29

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_29
    return-void
.end method

.method private enforcePermissionsOnUser(I)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 423
    if-eqz p1, :cond_13

    .line 425
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 427
    .local v0, "isRestrictedUser":Z
    :goto_14
    const-string v1, "No permission to configure backup activity"

    if-eqz v0, :cond_2a

    .line 428
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUid()I

    move-result v2

    .line 429
    .local v2, "caller":I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_29

    if-nez v2, :cond_23

    goto :goto_29

    .line 430
    :cond_23
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    .end local v2    # "caller":I
    :cond_29
    :goto_29
    goto :goto_38

    .line 433
    :cond_2a
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_38
    return-void
.end method

.method static getInstance()Lcom/android/server/backup/BackupManagerService;
    .registers 1

    .line 130
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method private isBackupActivatedForUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 302
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForSystemUser()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 303
    return v1

    .line 306
    :cond_c
    if-eqz p1, :cond_18

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/4 v1, 0x1

    .line 306
    :cond_19
    return v1
.end method

.method private onRemovedNonSystemUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing state for non system user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object v0

    .line 223
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete state dir for removed user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_38
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "allow"    # Z
    .param p4, "currentPassword"    # Ljava/lang/String;
    .param p5, "encryptionPassword"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 908
    nop

    .line 909
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 911
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_12

    .line 912
    move-object v1, v0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 915
    :cond_12
    return-void
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 13
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    nop

    .line 922
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    .line 921
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 923
    return-void
.end method

.method public acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "allow"    # Z
    .param p4, "curPassword"    # Ljava/lang/String;
    .param p5, "encryptionPassword"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 892
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 895
    :cond_9
    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 26
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "includeApks"    # Z
    .param p4, "includeObbs"    # Z
    .param p5, "includeShared"    # Z
    .param p6, "doWidgets"    # Z
    .param p7, "doAllApps"    # Z
    .param p8, "includeSystem"    # Z
    .param p9, "doCompress"    # Z
    .param p10, "doKeyValue"    # Z
    .param p11, "packageNames"    # [Ljava/lang/String;

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 824
    return-void

    .line 826
    :cond_7
    nop

    .line 827
    const-string v0, "adbBackup()"

    move-object v1, p0

    move v2, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 829
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_2a

    .line 830
    move-object v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 842
    :cond_2a
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 872
    return-void

    .line 874
    :cond_7
    nop

    .line 875
    const-string v0, "adbRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 877
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_13

    .line 878
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 880
    :cond_13
    return-void
.end method

.method public agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agentBinder"    # Landroid/os/IBinder;

    .line 626
    nop

    .line 627
    const-string v0, "agentConnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 629
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 630
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 632
    :cond_c
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 619
    return-void
.end method

.method public agentConnectedForUser(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 612
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 614
    :cond_9
    return-void
.end method

.method public agentDisconnected(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 651
    nop

    .line 652
    const-string v0, "agentDisconnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 654
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 655
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    .line 657
    :cond_c
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->agentDisconnectedForUser(ILjava/lang/String;)V

    .line 644
    return-void
.end method

.method public agentDisconnectedForUser(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->agentDisconnected(ILjava/lang/String;)V

    .line 639
    :cond_9
    return-void
.end method

.method public backupNow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V

    .line 789
    return-void
.end method

.method public backupNow(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 796
    nop

    .line 797
    const-string v0, "backupNow()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 799
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 800
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 802
    :cond_c
    return-void
.end method

.method public backupNowForUser(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupNow(I)V

    .line 784
    :cond_9
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 1522
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1523
    return v1

    .line 1525
    :cond_8
    nop

    .line 1526
    const-string v0, "beginFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1528
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_19

    .line 1529
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 1528
    :goto_1a
    return v1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportName"    # Ljava/lang/String;

    .line 1269
    nop

    .line 1270
    const-string v0, "beginRestoreSession()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1272
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 1273
    const/4 v1, 0x0

    goto :goto_f

    .line 1274
    :cond_b
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    .line 1272
    :goto_f
    return-object v1
.end method

.method public beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1259
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1258
    :goto_c
    return-object v0
.end method

.method protected binderGetCallingUid()I
    .registers 2

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method protected binderGetCallingUserId()I
    .registers 2

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public cancelBackups()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->cancelBackupsForUser(I)V

    .line 1398
    return-void
.end method

.method public cancelBackups(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1402
    nop

    .line 1403
    const-string v0, "cancelBackups()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1405
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 1406
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    .line 1408
    :cond_c
    return-void
.end method

.method public cancelBackupsForUser(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->cancelBackups(I)V

    .line 1393
    :cond_9
    return-void
.end method

.method public cancelMiuiBackupsForUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1645
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1646
    return-void

    .line 1648
    :cond_7
    nop

    .line 1649
    const-string v0, "cancelMiuiBackupsForUser()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1650
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_13

    .line 1651
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->cancelMiuiBackups()V

    .line 1653
    :cond_13
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 594
    nop

    .line 595
    const-string v0, "clearBackupData()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 597
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 598
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_c
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 585
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_9
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 550
    nop

    .line 551
    const-string v0, "dataChanged()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 553
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 554
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    .line 556
    :cond_c
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedForUser(ILjava/lang/String;)V

    .line 542
    return-void
.end method

.method public dataChangedForUser(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChanged(ILjava/lang/String;)V

    .line 537
    :cond_9
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1468
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1469
    return-void

    .line 1471
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->dumpWithoutCheckingPermission(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method dumpWithoutCheckingPermission(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 1477
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1478
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    return-void

    .line 1482
    :cond_10
    if-eqz p3, :cond_80

    .line 1483
    array-length v1, p3

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_80

    aget-object v3, p3, v2

    .line 1484
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1485
    const-string v1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    const-string v1, "  -h       : this help text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    const-string v1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    const-string v1, "  transportclients : dump information about transport clients"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    const-string v1, "  transportstats : dump transport statts"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    const-string v1, "  users    : dump the list of users for which backup service is running"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    return-void

    .line 1493
    :cond_3f
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1494
    const-string v1, "Backup Manager is running for users:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_52
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1498
    .end local v1    # "i":I
    :cond_79
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1499
    return-void

    .line 1483
    .end local v3    # "arg":Ljava/lang/String;
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1504
    :cond_80
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_81
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9d

    .line 1505
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1506
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-string v3, "dump()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    .line 1507
    .local v2, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v2, :cond_9a

    .line 1508
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1504
    .end local v2    # "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 1511
    .end local v1    # "i":I
    :cond_9d
    return-void
.end method

.method public endFullBackup(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1537
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1538
    return-void

    .line 1540
    :cond_7
    nop

    .line 1541
    const-string v0, "endFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1543
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_13

    .line 1544
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    .line 1546
    :cond_13
    return-void
.end method

.method enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1604
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 1605
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :cond_11
    return-void
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1554
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1555
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning from excludeKeysFromRestore as backup for user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not initialized yet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return-void

    .line 1560
    :cond_2d
    nop

    .line 1561
    const-string v1, "excludeKeysFromRestore()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 1563
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_39

    .line 1564
    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    .line 1566
    :cond_39
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1345
    nop

    .line 1346
    const-string v0, "filterAppsEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1348
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 1349
    const/4 v1, 0x0

    goto :goto_f

    .line 1350
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1348
    :goto_f
    return-object v1
.end method

.method public filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;

    .line 856
    nop

    .line 857
    const-string v0, "fullTransportBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 859
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_c

    .line 860
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    .line 862
    :cond_c
    return-void
.end method

.method public fullTransportBackupForUser(I[Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 848
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup(I[Ljava/lang/String;)V

    .line 850
    :cond_9
    return-void
.end method

.method protected getActivatedFileForNonSystemUser(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 211
    const-string v0, "backup-activated"

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1312
    nop

    .line 1313
    const-string v0, "getAvailableRestoreToken()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1315
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_c

    .line 1316
    const-wide/16 v1, 0x0

    goto :goto_10

    .line 1317
    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v1

    .line 1315
    :goto_10
    return-wide v1
.end method

.method public getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(ILjava/lang/String;)J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    return-wide v0
.end method

.method getBackupHandler()Landroid/os/Handler;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1172
    nop

    .line 1173
    const-string v0, "getConfigurationIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1175
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 1176
    const/4 v1, 0x0

    goto :goto_f

    .line 1177
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1175
    :goto_f
    return-object v1
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_c

    .line 1156
    :cond_b
    const/4 v0, 0x0

    .line 1155
    :goto_c
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 939
    nop

    .line 940
    const-string v0, "getCurrentTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 942
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 943
    const/4 v1, 0x0

    goto :goto_f

    .line 944
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 942
    :goto_f
    return-object v1
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"    # I

    .line 963
    nop

    .line 964
    const-string v0, "getCurrentTransportComponent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 966
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 967
    const/4 v1, 0x0

    goto :goto_f

    .line 968
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 966
    :goto_f
    return-object v1
.end method

.method public getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getCurrentTransportForUser(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1226
    nop

    .line 1227
    const-string v0, "getDataManagementIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1229
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 1230
    const/4 v1, 0x0

    goto :goto_f

    .line 1231
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1229
    :goto_f
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1214
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1213
    :goto_c
    return-object v0
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1247
    nop

    .line 1248
    const-string v0, "getDataManagementLabel()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1250
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 1251
    const/4 v1, 0x0

    goto :goto_f

    .line 1252
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1250
    :goto_f
    return-object v1
.end method

.method public getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 1238
    :cond_b
    const/4 v0, 0x0

    .line 1237
    :goto_c
    return-object v0
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;

    .line 1202
    nop

    .line 1203
    const-string v0, "getDestinationString()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1205
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_b

    .line 1206
    const/4 v1, 0x0

    goto :goto_f

    .line 1207
    :cond_b
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    :goto_f
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1183
    :cond_b
    const/4 v0, 0x0

    .line 1182
    :goto_c
    return-object v0
.end method

.method protected getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 206
    const-string v0, "backup-remember-activated"

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 1583
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 1586
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceStub;->hookUserIdForXSpace(I)I

    move-result p1

    .line 1589
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 1590
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_37

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for unknown user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_37
    return-object v0
.end method

.method protected getSuppressFileForSystemUser()Ljava/io/File;
    .registers 4

    .line 200
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "backup-suppress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 7

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 1012
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1013
    const/4 v1, 0x0

    return-object v1

    .line 1016
    :cond_c
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1017
    .local v1, "whitelistedTransports":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1018
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1019
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 1020
    nop

    .end local v4    # "component":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    .line 1021
    goto :goto_1b

    .line 1022
    :cond_31
    return-object v1
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 14
    .param p1, "ancestralSerialNumber"    # J

    .line 1421
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1422
    return-object v1

    .line 1424
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1426
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1428
    .local v2, "oldId":J
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_3f

    .line 1430
    .local v4, "userIds":[I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    nop

    .line 1433
    array-length v6, v4

    :goto_20
    if-ge v5, v6, :cond_3e

    aget v7, v4, v5

    .line 1434
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/UserBackupManagerService;

    .line 1435
    .local v8, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v8, :cond_3b

    .line 1436
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v9

    cmp-long v9, v9, p1

    if-nez v9, :cond_3b

    .line 1437
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1

    .line 1433
    .end local v7    # "userId":I
    .end local v8    # "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1442
    :cond_3e
    return-object v1

    .line 1430
    .end local v4    # "userIds":[I
    :catchall_3f
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    throw v1
.end method

.method protected getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public getUserService(I)Lcom/android/server/backup/UserBackupManagerService;
    .registers 3
    .param p1, "userId"    # I

    .line 414
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    return-object v0
.end method

.method getUserServices()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hasBackupPassword()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 769
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 770
    return v2

    .line 772
    :cond_c
    nop

    .line 773
    const-string/jumbo v1, "hasBackupPassword()"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 776
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    return v2
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 573
    nop

    .line 574
    const-string/jumbo v0, "initializeTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 576
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_d

    .line 577
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 579
    :cond_d
    return-void
.end method

.method public initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 566
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 568
    :cond_9
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1328
    nop

    .line 1329
    const-string/jumbo v0, "isAppEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1331
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_12

    .line 1332
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1331
    :goto_13
    return v1
.end method

.method public isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->isAppEligibleForBackup(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected isBackupDisabled()Z
    .registers 3

    .line 187
    const-string/jumbo v0, "ro.backup.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 744
    nop

    .line 745
    const-string/jumbo v0, "isBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 747
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isBackupEnabledForUser(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isBackupServiceActive(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 518
    .local v0, "callingUid":I
    const-wide/32 v1, 0x9723ef2

    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 520
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "isBackupServiceActive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_17
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_1a
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/backup/BackupManagerServiceStub;->hookUserIdForXSpace(I)I

    move-result v2

    move p1, v2

    .line 528
    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v2, :cond_2f

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    monitor-exit v1

    return v2

    .line 529
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_32

    throw v2
.end method

.method public isUserReadyForBackup(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 289
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceStub;->hookUserIdForXSpace(I)I

    move-result p1

    .line 292
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 293
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    nop

    .line 292
    :goto_1c
    return v1
.end method

.method synthetic lambda$onStopUser$1$com-android-server-backup-BackupManagerService(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 404
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v0, :cond_1f

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    .line 408
    :cond_1f
    return-void
.end method

.method synthetic lambda$onUnlockUser$0$com-android-server-backup-BackupManagerService(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    return-void
.end method

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"    # I

    .line 1001
    nop

    .line 1002
    const-string/jumbo v0, "listAllTransportComponents()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1004
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_c

    .line 1005
    const/4 v1, 0x0

    goto :goto_10

    .line 1006
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    .line 1004
    :goto_10
    return-object v1
.end method

.method public listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 995
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransportComponents(I)[Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 994
    :goto_c
    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 979
    nop

    .line 980
    const-string/jumbo v0, "listAllTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 982
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_c

    .line 983
    const/4 v1, 0x0

    goto :goto_10

    .line 984
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 982
    :goto_10
    return-object v1
.end method

.method public listAllTransportsForUser(I)[Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransports(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method onStopUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 402
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method onUnlockUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 329
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method public opComplete(IIJ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "result"    # J

    .line 1294
    nop

    .line 1295
    const-string/jumbo v0, "opComplete()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1297
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_d

    .line 1298
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    .line 1300
    :cond_d
    return-void
.end method

.method public opComplete(IJ)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opCompleteForUser(IIJ)V

    .line 1287
    return-void
.end method

.method public opCompleteForUser(IIJ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "token"    # I
    .param p3, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1280
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->opComplete(IIJ)V

    .line 1282
    :cond_9
    return-void
.end method

.method protected postToHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 319
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "flags"    # I

    .line 1380
    nop

    .line 1381
    const-string/jumbo v0, "requestBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1383
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_d

    .line 1384
    const/16 v1, -0x7d1

    goto :goto_11

    .line 1385
    :cond_d
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    .line 1383
    :goto_11
    return v1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1356
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1357
    const/16 v0, -0x7d1

    return v0

    .line 1359
    :cond_9
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # I

    .line 677
    nop

    .line 678
    const-string/jumbo v0, "restoreAtInstall()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 680
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_d

    .line 681
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    .line 683
    :cond_d
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 670
    return-void
.end method

.method public restoreAtInstallForUser(ILjava/lang/String;I)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 663
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(ILjava/lang/String;I)V

    .line 665
    :cond_9
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1112
    nop

    .line 1113
    const-string/jumbo v0, "selectBackupTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1115
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-nez v0, :cond_c

    .line 1116
    const/4 v1, 0x0

    goto :goto_10

    .line 1117
    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    :goto_10
    return-object v1
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 1144
    nop

    .line 1145
    const-string/jumbo v0, "selectBackupTransportAsync()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1147
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_d

    .line 1148
    invoke-virtual {v0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 1150
    :cond_d
    return-void
.end method

.method public selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "transport"    # Landroid/content/ComponentName;
    .param p3, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    goto :goto_13

    .line 1126
    :cond_a
    if-eqz p3, :cond_13

    .line 1128
    const/16 v0, -0x7d1

    :try_start_e
    invoke-interface {p3, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 1131
    goto :goto_13

    .line 1129
    :catch_12
    move-exception v0

    .line 1134
    :cond_13
    :goto_13
    return-void
.end method

.method public selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1094
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1095
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1094
    :goto_c
    return-object v0
.end method

.method public setAncestralSerialNumber(J)V
    .registers 5
    .param p1, "ancestralSerialNumber"    # J

    .line 1453
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_5

    .line 1454
    return-void

    .line 1456
    :cond_5
    nop

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1457
    const-string/jumbo v1, "setAncestralSerialNumber()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1461
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_1a

    .line 1462
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    .line 1464
    :cond_1a
    return-void
.end method

.method public setAutoRestore(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "autoRestore"    # Z

    .line 722
    nop

    .line 723
    const-string/jumbo v0, "setAutoRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 725
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_d

    .line 726
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    .line 728
    :cond_d
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 3
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestoreForUser(IZ)V

    .line 718
    return-void
.end method

.method public setAutoRestoreForUser(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(IZ)V

    .line 713
    :cond_9
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .line 700
    nop

    .line 701
    const-string/jumbo v0, "setBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 703
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_d

    .line 704
    invoke-virtual {v0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 706
    :cond_d
    return-void
.end method

.method public setBackupEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabledForUser(IZ)V

    .line 696
    return-void
.end method

.method public setBackupEnabledForUser(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 689
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(IZ)V

    .line 691
    :cond_9
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 753
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 754
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 755
    return v2

    .line 757
    :cond_c
    nop

    .line 758
    const-string/jumbo v1, "setBackupPassword()"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 761
    .local v1, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v1, :cond_1e

    .line 762
    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 761
    :goto_1f
    return v2
.end method

.method public setBackupServiceActive(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "makeActive"    # Z

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->enforcePermissionsOnUser(I)V

    .line 457
    if-eqz p1, :cond_18

    .line 459
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    .line 460
    .local v0, "rememberFile":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 461
    invoke-static {v0, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_10

    .line 464
    .end local v0    # "rememberFile":Ljava/io/File;
    goto :goto_18

    .line 462
    :catch_10
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to persist backup service activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_24

    .line 468
    const-string v0, "BackupManagerService"

    const-string v1, "Backup service not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 472
    :cond_24
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_27
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_39

    const-string v3, ""

    goto :goto_3c

    :cond_39
    const-string/jumbo v3, "in"

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_88

    .line 474
    if-eqz p2, :cond_77

    .line 476
    :try_start_4f
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->activateBackupForUserLocked(I)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_88

    .line 479
    goto :goto_5b

    .line 477
    :catch_53
    move-exception v1

    .line 478
    .local v1, "e":Ljava/io/IOException;
    :try_start_54
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5b
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_69
    .catchall {:try_start_54 .. :try_end_69} :catchall_88

    .line 488
    .local v1, "oldId":J
    :try_start_69
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_71

    .line 490
    :try_start_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    nop

    .line 492
    .end local v1    # "oldId":J
    goto :goto_86

    .line 490
    .restart local v1    # "oldId":J
    :catchall_71
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    nop

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerService;
    .end local p1    # "userId":I
    .end local p2    # "makeActive":Z
    throw v3
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_88

    .line 496
    .end local v1    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/BackupManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "makeActive":Z
    :cond_77
    :try_start_77
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deactivateBackupForUserLocked(I)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_88

    .line 499
    goto :goto_83

    .line 497
    :catch_7b
    move-exception v1

    .line 498
    .local v1, "e":Ljava/io/IOException;
    :try_start_7c
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v1    # "e":Ljava/io/IOException;
    :goto_83
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 504
    :cond_86
    :goto_86
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_88

    throw v1
.end method

.method startServiceForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 340
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_c

    .line 341
    const-string v0, "Backup service not supported"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 344
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup not activated for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 348
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already started, so not starting again"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 354
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 356
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 357
    return-void
.end method

.method startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "userBackupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 364
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    const-wide/16 v0, 0x40

    const-string v2, "backup enable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 368
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 369
    return-void
.end method

.method protected stopServiceForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 374
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 376
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_17

    .line 377
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 379
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 380
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    .line 382
    :cond_17
    return-void
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 1077
    nop

    .line 1078
    const-string/jumbo v0, "updateTransportAttributes()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 1080
    .local v0, "userBackupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    if-eqz v0, :cond_14

    .line 1081
    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1089
    :cond_14
    return-void
.end method

.method public updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 1034
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1035
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1044
    :cond_9
    return-void
.end method
