.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;,
        Lcom/android/server/content/SyncManager$OnReadyCallback;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    }
.end annotation


# static fields
.field private static final DEBUG_ACCOUNT_ACCESS:Z = false

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final ENABLE_SUSPICIOUS_CHECK:Z

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_ADAPTER_CONNECTION_FLAGS:I = 0x4015

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_OP_STATE_INVALID_NOT_SYNCABLE:I = 0x4

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT:I = 0x3

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field private static final SYNC_OP_STATE_INVALID_SYNC_DISABLED:I = 0x5

.field private static final SYNC_OP_STATE_VALID:I = 0x0

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final USE_WTF_FOR_ACCOUNT_ERROR:Z = true

.field private static sInstance:Lcom/android/server/content/SyncManager;

.field private static final sOpDumpComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpRuntimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountsLock:Ljava/lang/Object;

.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mAmi:Landroid/app/ActivityManagerInternal;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private volatile mNextJobIdOffset:I

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$f_0Z1_2aO_5hA8fHgzsbmTPHbes(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountManagerInternal(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountsLock(Lcom/android/server/content/SyncManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationMgr(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvisioned(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncManagerWakeLock(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .registers 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProvisioned(Lcom/android/server/content/SyncManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRunningAccounts(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllBackoffs(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetContextForUser(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetJobStats(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTotalBytesTransferredByUid(Lcom/android/server/content/SyncManager;I)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAdapterDelayed(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeRescheduleSync(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadDataConnectionState(Lcom/android/server/content/SyncManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->removeStaleAccounts()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSyncsForAuthority(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAuthorityPendingState(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDelayUntilTime(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRunningAccounts(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverifyJobScheduler(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwasPackageEverLaunched(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 172
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 178
    nop

    .line 179
    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 2079
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2109
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 572
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, v1, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 244
    iput v0, v1, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    .line 255
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 319
    new-instance v5, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v5, v1}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v5, v1, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v3, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v1, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 413
    new-instance v3, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v1, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 425
    new-instance v3, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v1, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v4, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v4, v1}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 573
    const-class v4, Lcom/android/server/content/SyncManager;

    monitor-enter v4

    .line 574
    :try_start_4b
    sget-object v6, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v6, :cond_52

    .line 575
    sput-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_59

    .line 577
    :cond_52
    const-string v6, "SyncManager"

    const-string v7, "SyncManager instantiated multiple times"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_59
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_1ee

    .line 583
    iput-object v2, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 585
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 587
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 588
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 589
    new-instance v6, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v6, v1}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 598
    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v6, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v6, v1}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 607
    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v6, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v6, v1}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 614
    new-instance v4, Landroid/content/SyncAdaptersCache;

    iget-object v6, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 616
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SyncManager"

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, v1, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 617
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 618
    new-instance v7, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v7, v1, v6}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v7, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 620
    new-instance v6, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v6, v1}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6, v7}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 633
    new-instance v4, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v4, v2}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 635
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 636
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, v1, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 638
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 639
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 640
    iget-object v6, v1, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 642
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v6

    .line 643
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v6, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v6, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    iget-object v11, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 649
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.TIME_SET"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    .line 650
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .local v11, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    invoke-static {}, Lcom/android/server/content/SyncManagerStub;->getInstance()Lcom/android/server/content/SyncManagerStub;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v1}, Lcom/android/server/content/SyncManagerStub;->registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V

    .line 655
    const/4 v3, 0x0

    if-nez p2, :cond_123

    .line 656
    const-string/jumbo v4, "notification"

    .line 657
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_125

    .line 659
    :cond_123
    iput-object v3, v1, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 661
    :goto_125
    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 662
    iget-object v6, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, v1, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 663
    iget-object v6, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v8, "account"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/AccountManager;

    iput-object v6, v1, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 664
    const-class v6, Landroid/accounts/AccountManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/AccountManagerInternal;

    iput-object v6, v1, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 665
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    iput-object v8, v1, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 666
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iput-object v8, v1, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 668
    new-instance v8, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v6, v8}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 679
    const-string v6, "batterystats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 687
    const-string v6, "SyncLoopWakeLock"

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 689
    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 692
    iget-boolean v4, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v4, :cond_1bc

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 694
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v6, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v6, v1, v3, v4}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    move-object v3, v6

    .line 704
    .local v3, "provisionedObserver":Landroid/database/ContentObserver;
    monitor-enter v7

    .line 705
    :try_start_19e
    const-string v6, "device_provisioned"

    .line 706
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 705
    invoke-virtual {v4, v6, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 712
    iget-boolean v6, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v8

    or-int/2addr v6, v8

    iput-boolean v6, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 713
    iget-boolean v6, v1, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v6, :cond_1b7

    .line 714
    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 716
    :cond_1b7
    monitor-exit v7

    goto :goto_1bc

    :catchall_1b9
    move-exception v0

    monitor-exit v7
    :try_end_1bb
    .catchall {:try_start_19e .. :try_end_1bb} :catchall_1b9

    throw v0

    .line 719
    .end local v3    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    :cond_1bc
    :goto_1bc
    if-nez p2, :cond_1ce

    .line 721
    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v7, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 733
    :cond_1ce
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    .line 735
    new-array v3, v12, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync manager initialized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v10, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 736
    return-void

    .line 579
    .end local v11    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_1ee
    move-exception v0

    :try_start_1ef
    monitor-exit v4
    :try_end_1f0
    .catchall {:try_start_1ef .. :try_end_1f0} :catchall_1ee

    throw v0
.end method

.method private canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1160
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1161
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1160
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1162
    return v1

    .line 1168
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x100000

    .line 1169
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1168
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 1170
    return v1

    .line 1171
    :catch_1e
    move-exception v0

    .line 1172
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 7
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "why"    # Ljava/lang/String;

    .line 4206
    if-nez p1, :cond_a

    .line 4207
    const-string v0, "SyncManager"

    const-string v1, "Null sync operation detected."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    return-void

    .line 4210
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_26

    .line 4211
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Removing periodic sync "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, " for "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4213
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 4214
    return-void
.end method

.method private cleanupJobs()V
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method private clearAllBackoffs(Ljava/lang/String;)V
    .registers 3
    .param p1, "why"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 398
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 12
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    .line 1390
    .local v0, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_23

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1391
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    .line 1392
    return-void

    .line 1394
    :cond_23
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing backoffs for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_42
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1401
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1402
    return-void
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 7
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 346
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_17

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 347
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 348
    const/4 v0, 0x1

    .line 349
    goto :goto_1a

    .line 345
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 352
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    return v0
.end method

.method private static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2117
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .line 2118
    .local v0, "ret":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2119
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v0, v0, 0x1

    .line 2120
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_17
    goto :goto_5

    .line 2121
    :cond_18
    return v0
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2469
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2470
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const-string v1, " avg="

    const-string v2, " for "

    if-lez v0, :cond_26

    .line 2471
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2472
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2474
    :cond_26
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_48

    .line 2476
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2477
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2479
    :cond_48
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2480
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2721
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    .line 2722
    .local v0, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v0, :cond_9e

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_9e

    .line 2723
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2724
    const-string v2, "Sync Statistics"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    const-string v2, "  Today:  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2726
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 2731
    .local v1, "today":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_24
    const/4 v3, 0x6

    if-gt v2, v3, :cond_49

    array-length v4, v0

    if-ge v2, v4, :cond_49

    .line 2732
    aget-object v4, v0, v2

    .line 2733
    .local v4, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v4, :cond_2f

    goto :goto_49

    .line 2734
    :cond_2f
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    .line 2735
    .local v5, "delta":I
    if-le v5, v3, :cond_36

    goto :goto_49

    .line 2737
    :cond_36
    const-string v3, "  Day-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2738
    invoke-direct {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2731
    .end local v5    # "delta":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2742
    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_49
    :goto_49
    move v4, v1

    .line 2743
    .local v4, "weekDay":I
    :goto_4a
    array-length v5, v0

    if-ge v2, v5, :cond_9e

    .line 2744
    const/4 v5, 0x0

    .line 2745
    .local v5, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v4, v4, -0x7

    .line 2746
    :goto_50
    array-length v6, v0

    if-ge v2, v6, :cond_87

    .line 2747
    aget-object v6, v0, v2

    .line 2748
    .local v6, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v6, :cond_59

    .line 2749
    array-length v2, v0

    .line 2750
    goto :goto_87

    .line 2752
    :cond_59
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v4, v7

    .line 2753
    .local v7, "delta":I
    if-le v7, v3, :cond_60

    goto :goto_87

    .line 2754
    :cond_60
    add-int/lit8 v2, v2, 0x1

    .line 2756
    if-nez v5, :cond_6a

    .line 2757
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v8, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    move-object v5, v8

    .line 2759
    :cond_6a
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2760
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2761
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2762
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2763
    .end local v7    # "delta":I
    goto :goto_50

    .line 2764
    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_87
    :goto_87
    if-eqz v5, :cond_9d

    .line 2765
    const-string v6, "  Week-"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2766
    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2768
    .end local v5    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_9d
    goto :goto_4a

    .line 2770
    .end local v1    # "today":I
    .end local v2    # "i":I
    .end local v4    # "weekDay":I
    :cond_9e
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .registers 52
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2489
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    .line 2490
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v2, :cond_5a2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5a2

    .line 2491
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2492
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v4, 0x0

    .line 2493
    .local v4, "totalElapsedTime":J
    const-wide/16 v6, 0x0

    .line 2494
    .local v6, "totalTimes":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2496
    .local v8, "N":I
    const/4 v9, 0x0

    .line 2497
    .local v9, "maxAuthority":I
    const/4 v10, 0x0

    .line 2498
    .local v10, "maxAccount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_24
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, " u"

    const-string v14, "/"

    if-eqz v12, :cond_e9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2499
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v17, v11

    iget v11, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2500
    invoke-virtual {v15, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v11

    .line 2503
    .local v11, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v11, :cond_78

    .line 2504
    iget-object v15, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2505
    .local v15, "authorityName":Ljava/lang/String;
    move-object/from16 v18, v15

    .end local v15    # "authorityName":Ljava/lang/String;
    .local v18, "authorityName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v19, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    iget-object v2, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v14, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v18

    .local v2, "accountKey":Ljava/lang/String;
    goto :goto_7e

    .line 2509
    .end local v18    # "authorityName":Ljava/lang/String;
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_78
    move-object/from16 v19, v2

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const-string v15, "Unknown"

    .line 2510
    .restart local v15    # "authorityName":Ljava/lang/String;
    const-string v2, "Unknown"

    .line 2513
    .local v2, "accountKey":Ljava/lang/String;
    :goto_7e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 2514
    .local v13, "length":I
    if-le v13, v9, :cond_85

    .line 2515
    move v9, v13

    .line 2517
    :cond_85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    .line 2518
    if-le v13, v10, :cond_8c

    .line 2519
    move v10, v13

    .line 2522
    :cond_8c
    move v14, v9

    move/from16 v18, v10

    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .local v14, "maxAuthority":I
    .local v18, "maxAccount":I
    iget-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2523
    .local v9, "elapsedTime":J
    add-long/2addr v4, v9

    .line 2524
    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    .line 2525
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2526
    .local v20, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-wide/from16 v21, v4

    .end local v4    # "totalElapsedTime":J
    .local v21, "totalElapsedTime":J
    const/4 v4, 0x0

    if-nez v20, :cond_aa

    .line 2527
    new-instance v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v5, v15, v4}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats-IA;)V

    .line 2528
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v5, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac

    .line 2526
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_aa
    move-object/from16 v5, v20

    .line 2530
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_ac
    move-wide/from16 v23, v6

    .end local v6    # "totalTimes":J
    .local v23, "totalTimes":J
    iget-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    add-long/2addr v6, v9

    iput-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2531
    iget v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2532
    iget-object v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2533
    .local v6, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2534
    .local v7, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_cf

    .line 2535
    move-object/from16 v20, v5

    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    new-instance v5, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-direct {v5, v2, v4}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats-IA;)V

    move-object v7, v5

    .line 2536
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 2534
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_cf
    move-object/from16 v20, v5

    .line 2538
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_d1
    iget-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long/2addr v4, v9

    iput-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2539
    iget v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2541
    .end local v2    # "accountKey":Ljava/lang/String;
    .end local v6    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v7    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v9    # "elapsedTime":J
    .end local v11    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v13    # "length":I
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move v9, v14

    move-object/from16 v11, v17

    move/from16 v10, v18

    move-object/from16 v2, v19

    move-wide/from16 v4, v21

    move-wide/from16 v6, v23

    goto/16 :goto_24

    .line 2543
    .end local v14    # "maxAuthority":I
    .end local v18    # "maxAccount":I
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v21    # "totalElapsedTime":J
    .end local v23    # "totalTimes":J
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v4    # "totalElapsedTime":J
    .local v6, "totalTimes":J
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_e9
    move-object/from16 v19, v2

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const-wide/16 v11, 0x0

    cmp-long v2, v4, v11

    const-wide/16 v17, 0x3e8

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-lez v2, :cond_29e

    .line 2544
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2545
    new-array v2, v11, [Ljava/lang/Object;

    .line 2547
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v2, v12

    div-long v22, v4, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v16, 0x1

    aput-object v22, v2, v16

    .line 2545
    const-string v15, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    invoke-virtual {v1, v15, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2549
    new-instance v2, Ljava/util/ArrayList;

    .line 2550
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2551
    .local v2, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v15, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v15, v0}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v2, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2563
    add-int/lit8 v15, v10, 0x3

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2564
    .local v15, "maxLength":I
    add-int/lit8 v23, v15, 0x4

    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0xa

    add-int/lit8 v11, v23, 0xb

    .line 2565
    .local v11, "padLength":I
    new-array v12, v11, [C

    .line 2566
    .local v12, "chars":[C
    move-object/from16 v25, v3

    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v25, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const/16 v3, 0x2d

    invoke-static {v12, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 2567
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([C)V

    .line 2569
    .local v3, "separator":Ljava/lang/String;
    move/from16 v26, v11

    move-object/from16 v27, v12

    const/4 v11, 0x1

    .end local v11    # "padLength":I
    .end local v12    # "chars":[C
    .local v26, "padLength":I
    .local v27, "chars":[C
    new-array v12, v11, [Ljava/lang/Object;

    add-int/lit8 v16, v15, 0x2

    .line 2570
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v23, 0x0

    aput-object v16, v12, v23

    const-string v11, "  %%-%ds: %%-9s  %%-11s\n"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2571
    .local v11, "authorityFormat":Ljava/lang/String;
    move-object/from16 v28, v13

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 2572
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v23

    const-string v12, "    %%-%ds:   %%-9s  %%-11s\n"

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2574
    .local v12, "accountFormat":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_16b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_28c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v2

    .end local v2    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v30, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    move-object/from16 v2, v29

    check-cast v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2576
    .local v2, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-object/from16 v29, v13

    iget-object v13, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 2582
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v31, v14

    move/from16 v32, v15

    .end local v15    # "maxLength":I
    .local v32, "maxLength":I
    iget-wide v14, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2583
    .local v14, "elapsedTime":J
    move/from16 v33, v8

    .end local v8    # "N":I
    .local v33, "N":I
    iget v8, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2584
    .local v8, "times":I
    move/from16 v34, v9

    move/from16 v35, v10

    const/4 v9, 0x2

    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .local v34, "maxAuthority":I
    .local v35, "maxAccount":I
    new-array v10, v9, [Ljava/lang/Object;

    div-long v36, v14, v17

    .line 2585
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v23, 0x0

    aput-object v9, v10, v23

    const-wide/16 v36, 0x64

    mul-long v38, v14, v36

    div-long v38, v38, v4

    .line 2586
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v10, v16

    .line 2584
    const-string v9, "%ds/%d%%"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2587
    .local v10, "timeStr":Ljava/lang/String;
    move-wide/from16 v38, v14

    const/4 v14, 0x2

    .end local v14    # "elapsedTime":J
    .local v38, "elapsedTime":J
    new-array v15, v14, [Ljava/lang/Object;

    .line 2588
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v23, 0x0

    aput-object v14, v15, v23

    mul-int/lit8 v14, v8, 0x64

    move/from16 v40, v8

    move-object/from16 v41, v9

    .end local v8    # "times":I
    .local v40, "times":I
    int-to-long v8, v14

    div-long/2addr v8, v6

    .line 2589
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v15, v9

    .line 2587
    const-string v8, "%d/%d%%"

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2590
    .local v14, "timesStr":Ljava/lang/String;
    move-object/from16 v42, v3

    const/4 v15, 0x3

    .end local v3    # "separator":Ljava/lang/String;
    .local v42, "separator":Ljava/lang/String;
    new-array v3, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v13, v3, v15

    aput-object v14, v3, v9

    const/4 v9, 0x2

    aput-object v10, v3, v9

    invoke-virtual {v1, v11, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2592
    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2594
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2595
    .local v3, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v9, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v9, v0}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2606
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2607
    .local v15, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    .end local v2    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v3    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .local v43, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v44, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    iget-wide v2, v15, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2608
    .end local v38    # "elapsedTime":J
    .local v2, "elapsedTime":J
    move-object/from16 v45, v9

    iget v9, v15, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2609
    .end local v40    # "times":I
    .local v9, "times":I
    move-object/from16 v46, v10

    move-object/from16 v47, v11

    const/4 v10, 0x2

    .end local v10    # "timeStr":Ljava/lang/String;
    .end local v11    # "authorityFormat":Ljava/lang/String;
    .local v46, "timeStr":Ljava/lang/String;
    .local v47, "authorityFormat":Ljava/lang/String;
    new-array v11, v10, [Ljava/lang/Object;

    div-long v38, v2, v17

    .line 2610
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v23, 0x0

    aput-object v10, v11, v23

    mul-long v38, v2, v36

    div-long v38, v38, v4

    .line 2611
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v16, 0x1

    aput-object v10, v11, v16

    .line 2609
    move-object/from16 v10, v41

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2612
    .end local v46    # "timeStr":Ljava/lang/String;
    .local v11, "timeStr":Ljava/lang/String;
    move-wide/from16 v38, v2

    const/4 v2, 0x2

    .end local v2    # "elapsedTime":J
    .restart local v38    # "elapsedTime":J
    new-array v3, v2, [Ljava/lang/Object;

    .line 2613
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v23, 0x0

    aput-object v2, v3, v23

    mul-int/lit8 v2, v9, 0x64

    move-wide/from16 v48, v4

    .end local v4    # "totalElapsedTime":J
    .local v48, "totalElapsedTime":J
    int-to-long v4, v2

    div-long/2addr v4, v6

    .line 2614
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 2612
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2615
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v15, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    aput-object v14, v3, v4

    const/4 v2, 0x2

    aput-object v11, v3, v2

    invoke-virtual {v1, v12, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2616
    .end local v15    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move/from16 v40, v9

    move-object v10, v11

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    move-object/from16 v9, v45

    move-object/from16 v11, v47

    move-wide/from16 v4, v48

    goto :goto_1f7

    .line 2617
    .end local v9    # "times":I
    .end local v43    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v44    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v47    # "authorityFormat":Ljava/lang/String;
    .end local v48    # "totalElapsedTime":J
    .local v2, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v3    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v4    # "totalElapsedTime":J
    .restart local v10    # "timeStr":Ljava/lang/String;
    .local v11, "authorityFormat":Ljava/lang/String;
    .restart local v40    # "times":I
    :cond_26c
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move-wide/from16 v48, v4

    move-object/from16 v46, v10

    move-object/from16 v47, v11

    .end local v2    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v3    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v4    # "totalElapsedTime":J
    .end local v10    # "timeStr":Ljava/lang/String;
    .end local v11    # "authorityFormat":Ljava/lang/String;
    .restart local v43    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v44    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v46    # "timeStr":Ljava/lang/String;
    .restart local v47    # "authorityFormat":Ljava/lang/String;
    .restart local v48    # "totalElapsedTime":J
    move-object/from16 v2, v42

    .end local v42    # "separator":Ljava/lang/String;
    .local v2, "separator":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "timesStr":Ljava/lang/String;
    .end local v38    # "elapsedTime":J
    .end local v40    # "times":I
    .end local v43    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v44    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v46    # "timeStr":Ljava/lang/String;
    move-object v3, v2

    move-object/from16 v13, v29

    move-object/from16 v2, v30

    move-object/from16 v14, v31

    move/from16 v15, v32

    move/from16 v8, v33

    move/from16 v9, v34

    move/from16 v10, v35

    goto/16 :goto_16b

    .line 2575
    .end local v30    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v32    # "maxLength":I
    .end local v33    # "N":I
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v47    # "authorityFormat":Ljava/lang/String;
    .end local v48    # "totalElapsedTime":J
    .local v2, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v3, "separator":Ljava/lang/String;
    .restart local v4    # "totalElapsedTime":J
    .local v8, "N":I
    .local v9, "maxAuthority":I
    .local v10, "maxAccount":I
    .restart local v11    # "authorityFormat":Ljava/lang/String;
    .local v15, "maxLength":I
    :cond_28c
    move-object/from16 v30, v2

    move-object v2, v3

    move-wide/from16 v48, v4

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v47, v11

    move-object/from16 v31, v14

    move/from16 v32, v15

    .end local v3    # "separator":Ljava/lang/String;
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .end local v11    # "authorityFormat":Ljava/lang/String;
    .end local v15    # "maxLength":I
    .local v2, "separator":Ljava/lang/String;
    .restart local v30    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v32    # "maxLength":I
    .restart local v33    # "N":I
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    .restart local v47    # "authorityFormat":Ljava/lang/String;
    .restart local v48    # "totalElapsedTime":J
    goto :goto_2ac

    .line 2543
    .end local v2    # "separator":Ljava/lang/String;
    .end local v12    # "accountFormat":Ljava/lang/String;
    .end local v25    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v26    # "padLength":I
    .end local v27    # "chars":[C
    .end local v30    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v32    # "maxLength":I
    .end local v33    # "N":I
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v47    # "authorityFormat":Ljava/lang/String;
    .end local v48    # "totalElapsedTime":J
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v4    # "totalElapsedTime":J
    .restart local v8    # "N":I
    .restart local v9    # "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_29e
    move-object/from16 v25, v3

    move-wide/from16 v48, v4

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    .line 2621
    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .restart local v25    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v33    # "N":I
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    .restart local v48    # "totalElapsedTime":J
    :goto_2ac
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2622
    const-string v2, "Recent Sync History"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v10, v35

    .end local v35    # "maxAccount":I
    .restart local v10    # "maxAccount":I
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v14, v34

    .end local v34    # "maxAuthority":I
    .local v14, "maxAuthority":I
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s %s\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2625
    .local v3, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 2626
    .local v4, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2627
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2ed
    move/from16 v9, v33

    .end local v33    # "N":I
    .local v9, "N":I
    if-ge v8, v9, :cond_4b0

    .line 2628
    move-object/from16 v11, v19

    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2629
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v15, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2630
    invoke-virtual {v13, v15}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v13

    .line 2633
    .local v13, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v13, :cond_33f

    .line 2634
    iget-object v15, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2635
    .local v15, "authorityName":Ljava/lang/String;
    move-wide/from16 v26, v6

    .end local v6    # "totalTimes":J
    .local v26, "totalTimes":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, v31

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v35, v10

    .end local v10    # "maxAccount":I
    .restart local v35    # "maxAccount":I
    iget-object v10, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v10, v28

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v34, v14

    .end local v14    # "maxAuthority":I
    .restart local v34    # "maxAuthority":I
    iget-object v14, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "accountKey":Ljava/lang/String;
    goto :goto_34d

    .line 2639
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v26    # "totalTimes":J
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .local v6, "totalTimes":J
    .restart local v10    # "maxAccount":I
    .restart local v14    # "maxAuthority":I
    :cond_33f
    move-wide/from16 v26, v6

    move/from16 v35, v10

    move/from16 v34, v14

    move-object/from16 v10, v28

    move-object/from16 v7, v31

    .end local v6    # "totalTimes":J
    .end local v10    # "maxAccount":I
    .end local v14    # "maxAuthority":I
    .restart local v26    # "totalTimes":J
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    const-string v15, "Unknown"

    .line 2640
    .restart local v15    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .line 2642
    .local v6, "accountKey":Ljava/lang/String;
    :goto_34d
    move-object/from16 v19, v13

    .end local v13    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v19, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v13, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2643
    .local v13, "elapsedTime":J
    move-object/from16 v29, v10

    move-object/from16 v28, v11

    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    iget-wide v10, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2645
    .local v10, "eventTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2646
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 2648
    .local v30, "lastEventTime":Ljava/lang/Long;
    if-nez v30, :cond_37c

    .line 2649
    const-string v31, ""

    move-object/from16 v33, v7

    move/from16 v40, v9

    .local v31, "diffString":Ljava/lang/String;
    goto/16 :goto_3ee

    .line 2651
    .end local v31    # "diffString":Ljava/lang/String;
    :cond_37c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    sub-long v31, v31, v10

    div-long v31, v31, v17

    .line 2652
    .local v31, "diff":J
    const-wide/16 v36, 0x3c

    cmp-long v33, v31, v36

    if-gez v33, :cond_395

    .line 2653
    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move/from16 v40, v9

    move-object/from16 v31, v33

    move-object/from16 v33, v7

    .local v33, "diffString":Ljava/lang/String;
    goto :goto_3ee

    .line 2654
    .end local v33    # "diffString":Ljava/lang/String;
    :cond_395
    const-wide/16 v38, 0xe10

    cmp-long v33, v31, v38

    if-gez v33, :cond_3bf

    .line 2655
    move-object/from16 v33, v7

    move/from16 v40, v9

    const/4 v7, 0x2

    .end local v9    # "N":I
    .local v40, "N":I
    new-array v9, v7, [Ljava/lang/Object;

    div-long v38, v31, v36

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v23, 0x0

    aput-object v7, v9, v23

    rem-long v36, v31, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v9, v16

    const-string v7, "%02d:%02d"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v7

    .local v7, "diffString":Ljava/lang/String;
    goto :goto_3ee

    .line 2657
    .end local v7    # "diffString":Ljava/lang/String;
    .end local v40    # "N":I
    .restart local v9    # "N":I
    :cond_3bf
    move-object/from16 v33, v7

    move/from16 v40, v9

    .end local v9    # "N":I
    .restart local v40    # "N":I
    rem-long v41, v31, v38

    .line 2658
    .local v41, "sec":J
    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    div-long v38, v31, v38

    .line 2659
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v23, 0x0

    aput-object v7, v9, v23

    div-long v38, v41, v36

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v9, v16

    rem-long v36, v41, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v24, 0x2

    aput-object v7, v9, v24

    .line 2658
    const-string v7, "%02d:%02d:%02d"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v7

    .line 2662
    .end local v41    # "sec":J
    .local v31, "diffString":Ljava/lang/String;
    :goto_3ee
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    .line 2665
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v23, 0x0

    aput-object v9, v7, v23

    .line 2666
    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v7, v16

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v32, v0

    .end local v0    # "key":Ljava/lang/String;
    .local v32, "key":Ljava/lang/String;
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v0, v9, v0

    const/4 v9, 0x2

    aput-object v0, v7, v9

    long-to-float v0, v13

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v0, v9

    .line 2668
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v9, 0x3

    aput-object v0, v7, v9

    const/4 v0, 0x4

    aput-object v31, v7, v0

    .line 2664
    const-string v0, "  #%-3d: %s %8s  %5.1fs  %8s"

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2670
    new-array v0, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    const/4 v7, 0x1

    aput-object v15, v0, v7

    iget v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2671
    invoke-static {v5, v9}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v0, v16

    .line 2670
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2673
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    if-ne v0, v7, :cond_455

    move-object v0, v4

    move-object v7, v5

    .end local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-wide v4, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    const-wide/16 v20, 0x0

    cmp-long v4, v4, v20

    if-nez v4, :cond_459

    iget-wide v4, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v4, v4, v20

    if-eqz v4, :cond_452

    goto :goto_459

    :cond_452
    move-object v4, v6

    move-object v9, v7

    goto :goto_47e

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_455
    move-object v0, v4

    move-object v7, v5

    const-wide/16 v20, 0x0

    .line 2676
    .end local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_459
    :goto_459
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 2677
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object v4, v6

    move-object v9, v7

    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "accountKey":Ljava/lang/String;
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-wide v6, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2678
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-wide v6, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2679
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 2676
    const-string v6, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    invoke-virtual {v1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2681
    :goto_47e
    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v5, :cond_49a

    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 2682
    const-string/jumbo v6, "success"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49a

    .line 2683
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "    mesg=%s\n"

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2627
    .end local v4    # "accountKey":Ljava/lang/String;
    .end local v10    # "eventTime":J
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v13    # "elapsedTime":J
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v31    # "diffString":Ljava/lang/String;
    .end local v32    # "key":Ljava/lang/String;
    :cond_49a
    add-int/lit8 v8, v8, 0x1

    move-object v4, v0

    move-object v5, v9

    move-wide/from16 v6, v26

    move-object/from16 v19, v28

    move-object/from16 v28, v29

    move-object/from16 v31, v33

    move/from16 v14, v34

    move/from16 v10, v35

    move/from16 v33, v40

    move-object/from16 v0, p0

    goto/16 :goto_2ed

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v26    # "totalTimes":J
    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v40    # "N":I
    .local v4, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v6, "totalTimes":J
    .local v9, "N":I
    .local v10, "maxAccount":I
    .restart local v14    # "maxAuthority":I
    .local v19, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_4b0
    move-object v0, v4

    move-wide/from16 v26, v6

    move/from16 v40, v9

    move/from16 v35, v10

    move/from16 v34, v14

    move-object/from16 v29, v28

    move-object/from16 v33, v31

    move-object v9, v5

    move-object/from16 v28, v19

    .line 2686
    .end local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "totalTimes":J
    .end local v8    # "i":I
    .end local v10    # "maxAccount":I
    .end local v14    # "maxAuthority":I
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .restart local v26    # "totalTimes":J
    .restart local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    .restart local v40    # "N":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2687
    const-string v4, "Recent Sync History Extras"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4cc
    move/from16 v4, v40

    .end local v40    # "N":I
    .local v4, "N":I
    if-ge v2, v4, :cond_599

    .line 2690
    move-object/from16 v5, v28

    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2691
    .local v6, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 2692
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_57a

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v8

    if-nez v8, :cond_4f5

    .line 2693
    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move-object/from16 v19, v5

    move-object/from16 v14, v29

    move-object/from16 v13, v33

    const/4 v0, 0x3

    const/4 v5, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v33, v4

    goto/16 :goto_58b

    .line 2695
    :cond_4f5
    move-object/from16 v8, p0

    iget-object v10, v8, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v11, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2696
    invoke-virtual {v10, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 2699
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_537

    .line 2700
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2701
    .local v11, "authorityName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v13, v33

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v14, v29

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "accountKey":Ljava/lang/String;
    goto :goto_53f

    .line 2705
    .end local v11    # "authorityName":Ljava/lang/String;
    .end local v12    # "accountKey":Ljava/lang/String;
    :cond_537
    move-object/from16 v14, v29

    move-object/from16 v13, v33

    const-string v11, "Unknown"

    .line 2706
    .restart local v11    # "authorityName":Ljava/lang/String;
    const-string v12, "Unknown"

    .line 2708
    .restart local v12    # "accountKey":Ljava/lang/String;
    :goto_53f
    move/from16 v33, v4

    move-object/from16 v19, v5

    .end local v4    # "N":I
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v33, "N":I
    iget-wide v4, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2710
    .local v4, "eventTime":J
    move-object/from16 v17, v0

    const/4 v15, 0x3

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v17, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-array v0, v15, [Ljava/lang/Object;

    add-int/lit8 v15, v2, 0x1

    .line 2711
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v0, v18

    .line 2712
    invoke-static {v4, v5}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v0, v16

    sget-object v15, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-wide/from16 v20, v4

    .end local v4    # "eventTime":J
    .local v20, "eventTime":J
    iget v4, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v4, v15, v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 2710
    const-string v4, "  #%-3d: %s %8s "

    invoke-virtual {v1, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2715
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v4, v15

    aput-object v11, v4, v16

    aput-object v7, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_58b

    .line 2692
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "authorityName":Ljava/lang/String;
    .end local v12    # "accountKey":Ljava/lang/String;
    .end local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v20    # "eventTime":J
    .end local v33    # "N":I
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v4, "N":I
    .restart local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_57a
    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move-object/from16 v19, v5

    move-object/from16 v14, v29

    move-object/from16 v13, v33

    const/4 v0, 0x3

    const/4 v5, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v33, v4

    .line 2689
    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "N":I
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v6    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v33    # "N":I
    :goto_58b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v14

    move-object/from16 v0, v17

    move-object/from16 v28, v19

    move/from16 v40, v33

    move-object/from16 v33, v13

    goto/16 :goto_4cc

    .end local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v33    # "N":I
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v4    # "N":I
    .restart local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_599
    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move/from16 v33, v4

    move-object/from16 v19, v28

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "N":I
    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v33    # "N":I
    goto :goto_5a5

    .line 2490
    .end local v3    # "format":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v25    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v26    # "totalTimes":J
    .end local v33    # "N":I
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v48    # "totalElapsedTime":J
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_5a2
    move-object v8, v0

    move-object/from16 v19, v2

    .line 2718
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :goto_5a5
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2773
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2774
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 2775
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_5b

    .line 2776
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2777
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync adapters for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2780
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2781
    .local v4, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2782
    .end local v4    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    goto :goto_44

    .line 2783
    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2784
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2785
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_d

    .line 2787
    :cond_5b
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    .line 2464
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2465
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2466
    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .registers 14
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "duration"    # J

    .line 2163
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 2164
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    .line 2165
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2166
    neg-long p1, p1

    .line 2168
    :cond_f
    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    .line 2169
    .local v4, "seconds":J
    div-long/2addr p1, v2

    .line 2171
    rem-long v6, p1, v2

    .line 2172
    .local v6, "minutes":J
    div-long/2addr p1, v2

    .line 2174
    const-wide/16 v2, 0x18

    rem-long v8, p1, v2

    .line 2175
    .local v8, "hours":J
    div-long/2addr p1, v2

    .line 2177
    move-wide v2, p1

    .line 2179
    .local v2, "days":J
    const/4 v10, 0x0

    .line 2180
    .local v10, "print":Z
    cmp-long v0, v2, v0

    if-lez v0, :cond_2b

    .line 2181
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2182
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2183
    const/4 v10, 0x1

    .line 2185
    :cond_2b
    const/16 v0, 0x68

    invoke-static {p0, v8, v9, v0, v10}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2186
    .end local v10    # "print":Z
    .local v0, "print":Z
    const/16 v1, 0x6d

    invoke-static {p0, v6, v7, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2187
    const/16 v1, 0x73

    invoke-static {p0, v4, v5, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2188
    if-nez v0, :cond_44

    .line 2189
    const-string v1, "0s"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    :cond_44
    return-object p0
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 2073
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    .line 2074
    const-string v0, "N/A"

    return-object v0

    .line 2076
    :cond_9
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncAdapterComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1891
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1892
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1894
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x1040926

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1896
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1898
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1896
    const/4 v4, 0x0

    const/high16 v6, 0x4000000

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "android.intent.extra.client_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1900
    return-object v0
.end method

.method private getAllUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 463
    monitor-enter p0

    .line 464
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 465
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 468
    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 469
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 4198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 4199
    :catch_c
    move-exception v0

    .line 4201
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private static getInstance()Lcom/android/server/content/SyncManager;
    .registers 3

    .line 2949
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 2950
    :try_start_3
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_f

    .line 2951
    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_f
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 2954
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 820
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 821
    .local v0, "isSyncable":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 824
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_51

    .line 827
    :cond_19
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 829
    invoke-static {p3, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 828
    invoke-virtual {v2, v3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 830
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_29

    return v3

    .line 832
    :cond_29
    const/4 v4, 0x0

    .line 834
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_2a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 835
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 834
    invoke-interface {v5, v6, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3a} :catch_4f

    move-object v4, v5

    .line 836
    if-nez v4, :cond_3e

    return v3

    .line 840
    :cond_3e
    nop

    .line 841
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_4e

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 842
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 843
    return v0

    .line 845
    :cond_4e
    return v3

    .line 837
    :catch_4f
    move-exception v5

    .line 839
    .local v5, "re":Landroid/os/RemoteException;
    return v3

    .line 824
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_51
    :goto_51
    return v0
.end method

.method private getJobStats()Ljava/lang/String;
    .registers 4

    .line 407
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 408
    .local v0, "js":Lcom/android/server/job/JobSchedulerInternal;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    if-nez v0, :cond_18

    const-string v2, "(JobSchedulerInternal==null)"

    goto :goto_20

    .line 410
    :cond_18
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    return-object v1
.end method

.method private getTotalBytesTransferredByUid(I)J
    .registers 6
    .param p1, "uid"    # I

    .line 1345
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .registers 7

    .line 285
    const/16 v0, 0x2710

    .line 288
    .local v0, "maxNumSyncJobIds":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 289
    .local v1, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    const v3, 0x186a0

    const/16 v4, 0x2710

    if-ge v2, v4, :cond_27

    .line 290
    iget v5, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/2addr v5, v2

    rem-int/2addr v5, v4

    add-int/2addr v5, v3

    .line 291
    .local v5, "newJobId":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 292
    iget v3, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    .line 293
    return v5

    .line 289
    .end local v5    # "newJobId":I
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 297
    .end local v2    # "i":I
    :cond_27
    const-string v2, "SyncManager"

    const-string v5, "All 10000 possible sync job IDs are taken :/"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v2, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    .line 299
    iget v2, p0, Lcom/android/server/content/SyncManager;->mNextJobIdOffset:I

    add-int/2addr v2, v3

    return v2
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 19
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1405
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1407
    .local v8, "now":J
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1408
    invoke-virtual {v1, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v10

    .line 1409
    .local v10, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    .line 1410
    .local v1, "newDelayInMs":J
    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    const-string v6, "SyncManager"

    if-eqz v10, :cond_61

    .line 1413
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v8, v11

    if-gez v11, :cond_50

    .line 1414
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1416
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v11, v8

    div-long/2addr v11, v4

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1415
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_4f
    return-void

    .line 1421
    :cond_50
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1422
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-float v11, v11

    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v12}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-long v1, v11

    .line 1424
    :cond_61
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-gtz v11, :cond_7c

    .line 1426
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    .line 1427
    .local v11, "initialRetryMs":J
    long-to-double v13, v11

    const-wide v15, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v13, v15

    double-to-long v13, v13

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v1

    .line 1431
    .end local v11    # "initialRetryMs":J
    :cond_7c
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v11

    int-to-long v11, v11

    .line 1433
    .local v11, "maxSyncRetryTimeInSeconds":J
    mul-long v13, v11, v4

    cmp-long v13, v1, v13

    if-lez v13, :cond_8d

    .line 1434
    mul-long v1, v11, v4

    move-wide v13, v1

    goto :goto_8e

    .line 1433
    :cond_8d
    move-wide v13, v1

    .line 1437
    .end local v1    # "newDelayInMs":J
    .local v13, "newDelayInMs":J
    :goto_8e
    add-long v4, v8, v13

    .line 1438
    .local v4, "backoff":J
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff until: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delayTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_b6
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v2, p1

    move-wide v15, v4

    .end local v4    # "backoff":J
    .local v15, "backoff":J
    move-wide v3, v15

    move-wide v5, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1442
    const-string/jumbo v1, "increaseBackoffSetting"

    invoke-direct {v0, v7, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1484
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 1485
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_28

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_28

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 1486
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_28

    .line 1487
    return v3

    .line 1489
    :cond_28
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_33

    .line 1490
    return v3

    .line 1492
    :cond_33
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .line 798
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 799
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .registers 8
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .line 269
    .local p2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5
    const/4 v2, 0x1

    if-ge v0, v1, :cond_18

    .line 270
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 271
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_15

    .line 272
    return v2

    .line 269
    .end local v3    # "job":Landroid/app/job/JobInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 275
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .restart local v1    # "size":I
    :goto_1f
    if-ge v0, v1, :cond_33

    .line 276
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 277
    .local v3, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v4, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v4, p1, :cond_30

    .line 278
    return v2

    .line 275
    .end local v3    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 281
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 4077
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4078
    return v0

    .line 4080
    :cond_4
    const-string v1, "expedited"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 4081
    return v2

    .line 4083
    :cond_e
    const-string/jumbo v1, "schedule_as_expedited_job"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4084
    return v2

    .line 4086
    :cond_18
    const-string/jumbo v1, "ignore_settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4087
    return v2

    .line 4089
    :cond_22
    const-string/jumbo v1, "ignore_backoff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4090
    return v2

    .line 4092
    :cond_2c
    const-string v1, "do_not_retry"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4093
    return v2

    .line 4095
    :cond_35
    const-string v1, "force"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4096
    return v2

    .line 4098
    :cond_3e
    const-string/jumbo v1, "upload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4099
    return v2

    .line 4101
    :cond_48
    const-string v1, "deletions_override"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 4102
    return v2

    .line 4104
    :cond_51
    const-string v1, "discard_deletions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4105
    return v2

    .line 4107
    :cond_5a
    const-string v1, "expected_upload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 4108
    return v2

    .line 4110
    :cond_63
    const-string v1, "expected_download"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 4111
    return v2

    .line 4113
    :cond_6c
    const-string/jumbo v1, "sync_priority"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 4114
    return v2

    .line 4116
    :cond_76
    const-string v1, "allow_metered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 4117
    return v2

    .line 4119
    :cond_7f
    const-string/jumbo v1, "initialize"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 4120
    return v2

    .line 4126
    :cond_89
    return v0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 4035
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 4036
    .local v1, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_16

    .line 4037
    const/4 v0, 0x1

    return v0

    .line 4039
    .end local v1    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_16
    goto :goto_6

    .line 4040
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private isUserUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 760
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 761
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 762
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private jitterize(JJ)J
    .registers 10
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    .line 806
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 807
    .local v0, "random":Ljava/util/Random;
    sub-long v1, p3, p1

    .line 808
    .local v1, "spread":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1a

    .line 812
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3

    .line 809
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z
    .registers 2
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2128
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z
    .registers 2
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2145
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return v0
.end method

.method static synthetic lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .registers 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "table"    # Lcom/android/server/content/SyncManager$PrintTable;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "stats"    # Landroid/content/SyncStatusInfo$Stats;
    .param p4, "filter"    # Ljava/util/function/Function;
    .param p5, "r"    # Ljava/lang/Integer;

    .line 2367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2368
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2376
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2378
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v2, v4

    iget-wide v4, p3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2379
    invoke-static {p0, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v2, v4

    .line 2368
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2380
    return-void
.end method

.method static synthetic lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 2381
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2835
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 8
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2080
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2081
    .local v0, "res":I
    if-eqz v0, :cond_f

    return v0

    .line 2083
    :cond_f
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2085
    .local v1, "stringComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2086
    if-eqz v0, :cond_24

    return v0

    .line 2088
    :cond_24
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2089
    if-eqz v0, :cond_37

    return v0

    .line 2091
    :cond_37
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2092
    if-eqz v0, :cond_46

    return v0

    .line 2094
    :cond_46
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2095
    if-eqz v0, :cond_51

    return v0

    .line 2097
    :cond_51
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2098
    if-eqz v0, :cond_5c

    return v0

    .line 2100
    :cond_5c
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2101
    if-eqz v0, :cond_67

    return v0

    .line 2103
    :cond_67
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v2, v2

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2104
    if-eqz v0, :cond_74

    return v0

    .line 2106
    :cond_74
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .registers 6
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2110
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2111
    .local v0, "res":I
    if-eqz v0, :cond_b

    return v0

    .line 2113
    :cond_b
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private likelyHasPeriodicSyncs()Z
    .registers 4

    .line 558
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    const/4 v2, 0x6

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 559
    :catchall_c
    move-exception v1

    .line 562
    return v0
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 7
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 1775
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 1776
    .local v1, "isLoggable":Z
    if-eqz v1, :cond_29

    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_29
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableBackoff()V

    .line 1782
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1784
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->hasDoNotRetry()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_54

    .line 1788
    if-eqz v1, :cond_110

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_110

    .line 1792
    :cond_54
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->isUpload()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_7f

    .line 1794
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableTwoWaySync()V

    .line 1795
    if-eqz v1, :cond_7a

    .line 1796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_7a
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_110

    .line 1800
    :cond_7f
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_9d

    .line 1803
    if-eqz v1, :cond_110

    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 1807
    :cond_9d
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1809
    if-eqz v1, :cond_ab

    .line 1810
    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_ab
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_110

    .line 1814
    :cond_af
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_d2

    .line 1815
    if-eqz v1, :cond_cc

    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_cc
    const-wide/16 v2, 0x2710

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_110

    .line 1820
    :cond_d2
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 1822
    if-eqz v1, :cond_f1

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_f1
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_110

    .line 1829
    :cond_f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1830
    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1829
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_110
    :goto_110
    return-void
.end method

.method private onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1867
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUserRemoved: u"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1871
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 1872
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1873
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1874
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, p1, :cond_4f

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user removed u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1877
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_4f
    goto :goto_26

    .line 1878
    :cond_50
    return-void
.end method

.method private onUserStopped(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1854
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1856
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v2, "onUserStopped"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method private onUserUnlocked(I)V
    .registers 21
    .param p1, "userId"    # I

    .line 1836
    move-object/from16 v11, p0

    move/from16 v12, p1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1838
    iget-object v0, v11, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, v12}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1840
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v13, v0

    .line 1841
    .local v13, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v11, v13}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1844
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1845
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1844
    invoke-virtual {v0, v12, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 1846
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v15, v14

    const/4 v0, 0x0

    move v10, v0

    :goto_2b
    if-ge v10, v15, :cond_4b

    aget-object v16, v14, v10

    .line 1847
    .local v16, "account":Landroid/accounts/Account;
    const/4 v3, -0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1849
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, -0x3

    const/16 v17, 0x0

    .line 1847
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    move/from16 v18, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 1846
    .end local v16    # "account":Landroid/accounts/Account;
    add-int/lit8 v10, v18, 0x1

    goto :goto_2b

    .line 1851
    :cond_4b
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 6
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1318
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1319
    const-string/jumbo v1, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_f
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1324
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1326
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1327
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1330
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1331
    return-void
.end method

.method private static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J
    .param p3, "unit"    # C
    .param p4, "always"    # Z

    .line 2197
    if-nez p4, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 2198
    const/4 v0, 0x0

    return v0

    .line 2200
    :cond_a
    if-eqz p4, :cond_17

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_17

    .line 2201
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2203
    :cond_17
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2204
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2205
    const/4 v0, 0x1

    return v0
.end method

.method private readDataConnectionState()Z
    .registers 3

    .line 402
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 403
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static readyToSync(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 2961
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 2962
    .local v0, "instance":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/server/content/SyncJobService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_18

    .line 2963
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 2962
    :goto_19
    return v1
.end method

.method private removeStaleAccounts()V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 367
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1b

    goto :goto_a

    .line 368
    :cond_1b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 371
    .local v2, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 372
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "accountsForUser":[Landroid/accounts/Account;
    goto :goto_a

    .line 373
    :cond_33
    return-void
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 12
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "removeSyncsForAuthority: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1178
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1180
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1181
    .local v5, "op":Lcom/android/server/content/SyncOperation;
    iget-object v6, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1182
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "canceling: "

    aput-object v8, v7, v3

    aput-object v5, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1183
    invoke-direct {p0, v5, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1185
    .end local v5    # "op":Lcom/android/server/content/SyncOperation;
    :cond_43
    goto :goto_1f

    .line 1186
    :cond_44
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .registers 10
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1450
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "rescheduleSyncs() ep="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, " why="

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1453
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v1, 0x0

    .line 1454
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 1455
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v5, v4, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_44

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1456
    add-int/lit8 v1, v1, 0x1

    .line 1457
    invoke-direct {p0, v4, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1458
    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1460
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_44
    goto :goto_22

    .line 1461
    :cond_45
    const-string v2, "SyncManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " syncs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_6d
    return-void
.end method

.method private scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .registers 68
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "checkIfAccountReady"    # Z
    .param p10, "syncExemptionFlag"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingPackage"    # Ljava/lang/String;

    .line 917
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    move/from16 v11, p6

    move-wide/from16 v9, p7

    if-nez p5, :cond_15

    .line 918
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .end local p5    # "extras":Landroid/os/Bundle;
    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_17

    .line 917
    .end local v0    # "extras":Landroid/os/Bundle;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_15
    move-object/from16 v8, p5

    .line 920
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v8, "extras":Landroid/os/Bundle;
    :goto_17
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    .line 921
    const-string v0, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_b0

    .line 922
    iget-object v0, v15, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v7, 0x16

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v16, "scheduleSync: account="

    aput-object v16, v7, v2

    aput-object v14, v7, v1

    const-string v16, " u"

    aput-object v16, v7, v6

    .line 923
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v7, v3

    const-string v16, " authority="

    aput-object v16, v7, v4

    aput-object v12, v7, v5

    const/16 v16, 0x6

    const-string v17, " reason="

    aput-object v17, v7, v16

    const/16 v16, 0x7

    .line 925
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x8

    const-string v17, " extras="

    aput-object v17, v7, v16

    const/16 v16, 0x9

    aput-object v8, v7, v16

    const/16 v16, 0xa

    const-string v17, " cuid="

    aput-object v17, v7, v16

    const/16 v16, 0xb

    .line 927
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0xc

    const-string v17, " cpid="

    aput-object v17, v7, v16

    const/16 v16, 0xd

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0xe

    const-string v17, " cpkg="

    aput-object v17, v7, v16

    const/16 v16, 0xf

    aput-object p13, v7, v16

    const/16 v16, 0x10

    const-string v17, " mdm="

    aput-object v17, v7, v16

    const/16 v16, 0x11

    .line 928
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x12

    const-string v17, " ciar="

    aput-object v17, v7, v16

    const/16 v16, 0x13

    .line 929
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x14

    const-string v17, " sef="

    aput-object v17, v7, v16

    const/16 v16, 0x15

    .line 930
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v16

    .line 922
    invoke-virtual {v0, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 933
    :cond_b0
    const/4 v7, 0x0

    .line 934
    .local v7, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v4, v15, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 935
    const/4 v0, -0x1

    if-eqz v14, :cond_f2

    .line 936
    if-eq v13, v0, :cond_c5

    .line 937
    :try_start_b9
    new-array v5, v1, [Landroid/accounts/AccountAndUser;

    new-instance v6, Landroid/accounts/AccountAndUser;

    invoke-direct {v6, v14, v13}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v6, v5, v2

    move/from16 v6, p3

    .end local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    goto :goto_100

    .line 939
    .end local v5    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    :cond_c5
    iget-object v5, v15, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v6, v5

    move v0, v2

    :goto_c9
    if-ge v0, v6, :cond_e7

    aget-object v19, v5, v0

    move-object/from16 v20, v19

    .line 940
    .local v20, "runningAccount":Landroid/accounts/AccountAndUser;
    move-object/from16 v3, v20

    .end local v20    # "runningAccount":Landroid/accounts/AccountAndUser;
    .local v3, "runningAccount":Landroid/accounts/AccountAndUser;
    iget-object v1, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v14, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 941
    const-class v1, Landroid/accounts/AccountAndUser;

    invoke-static {v1, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/AccountAndUser;
    :try_end_e1
    .catchall {:try_start_b9 .. :try_end_e1} :catchall_eb

    move-object v7, v1

    .line 939
    .end local v3    # "runningAccount":Landroid/accounts/AccountAndUser;
    :cond_e2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x3

    goto :goto_c9

    :cond_e7
    move/from16 v6, p3

    move-object v5, v7

    goto :goto_100

    .line 951
    :catchall_eb
    move-exception v0

    move-object/from16 v18, v8

    move-object v13, v15

    move-wide v14, v9

    goto/16 :goto_517

    .line 947
    :cond_f2
    :try_start_f2
    iget-object v0, v15, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object v7, v0

    .line 949
    invoke-static {}, Lcom/android/server/content/SyncSecurityStub;->getInstance()Lcom/android/server/content/SyncSecurityStub;

    move-result-object v0

    move/from16 v6, p3

    invoke-interface {v0, v7, v6}, Lcom/android/server/content/SyncSecurityStub;->filterOutXiaomiAccount([Landroid/accounts/AccountAndUser;I)[Landroid/accounts/AccountAndUser;

    move-result-object v0
    :try_end_ff
    .catchall {:try_start_f2 .. :try_end_ff} :catchall_512

    .end local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    move-object v5, v0

    .line 951
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v5    # "accounts":[Landroid/accounts/AccountAndUser;
    :goto_100
    :try_start_100
    monitor-exit v4
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_508

    .line 953
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 954
    return-void

    .line 957
    :cond_108
    const-string/jumbo v0, "upload"

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 958
    .local v0, "uploadOnly":Z
    const-string v1, "force"

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 959
    .local v32, "manualSync":Z
    if-eqz v32, :cond_124

    .line 960
    const-string/jumbo v1, "ignore_backoff"

    const/4 v3, 0x1

    invoke-virtual {v8, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    const-string/jumbo v1, "ignore_settings"

    invoke-virtual {v8, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 963
    :cond_124
    const-string/jumbo v1, "ignore_settings"

    .line 964
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 967
    .local v33, "ignoreSettings":Z
    if-eqz v0, :cond_131

    .line 968
    const/4 v1, 0x1

    move/from16 v34, v1

    .local v1, "source":I
    goto :goto_14c

    .line 969
    .end local v1    # "source":I
    :cond_131
    if-eqz v32, :cond_137

    .line 970
    const/4 v1, 0x3

    move/from16 v34, v1

    .restart local v1    # "source":I
    goto :goto_14c

    .line 971
    .end local v1    # "source":I
    :cond_137
    if-nez v12, :cond_13d

    .line 972
    const/4 v1, 0x2

    move/from16 v34, v1

    .restart local v1    # "source":I
    goto :goto_14c

    .line 974
    .end local v1    # "source":I
    :cond_13d
    const-string v1, "feed"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 975
    const/4 v1, 0x5

    move/from16 v34, v1

    .restart local v1    # "source":I
    goto :goto_14c

    .line 979
    .end local v1    # "source":I
    :cond_149
    const/4 v1, 0x0

    move/from16 v34, v1

    .line 983
    .local v34, "source":I
    :goto_14c
    array-length v4, v5

    move v3, v2

    :goto_14e
    if-ge v3, v4, :cond_507

    aget-object v1, v5, v3

    .line 985
    .local v1, "account":Landroid/accounts/AccountAndUser;
    if-ltz v13, :cond_174

    iget v7, v1, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v7, :cond_174

    iget v7, v1, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v13, v7, :cond_174

    .line 987
    move/from16 v37, v0

    move/from16 v19, v2

    move/from16 v40, v3

    move/from16 v45, v4

    move-object/from16 v20, v5

    move-object/from16 v18, v8

    move-object v13, v15

    const/16 v17, 0x2

    const/16 v41, -0x1

    const/16 v43, 0x3

    const/16 v49, 0x5

    move-wide v14, v9

    goto/16 :goto_4ed

    .line 991
    :cond_174
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 993
    .local v7, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, v15, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move/from16 v22, v3

    iget v3, v1, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_187
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 994
    .local v3, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v23, v2

    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v3    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v2, v23

    goto :goto_187

    .line 1000
    :cond_1a1
    if-eqz v12, :cond_1af

    .line 1001
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1002
    .local v2, "hasSyncAdapter":Z
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1003
    if-eqz v2, :cond_1af

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1006
    .end local v2    # "hasSyncAdapter":Z
    :cond_1af
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_1b3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d3

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1007
    .local v3, "authority":Ljava/lang/String;
    iget-object v2, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move/from16 v23, v4

    iget v4, v1, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v24, v5

    .end local v5    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v24, "accounts":[Landroid/accounts/AccountAndUser;
    xor-int/lit8 v5, p9, 0x1

    invoke-virtual {v15, v2, v4, v3, v5}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v5

    .line 1010
    .local v5, "isSyncable":I
    if-nez v5, :cond_1d5

    .line 1011
    move/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_1b3

    .line 1014
    :cond_1d5
    iget-object v2, v15, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v4, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1015
    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    move-object/from16 v25, v3

    .end local v3    # "authority":Ljava/lang/String;
    .local v25, "authority":Ljava/lang/String;
    iget v3, v1, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v4, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 1017
    .local v4, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v4, :cond_1ee

    .line 1018
    move/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_1b3

    .line 1021
    :cond_1ee
    iget v3, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1023
    .local v3, "owningUid":I
    const/4 v2, 0x3

    if-ne v5, v2, :cond_28c

    .line 1024
    iget-object v2, v15, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    move/from16 v26, v3

    move/from16 v20, v5

    const/4 v3, 0x1

    .end local v3    # "owningUid":I
    .end local v5    # "isSyncable":I
    .local v20, "isSyncable":I
    .local v26, "owningUid":I
    new-array v5, v3, [Ljava/lang/Object;

    const-string/jumbo v27, "scheduleSync: Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    const/16 v21, 0x0

    aput-object v27, v5, v21

    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1026
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v36, v7

    .end local v7    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v36, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v7, v2

    .line 1027
    .local v7, "finalExtras":Landroid/os/Bundle;
    iget-object v2, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1029
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {v15, v5, v13}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_221

    .line 1030
    move/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v36

    goto :goto_1b3

    .line 1032
    :cond_221
    iget-object v2, v15, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    move/from16 v37, v0

    .end local v0    # "uploadOnly":Z
    .local v37, "uploadOnly":Z
    iget-object v0, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    new-instance v15, Landroid/os/RemoteCallback;

    move-object/from16 v27, v0

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;

    move-object/from16 v38, v1

    .end local v1    # "account":Landroid/accounts/AccountAndUser;
    .local v38, "account":Landroid/accounts/AccountAndUser;
    move-object v1, v0

    move-object/from16 v39, v2

    move/from16 v19, v21

    const/16 v21, 0x3

    move-object/from16 v2, p0

    move/from16 v43, v21

    move/from16 v40, v22

    move-object/from16 v41, v25

    move/from16 v42, v26

    .end local v25    # "authority":Ljava/lang/String;
    .end local v26    # "owningUid":I
    .local v41, "authority":Ljava/lang/String;
    .local v42, "owningUid":I
    move-object/from16 v3, v38

    move-object/from16 v46, v4

    move/from16 v45, v23

    .end local v4    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v46, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move/from16 v4, p2

    move-object/from16 v48, v5

    move/from16 v16, v20

    move-object/from16 v20, v24

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v16, "isSyncable":I
    .local v20, "accounts":[Landroid/accounts/AccountAndUser;
    .local v48, "packageName":Ljava/lang/String;
    move/from16 v5, p3

    const/16 v17, 0x2

    move-object/from16 v6, v41

    move-object/from16 v50, v8

    .end local v8    # "extras":Landroid/os/Bundle;
    .local v50, "extras":Landroid/os/Bundle;
    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    invoke-direct {v15, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move/from16 v14, p2

    move-object/from16 v2, v27

    move-object/from16 v1, v39

    move-object/from16 v0, v48

    .end local v48    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2, v0, v14, v15}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 1045
    move-object/from16 v15, p0

    move/from16 v6, p3

    move-object/from16 v12, p4

    move/from16 v11, p6

    move v13, v14

    move-object/from16 v5, v20

    move-object/from16 v7, v36

    move/from16 v0, v37

    move-object/from16 v1, v38

    move/from16 v4, v45

    move-object/from16 v8, v50

    move-object/from16 v14, p1

    goto/16 :goto_1b3

    .line 1048
    .end local v16    # "isSyncable":I
    .end local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v36    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v37    # "uploadOnly":Z
    .end local v38    # "account":Landroid/accounts/AccountAndUser;
    .end local v41    # "authority":Ljava/lang/String;
    .end local v42    # "owningUid":I
    .end local v46    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v50    # "extras":Landroid/os/Bundle;
    .local v0, "uploadOnly":Z
    .restart local v1    # "account":Landroid/accounts/AccountAndUser;
    .restart local v3    # "owningUid":I
    .restart local v4    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v5, "isSyncable":I
    .local v7, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v25    # "authority":Ljava/lang/String;
    :cond_28c
    move/from16 v37, v0

    move-object/from16 v38, v1

    move/from16 v43, v2

    move/from16 v42, v3

    move-object/from16 v46, v4

    move/from16 v16, v5

    move-object/from16 v36, v7

    move-object/from16 v50, v8

    move v14, v13

    move/from16 v40, v22

    move/from16 v45, v23

    move-object/from16 v20, v24

    move-object/from16 v41, v25

    const/16 v17, 0x2

    const/16 v19, 0x0

    .end local v0    # "uploadOnly":Z
    .end local v1    # "account":Landroid/accounts/AccountAndUser;
    .end local v3    # "owningUid":I
    .end local v4    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v5    # "isSyncable":I
    .end local v7    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v24    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v25    # "authority":Ljava/lang/String;
    .restart local v16    # "isSyncable":I
    .restart local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v36    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v37    # "uploadOnly":Z
    .restart local v38    # "account":Landroid/accounts/AccountAndUser;
    .restart local v41    # "authority":Ljava/lang/String;
    .restart local v42    # "owningUid":I
    .restart local v46    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v50    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v46

    .end local v46    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v0, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/content/SyncAdapterType;

    invoke-virtual {v1}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v15

    .line 1049
    .local v15, "allowParallelSyncs":Z
    iget-object v1, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/content/SyncAdapterType;

    invoke-virtual {v1}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v39

    .line 1050
    .local v39, "isAlwaysSyncable":Z
    if-nez p9, :cond_2df

    if-gez v16, :cond_2df

    if-eqz v39, :cond_2df

    .line 1051
    move-object/from16 v13, p0

    iget-object v1, v13, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v12, v38

    .end local v38    # "account":Landroid/accounts/AccountAndUser;
    .local v12, "account":Landroid/accounts/AccountAndUser;
    iget-object v2, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v12, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v27, 0x1

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object/from16 v26, v41

    move/from16 v28, p11

    move/from16 v29, p12

    invoke-virtual/range {v23 .. v29}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    .line 1054
    const/4 v5, 0x1

    move v11, v5

    .end local v16    # "isSyncable":I
    .restart local v5    # "isSyncable":I
    goto :goto_2e5

    .line 1050
    .end local v5    # "isSyncable":I
    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .restart local v16    # "isSyncable":I
    .restart local v38    # "account":Landroid/accounts/AccountAndUser;
    :cond_2df
    move-object/from16 v13, p0

    move-object/from16 v12, v38

    .line 1057
    .end local v38    # "account":Landroid/accounts/AccountAndUser;
    .restart local v12    # "account":Landroid/accounts/AccountAndUser;
    move/from16 v11, v16

    .end local v16    # "isSyncable":I
    .local v11, "isSyncable":I
    :goto_2e5
    const/4 v1, -0x2

    move/from16 v10, p6

    if-eq v10, v1, :cond_306

    if-eq v10, v11, :cond_306

    .line 1058
    move/from16 v6, p3

    move v11, v10

    move-object v1, v12

    move-object v15, v13

    move v13, v14

    move-object/from16 v5, v20

    move-object/from16 v7, v36

    move/from16 v0, v37

    move/from16 v22, v40

    move/from16 v4, v45

    move-object/from16 v8, v50

    move-object/from16 v14, p1

    move-object/from16 v12, p4

    move-wide/from16 v9, p7

    goto/16 :goto_1b3

    .line 1061
    :cond_306
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_32c

    if-eqz v37, :cond_32c

    .line 1062
    move/from16 v6, p3

    move v11, v10

    move-object v1, v12

    move-object v15, v13

    move v13, v14

    move-object/from16 v5, v20

    move-object/from16 v7, v36

    move/from16 v0, v37

    move/from16 v22, v40

    move/from16 v4, v45

    move-object/from16 v8, v50

    move-object/from16 v14, p1

    move-object/from16 v12, p4

    move-wide/from16 v9, p7

    goto/16 :goto_1b3

    .line 1065
    :cond_32c
    if-ltz v11, :cond_354

    if-nez v33, :cond_354

    .line 1070
    invoke-static {}, Lcom/android/server/content/SyncManagerStub;->getInstance()Lcom/android/server/content/SyncManagerStub;

    move-result-object v2

    iget-object v3, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v12, Landroid/accounts/AccountAndUser;->userId:I

    iget-object v5, v13, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/content/SyncManagerStub;->getMasterSyncAutomatically(Landroid/accounts/Account;ILcom/android/server/content/SyncStorageEngine;)Z

    move-result v2

    if-eqz v2, :cond_34f

    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v3, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v12, Landroid/accounts/AccountAndUser;->userId:I

    .line 1072
    move-object/from16 v8, v41

    .end local v41    # "authority":Ljava/lang/String;
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_351

    goto :goto_356

    .line 1070
    .end local v8    # "authority":Ljava/lang/String;
    .restart local v41    # "authority":Ljava/lang/String;
    :cond_34f
    move-object/from16 v8, v41

    .line 1072
    .end local v41    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    :cond_351
    move/from16 v2, v19

    goto :goto_357

    .line 1065
    .end local v8    # "authority":Ljava/lang/String;
    .restart local v41    # "authority":Ljava/lang/String;
    :cond_354
    move-object/from16 v8, v41

    .line 1072
    .end local v41    # "authority":Ljava/lang/String;
    .restart local v8    # "authority":Ljava/lang/String;
    :goto_356
    const/4 v2, 0x1

    :goto_357
    move/from16 v16, v2

    .line 1074
    .local v16, "syncAllowed":Z
    if-nez v16, :cond_390

    .line 1075
    iget-object v1, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v9, 0x5

    new-array v2, v9, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: sync of "

    aput-object v3, v2, v19

    const/4 v7, 0x1

    aput-object v12, v2, v7

    const-string v3, " "

    aput-object v3, v2, v17

    aput-object v8, v2, v43

    const-string v3, " is not allowed, dropping request"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1077
    move/from16 v6, p3

    move v11, v10

    move-object v1, v12

    move-object v15, v13

    move v13, v14

    move-object/from16 v5, v20

    move-object/from16 v7, v36

    move/from16 v0, v37

    move/from16 v22, v40

    move/from16 v4, v45

    move-object/from16 v8, v50

    move-object/from16 v14, p1

    move-object/from16 v12, p4

    move-wide/from16 v9, p7

    goto/16 :goto_1b3

    .line 1079
    :cond_390
    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v9, 0x5

    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v12, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v2, v3, v8, v4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v4, v2

    .line 1082
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1083
    invoke-virtual {v2, v4}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v46

    .line 1085
    .local v46, "delayUntil":J
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v38

    .line 1087
    .local v38, "owningPackage":Ljava/lang/String;
    const/4 v3, -0x1

    if-ne v11, v3, :cond_44a

    .line 1088
    if-eqz p9, :cond_3ee

    .line 1089
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v2, v50

    .end local v50    # "extras":Landroid/os/Bundle;
    .local v2, "extras":Landroid/os/Bundle;
    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1091
    .local v6, "finalExtras":Landroid/os/Bundle;
    iget-object v1, v13, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v14, v12, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 p5, v15

    .end local v15    # "allowParallelSyncs":Z
    .local p5, "allowParallelSyncs":Z
    new-instance v15, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;

    move-object/from16 v51, v1

    move-object v1, v15

    move-object/from16 v18, v2

    .end local v2    # "extras":Landroid/os/Bundle;
    .local v18, "extras":Landroid/os/Bundle;
    move-object/from16 v2, p0

    move/from16 v41, v3

    move-object v3, v12

    move-object/from16 v44, v4

    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v44, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move/from16 v4, p3

    move-object v5, v8

    move/from16 v7, p6

    move-object/from16 v48, v8

    move/from16 v49, v9

    .end local v8    # "authority":Ljava/lang/String;
    .local v48, "authority":Ljava/lang/String;
    move-wide/from16 v8, p7

    move/from16 v10, p10

    move/from16 v52, v11

    .end local v11    # "isSyncable":I
    .local v52, "isSyncable":I
    move/from16 v11, p11

    move-object/from16 v53, v12

    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .local v53, "account":Landroid/accounts/AccountAndUser;
    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object/from16 v1, v51

    invoke-static {v1, v0, v14, v15}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 1096
    .end local v6    # "finalExtras":Landroid/os/Bundle;
    move-object/from16 v13, p0

    move-wide/from16 v14, p7

    goto/16 :goto_4b7

    .line 1098
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v44    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v48    # "authority":Ljava/lang/String;
    .end local v52    # "isSyncable":I
    .end local v53    # "account":Landroid/accounts/AccountAndUser;
    .end local p5    # "allowParallelSyncs":Z
    .restart local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v11    # "isSyncable":I
    .restart local v12    # "account":Landroid/accounts/AccountAndUser;
    .restart local v15    # "allowParallelSyncs":Z
    .restart local v50    # "extras":Landroid/os/Bundle;
    :cond_3ee
    move/from16 v41, v3

    move-object/from16 v44, v4

    move-object/from16 v48, v8

    move/from16 v49, v9

    move/from16 v52, v11

    move-object/from16 v53, v12

    move/from16 p5, v15

    move-object/from16 v18, v50

    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v11    # "isSyncable":I
    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .end local v15    # "allowParallelSyncs":Z
    .end local v50    # "extras":Landroid/os/Bundle;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v44    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v48    # "authority":Ljava/lang/String;
    .restart local v52    # "isSyncable":I
    .restart local v53    # "account":Landroid/accounts/AccountAndUser;
    .restart local p5    # "allowParallelSyncs":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1099
    .local v1, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "initialize"

    const/4 v12, 0x1

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1101
    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v14, 0x4

    new-array v3, v14, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: schedule initialisation sync "

    aput-object v4, v3, v19

    move-object/from16 v15, v53

    .end local v53    # "account":Landroid/accounts/AccountAndUser;
    .local v15, "account":Landroid/accounts/AccountAndUser;
    aput-object v15, v3, v12

    const-string v4, " "

    aput-object v4, v3, v17

    aput-object v48, v3, v43

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1104
    new-instance v2, Lcom/android/server/content/SyncOperation;

    iget-object v3, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v4, v15, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v42

    move-object/from16 v25, v38

    move/from16 v26, p3

    move/from16 v27, v34

    move-object/from16 v28, v48

    move-object/from16 v29, v1

    move/from16 v30, p5

    move/from16 v31, p10

    invoke-direct/range {v21 .. v31}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v10, p7

    invoke-virtual {v13, v2, v10, v11}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1111
    .end local v1    # "newExtras":Landroid/os/Bundle;
    move-wide v14, v10

    goto/16 :goto_4b7

    .line 1112
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v44    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v48    # "authority":Ljava/lang/String;
    .end local v52    # "isSyncable":I
    .end local p5    # "allowParallelSyncs":Z
    .restart local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v8    # "authority":Ljava/lang/String;
    .restart local v11    # "isSyncable":I
    .restart local v12    # "account":Landroid/accounts/AccountAndUser;
    .local v15, "allowParallelSyncs":Z
    .restart local v50    # "extras":Landroid/os/Bundle;
    :cond_44a
    move/from16 v41, v3

    move-object/from16 v44, v4

    move v14, v5

    move-object/from16 v48, v8

    move/from16 v49, v9

    move/from16 v52, v11

    move/from16 p5, v15

    move-object/from16 v18, v50

    move-wide/from16 v10, p7

    move-object v15, v12

    move v12, v7

    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v8    # "authority":Ljava/lang/String;
    .end local v11    # "isSyncable":I
    .end local v12    # "account":Landroid/accounts/AccountAndUser;
    .end local v50    # "extras":Landroid/os/Bundle;
    .local v15, "account":Landroid/accounts/AccountAndUser;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v44    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v48    # "authority":Ljava/lang/String;
    .restart local v52    # "isSyncable":I
    .restart local p5    # "allowParallelSyncs":Z
    move/from16 v9, p6

    if-eq v9, v1, :cond_47e

    move/from16 v8, v52

    .end local v52    # "isSyncable":I
    .local v8, "isSyncable":I
    if-ne v9, v8, :cond_466

    goto :goto_480

    .line 1123
    :cond_466
    iget-object v1, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v2, v14, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: not handling "

    aput-object v3, v2, v19

    aput-object v15, v2, v12

    const-string v3, " "

    aput-object v3, v2, v17

    aput-object v48, v2, v43

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    move-object/from16 v53, v15

    move-wide v14, v10

    goto :goto_4b7

    .line 1112
    .end local v8    # "isSyncable":I
    .restart local v52    # "isSyncable":I
    :cond_47e
    move/from16 v8, v52

    .line 1114
    .end local v52    # "isSyncable":I
    .restart local v8    # "isSyncable":I
    :goto_480
    iget-object v1, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v2, v14, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: scheduling sync "

    aput-object v3, v2, v19

    aput-object v15, v2, v12

    const-string v3, " "

    aput-object v3, v2, v17

    aput-object v48, v2, v43

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1116
    new-instance v7, Lcom/android/server/content/SyncOperation;

    iget-object v2, v15, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v15, Landroid/accounts/AccountAndUser;->userId:I

    move-object v1, v7

    move/from16 v4, v42

    move-object/from16 v5, v38

    move/from16 v6, p3

    move-object v12, v7

    move/from16 v7, v34

    move/from16 v21, v8

    .end local v8    # "isSyncable":I
    .local v21, "isSyncable":I
    move-object/from16 v8, v48

    move-object/from16 v9, v18

    move-object/from16 v53, v15

    move-wide v14, v10

    .end local v15    # "account":Landroid/accounts/AccountAndUser;
    .restart local v53    # "account":Landroid/accounts/AccountAndUser;
    move/from16 v10, p5

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-virtual {v13, v12, v14, v15}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1126
    .end local v0    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v16    # "syncAllowed":Z
    .end local v21    # "isSyncable":I
    .end local v38    # "owningPackage":Ljava/lang/String;
    .end local v39    # "isAlwaysSyncable":Z
    .end local v42    # "owningUid":I
    .end local v44    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v46    # "delayUntil":J
    .end local v48    # "authority":Ljava/lang/String;
    .end local p5    # "allowParallelSyncs":Z
    :goto_4b7
    move/from16 v6, p3

    move-object/from16 v12, p4

    move/from16 v11, p6

    move-wide v9, v14

    move-object/from16 v8, v18

    move-object/from16 v5, v20

    move-object/from16 v7, v36

    move/from16 v0, v37

    move/from16 v22, v40

    move/from16 v4, v45

    move-object/from16 v1, v53

    move-object/from16 v14, p1

    move-object v15, v13

    move/from16 v13, p2

    goto/16 :goto_1b3

    .line 1006
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v36    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v37    # "uploadOnly":Z
    .end local v53    # "account":Landroid/accounts/AccountAndUser;
    .local v0, "uploadOnly":Z
    .local v1, "account":Landroid/accounts/AccountAndUser;
    .local v5, "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v7    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v8, "extras":Landroid/os/Bundle;
    :cond_4d3
    move/from16 v37, v0

    move-object/from16 v53, v1

    move/from16 v45, v4

    move-object/from16 v20, v5

    move-object/from16 v36, v7

    move-object/from16 v18, v8

    move-object v13, v15

    move/from16 v40, v22

    const/16 v17, 0x2

    const/16 v19, 0x0

    const/16 v41, -0x1

    const/16 v43, 0x3

    const/16 v49, 0x5

    move-wide v14, v9

    .line 983
    .end local v0    # "uploadOnly":Z
    .end local v1    # "account":Landroid/accounts/AccountAndUser;
    .end local v5    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v7    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v37    # "uploadOnly":Z
    :goto_4ed
    add-int/lit8 v3, v40, 0x1

    move/from16 v6, p3

    move-object/from16 v12, p4

    move/from16 v11, p6

    move-wide v9, v14

    move-object/from16 v8, v18

    move/from16 v2, v19

    move-object/from16 v5, v20

    move/from16 v0, v37

    move/from16 v4, v45

    move-object/from16 v14, p1

    move-object v15, v13

    move/from16 v13, p2

    goto/16 :goto_14e

    .line 1128
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v37    # "uploadOnly":Z
    .restart local v0    # "uploadOnly":Z
    .restart local v5    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v8    # "extras":Landroid/os/Bundle;
    :cond_507
    return-void

    .line 951
    .end local v0    # "uploadOnly":Z
    .end local v32    # "manualSync":Z
    .end local v33    # "ignoreSettings":Z
    .end local v34    # "source":I
    :catchall_508
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v18, v8

    move-object v13, v15

    move-wide v14, v9

    move-object/from16 v7, v20

    .end local v5    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    goto :goto_517

    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v20    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v7, "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v8    # "extras":Landroid/os/Bundle;
    :catchall_512
    move-exception v0

    move-object/from16 v18, v8

    move-object v13, v15

    move-wide v14, v9

    .end local v8    # "extras":Landroid/os/Bundle;
    .restart local v18    # "extras":Landroid/os/Bundle;
    :goto_517
    :try_start_517
    monitor-exit v4
    :try_end_518
    .catchall {:try_start_517 .. :try_end_518} :catchall_519

    throw v0

    :catchall_519
    move-exception v0

    goto :goto_517
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .registers 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 1509
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 1510
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .registers 32
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    .line 1513
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v9, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v9, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    .line 1514
    .local v10, "isLoggable":Z
    if-nez v8, :cond_13

    .line 1515
    const-string v1, "Can\'t schedule null sync operation."

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1518
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->hasIgnoreBackoff()Z

    move-result v2

    const/4 v11, 0x1

    if-nez v2, :cond_c6

    .line 1519
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v5}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 1520
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v5, -0x1

    if-nez v2, :cond_51

    .line 1521
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find backoff values for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1522
    invoke-static {v12}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1521
    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 1524
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v7

    goto :goto_5f

    .line 1525
    :cond_51
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v7, v12, v5

    if-eqz v7, :cond_5f

    .line 1529
    iput-boolean v11, v8, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1531
    :cond_5f
    :goto_5f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1532
    .local v12, "now":J
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v5, v14, v5

    if-nez v5, :cond_72

    const-wide/16 v5, 0x0

    goto :goto_7b

    .line 1533
    :cond_72
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v12

    :goto_7b
    nop

    .line 1534
    .local v5, "backoffDelay":J
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v14, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v14}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v14

    .line 1535
    .local v14, "delayUntil":J
    cmp-long v7, v14, v12

    if-lez v7, :cond_8b

    sub-long v16, v14, v12

    goto :goto_8d

    :cond_8b
    const-wide/16 v16, 0x0

    :goto_8d
    move-wide/from16 v18, v16

    .line 1536
    .local v18, "delayUntilDelay":J
    if-eqz v10, :cond_b6

    .line 1537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backoff delay:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " delayUntil delay:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v20, v12

    move-wide/from16 v11, v18

    .end local v12    # "now":J
    .end local v18    # "delayUntilDelay":J
    .local v11, "delayUntilDelay":J
    .local v20, "now":J
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1536
    .end local v11    # "delayUntilDelay":J
    .end local v20    # "now":J
    .restart local v12    # "now":J
    .restart local v18    # "delayUntilDelay":J
    :cond_b6
    move-wide/from16 v20, v12

    move-wide/from16 v11, v18

    .line 1540
    .end local v12    # "now":J
    .end local v18    # "delayUntilDelay":J
    .restart local v11    # "delayUntilDelay":J
    .restart local v20    # "now":J
    :goto_ba
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v7, v2

    move-wide/from16 v1, p2

    .end local v2    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v7, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .end local p2    # "minDelay":J
    .local v1, "minDelay":J
    goto :goto_c8

    .line 1518
    .end local v1    # "minDelay":J
    .end local v5    # "backoffDelay":J
    .end local v7    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v11    # "delayUntilDelay":J
    .end local v14    # "delayUntil":J
    .end local v20    # "now":J
    .restart local p2    # "minDelay":J
    :cond_c6
    move-wide/from16 v1, p2

    .line 1543
    .end local p2    # "minDelay":J
    .restart local v1    # "minDelay":J
    :goto_c8
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_d2

    .line 1544
    const-wide/16 v1, 0x0

    move-wide v11, v1

    goto :goto_da

    .line 1545
    :cond_d2
    cmp-long v5, v1, v3

    if-lez v5, :cond_d9

    .line 1548
    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1554
    :cond_d9
    move-wide v11, v1

    .end local v1    # "minDelay":J
    .local v11, "minDelay":J
    :goto_da
    iget-boolean v1, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_20d

    .line 1555
    const/4 v1, 0x0

    .line 1558
    .local v1, "inheritedSyncExemptionFlag":I
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1559
    .local v3, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v4, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 1560
    if-eqz v10, :cond_115

    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_115
    return-void

    .line 1566
    .end local v3    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_116
    goto :goto_e5

    .line 1568
    :cond_117
    const/4 v2, 0x0

    .line 1569
    .local v2, "duplicatesCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1570
    .local v3, "now":J
    add-long v5, v3, v11

    iput-wide v5, v8, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v5

    .line 1572
    .local v5, "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v6, p1

    .line 1573
    .local v6, "syncToRun":Lcom/android/server/content/SyncOperation;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_158

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncOperation;

    .line 1574
    .local v13, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v14, v13, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v14, :cond_13b

    .line 1575
    goto :goto_12a

    .line 1577
    :cond_13b
    iget-object v14, v13, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v15, v8, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_153

    .line 1578
    iget-wide v14, v6, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-wide/from16 p2, v3

    .end local v3    # "now":J
    .local p2, "now":J
    iget-wide v3, v13, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v3, v14, v3

    if-lez v3, :cond_150

    .line 1579
    move-object v6, v13

    .line 1581
    :cond_150
    add-int/lit8 v2, v2, 0x1

    goto :goto_155

    .line 1577
    .end local p2    # "now":J
    .restart local v3    # "now":J
    :cond_153
    move-wide/from16 p2, v3

    .line 1583
    .end local v3    # "now":J
    .end local v13    # "op":Lcom/android/server/content/SyncOperation;
    .restart local p2    # "now":J
    :goto_155
    move-wide/from16 v3, p2

    goto :goto_12a

    .line 1584
    .end local p2    # "now":J
    .restart local v3    # "now":J
    :cond_158
    move-wide/from16 p2, v3

    .end local v3    # "now":J
    .restart local p2    # "now":J
    const/4 v3, 0x1

    if-le v2, v3, :cond_1a3

    .line 1585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicates found when scheduling a sync operation: owningUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; owningPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; adapter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1589
    iget-object v4, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_195

    .line 1590
    iget-object v4, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_198

    .line 1591
    :cond_195
    const-string/jumbo v4, "unknown"

    :goto_198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1585
    invoke-static {v9, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_1a3
    if-eq v8, v6, :cond_1b9

    .line 1602
    const-wide/16 v3, 0x0

    cmp-long v7, v11, v3

    if-nez v7, :cond_1b9

    iget v3, v6, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v4, v8, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v3, v4, :cond_1b9

    .line 1604
    move-object/from16 v6, p1

    .line 1605
    iget v3, v6, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1606
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1611
    :cond_1b9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 1612
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v7, v4, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v7, :cond_1ce

    .line 1613
    goto :goto_1bd

    .line 1615
    :cond_1ce
    iget-object v7, v4, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fe

    .line 1616
    if-eq v4, v6, :cond_1fe

    .line 1617
    if-eqz v10, :cond_1f2

    .line 1618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cancelling duplicate sync "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_1f2
    iget v7, v4, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1621
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1622
    const-string/jumbo v7, "scheduleSyncOperationH-duplicate"

    invoke-direct {v0, v4, v7}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1625
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1fe
    goto :goto_1bd

    .line 1626
    :cond_1ff
    if-eq v6, v8, :cond_209

    .line 1628
    if-eqz v10, :cond_208

    .line 1629
    const-string v3, "Not scheduling because a duplicate exists."

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_208
    return-void

    .line 1639
    :cond_209
    if-lez v1, :cond_20d

    .line 1640
    iput v1, v8, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1645
    .end local v1    # "inheritedSyncExemptionFlag":I
    .end local v2    # "duplicatesCount":I
    .end local v5    # "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v6    # "syncToRun":Lcom/android/server/content/SyncOperation;
    .end local p2    # "now":J
    :cond_20d
    iget v1, v8, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_218

    .line 1646
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v1

    iput v1, v8, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1649
    :cond_218
    if-eqz v10, :cond_235

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduling sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_235
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v13

    .line 1655
    .local v13, "bias":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v1

    if-eqz v1, :cond_241

    .line 1656
    const/4 v1, 0x2

    goto :goto_242

    :cond_241
    const/4 v1, 0x1

    :goto_242
    move v14, v1

    .line 1660
    .local v14, "networkType":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_24d

    .line 1661
    const/16 v1, 0x8

    goto :goto_24e

    :cond_24d
    move v1, v15

    :goto_24e
    move v6, v1

    .line 1663
    .local v6, "jobFlags":I
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    iget v2, v8, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/content/SyncJobService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1665
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1666
    invoke-virtual {v1, v14}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1667
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1668
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1669
    invoke-virtual {v1, v13}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 1670
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v7

    .line 1672
    .local v7, "b":Landroid/app/job/JobInfo$Builder;
    iget-boolean v1, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_289

    .line 1673
    iget-wide v1, v8, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v3, v8, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x1

    goto :goto_29c

    .line 1675
    :cond_289
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-lez v1, :cond_292

    .line 1676
    invoke-virtual {v7, v11, v12}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1678
    :cond_292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1681
    :goto_29c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->hasRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 1682
    invoke-virtual {v7, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1685
    :cond_2a5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isScheduledAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_2b2

    iget-boolean v1, v8, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-nez v1, :cond_2b2

    .line 1686
    invoke-virtual {v7, v3}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 1689
    :cond_2b2
    iget v1, v8, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e6

    .line 1691
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 1692
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    .line 1693
    .local v1, "dic":Lcom/android/server/DeviceIdleInternal;
    if-eqz v1, :cond_2e6

    .line 1694
    const/16 v19, 0x3e8

    iget-object v2, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1696
    invoke-virtual {v3}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    const/16 v23, 0x1

    iget v5, v8, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1698
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x132

    .line 1694
    const-string/jumbo v27, "sync by top app"

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move-wide/from16 v21, v3

    invoke-interface/range {v18 .. v27}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V

    .line 1703
    .end local v1    # "dic":Lcom/android/server/DeviceIdleInternal;
    :cond_2e6
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1704
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1705
    .local v5, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v5, :cond_300

    .line 1708
    iget-object v1, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1709
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v3

    .line 1708
    invoke-virtual {v5, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportSyncScheduled(Ljava/lang/String;IZ)V

    .line 1714
    :cond_300
    invoke-static {}, Lcom/android/server/content/SyncManagerStub;->getInstance()Lcom/android/server/content/SyncManagerStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v3, p1

    move-object/from16 v16, v5

    .end local v5    # "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    .local v16, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    move-object v5, v7

    move/from16 v18, v6

    move-object/from16 p2, v7

    .end local v6    # "jobFlags":I
    .end local v7    # "b":Landroid/app/job/JobInfo$Builder;
    .local v18, "jobFlags":I
    .local p2, "b":Landroid/app/job/JobInfo$Builder;
    move-wide v6, v11

    invoke-interface/range {v1 .. v7}, Lcom/android/server/content/SyncManagerStub;->wrapSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V

    .line 1716
    invoke-virtual/range {p2 .. p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 1717
    .local v1, "ji":Landroid/app/job/JobInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1718
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v5

    .line 1717
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1719
    .local v2, "result":I
    if-nez v2, :cond_37a

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isExpedited()Z

    move-result v3

    if-eqz v3, :cond_37a

    .line 1720
    if-eqz v10, :cond_353

    .line 1721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to schedule EJ for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Downgrading to regular"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_353
    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1725
    move-object/from16 v3, p2

    .end local p2    # "b":Landroid/app/job/JobInfo$Builder;
    .local v3, "b":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v3, v15}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    iget-object v6, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v7, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1727
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v15

    .line 1726
    invoke-virtual {v4, v5, v6, v7, v15}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_37c

    .line 1719
    .end local v3    # "b":Landroid/app/job/JobInfo$Builder;
    .restart local p2    # "b":Landroid/app/job/JobInfo$Builder;
    :cond_37a
    move-object/from16 v3, p2

    .line 1729
    .end local p2    # "b":Landroid/app/job/JobInfo$Builder;
    .restart local v3    # "b":Landroid/app/job/JobInfo$Builder;
    :goto_37c
    if-nez v2, :cond_396

    .line 1730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule job for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_396
    return-void
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1302
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendCancelSyncsMessage() ep="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " why="

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1307
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1308
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1309
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1310
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1311
    return-void
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p0, "message"    # Landroid/os/Message;

    .line 2967
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 2968
    .local v0, "instance":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_b

    .line 2969
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2971
    :cond_b
    return-void
.end method

.method static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "onReadyCallback"    # Lcom/android/server/content/SyncManager$OnReadyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;I",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2817
    .local p1, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2823
    .local v0, "connection":Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
    const/4 v1, 0x0

    .line 2824
    .local v1, "isBound":Z
    invoke-static {}, Lcom/android/server/content/SyncManagerStub;->getInstance()Lcom/android/server/content/SyncManagerStub;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2825
    invoke-static {p0, v3, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v3

    .line 2824
    invoke-interface {v2, p0, v3, p2}, Lcom/android/server/content/SyncManagerStub;->canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2826
    iget-object v2, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2827
    invoke-static {p0, v2, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x4015

    .line 2828
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 2826
    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 2832
    :cond_26
    if-eqz v1, :cond_3c

    .line 2834
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3f

    .line 2842
    :cond_3c
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->-$$Nest$monReady(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2844
    :goto_3f
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 5
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .line 1293
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1295
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1296
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1297
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1298
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 850
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 851
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 852
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_29

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 853
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 854
    return-void

    .line 856
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_29
    goto :goto_8

    .line 857
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 858
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 13
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    .line 1467
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 1468
    .local v0, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1470
    .local v2, "absoluteNow":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    .line 1471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v0, v2

    add-long/2addr v4, v6

    .local v4, "newDelayUntilTime":J
    goto :goto_15

    .line 1473
    .end local v4    # "newDelayUntilTime":J
    :cond_13
    const-wide/16 v4, 0x0

    .line 1475
    .restart local v4    # "newDelayUntilTime":J
    :goto_15
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 1476
    const/4 v6, 0x2

    const-string v7, "SyncManager"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delay Until time set to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayUntil newDelayUntilTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .registers 11
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .line 4050
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4051
    return v0

    .line 4054
    :cond_4
    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 4055
    return v1

    .line 4057
    :cond_12
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_1e

    move-object v2, p0

    goto :goto_1f

    :cond_1e
    move-object v2, p1

    .line 4058
    .local v2, "bigger":Landroid/os/Bundle;
    :goto_1f
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_2b

    move-object v3, p1

    goto :goto_2c

    :cond_2b
    move-object v3, p0

    .line 4059
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_2c
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4060
    .local v5, "key":Ljava/lang/String;
    if-nez p2, :cond_49

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 4061
    goto :goto_34

    .line 4063
    :cond_49
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 4064
    return v1

    .line 4066
    :cond_50
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 4067
    return v1

    .line 4069
    .end local v5    # "key":Ljava/lang/String;
    :cond_5f
    goto :goto_34

    .line 4070
    :cond_60
    return v0
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 4
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 357
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 360
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .registers 12

    monitor-enter p0

    .line 502
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e5

    if-eqz v0, :cond_7

    .line 503
    monitor-exit p0

    return-void

    .line 505
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_e5

    .line 507
    .local v0, "token":J
    :try_start_b
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_e0

    if-eqz v2, :cond_20

    .line 508
    :try_start_14
    const-string v2, "SyncManager"

    const-string/jumbo v3, "initializing JobScheduler object."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    goto :goto_20

    .line 546
    :catchall_1d
    move-exception v2

    goto/16 :goto_e1

    .line 510
    :cond_20
    :goto_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 512
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 514
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 516
    .local v2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v3, 0x0

    .line 517
    .local v3, "numPersistedPeriodicSyncs":I
    const/4 v4, 0x0

    .line 518
    .local v4, "numPersistedOneshotSyncs":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_e0

    const/4 v7, 0x1

    if-eqz v6, :cond_6b

    :try_start_4a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    .line 519
    .local v6, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v8

    .line 520
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v8, :cond_6a

    .line 521
    iget-boolean v9, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_61

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 524
    :cond_61
    add-int/lit8 v4, v4, 0x1

    .line 527
    iget-object v9, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v10, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v10, v7}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_1d

    .line 530
    .end local v6    # "job":Landroid/app/job/JobInfo;
    .end local v8    # "op":Lcom/android/server/content/SyncOperation;
    :cond_6a
    :goto_6a
    goto :goto_43

    .line 531
    :cond_6b
    :try_start_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded persisted syncs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " periodic syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oneshot syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 534
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total system server jobs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, "summary":Ljava/lang/String;
    const-string v6, "SyncManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 539
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 541
    sget-boolean v6, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z
    :try_end_b8
    .catchall {:try_start_6b .. :try_end_b8} :catchall_e0

    if-eqz v6, :cond_da

    if-nez v3, :cond_da

    .line 542
    :try_start_bc
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v6

    if-eqz v6, :cond_da

    .line 543
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_bc .. :try_end_da} :catchall_1d

    .line 546
    .end local v2    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    .end local v3    # "numPersistedPeriodicSyncs":I
    .end local v4    # "numPersistedOneshotSyncs":I
    .end local v5    # "summary":Ljava/lang/String;
    :cond_da
    :try_start_da
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_e5

    .line 547
    nop

    .line 548
    monitor-exit p0

    return-void

    .line 546
    .end local p0    # "this":Lcom/android/server/content/SyncManager;
    :catchall_e0
    move-exception v2

    :goto_e1
    :try_start_e1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    throw v2
    :try_end_e5
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_e5

    .line 501
    .end local v0    # "token":J
    :catchall_e5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4223
    :catch_7
    move-exception v0

    .line 4224
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private whiteListExistingSyncAdaptersIfNeeded()V
    .registers 17

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_b

    .line 776
    return-void

    .line 778
    :cond_b
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 779
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 780
    .local v2, "userCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_71

    .line 781
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 782
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 784
    .local v5, "userId":I
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v6, v5}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 785
    .local v7, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v8, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 786
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v10, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v10, Landroid/content/SyncAdapterType;

    iget-object v10, v10, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_50
    if-ge v11, v10, :cond_69

    aget-object v12, v9, v11

    .line 788
    .local v12, "account":Landroid/accounts/Account;
    invoke-direct {v0, v12, v8, v5}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_64

    .line 789
    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget v14, v7, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const-string v15, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v0, 0x1

    invoke-virtual {v13, v12, v15, v14, v0}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 786
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_64
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_50

    .line 793
    .end local v7    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_69
    move-object/from16 v0, p0

    goto :goto_30

    .line 780
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    .end local v5    # "userId":I
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_16

    .line 795
    .end local v3    # "i":I
    :cond_71
    return-void
.end method

.method private zeroToEmpty(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 2460
    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1502
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1503
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1760
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1761
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_2c

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    .line 1762
    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1763
    const-string v3, "cancelScheduledSyncOperation"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1765
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2c
    goto :goto_8

    .line 1766
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1768
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1769
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1772
    :cond_42
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1742
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1743
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1744
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_2f

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1745
    const-string v3, "clearScheduledSyncOperations"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1748
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_2f
    goto :goto_8

    .line 1749
    :cond_30
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1751
    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "checkAccountAccess"    # Z

    .line 1132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 1133
    .local v0, "status":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1134
    return v1

    .line 1136
    :cond_8
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 1137
    .local v2, "type":Landroid/content/SyncAdapterType;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1138
    invoke-virtual {v3, v2, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    .line 1139
    .local v3, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v3, :cond_17

    .line 1140
    return v1

    .line 1142
    :cond_17
    iget v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1143
    .local v4, "owningUid":I
    iget-object v5, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1144
    .local v5, "owningPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, v4, v5}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v6

    const-string v7, "SyncManager"

    if-eqz v6, :cond_54

    .line 1145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not scheduling job "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " -- package not allowed to start"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return v1

    .line 1150
    :cond_54
    if-eqz p4, :cond_8e

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " denied for package "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " in UID "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v1, 0x3

    return v1

    .line 1156
    :cond_8e
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 2058
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2060
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v1}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 2062
    .local v1, "buckets":Lcom/android/server/content/SyncAdapterStateFetcher;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2063
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2064
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2066
    if-eqz p3, :cond_25

    .line 2067
    const-string v2, "Detailed Sync History"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    .line 2070
    :cond_25
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2127
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Pending Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2130
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2131
    const/4 v1, 0x0

    .line 2132
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2133
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_3a

    .line 2134
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    add-int/lit8 v1, v1, 0x1

    .line 2137
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_3a
    goto :goto_1f

    .line 2138
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2139
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2142
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2144
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Periodic Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2145
    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2147
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2148
    const/4 v1, 0x0

    .line 2149
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2150
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_3a

    .line 2151
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    add-int/lit8 v1, v1, 0x1

    .line 2154
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_3a
    goto :goto_1f

    .line 2155
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2156
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2483
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2484
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 2485
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .registers 42
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2210
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 2212
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v0, "Data connected: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2213
    const-string v0, "Battery saver: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v4

    :goto_27
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2216
    const-string v0, "Background network restriction: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2219
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_37

    const/4 v6, -0x1

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v6

    .line 2220
    .local v6, "status":I
    :goto_3b
    packed-switch v6, :pswitch_data_5e8

    .line 2231
    const-string v7, "Unknown("

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2233
    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5e

    .line 2228
    :pswitch_4c
    const-string v7, " enabled"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    goto :goto_5e

    .line 2225
    :pswitch_52
    const-string v7, " whitelisted"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    goto :goto_5e

    .line 2222
    :pswitch_58
    const-string v7, " disabled"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    nop

    .line 2238
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "status":I
    :goto_5e
    const-string v0, "Auto sync: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2239
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v6

    .line 2240
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_ae

    .line 2241
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2242
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2243
    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2242
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    goto :goto_6d

    .line 2245
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2247
    :cond_ae
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 2249
    .local v7, "storageLowIntent":Landroid/content/Intent;
    const-string v0, "Storage low: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v7, :cond_c5

    const/4 v0, 0x1

    goto :goto_c6

    :cond_c5
    move v0, v4

    :goto_c6
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2250
    const-string v0, "Clock valid: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2252
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object v8

    .line 2254
    .local v8, "accounts":[Landroid/accounts/AccountAndUser;
    const-string v0, "Accounts: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v8, v0, :cond_ed

    .line 2256
    array-length v0, v8

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_f3

    .line 2258
    :cond_ed
    const-string/jumbo v0, "not known yet"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    :goto_f3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2261
    .local v9, "now":J
    const-string v0, "Now: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ")"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2265
    const-string v0, "Uptime: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v9, v10}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2266
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2267
    const-string v0, "Time spent syncing: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2270
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2271
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v11

    .line 2270
    invoke-static {v3, v11, v12}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2272
    const-string v0, ", sync "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2273
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v0, :cond_15c

    const-string v0, ""

    goto :goto_15f

    :cond_15c
    const-string/jumbo v0, "not "

    :goto_15f
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    const-string/jumbo v0, "in progress"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2276
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active Syncs: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2279
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_193
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2280
    .local v12, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v13, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v13, v9, v13

    .line 2281
    .local v13, "durationInSeconds":J
    const-string v15, "  "

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2283
    invoke-static {v3, v13, v14}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2284
    const-string v15, " - "

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2285
    iget-object v15, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v5, p2

    invoke-virtual {v15, v11, v4, v5, v4}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2287
    .end local v12    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v13    # "durationInSeconds":J
    goto :goto_193

    .line 2288
    :cond_1c6
    move-object/from16 v5, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2290
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2291
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2294
    const-string v0, "Sync Status"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2298
    .local v12, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2300
    array-length v0, v8

    move v13, v4

    :goto_1e3
    if-ge v13, v0, :cond_4d9

    aget-object v14, v8, v13

    .line 2302
    .local v14, "account":Landroid/accounts/AccountAndUser;
    iget-object v15, v1, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v15

    .line 2303
    :try_start_1ea
    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    move/from16 v18, v0

    iget v0, v14, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2304
    .local v0, "unlocked":Z
    monitor-exit v15
    :try_end_1f5
    .catchall {:try_start_1ea .. :try_end_1f5} :catchall_4c6

    .line 2305
    const-string v4, "Account %s u%d %s%s\n"

    const/4 v15, 0x4

    new-array v5, v15, [Ljava/lang/Object;

    iget-object v15, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v5, v17

    iget v15, v14, Landroid/accounts/AccountAndUser;->userId:I

    .line 2306
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v5, v16

    iget-object v15, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v20, 0x2

    aput-object v15, v5, v20

    .line 2307
    if-eqz v0, :cond_219

    const-string v15, ""

    goto :goto_21b

    :cond_219
    const-string v15, " (locked)"

    :goto_21b
    move/from16 v21, v0

    .end local v0    # "unlocked":Z
    .local v21, "unlocked":Z
    const/4 v0, 0x3

    aput-object v15, v5, v0

    .line 2305
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2309
    const-string v4, "======================================================================="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    new-instance v4, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 2311
    .local v4, "table":Lcom/android/server/content/SyncManager$PrintTable;
    new-array v5, v5, [Ljava/lang/Object;

    const-string v15, "Authority"

    const/16 v17, 0x0

    aput-object v15, v5, v17

    const-string v15, "Syncable"

    const/16 v16, 0x1

    aput-object v15, v5, v16

    const-string v15, "Enabled"

    aput-object v15, v5, v20

    const-string v15, "Stats"

    aput-object v15, v5, v0

    const-string v15, "Loc"

    const/16 v19, 0x4

    aput-object v15, v5, v19

    const/4 v15, 0x5

    const-string v19, "Poll"

    aput-object v19, v5, v15

    const/4 v15, 0x6

    const-string v19, "Per"

    aput-object v19, v5, v15

    const/4 v15, 0x7

    const-string v19, "Feed"

    aput-object v19, v5, v15

    const/16 v15, 0x8

    const-string v19, "User"

    aput-object v19, v5, v15

    const/16 v15, 0x9

    const-string v19, "Othr"

    aput-object v19, v5, v15

    const/16 v15, 0xa

    const-string v19, "Tot"

    aput-object v19, v5, v15

    const/16 v15, 0xb

    const-string v19, "Fail"

    aput-object v19, v5, v15

    const/16 v15, 0xc

    const-string v19, "Can"

    aput-object v19, v5, v15

    const/16 v15, 0xd

    const-string v19, "Time"

    aput-object v19, v5, v15

    const-string v15, "Last Sync"

    const/16 v0, 0xe

    aput-object v15, v5, v0

    const-string v15, "Backoff"

    const/16 v0, 0xf

    aput-object v15, v5, v0

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v15, v5}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2335
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2336
    .local v5, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v15, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v0, v14, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v15, v0}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2337
    new-instance v0, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2345
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2346
    .local v15, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v23, v0

    iget-object v0, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v24, v5

    .end local v5    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v24, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v5, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ce

    .line 2347
    move-object/from16 v0, v23

    move-object/from16 v5, v24

    goto :goto_2a9

    .line 2349
    :cond_2ce
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v0

    .line 2350
    .local v0, "row":I
    iget-object v5, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v25, v6

    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v25, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v26, v7

    .end local v7    # "storageLowIntent":Landroid/content/Intent;
    .local v26, "storageLowIntent":Landroid/content/Intent;
    iget-object v7, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v27, v8

    .end local v8    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v27, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v8, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v8, Landroid/content/SyncAdapterType;

    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v28, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    iget v11, v14, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v6, v7, v8, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2351
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    .line 2356
    .local v5, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2357
    .local v6, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncStatusInfo;

    .line 2358
    .local v7, "status":Landroid/content/SyncStatusInfo;
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2359
    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2360
    .local v8, "authority":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v29, v5

    .end local v5    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .local v29, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    const/16 v5, 0x32

    if-le v11, v5, :cond_317

    .line 2361
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2363
    :cond_317
    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v11, v5

    iget v5, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v11, v16

    iget-boolean v5, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v11, v20

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2365
    new-instance v5, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3, v4}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 2381
    .local v5, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    const-string v11, "Total"

    move-object/from16 v30, v3

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v30, "sb":Ljava/lang/StringBuilder;
    iget-object v3, v7, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    move-object/from16 v31, v8

    .end local v8    # "authority":Ljava/lang/String;
    .local v31, "authority":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;-><init>()V

    move-object/from16 v32, v14

    .end local v14    # "account":Landroid/accounts/AccountAndUser;
    .local v32, "account":Landroid/accounts/AccountAndUser;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v11, v3, v8, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2382
    const-string v3, "Today"

    iget-object v8, v7, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v11, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;

    invoke-direct {v11, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v0, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v3, v8, v11, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2383
    const-string v3, "Yestr"

    iget-object v8, v7, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v11, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;

    invoke-direct {v11, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v14, v0, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v3, v8, v11, v14}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2385
    const/16 v3, 0xe

    .line 2386
    .local v3, "LAST_SYNC":I
    const/16 v8, 0xf

    .line 2388
    .local v8, "BACKOFF":I
    move v11, v0

    .line 2389
    .local v11, "row1":I
    move-object/from16 v33, v15

    .end local v15    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v33, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v14, v14, v9

    if-lez v14, :cond_3f3

    .line 2390
    add-int/lit8 v14, v11, 0x1

    const/4 v15, 0x1

    .end local v11    # "row1":I
    .local v14, "row1":I
    new-array v1, v15, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v3

    .end local v3    # "LAST_SYNC":I
    .local v34, "LAST_SYNC":I
    const-string v3, "D: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v35, v12

    move/from16 v36, v13

    .end local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v35, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    iget-wide v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    sub-long/2addr v12, v9

    const-wide/16 v37, 0x3e8

    div-long v12, v12, v37

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v1, v12

    const/16 v3, 0xf

    invoke-virtual {v4, v11, v3, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2391
    iget-wide v11, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v11, v9

    if-lez v1, :cond_3ee

    .line 2392
    add-int/lit8 v1, v14, 0x1

    const/4 v3, 0x1

    .end local v14    # "row1":I
    .local v1, "row1":I
    new-array v11, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "B: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long/2addr v12, v9

    div-long v12, v12, v37

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/16 v3, 0xf

    invoke-virtual {v4, v14, v3, v11}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2393
    add-int/lit8 v11, v1, 0x1

    const/4 v13, 0x1

    .end local v1    # "row1":I
    .restart local v11    # "row1":I
    new-array v14, v13, [Ljava/lang/Object;

    move-object v13, v4

    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v13, "table":Lcom/android/server/content/SyncManager$PrintTable;
    iget-wide v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v3, v3, v37

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v12

    move-object v3, v13

    const/16 v4, 0xf

    .end local v13    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v3, "table":Lcom/android/server/content/SyncManager$PrintTable;
    invoke-virtual {v3, v1, v4, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_3fc

    .line 2391
    .end local v3    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v11    # "row1":I
    .restart local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v14    # "row1":I
    :cond_3ee
    move-object v3, v4

    const/16 v4, 0xf

    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v3    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    move v11, v14

    goto :goto_3fc

    .line 2389
    .end local v14    # "row1":I
    .end local v34    # "LAST_SYNC":I
    .end local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v3, "LAST_SYNC":I
    .restart local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v11    # "row1":I
    .restart local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_3f3
    move/from16 v34, v3

    move-object v3, v4

    move-object/from16 v35, v12

    move/from16 v36, v13

    const/16 v4, 0xf

    .line 2397
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v3, "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v34    # "LAST_SYNC":I
    .restart local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :goto_3fc
    move v1, v0

    .line 2398
    .end local v11    # "row1":I
    .restart local v1    # "row1":I
    iget-wide v11, v7, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_43b

    .line 2399
    add-int/lit8 v11, v1, 0x1

    const/4 v12, 0x1

    .end local v1    # "row1":I
    .restart local v11    # "row1":I
    new-array v15, v12, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v4, v7, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v4, v22, v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " SUCCESS"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v15, v12

    const/16 v4, 0xe

    invoke-virtual {v3, v1, v4, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2401
    add-int/lit8 v1, v11, 0x1

    const/4 v15, 0x1

    .end local v11    # "row1":I
    .restart local v1    # "row1":I
    new-array v13, v15, [Ljava/lang/Object;

    iget-wide v14, v7, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-virtual {v3, v11, v4, v13}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2403
    :cond_43b
    iget-wide v11, v7, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-eqz v4, :cond_488

    .line 2404
    add-int/lit8 v4, v1, 0x1

    const/4 v11, 0x1

    .end local v1    # "row1":I
    .local v4, "row1":I
    new-array v12, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v14, v7, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " FAILURE"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/16 v11, 0xe

    invoke-virtual {v3, v1, v11, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2406
    add-int/lit8 v1, v4, 0x1

    const/4 v12, 0x1

    .end local v4    # "row1":I
    .restart local v1    # "row1":I
    new-array v14, v12, [Ljava/lang/Object;

    iget-wide v11, v7, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v13

    const/16 v11, 0xe

    invoke-virtual {v3, v4, v11, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2408
    add-int/lit8 v4, v1, 0x1

    const/4 v12, 0x1

    .end local v1    # "row1":I
    .restart local v4    # "row1":I
    new-array v14, v12, [Ljava/lang/Object;

    iget-object v12, v7, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    aput-object v12, v14, v13

    invoke-virtual {v3, v1, v11, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_48a

    .line 2403
    .end local v4    # "row1":I
    .restart local v1    # "row1":I
    :cond_488
    const/16 v11, 0xe

    .line 2410
    .end local v0    # "row":I
    .end local v1    # "row1":I
    .end local v5    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v6    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "status":Landroid/content/SyncStatusInfo;
    .end local v8    # "BACKOFF":I
    .end local v29    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v31    # "authority":Ljava/lang/String;
    .end local v33    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v34    # "LAST_SYNC":I
    :goto_48a
    move-object/from16 v1, p0

    move-object v4, v3

    move-object/from16 v0, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v11, v28

    move-object/from16 v3, v30

    move-object/from16 v14, v32

    move-object/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2a9

    .line 2411
    .end local v24    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v26    # "storageLowIntent":Landroid/content/Intent;
    .end local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .end local v32    # "account":Landroid/accounts/AccountAndUser;
    .end local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v3, "sb":Ljava/lang/StringBuilder;
    .local v4, "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v5, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v7, "storageLowIntent":Landroid/content/Intent;
    .local v8, "accounts":[Landroid/accounts/AccountAndUser;
    .local v11, "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v14, "account":Landroid/accounts/AccountAndUser;
    :cond_4a3
    move-object/from16 v30, v3

    move-object v3, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move-object/from16 v35, v12

    move/from16 v36, v13

    move-object/from16 v32, v14

    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v5    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "storageLowIntent":Landroid/content/Intent;
    .end local v8    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v14    # "account":Landroid/accounts/AccountAndUser;
    .local v3, "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v24    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v26    # "storageLowIntent":Landroid/content/Intent;
    .restart local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v32    # "account":Landroid/accounts/AccountAndUser;
    .restart local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 2300
    .end local v3    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v21    # "unlocked":Z
    .end local v24    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v32    # "account":Landroid/accounts/AccountAndUser;
    add-int/lit8 v13, v36, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move/from16 v0, v18

    move-object/from16 v3, v30

    const/4 v4, 0x0

    goto/16 :goto_1e3

    .line 2304
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v26    # "storageLowIntent":Landroid/content/Intent;
    .end local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .end local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v3, "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "storageLowIntent":Landroid/content/Intent;
    .restart local v8    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v14    # "account":Landroid/accounts/AccountAndUser;
    :catchall_4c6
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move-object/from16 v35, v12

    move-object/from16 v32, v14

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "storageLowIntent":Landroid/content/Intent;
    .end local v8    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v14    # "account":Landroid/accounts/AccountAndUser;
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v26    # "storageLowIntent":Landroid/content/Intent;
    .restart local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v32    # "account":Landroid/accounts/AccountAndUser;
    .restart local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :goto_4d5
    :try_start_4d5
    monitor-exit v15
    :try_end_4d6
    .catchall {:try_start_4d5 .. :try_end_4d6} :catchall_4d7

    throw v0

    :catchall_4d7
    move-exception v0

    goto :goto_4d5

    .line 2414
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v26    # "storageLowIntent":Landroid/content/Intent;
    .end local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .end local v32    # "account":Landroid/accounts/AccountAndUser;
    .end local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "storageLowIntent":Landroid/content/Intent;
    .restart local v8    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_4d9
    move-object/from16 v30, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move-object/from16 v35, v12

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "storageLowIntent":Landroid/content/Intent;
    .end local v8    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v26    # "storageLowIntent":Landroid/content/Intent;
    .restart local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2416
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2417
    const-string v0, "Per Adapter History"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4f6
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e7

    .line 2421
    move-object/from16 v1, v35

    .end local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v1, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2423
    .local v3, "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2426
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    const-string v4, " u"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2428
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2429
    const-string v4, " ["

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2430
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2431
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2434
    const-string v4, "    Per source last syncs:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_54e
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_596

    .line 2436
    const-string v5, "      "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2437
    const-string v5, "%8s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v11, 0x0

    aput-object v8, v7, v11

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    const-string v5, "  Success: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2439
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    iget-object v5, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v7, v5, v4

    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2441
    const-string v5, "  Failure: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2442
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    iget-object v5, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v7, v5, v4

    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    add-int/lit8 v4, v4, 0x1

    goto :goto_54e

    :cond_596
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 2445
    .end local v4    # "j":I
    const-string v4, "    Last syncs:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2446
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_59e
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v5

    if-ge v4, v5, :cond_5d2

    .line 2447
    const-string v5, "      "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2448
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5, v4}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2449
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2450
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5, v4}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2451
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2446
    add-int/lit8 v4, v4, 0x1

    goto :goto_59e

    .line 2453
    .end local v4    # "j":I
    :cond_5d2
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/SyncStatusInfo;

    invoke-virtual {v4}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v4

    if-nez v4, :cond_5e1

    .line 2454
    const-string v4, "      N/A"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2420
    .end local v3    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    :cond_5e1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v35, v1

    goto/16 :goto_4f6

    .line 2457
    .end local v0    # "i":I
    .end local v1    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v35    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_5e7
    return-void

    :pswitch_data_5e8
    .packed-switch 0x1
        :pswitch_58
        :pswitch_52
        :pswitch_4c
    .end packed-switch
.end method

.method getAllPendingSyncs()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 306
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 307
    .local v0, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 308
    .local v1, "numJobs":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v2, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_2b

    .line 310
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    .line 311
    .local v4, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v5

    .line 312
    .local v5, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v5, :cond_28

    .line 313
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v4    # "job":Landroid/app/job/JobInfo;
    .end local v5    # "op":Lcom/android/server/content/SyncOperation;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 316
    .end local v3    # "i":I
    :cond_2b
    return-object v2
.end method

.method getJobScheduler()Landroid/app/job/JobScheduler;
    .registers 2

    .line 568
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 569
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .registers 18
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1215
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v1, "periodicSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 1218
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_46

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1219
    new-instance v4, Landroid/content/PeriodicSync;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1220
    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v9

    iget-wide v10, v3, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-wide v14, v3, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v12, v14, v12

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1219
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 1218
    :cond_46
    move-object/from16 v5, p1

    .line 1222
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_48
    :goto_48
    goto :goto_d

    .line 1224
    :cond_49
    move-object/from16 v5, p1

    return-object v1
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 1273
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    if-nez p2, :cond_6

    goto :goto_2c

    .line 1276
    :cond_6
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1278
    invoke-static {p2, p1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 1277
    invoke-virtual {v1, v2, p4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    .line 1280
    .local v1, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v1, :cond_13

    .line 1281
    return-object v0

    .line 1283
    :cond_13
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1284
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    .line 1288
    :cond_2a
    return-object v2

    .line 1286
    :cond_2b
    :goto_2b
    return-object v0

    .line 1274
    .end local v1    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;
    .registers 11
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1258
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p3}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "syncAdapterPackages":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1261
    .local v1, "filteredResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_28

    aget-object v5, v0, v4

    .line 1262
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v5, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1264
    goto :goto_25

    .line 1266
    :cond_22
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1268
    :cond_28
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 1243
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1244
    .local v0, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1245
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncAdapterType;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1246
    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v4, Landroid/content/SyncAdapterType;

    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1247
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v4, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1249
    goto :goto_13

    .line 1251
    :cond_36
    iget-object v5, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_13

    .line 1253
    :cond_3e
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/SyncAdapterType;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/SyncAdapterType;

    return-object v2
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-server-content-SyncManager(Landroid/accounts/Account;I)V
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 670
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 671
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 675
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 671
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 677
    :cond_1c
    return-void
.end method

.method synthetic lambda$onStartUser$1$com-android-server-content-SyncManager(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 740
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStartUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onStopUser$3$com-android-server-content-SyncManager(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 756
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStopUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onUnlockUser$2$com-android-server-content-SyncManager(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 748
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUnlockUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$scheduleSync$4$com-android-server-content-SyncManager(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .registers 30
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "finalExtras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "syncExemptionFlag"    # I
    .param p10, "callingUid"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "result"    # Landroid/os/Bundle;

    .line 1035
    move-object/from16 v0, p13

    if-eqz v0, :cond_2e

    .line 1036
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1037
    move-object/from16 v1, p1

    iget-object v3, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    goto :goto_30

    .line 1036
    :cond_2b
    move-object/from16 v1, p1

    goto :goto_30

    .line 1035
    :cond_2e
    move-object/from16 v1, p1

    .line 1043
    :goto_30
    return-void
.end method

.method synthetic lambda$scheduleSync$5$com-android-server-content-SyncManager(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .registers 27
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "reason"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "finalExtras"    # Landroid/os/Bundle;
    .param p5, "targetSyncState"    # I
    .param p6, "minDelayMillis"    # J
    .param p8, "syncExemptionFlag"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingPackage"    # Ljava/lang/String;

    .line 1092
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 767
    packed-switch p1, :pswitch_data_a

    goto :goto_9

    .line 769
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManagerConstants;->start()V

    .line 772
    :goto_9
    return-void

    :pswitch_data_a
    .packed-switch 0x226
        :pswitch_4
    .end packed-switch
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 740
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method

.method public onStopUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 752
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 754
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 756
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 757
    return-void

    .line 754
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 744
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 745
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 746
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 748
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 749
    return-void

    .line 746
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .registers 7
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .line 1336
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1338
    .local v0, "payload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1339
    return-void
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1193
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1192
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1194
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1195
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1196
    return-void
.end method

.method public resetTodayStats()V
    .registers 3

    .line 4217
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 4218
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V
    .registers 24
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "syncExemptionFlag"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPid"    # I
    .param p8, "callingPackage"    # Ljava/lang/String;

    .line 1234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1235
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1236
    sget-wide v8, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, -0x2

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v0

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 1239
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .registers 25
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "syncExemptionFlag"    # I
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;

    .line 904
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 907
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 16
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1204
    new-instance v8, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1206
    .local v0, "payload":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1208
    return-void
.end method
