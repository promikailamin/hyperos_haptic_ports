.class public Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/app/backup/BackupManagerInternal;


# static fields
.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"

.field public static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDidMainUserExistAtBoot:Z

.field public final mGlobalDisable:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasFirstUserUnlockedSinceBoot:Z

.field public final mLock:Ljava/lang/Object;

.field public final mTransportWhitelist:Ljava/util/Set;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserServices:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$V80FPZ5wqif8yKHR2AZ4_2Tr31I(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$onStopUser$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/backup/BackupManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHasFirstUserUnlockedSinceBoot(Lcom/android/server/backup/BackupManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monRemovedNonSystemUser(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopServiceForSystemUserIfMainUserCreated(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->stopServiceForSystemUserIfMainUserCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 177
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 169
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mDidMainUserExistAtBoot:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    .line 178
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupDisabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 180
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "backup"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 182
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 184
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 185
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 187
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v3

    if-nez v3, :cond_52

    .line 188
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_52
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 189
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result p1

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_67

    const/4 v1, 0x1

    :cond_67
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mDidMainUserExistAtBoot:Z

    if-nez v1, :cond_72

    .line 194
    const-string p0, "BackupManagerService"

    const-string p1, "Main user does not exist yet"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    return-void
.end method

.method public static getInstance()Lcom/android/server/backup/BackupManagerService;
    .registers 2

    .line 130
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method public static showDumpUsage(Ljava/io/PrintWriter;)V
    .registers 2

    .line 1622
    const-string v0, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const-string v0, "  --help    : this help text"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    const-string v0, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    const-string v0, "  transportclients : dump information about transport clients"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    const-string v0, "  transportstats : dump transport stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    const-string v0, "  users    : dump the list of users for which backup service is running"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    const-string v0, "  --user <userId> : dump information for user userId"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 8

    .line 1000
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    .line 1001
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_10

    move p1, p2

    move p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 1004
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_10
    return-void
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 13

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1013
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    return-void
.end method

.method public acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 8

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 984
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/BackupManagerService;->acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_9
    return-void
.end method

.method public final activateBackupForUserLocked(I)V
    .registers 3

    if-eqz p1, :cond_11

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isDefaultBackupActiveUser(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 307
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    return-void

    .line 305
    :cond_11
    :goto_11
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 13

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 918
    :cond_7
    const-string v0, "adbBackup()"

    .line 919
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1c

    move-object p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    move-object p10, p11

    .line 922
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_12

    .line 966
    :cond_7
    const-string v0, "adbRestore()"

    .line 967
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 970
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public agentConnectedForUser(Ljava/lang/String;ILandroid/os/IBinder;)V
    .registers 5

    .line 713
    invoke-virtual {p0, p2}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_16

    .line 717
    :cond_7
    const-string v0, "agentConnected()"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 721
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/BackupAgentConnectionManager;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public agentDisconnectedForUser(Ljava/lang/String;I)V
    .registers 4

    .line 728
    invoke-virtual {p0, p2}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_16

    .line 732
    :cond_7
    const-string v0, "agentDisconnected()"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 736
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupAgentConnectionManager;->agentDisconnected(Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public backupNow()V
    .registers 2

    .line 880
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V

    return-void
.end method

.method public backupNow(I)V
    .registers 3

    .line 888
    const-string v0, "backupNow()"

    .line 889
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 892
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    :cond_b
    return-void
.end method

.method public backupNowForUser(I)V
    .registers 3

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupNow(I)V

    :cond_9
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .registers 5

    .line 1640
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1643
    :cond_8
    const-string v0, "beginFullBackup()"

    .line 1644
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1647
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5

    .line 1360
    const-string v0, "beginRestoreSession()"

    .line 1361
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1365
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    return-object p0
.end method

.method public beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1350
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public binderGetCallingUid()I
    .registers 1

    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUserId()I
    .registers 1

    .line 210
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public cancelBackups()V
    .registers 2

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->cancelBackupsForUser(I)V

    return-void
.end method

.method public cancelBackups(I)V
    .registers 3

    .line 1494
    const-string v0, "cancelBackups()"

    .line 1495
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    :cond_b
    return-void
.end method

.method public cancelBackupsForUser(I)V
    .registers 3

    .line 1482
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1483
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->cancelBackups(I)V

    :cond_9
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 697
    const-string v0, "clearBackupData()"

    .line 698
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 701
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 708
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 687
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 688
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final createFile(Ljava/io/File;)V
    .registers 3

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2e

    .line 255
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_2e

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .registers 4

    .line 651
    const-string v0, "dataChanged()"

    .line 652
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 655
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 3

    .line 642
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedForUser(ILjava/lang/String;)V

    return-void
.end method

.method public dataChangedForUser(ILjava/lang/String;)V
    .registers 4

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChanged(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final deactivateBackupForUserLocked(I)V
    .registers 3

    if-eqz p1, :cond_11

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isDefaultBackupActiveUser(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 290
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deleteFile(Ljava/io/File;)V

    return-void

    .line 288
    :cond_11
    :goto_11
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    return-void
.end method

.method public final deleteFile(Ljava/io/File;)V
    .registers 3

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_27

    .line 267
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_27

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete file "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1560
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_a1

    :cond_c
    const/4 v0, 0x0

    .line 1566
    invoke-virtual {p0, p3, v0}, Lcom/android/server/backup/BackupManagerService;->nextArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1569
    const-string v2, "--help"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto/16 :goto_a2

    .line 1573
    :cond_23
    const-string/jumbo v2, "users"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "dump()"

    if-eqz v2, :cond_66

    .line 1574
    const-string p1, "Backup Manager is running for users:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    :goto_33
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_62

    .line 1576
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1577
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 1580
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1583
    :cond_62
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    .line 1586
    :cond_66
    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    const/4 v0, 0x1

    .line 1587
    invoke-virtual {p0, p3, v0}, Lcom/android/server/backup/BackupManagerService;->nextArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_79

    .line 1590
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->showDumpUsage(Ljava/io/PrintWriter;)V

    return-void

    .line 1593
    :cond_79
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1595
    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_a1

    .line 1597
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 1605
    :cond_87
    :goto_87
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a1

    .line 1606
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    .line 1607
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    if-eqz v1, :cond_9e

    .line 1609
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    :cond_a1
    :goto_a1
    return-void

    .line 1570
    :cond_a2
    :goto_a2
    invoke-static {p2}, Lcom/android/server/backup/BackupManagerService;->showDumpUsage(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public endFullBackup(I)V
    .registers 3

    .line 1655
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_12

    .line 1658
    :cond_7
    const-string v0, "endFullBackup()"

    .line 1659
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1662
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    :cond_12
    :goto_12
    return-void
.end method

.method public final enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .registers 4

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1741
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final enforceSetBackupServiceActiveAllowedForUser(I)V
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v1

    if-nez v1, :cond_38

    .line 486
    const-string v1, "No permission to configure backup activity"

    if-eqz p1, :cond_26

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_26

    .line 494
    :cond_17
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.BACKUP"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 489
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUid()I

    move-result p0

    const/16 p1, 0x3e8

    if-eq p0, p1, :cond_37

    if-nez p0, :cond_31

    goto :goto_37

    .line 491
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    return-void

    .line 483
    :cond_38
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Changing private profile backup activation not allowed"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 1672
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1673
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1674
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Returning from excludeKeysFromRestore as backup for user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not initialized yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1678
    :cond_2a
    const-string v1, "excludeKeysFromRestore()"

    .line 1679
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 1682
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    :cond_35
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1437
    const-string v0, "filterAppsEligibleForBackup()"

    .line 1438
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1442
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .registers 4

    .line 948
    const-string v0, "fullTransportBackup()"

    .line 949
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 952
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public fullTransportBackupForUser(I[Ljava/lang/String;)V
    .registers 4

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 940
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->fullTransportBackup(I[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public getActivatedFileForUser(I)Ljava/io/File;
    .registers 2

    .line 232
    const-string p0, "backup-activated"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .registers 4

    .line 1404
    const-string v0, "getAvailableRestoreToken()"

    .line 1405
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1409
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAvailableRestoreTokenForUser(ILjava/lang/String;)J
    .registers 4

    .line 1396
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_b
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1262
    const-string v0, "getConfigurationIntent()"

    .line 1263
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1267
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1245
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 2

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .registers 3

    .line 1031
    const-string v0, "getCurrentTransport()"

    .line 1032
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1036
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .registers 3

    .line 1055
    const-string v0, "getCurrentTransportComponent()"

    .line 1056
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1060
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;
    .registers 3

    .line 1046
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransportComponent(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentTransportForUser(I)Ljava/lang/String;
    .registers 3

    .line 1020
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentTransport(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1317
    const-string v0, "getDataManagementIntent()"

    .line 1318
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1322
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1305
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    .line 1338
    const-string v0, "getDataManagementLabel()"

    .line 1339
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1343
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    .line 1328
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1293
    const-string v0, "getDestinationString()"

    .line 1294
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1298
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1273
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->getDestinationString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;
    .registers 2

    .line 226
    const-string p0, "backup-remember-activated"

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 5

    .line 1724
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 1725
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/UserBackupManagerService;

    if-nez p0, :cond_2b

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for unknown user: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-object p0
.end method

.method public getSuppressFileForUser(I)Ljava/io/File;
    .registers 3

    .line 220
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "backup-suppress"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 4

    .line 1106
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1108
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1109
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    return-object v0
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 11

    .line 1513
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 1516
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1520
    :try_start_12
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_3c

    .line 1522
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1525
    array-length v2, v0

    :goto_1d
    if-ge v5, v2, :cond_3b

    aget v3, v0, v5

    .line 1526
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v4, :cond_38

    .line 1528
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_38

    .line 1529
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_3b
    return-object v1

    :catchall_3c
    move-exception p0

    .line 1522
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    throw p0
.end method

.method public getUserServices()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final handleBackupActivationLocked(I)V
    .registers 7

    .line 555
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->activateBackupForUserLocked(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 557
    :catch_4
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to persist backup service activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    if-eqz p1, :cond_26

    .line 562
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 565
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    .line 567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 568
    throw p0

    :cond_25
    :goto_25
    return-void

    .line 574
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 576
    :try_start_2a
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 578
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 579
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_51

    goto :goto_35

    :catchall_51
    move-exception p0

    goto :goto_57

    .line 583
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    throw p0
.end method

.method public final handleBackupDeactivationLocked(I)V
    .registers 6

    .line 590
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->deactivateBackupForUserLocked(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    .line 592
    :catch_4
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to persist backup service inactivity"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    if-eqz p1, :cond_11

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    return-void

    .line 602
    :cond_11
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    .line 603
    :goto_1b
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 604
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2e
    :goto_2e
    if-ge v1, p1, :cond_38

    .line 606
    aget v2, v0, v1

    .line 607
    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_38
    return-void
.end method

.method public hasBackupPassword()Z
    .registers 4

    .line 861
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 862
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 865
    :cond_c
    const-string v1, "hasBackupPassword()"

    .line 866
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 868
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v2
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5

    .line 675
    const-string v0, "initializeTransports()"

    .line 676
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 679
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_b
    return-void
.end method

.method public initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 668
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_9
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .registers 4

    .line 1420
    const-string v0, "isAppEligibleForBackup()"

    .line 1421
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1424
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isAppEligibleForBackupForUser(ILjava/lang/String;)Z
    .registers 4

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->isAppEligibleForBackup(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isBackupActivatedForUser(I)Z
    .registers 4

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    return v0

    .line 340
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getSuppressFileForUser(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    .line 345
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isDefaultBackupActiveUser(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p0, 0x1

    return p0

    .line 350
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getActivatedFileForUser(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public isBackupDisabled()Z
    .registers 2

    .line 205
    const-string/jumbo p0, "ro.backup.disable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isBackupEnabled()Z
    .registers 2

    .line 831
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabledForUser(I)Z

    move-result p0

    return p0
.end method

.method public isBackupEnabled(I)Z
    .registers 3

    .line 838
    const-string v0, "isBackupEnabled()"

    .line 839
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 841
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isBackupEnabledForUser(I)Z
    .registers 3

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isBackupServiceActive(I)Z
    .registers 5

    .line 621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-wide/32 v1, 0x9723ef2

    .line 622
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 624
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupServiceActive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_16
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_19
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v1, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_2a

    :cond_27
    const/4 p0, 0x0

    :goto_28
    monitor-exit v0

    return p0

    .line 629
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_25

    throw p0
.end method

.method public final isDefaultBackupActiveUser(I)Z
    .registers 5

    .line 357
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v2

    :cond_c
    if-nez p1, :cond_f

    return v2

    .line 367
    :cond_f
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-nez v0, :cond_1c

    return v2

    .line 372
    :cond_1c
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_29

    if-ne p1, p0, :cond_29

    return v1

    :cond_29
    return v2
.end method

.method public isUserReadyForBackup(I)Z
    .registers 3

    .line 319
    const-string/jumbo v0, "isUserReadyForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 320
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onStopUser$0(I)V
    .registers 4

    .line 460
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-nez v0, :cond_1d

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping service for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    :cond_1d
    return-void
.end method

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .registers 3

    .line 1094
    const-string/jumbo v0, "listAllTransportComponents()"

    .line 1095
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1099
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 3

    .line 1087
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransportComponents(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 2

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .registers 3

    .line 1071
    const-string/jumbo v0, "listAllTransports()"

    .line 1072
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1076
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public listAllTransportsForUser(I)[Ljava/lang/String;
    .registers 3

    .line 1065
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->listAllTransports(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final nextArg([Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1615
    array-length p0, p1

    if-lt p2, p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 1618
    :cond_5
    aget-object p0, p1, p2

    return-object p0
.end method

.method public final onRemovedNonSystemUser(I)V
    .registers 4

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing state for non system user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object p0

    .line 244
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_34

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete state dir for removed user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 458
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public opComplete(IIJ)V
    .registers 6

    .line 1386
    const-string/jumbo v0, "opComplete()"

    .line 1387
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1390
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    :cond_c
    return-void
.end method

.method public opComplete(IJ)V
    .registers 5

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->opCompleteForUser(IIJ)V

    return-void
.end method

.method public opCompleteForUser(IIJ)V
    .registers 6

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1372
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->opComplete(IIJ)V

    :cond_9
    return-void
.end method

.method public postToHandler(Ljava/lang/Runnable;)V
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 1687
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1688
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1689
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Returning from reportDelayedRestoreResult as backup for user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not initialized yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1693
    :cond_2a
    const-string/jumbo v1, "reportDelayedRestoreResult()"

    .line 1694
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 1700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1702
    :try_start_37
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3e

    .line 1704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    throw p0

    :cond_43
    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7

    .line 1472
    const-string/jumbo v0, "requestBackup()"

    .line 1473
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_c

    const/16 p0, -0x7d1

    return p0

    .line 1477
    :cond_c
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 11

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 12

    .line 1448
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x7d1

    return p0

    :cond_9
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1451
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p0

    return p0
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .registers 5

    .line 759
    const-string/jumbo v0, "restoreAtInstall()"

    .line 760
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 763
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 4

    .line 751
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstallForUser(ILjava/lang/String;I)V

    return-void
.end method

.method public restoreAtInstallForUser(ILjava/lang/String;I)V
    .registers 5

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 745
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->restoreAtInstall(ILjava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1202
    const-string/jumbo v0, "selectBackupTransport()"

    .line 1203
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1207
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5

    .line 1234
    const-string/jumbo v0, "selectBackupTransportAsync()"

    .line 1235
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1238
    invoke-virtual {p0, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    :cond_c
    return-void
.end method

.method public selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1214
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    return-void

    :cond_a
    if-eqz p3, :cond_11

    const/16 p0, -0x7d1

    .line 1218
    :try_start_e
    invoke-interface {p3, p0}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method

.method public selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1184
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAncestralSerialNumber(J)V
    .registers 5

    .line 1545
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_5

    goto :goto_19

    .line 1550
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string/jumbo v1, "setAncestralSerialNumber()"

    .line 1549
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 1554
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setAutoRestore(IZ)V
    .registers 4

    .line 816
    const-string/jumbo v0, "setAutoRestore()"

    .line 817
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 820
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    :cond_c
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 3

    .line 811
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setAutoRestoreForUser(IZ)V

    return-void
.end method

.method public setAutoRestoreForUser(IZ)V
    .registers 4

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setAutoRestore(IZ)V

    :cond_9
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .registers 4

    .line 793
    const-string/jumbo v0, "setBackupEnabled()"

    .line 794
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 797
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    :cond_c
    return-void
.end method

.method public setBackupEnabled(Z)V
    .registers 3

    .line 788
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabledForUser(IZ)V

    return-void
.end method

.method public setBackupEnabledForUser(IZ)V
    .registers 4

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 782
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->setBackupEnabled(IZ)V

    :cond_9
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 847
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->binderGetCallingUserId()I

    move-result v0

    .line 848
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 851
    :cond_c
    const-string/jumbo v1, "setBackupPassword()"

    .line 852
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 855
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v2
.end method

.method public setBackupServiceActive(IZ)V
    .registers 7

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->enforceSetBackupServiceActiveAllowedForUser(I)V

    if-eqz p1, :cond_18

    .line 529
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->getRememberActivatedFileForNonSystemUser(I)Ljava/io/File;

    move-result-object v0

    .line 530
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->createFile(Ljava/io/File;)V

    .line 531
    invoke-static {v0, p2}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->writeBoolean(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    .line 533
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to persist backup service activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    if-eqz v0, :cond_24

    .line 538
    const-string p0, "BackupManagerService"

    const-string p1, "Backup service not supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_24
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_27
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3a

    const-string v3, ""

    goto :goto_3c

    :catchall_38
    move-exception p0

    goto :goto_59

    :cond_3a
    const-string v3, "in"

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "active for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_54

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->handleBackupActivationLocked(I)V

    goto :goto_57

    .line 547
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->handleBackupDeactivationLocked(I)V

    .line 549
    :goto_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_38

    throw p0
.end method

.method public setFrameworkSchedulingEnabledForUser(IZ)V
    .registers 4

    .line 769
    const-string/jumbo v0, "setFrameworkSchedulingEnabledForUser()"

    .line 770
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 774
    invoke-virtual {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->setFrameworkSchedulingEnabled(Z)V

    :cond_c
    return-void
.end method

.method public startServiceForUser(I)V
    .registers 5

    .line 394
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    const-string v1, "BackupManagerService"

    if-eqz v0, :cond_c

    .line 395
    const-string p0, "Backup service not supported"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Backup not activated for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 402
    :cond_27
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 403
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already started, so not starting again"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 408
    invoke-static {p1, v0, p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    return-void
.end method

.method public startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .registers 5

    .line 420
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    const-string p0, "backup enable"

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 424
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final stopServiceForSystemUserIfMainUserCreated()V
    .registers 3

    .line 1809
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mDidMainUserExistAtBoot:Z

    if-eqz v0, :cond_9

    goto :goto_21

    .line 1813
    :cond_9
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_14

    goto :goto_21

    :cond_14
    if-nez v0, :cond_17

    goto :goto_21

    :cond_17
    const/4 v0, 0x0

    .line 1822
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1823
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public stopServiceForUser(I)V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v0, :cond_17

    .line 433
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 435
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 436
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    :cond_17
    return-void
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 9

    .line 1167
    const-string/jumbo v0, "updateTransportAttributes()"

    .line 1168
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p0

    if-eqz p0, :cond_12

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 1171
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 9

    .line 1124
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1125
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/backup/BackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
